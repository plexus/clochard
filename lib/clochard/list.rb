module Clochard
  import com.github.krukow.clj_lang.PersistentList

  class << self
    def list(*items)
      items.reduce(EmptyList) { |list, item| list.cons(item) }
    end
  end

  class PersistentList
    def inspect
      "Clochard.list(#{map(&:inspect).join(', ')})"
    end

    # Signature of the Clojure version differs from the typical Ruby
    # implementation
    def reduce(arg = Undefined, &block)
      if arg.is_a? Symbol
        super() {|x,y| x.public_send(arg, y) }
      elsif arg == Undefined
        super(&block)
      else
        super(block, arg)
      end
    end
  end

  EmptyList = PersistentList.empty_list
end
