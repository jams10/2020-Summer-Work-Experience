-- MetaMethods

--[[
  <연산자에 따른 Metamethod 표시(Signature)>
  1) + : __add(a,b)
  2) - : __sub(a,b)
  3) * : __mul(a,b)
  4) / : __div(a,b)
  5) % : __mod(a,b)
  6) ^ : __pow(a,b)
  7) - : __unm(a)
  8) .. : __concat(a,b)
  9) # : __len(a)
  10) == : __eq(a,b)
  11) < : __lt(a,b)
  12) <= : __le(a,b)
]]

-- 행렬 덧셈
local myTable1 = {}
local myTable2 = {}

for i = 1, 5 do
  myTable1[i] = {}
  myTable2[i] = {}
  for j = 1, 4 do
    myTable1[i][j] = math.random(10)
    myTable2[i][j] = math.random(10)
  end
end

local function martrix_add( t1, t2 )
  local newTable = {}
  for i = 1, #t1 do
    newTable[i] = {}
    for j = 1, #t1[i] do
      newTable[i][j] = t1[i][j] + t2[i][j]
    end
  end
  return newTable
end

local metaTable = {__add = matrix_add} 

setmetatable( myTable1, metaTable )

local myNewTable = myTable1 + myTable2

for i = 1, 5 do
  for j = 1, 4 do
    print(i, j, myTable1[i][j].. " + " ..myTable2[i][j].. " = " ..myNewTable[i][j])
  end
end

