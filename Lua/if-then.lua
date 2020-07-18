-- if-then

-- 비교 연산자 
local n = 0

if n == 1 then
  print( "Equal if-then structure" )
end

if n <= 1 then
  print( "Less than or equal if-then structure" )
end

if n >= 1 then
  print( "Greater than or equal if-then structure" )
end

if n~= 1 then -- lua에서는 != 가 아닌 ~= 임에 주의!
  print( "Not equal if-then structure" )
end

-- 논리 연산자 
local count = 1
local answer = "yes"
local lives = 0

if count == 1 and answer == "yes" then
  print( "if-then using and" )
end

if count == 1 or answer == "no" then
  print( "if-then using or" )
end

if not(count == 0) then
  print( "if-then using not" )
end

if count == 1 and (answer == "no" or lives == 0) then
  print( "if-then complex comparison" )
end

-- if-then else
local count = 0

if count == 1 then
  print( "Equal if-then structure count = 1" )
else
  print( "if-then else, count ~= 1" )
end

-- nested if
local count = 0
local answer = "yes"

if count == 0 then
  if answer == "yes" then
    print( "Nested if-then answer equals yes" )
  end
else
  if answer == "no" then
    print( "Nested if, count ~= 0, answer equals no" )
  end
end

-- elseif (붙여 씀에 주의)

local count = 0

if count == 0 then
  print( "if-then count equals 0" )
elseif count == 1 then
  print( "elseif, count = 1" )
elseif count == 2 then
  print( "elseif, count = 2" )
else
  print( "else, count not equal to 0, 1, or 2" )
end
