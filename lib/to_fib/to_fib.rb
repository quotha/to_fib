module ToFib
  module ObjectExtension    
    def to_fib
      f, neg = fibonacci(self.abs), []
      if self < 0
        f.each_with_index {|i, index| neg << -i if index.even?}
        f = neg
      end
      f.reverse_each.take(2).min {|a, b| (self-a).abs <=> (self-b).abs}
    end
    
    def is_fib?
      self == self.to_fib
    end
    
    private
    
    def fibonacci(max=Float::INFINITY)
      return to_enum(__method__, max) unless block_given?
      yield previous = 0
      while (i ||= 1) <= max
        yield i
        i, previous = previous + i, i
      end
      yield i
      previous
    end
    
  end
end

class Fixnum
  include ToFib::ObjectExtension
end

class Bignum
  include ToFib::ObjectExtension
end