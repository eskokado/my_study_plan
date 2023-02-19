module Algorithms
  module Greedy
    def self.gcd(a, b)
      return b == 0 ? a : gcd(b, a % b)
    end

    def self.min_squares(l, b)
      g = gcd(l, b)
      (l/b) * (b/g)
    end
  end
end
