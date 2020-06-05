-- About String

-- 1. 문자열 길이 구하기
myString = "Hello"
print( #myString )

-- 2. 문자열 합치기
myString2 = "World"
print( myString .. " " .. myString2 )

-- 3. 문자열 타입으로 변환
myNumber = 42
myStringNumber = tostring(myNumber) -- 42 -> "42"
print (myStringNumber)
print (type(myStringNumber))

-- 4. 따옴표, 쌍따옴표, 대괄호
myFirstString = 'Hi Mom'
mySecondString = "Hi Dad"
myThirdString = [[ Multi-line
string
that
contains
newline ]]

-- 5. 여러 변수 한번에 선언 및 초기화
myA, myB, myC = "hi", "hello"
print(myA)
print(myB)
print(myC)

-- 6. escape sequence
myNewLine = "This is a string\n\twith a \"newline\""
print(myNewLine)


