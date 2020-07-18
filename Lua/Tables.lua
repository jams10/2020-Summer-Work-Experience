-- Table들은 Lua에서 자료 구조들을 나타내기 위해 사용됨.

-- Arrays (인덱스 1 부터 시작함에 유의.)

local number = {} -- table 혹은 array를 초기화
for i = 1, 10 do
  number[i] = i*2
  print(i, number[i])
end

-- multi-dimesional
local matrix = {}
for i = 1, 10 do
  matrix[i] = {}
  for j = 1, 10 do
    matrix[i][j] = j
  end
end

for i = 1, 10 do
  for j = 1, 10 do
    print(i, matrix[i][j])
  end
end

-- Table library
--[[
  # - 배열의 사이즈 리턴(요소 개수)
  table.insert - 주어진 위치에 요소 삽입
  table.remove - 주어진 위치의 요소 삭제
  table.sort - 테이블 정렬
]]

local list = {5, 7, 1, 10, 12, 6}
table.insert(list,2,8) -- (table name, location to insert, value)
for i = 1, #list do
  print( list[i] )
end

print("\n")

table.remove(list,2) -- (table name, location to remove)
for i = 1, #list do
  print( list[i] )
end

print("\n")

table.sort(list)
for i = 1, #list do
  print( list[i] )
end
