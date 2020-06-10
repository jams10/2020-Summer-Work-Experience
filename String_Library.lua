-- String Library

-- 1. 문자열 길이 구하기
local firstString = "Length"
print(string.len(firstString))
print(#firstString)

-- 2. 문자열 자기복제
local secondString = string.rep("rep ",5) -- 매개변수 숫자 만큼 해당 문자열을 복제함.
print(secondString)

-- 3. 문자열 대소문자 전환
local thirdString = "HELLO world"
print(string.lower(thirdString))
print(string.upper(thirdString))

-- 4. 문자열 서브스트링
local subString = "Hello World"
print(string.sub(subString, 1, 5))

-- 5. char 함수
print(string.char(0x41)) -- 해당 숫자 아스키 값 문자 출력
print(string.char(65))

-- 6. byte 함수
print(string.byte("xyz",1)) -- 문자를 아스키 코드 값으로 변경. 1매개 변수는 xyz중 제일 첫번째 문자를 변경하겠다는 의미. x == 120(아스키 값)

-- 7. 문자열 포맷팅
print(string.format("pi:%.5f", math.pi))

local day, month, year = 28, 2, 1980
print(string.format("%02d/%02d/%04d", month, day, year))

-- 8. 문자열 찾기, 매칭
local findString = "Hello World"
local sBegin, sEnd = string.find( findString, "World")
print(sBegin, sEnd)

local found = string.match(findString, "World")
print(found)

local date = "Today is 5/14/2016"
local d = string.match(date, "%d+/%d+/%d+") -- 패턴 매칭
print(d)

-- 9. 문자열 대체(substitution)
local temp = "I have 2 children"
local temp2 = string.gsub(temp, "2", "two")
print(temp2)