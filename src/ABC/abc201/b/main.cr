n = read_line.to_i
st = Array.new(n){read_line.split}
puts st.sort_by{|e| -e[1].to_i }[1][0]
