class MethodDefinition < OpenStruct
  def initialize(name: nil, target: nil, node: nil)
    super
  end

  def instance_method?
    false
  end

  def class_method?
    false
  end

  def eql?(other)
    target.qualified_name == other.target.qualified_name
  end

  def to_s
    "#{object_name} #{name}"
  end

  def to_param
    name
  end
end
