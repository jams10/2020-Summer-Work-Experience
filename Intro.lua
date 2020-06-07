-- ZeroBrane 에디터 상단의 Run as Scratchpad (Ctrl-F6) 키를 누르고 스크립트를 작성하면, 실시간으로 결과를 볼 수 있다.

print("Hello world")
print("Line 2", "Part2") -- ','는 두 부분 간에 공백(tab)을 넣어 줌.
print(12) -- print 명령은 자동으로 string으로 형변환 해줌.

print(H) -- print 명령 안에 인자에 single quote(따옴표), double quote(쌍따옴표)로 묶어 주지 않을 경우 변수로 취급함.
print("Hello" .. " " .. "World") -- string 사이에 '..' 넣으면 concatenate 처리. strcat과 비슷.

-- comment method :
--[[ block comment
]]

-- reference : Brian Burton's youtube channel : https://www.youtube.com/channel/UCRXix-sH50G0uON-J6SnPjw
