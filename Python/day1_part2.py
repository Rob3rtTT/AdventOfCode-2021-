with open("sonar.txt") as f:
    lines=f.read()
    depth=lines.split("\n")
    
def depth_sum_counter(depth):
    adj_sum=adjacent_sum(depth)
    count=0
    for i in range(len(adj_sum)-1):
        if adj_sum[i+1]>adj_sum[i]:
            count+=1
    return(count)

def adjacent_sum(arr):
    sum=[]
    for i in range(len(arr)-2):
        first=int(arr[i])
        second=int(arr[i+1])
        third=int(arr[i+2])
        equals=first+second+third
        sum.append(equals)
    return(sum)

print(depth_sum_counter(depth))
