puts gets.split.map(&:to_i).uniq.count == 2 ? 'Yes' : 'No'
