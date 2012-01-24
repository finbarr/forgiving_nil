class NilClass
  attr_accessor :forgiving
  def method_missing(name, *args, &block)
    return self if @forgiving
    super
  end
  def forgive
    return super unless block_given?
    @forgiving = true
    result = yield
    @forgiving = false
    result
  end
end