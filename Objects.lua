-- Objects

--[[ 
루아는 클래스를 갖지 않으므로 진정한 OOP가 아님.

루아에서는 테이블을 Object로 다룰 수 있음.
(테이블은 값, 함수들을 가질 수 있음.)

함수에 Object를 넘겨주려면 (:)를 쓰면 됨.
]]

local pet = {} -- 테이블 선언
  pet.type = "" -- 테이블에 값들을 넣어줌.
  pet.message = "hungry!"
  pet.hungry = function(self) print(self.type .. " is " .. pet.message) end -- 테이블에 함수 넣어줌.
  pet.points = 0
  
local dog = pet
  dog.type = "dog"
  dog:hungry() -- (:)은 오브젝트 그 자체를 함수로 넘겨줌.
  print(dog.points)