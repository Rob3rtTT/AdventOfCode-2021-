with open("sonar.txt") as f:
    lines=f.read()
    depth=lines.split("\n")
def depth_counter(depth):
    count=0
    for i in range(len(depth)-1):
        prev = int(depth[i])
        next = int(depth[i+1])
        if next > prev:
            count +=1
    return(count)

print(depth_counter(depth))
