def fizzbuzz(i):
    if(i % 15 == 0):
        return "fizzbuzz"
    if(i % 3 == 0):
        return "fizz"
    if(i % 5 == 0):
        return "buzz"
    return str(i)

result = [fizzbuzz(i) for i in range(1,101)]
print("\n".join(result))
