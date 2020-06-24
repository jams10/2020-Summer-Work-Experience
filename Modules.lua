-- Modules

--[[
  Module은 require 커맨드를 통해 불러올 수 있는 라이브러리.
  모듈들은 부른 프로그램으로 반환될 수 있는 싱글 테이블.
  .lua 확장자는 모듈을 불러올 때 추정(가정)(assume)됨.
  패키지는 모듈들의 집합.
]]

local myMod = require("myModule") -- 미리 만들어 놓은 myModule 모듈을 불러옴.

print(myMod.hi("A"))
print(myMod.add(1,5))


-- require("myModule")

print(sample.hi("A")) -- 그냥 불러올 경우
print(sample.add(12,13))