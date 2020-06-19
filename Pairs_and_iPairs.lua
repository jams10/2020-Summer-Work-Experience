-- Pairs & iPairs

-- iPairs는 정렬된 테이블에 사용
local myTable = {"Hi", "Hello", "World", 42, "inconceivable!"}

for value in ipairs( myTable ) do
  print ( value )
end

print("\n")

for index, value in ipairs( myTable ) do
  print ( value )
end

print("\n")

for index, value in ipairs( myTable ) do
  print ( index, value )
end

print("\n")

-- Pairs는 비정렬(혹은 다차원) 테이블에 사용
local myTable = {"Name", "Age", "Seat", "Grade", "Date"}
myTable.Name = "Joe" -- value 값이 key 값이 되어 사용됨.
myTable.Age = 12
myTable.Seat = "B12"
myTable.Grade = 7
myTable.Date = "May 12, 2000"

for key, value in pairs( myTable ) do
  print( key .. ": ", value )
end

print("\n")

print(#myTable)
