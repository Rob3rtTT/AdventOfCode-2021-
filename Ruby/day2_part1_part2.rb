trajectory = File.readlines("submarine_course.txt").map do |line|
    command, value = line.split(" ")
    [command.to_sym, value.to_i]
end

#===========================P A R T 1 =====================================================================
def part1(trajectory)
    horizontal=0
    depth=0
    trajectory.each do |command, value|
        case command
        when :forward
            horizontal+=value
        when :down
            depth+=value
        when :up
            depth-=value
        end
    end
    horizontal*depth
end
p part1(trajectory)

#=================================P A R T 2 ================================================================
def part2(trajectory)
    horizontal=0
    depth=0
    aim=0
    trajectory.each do |command, value|
        case command
        when :forward
            horizontal+=value 
            depth += value * aim
        when :down
            aim+=value
        when :up
            aim-=value
        end
    end
    horizontal*depth
end
p part2(trajectory)
