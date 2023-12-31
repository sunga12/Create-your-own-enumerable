require_relative 'enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |item| yield(item) if block_given? }
  end
end
