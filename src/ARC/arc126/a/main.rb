t = gets.to_i

t.times do
  cnt = 0
  n2,n3,n4 = gets.split.map(&:to_i)
  n3/=2
  while true
    if n4 >= 1 && n3 >= 1
      min = [n3, n4].min
      cnt += min
      n4 -= min
      n3 -= min
    elsif n2 >= 2 && n3 >= 1
      min = [n2/2, n3].min
      cnt += min
      n3 -= min
      n2 -= min*2
    elsif n4 >= 2 && n2 >= 1
      min = [n4/2, n2].min
      cnt += min
      n4 -= min*2
      n2 -= min
    elsif n4 >= 1 && n2 >= 3
      min = [n4, n2/3].min
      cnt += min
      n4 -= min
      n2 -= min*3
    elsif n2 >= 5
      min = n2/5
      cnt += min
      n2 -= min*5
    else
      puts cnt
      break
    end
  end
end


t.times do
  cnt = 0
  n2,n3,n4 = gets.split.map(&:to_i)
  n3/=2
  while true
    if n4 >= 1 && n3 >= 1
      min = [n3, n4].min
      cnt += min
      n4 -= min
      n3 -= min
    elsif n2 >= 2 && n3 >= 1
      min = [n2/2, n3].min
      cnt += min
      n3 -= min
      n2 -= min*2
    elsif n4 >= 2 && n2 >= 1
      min = [n4/2, n2].min
      cnt += min
      n4 -= min*2
      n2 -= min
    elsif n4 >= 1 && n2 >= 3
      min = [n4, n2/3].min
      cnt += min
      n4 -= min
      n2 -= min*3
    elsif n2 >= 5
      min = n2/5
      cnt += min
      n2 -= min*5
    else
      puts cnt
      break
    end
  end
end
