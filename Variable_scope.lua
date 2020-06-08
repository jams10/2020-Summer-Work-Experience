-- Varibale Scope

-- 글로벌 변수와 로컬 변수

-- 전역(글로벌) 변수
temp = "Hi"
_G.temp2 = "hi"

print(temp)
print(temp2)

-- 지역(로컬) 변수
local function test1() -- 이처럼 함수 앞에 local를 붙여서 함수를 로컬라이즈 할 수 있음.
                       -- 이는, 이 함수가 해당 lua 파일 안에서만 available 하다는 것을 의미함.
  local temp = "No longer Hi"
  print(temp)
end

test1()
print( temp ) -- 로컬 변수는 함수 scope 안에서만 사용되므로, 로컬 변수의 temp가 아닌, 전역 변수의 temp가 출력됨.