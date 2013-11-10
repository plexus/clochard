module Clochard
  import com.github.krukow.clj_lang.PersistentHashMap

  class << self
    def map(items = {})
      items.reduce(EmptyMap) { |map, (key, value)| map.assoc(key, value) }
    end
    alias hash map
  end

  class PersistenHashMap
  end

  EmptyMap = PersistentHashMap.empty_map
end
