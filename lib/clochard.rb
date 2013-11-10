require 'pathname'

require Dir[Pathname.new(__FILE__).join('../../*.jar')].first

module Clochard
  Undefined = Object.new
end

require_relative 'clochard/list'
require_relative 'clochard/map'
