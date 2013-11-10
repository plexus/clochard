# Clochard

Bring the Clojure persitent data structures to JRuby, an experiment.

Based on [Clj-ds](https://github.com/krukow/clj-ds).

```ruby
Clochard.list(1,2,3).cons(4).reduce(:+)
# => 10

map = Clochard.map(:foo => :bar)
map = map.assoc(:bar, :baz)
# => {:foo => :bar, :bar => :baz}
```

For functional data structures in pure ruby have a look at [Hamster](https://github.com/harukizaemon/hamster).
