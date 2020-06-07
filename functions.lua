-- Functions

-- 1. 함수의 구조
--[[

function name( paramters (optional) )
    code block
    return (optional)
end

]]

-- 2. 일반적인 구조
function addOne(numberOne)
  result = numberOne + 1
  print ( result )
end

addOne(10)

function add(a,b)
  sum = a+b
  return sum
end

print ( add(1,2) )

-- 3. 값 두개 한번에 리턴

function addTwo()
  result2 = 5+3
  result3 = "42"
  return result2, result3
end

temp1, temp2 = addTwo()
print(temp1,temp2)
