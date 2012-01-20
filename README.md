```ruby
some_obj.big.long.chain.of.methods.that.breaks.because.of.a.nil
# => Exception, nil or the result of the last method call

!some_obj.big.nil? && !some_obj.big.long.nil? && !some_obj.big.long.chain.nil? && !some_obj.big.long.chain.of.nil? #.....................
# => lame

nil.forgive { some_obj.big.long.chain.of.methods.that.breaks.because.of.a.nil }
# => nil, or the result of the last method call
```