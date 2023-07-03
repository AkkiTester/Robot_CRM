
#[9,2,3,5,4,9,25,7,16,1]
a=[9,2,3,5,4,9,25,7,16,1]
for x in a:
    if (x*x) in a:
        print((x,x*x))
    else:
        print(x)

