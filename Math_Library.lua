-- About Math and Math Library

-- Lua 5.3 버전 부터는 기본적으로 숫자들을 내부적으로 정수 혹은 double(64 bit)형으로 저장.
-- 5.3 이전 버전에서는, double(64 bit)형으로 저장함.

-- tonumber : 문자열을 숫자로 바꾸어줌.

-- Math Library
myPi = math.pi
print ( myPi )

math.randomseed( os.time() ) -- 랜덤 시드 설정
myNumber = math.random(1, 10) -- random에 따로 범위를 지정하지 않으면, 0~1의 랜덤 숫자 만들어짐.
print ( myNumber )

mySin = math.sin( myPi/2 )
print ( mySin )
