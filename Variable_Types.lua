-- Variable Types

--[[
  Lua에는 8개의 built-in 변수 타입이 존재함.
  1. nil       2. Number       3. String
  4. Boolean   5. Table        6. Function
  7. Userdata  8. Thread
  
  Lua는 또한 dynamically typed language. 즉 동적 타입 언어임.
  따라서, 변수 선언시 명시적으로 타입을 지정해주지 않아도 알아서 올바른 타입으로 바꾸어줌.
]]

-- 1. nil (다른 프로그래밍 언어에서의 NULL과 비슷. 값이 없고 데이터를 담고 있지 않음.)
--        (변수 선언시 값을 주지 않으면 기본적으로 nil 타입임.)

myVariable = nil
print (type (myVariable))

-- 2. Number (숫자 값을 다루는 데이터 형. 정수는 물론이고 실수형 데이터 또한 저장 가능.)
--           (Lua는 내부적으로 모든 숫자들을 64비트 double-precision floating point(c에서의 double 형)로 저장.)

myInteger = 10
print (myInteger)
print (type (myInteger))

myFloat = 3.141592
print (myFloat)
print (type (myFloat))

-- 3. String (문자들의 배열. 하나 혹은 두개의 대괄호로 범위를 정할 수 있음.)

myString = "Hello"
print (myString)
print (type (myString))

myString2 = [[Multi-
line
strings
are fun.]]
print(myString2)

-- 4. Boolean (다른 언어들과 마찬가지로 참 혹은 거짓의 두 값만을 다룸.)
--            (Lua 에서 변수가 데이터를 담고 있지 않거나, false 값을 가지고 있으면 false)

myBoo = true
print (myBoo)
print (type (myBoo))

-- 5. Table (연관된 배열들을 저장.)
--          (타입이 없는 배열들임. (정수 다음에 실수, 다음에 문자열이 올 수도 있음.))
--          (또한, 숫자나 문자열로 인덱싱이 가능함.)

myArray = {"a string", 12, 42, "14"}
print (myArray)
print (myArray[1]) -- Lua는 배열의 시작 인덱스가 1번임.
print (myArray[4])
print (myArray[2])

-- 6. Function (다른 언어들의 함수와 비슷. Lua는 함수 부분을 변수에 할당할 수 있음.)

-- 7. Userdata (새 데이터 타입을 의미.)

-- 8. Thread (co-routine 인스턴스를 저장함.)
