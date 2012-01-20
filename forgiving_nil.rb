class NilClass
  attr_accessor :forgiving
  def method_missing(name, *args, &block)
    return self if @forgiving
    super
  end
  def forgive
    @forgiving = true
    yield if block_given?
    @forgiving = false
  end
end