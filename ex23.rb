# define a class inheriting from Application Record
class Dependency < ApplicationRecord
  # associations
  belongs_to :rubygem, optional: true
  belongs_to :version

  # do the following before you run the validations
  before_validation :use_gem_dependency,
                    :use_existing_rubygem,
                    :parse_gem_dependency

  validates :requirements, presence: true
  # see the %w[], that is an array of strings.  %W would be "" instead of ''
  validates :scope,        inclusion: { in: %w[development runtime] }

  # quick and easy way to write and use instance methods, referred to as getter & setter methods
  attr_accessor :gem_dependency

  # 'self' is a class method you can write for the class; argument is a gem name passed in thru' rubygem parameter
  def self.unresolved(rubygem)
    # lookup 'where' in ruby; is this a hash it passes data into?  A: can be a string , array or hash.
    where(unresolved_name: nil, rubygem_id: rubygem.id)
  end

  # a class method to handle what looks like marking unresolved names for gems
  def self.mark_unresolved_for(rubygem)
    unresolved(rubygem).update_all(unresolved_name: rubygem.name,
                                   rubygem_id: nil)
  end

  # scope you've heard of before; global, class, instance and local variables are essentially it.
  # check here: <https://www.sitepoint.com/understanding-scope-in-ruby/>
  def self.development
    where(scope: "development")
  end

  # same as above
  def self.runtime
    where(scope: "runtime")
  end

  # the || means "or" but lookup the &.name part.  Dan did explain it but worth a re-visit here:
  # http://mitrev.net/ruby/2015/11/13/the-operator-in-ruby/
  def name
    unresolved_name || rubygem&.name
  end

  # instance method with a hash where the keys are strings pointing to instance methods
  def payload
    {
        "name"         => name,
        "requirements" => clean_requirements
    }
  end

  # instance method taking in all JSON data and sending it into the payload method
  def as_json(*)
    payload
  end

  # instance method, arguments are passed into parameter 'options' which points to a new/empty hash
  # then converts arguments to XML and gets hazy from then on
  # read-up on .to_xml
  def to_xml(options = {})
    payload.to_xml(options.merge(root: "dependency"))
  end

  # *args is passing in ALL arguments?  YAML is "Yet Another Markup Language"
  def to_yaml(*args)
    payload.to_yaml(*args)
  end

  # hmm, this makes no sense to me yet
  # break 'encode_with' down, line-by-line. .map might help and check out api dock under the 'Ruby' tab
  def encode_with(coder)
    coder.tag = nil
    coder.implicit = true
    coder.map = payload
  end

  # converts contents of two instance variables passed inside a string, to a string
  def to_s
    "#{name} #{clean_requirements}"
  end

  # looks like a regex but.. lookup .gsub
  def clean_requirements(reqs = requirements)
    reqs.gsub(/#<YAML::Syck::DefaultKey[^>]*>/, "=")
  end

  def update_resolved(rubygem)
    self.rubygem = rubygem
    self.unresolved_name = nil
    save!
  end

  # worth reading up on private vs. protected methods:  Private methods are visible ONLY to that one instance of a
  # class.  Protected methods are visible to OTHER instances of that same class.
  private

  def use_gem_dependency
    return if rubygem
    # what does :: mean?
    if gem_dependency.class != Gem::Dependency
      errors.add :rubygem, "Please use Gem::Dependency to specify dependencies."
      throw :abort # 'catch & throw' are similar to 'rescue & raise' when handling exceptions or 'errors'.
    end

    return unless gem_dependency.name.empty?
    errors.add :rubygem, "Blank is not a valid dependency name"
    throw :abort
  end

  def use_existing_rubygem
    return if rubygem

    self.rubygem = Rubygem.find_by_name(gem_dependency.name)

    self.unresolved_name = gem_dependency.name unless rubygem
  end

  def parse_gem_dependency
    return if requirements

    # read up on tutorialspoint.org/ruby/object-oriented-ruby
    reqs = gem_dependency.requirements_list.join(", ")
    self.requirements = clean_requirements(reqs)

    self.scope = gem_dependency.type.to_s
  end
end
