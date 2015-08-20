module ToFib
  module ObjectExtension
    def to_fib
      fibonacci(self).reverse_each.take(2).min {|a, b| (self-a).abs <=> (self-b).abs}
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