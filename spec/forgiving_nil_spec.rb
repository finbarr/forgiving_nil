require "forgiving_nil/nil_class"
describe ForgivingNil do
  it "has no effect by default" do
    lambda { nil.foo }.should raise_error
  end
  it "forgives nil" do
    nil.forgive { nil.foo.bar }.should be_nil
  end
  it "only forgives temporarily" do
    nil.forgive { nil.foo.bar }
    lambda { nil.foo }.should raise_error
  end
end