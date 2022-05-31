n = read_line.to_i
st = Array.new(n){read_line}
puts st.size == st.uniq.size ? "No" : "Yes"
