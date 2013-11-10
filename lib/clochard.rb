require 'pathname'

require Dir[Pathname.new(__FILE__).join('../../*.jar')].first

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
  end

  EmptyList = PersistentList.empty_list
end
