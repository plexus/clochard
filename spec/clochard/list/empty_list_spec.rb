require 'spec_helper'

describe Clochard::EmptyList do
  its(:count) { should eq(0) }
end
