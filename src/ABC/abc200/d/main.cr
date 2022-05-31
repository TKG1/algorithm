n = read_line.to_i
a = read_line.split.map{|e| e.to_i % 200}
m = {8, n}.min

cnt = Array.new(200){ [] of Int32 }

1.upto(m) do |i|
  (0...m).to_a.each_combination(i) do |cm|
    sm = 0
    cm.each do |i|
      sm = (sm + a[i]) % 200
    end
    if cnt[sm].empty?
      cnt[sm] = cm
    else
      puts "Yes"
      puts [cnt[sm].size, cnt[sm].map{|e| e+1 }.join(" ")].join(" ")
      puts [cm.size, cm.map{|e| e+1 }.join(" ")].join(" ")
      exit
    end
  end
end

puts "No"
