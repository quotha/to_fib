# to_fib
to the nearest fibonacci number

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'to_fib'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_fib

And use it in irb:

    $ irb -rto_fib

## Usage

```ruby
13.to_fib # 13
20.to_fib # 21
900000000000000000000000000000000000000000000000000000000000000000000.to_fib # 1082459262056433063877940200966638133809015267665311237542082678938909
8.is_fib? # true
9.is_fib? # false
```