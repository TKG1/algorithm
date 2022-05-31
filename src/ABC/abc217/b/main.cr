s = Array.new(3){read_line}
["ABC","ARC","AGC","AHC"].each do |w|
  if !s.includes?(w)
    puts w
    exit
  end
end
