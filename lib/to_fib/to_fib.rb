module ToFib
  module ObjectExtension    
    def to_fib
      list, nega_list = fibonacci(self.abs), []
      __, list = list.each_with_index {|fib, index| nega_list << -fib if index.even?}, nega_list if self < 0
      list.reverse_each.take(2).min {|a, b| (self-a).abs <=> (self-b).abs}
    end
    
    def is_fib?
      self == self.to_fib
    end
    
    private
    
    def fibonacci(max=Float::INFINITY)
      return to_enum(__method__, max) unless block_given?
      yield previous_fib = 0
      while (fib ||= 1) <= max
        yield fib
        fib, previous_fib = previous_fib + fib, fib
      end
      yield fib
    end
  end
end

class Fixnum
  include ToFib::ObjectExtension
end

class Bignum
  include ToFib::ObjectExtension
end