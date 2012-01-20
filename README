```ruby
nil.forgive {
  some_obj.big.long.chain.of.methods.that.might.break
}
```
Instead of
```ruby
if some_obj && some_obj.respond_to? :big && some_obj.big.respond_to? :long # bla bla bla
```