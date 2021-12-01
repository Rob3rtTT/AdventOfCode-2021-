depth = File.open("sonar.txt", chomp: true).map(&:to_i)
def depth_counter(depth)
    count=0
      (0...depth.length-1).each do |i|
        prev = depth[i]
        nxt = depth[i+1]
        if nxt > prev
            count +=1
        end
    end
    count
end

p depth_counter(depth)
