puts gets.split.map(&:to_i).inject(:*).odd? ? 'Odd' : 'Even'
