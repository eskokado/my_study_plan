module Problems
  module Date
    def self.day_of_week(year, month, day)
      t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
      year -= month < 3 ? 1 : 0
      (year + year/4 - year/100 + year/400 + t[month-1] + day) % 7
    end
  end
end
