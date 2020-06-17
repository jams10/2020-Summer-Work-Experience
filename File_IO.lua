-- I/O

--[[
io.write("How old are you? ")
local answer = io.read()

if tonumber(answer) > 37 then
  io.write("You're old!")
elseif tonumber(answer) < 37 then
  io.write("You're young!")
else
  io.write("You're 37!")
end
]]

-- I/O Library
--[[
  io.input(filename)
  io.output(filename)
  io.open(filename, mode)
  io.close(filename)
  
  io.read(arguments)
  io.write(arguments)
  ]]

io.output("tempfile")

io.write("42")

io.close()

io.input("tempfile")

local info = io.read("*all")
--[[
  read parameters :
    "*all" : 전체 파일 읽기
    "*line" : 다음 줄 읽기
    "*number" : 숫자 읽기
    괄호 안에 그냥 숫자 넣으면 그 숫자만큼의 character 읽음.
]]
print(info)

-- io.open
-- Modes : r - read, w - write, b - binary

local file = io.open("tempfile", "w")
file:write("Hello World\nhi")
file:close()

local file = io.open("tempfile", "r")
local temp = file:read("*line") -- 줄 읽기 이므로, hi는 안 읽어지는 점 주의
file:close()
print (temp)

