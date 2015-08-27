module ToFib
  class Version
    MAJOR = 1
    MINOR = 0
    PATCH = 4
    PRE = nil

    class << self
      def to_s
        [MAJOR, MINOR, PATCH, PRE].compact.join('.')
      end
    end
  end
end