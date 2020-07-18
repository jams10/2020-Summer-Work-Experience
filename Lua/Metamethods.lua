-- Metamethods
--[[
  루아에서 테이블은 비교, 산술 연산이 불가능함. 이러한 제한을 극복할 수 있게 해주는 것이 메타 테이블.
]]

local MyMetaMethod_add = function( x,y )
  return {value = x.value + y.value }
end

local myTable1 = { value = 100 }
local myTable2 = { value = 200 }

local metaTable = {__add = MyMetaMethod_add } -- 메타티이블 __add 항목에 MyMetaMethod 함수 설정.

setmetatable( myTable1, metaTable ) -- myTable1을 메타 테이블로 설정.

local newTable = myTable1 + myTable2

print(newTable.value)

