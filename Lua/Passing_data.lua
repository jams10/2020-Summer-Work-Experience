-- Passing data

local myMod = require("myModule")
print (myMod.hi("a"))

local temp = myMod.hi("b")
print(temp)

print(myMod.twofer(1,2,3))

local a,b,c,d = myMod.twofer(1,2,3) -- 리턴 값이 각각 할당됨.
                                    -- 만약 리턴값 개수가 부족하면 nil로 리턴.
print(a)
print(b)
print(c)
print(d)

local function tablePass(p1) -- 테이블 정렬 함수
  table.sort(p1)
  return p1
end

local function showTable(p2) -- 테이블 출력 함수
  for key, value in pairs(p2) do
    print(key, value)
  end
end

local myTable = {1,2,5,3,7,9,1}

showTable(myTable)
print("\n")

local myNewTable = tablePass(myTable)
showTable(myTable) -- 위 정렬 함수에서 테이블 포인터를 받음. 따라서, 기존 테이블도 정렬됨.
print("\n")
showTable(myNewTable)

print("\n")
local function myAddition(...) -- 매개변수를 몇개 받아올지 정하지 않음. 점 3개(...)로 표시.
  local sum=0
  for index, value in ipairs{...} do
    sum= sum + value
  end
  return sum
end

print(myAddition(1,2,3,1,4,5))
print(myAddition(1,2))

