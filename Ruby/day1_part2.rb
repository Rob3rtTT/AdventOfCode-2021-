depth = File.open("sonar.txt", chomp: true).map(&:to_i)

def three_pair_depth_counter(depth)
    count=0
    sum=adjacent_sum(depth)
    (0...sum.length-1).each do |i|
        if sum[i+1]>sum[i]
            count+=1
        end
    end
    count
end

def adjacent_sum(arr)
    sum=[]
    (0...arr.length-2).each do |i|
        first = arr[i]
        sec = arr[i+1]
        third = arr[i+2]
        sum<<(first+sec+third)
    end
    sum
end

p three_pair_depth_counter(depth)
