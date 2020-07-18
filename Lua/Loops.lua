-- Loops

-- for loops
for i = 10, 0, -2 do
  print("1) loop step : ", i)
end

print("\n")

local count = 10
for i = 0, count, 2 do
  print("2) loop step : ", i)
end

print("\n")

-- while loop
local temp = true
local i = 1

while temp do
  print("loop: ", i)
  i = i + 1
  if i == 10 then
    temp = false
  end
end

print("\n")

-- repeat loop(until 조건 까지 반복)
local status = true
local j = 1

repeat
  print("repeat loop: ", j)
  j = j + 1
  if j == 10 then
    status = false
  end
until status == false

