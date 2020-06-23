-- OS library

-- time : OS 현재 시간을 리턴
-- date : OS 현재 날짜를 리턴
-- clock : 프로그램의 실행 시간을 리턴(프로그램이 사용한 cpu 시간의 초 단위 근삿값 리턴)
-- getenv : 환경 정보를 리턴(프로세스 환경 변수 값을 리턴)
-- exit : 프로그램 종료
-- execute : 시스템 명령 실행
-- setlocale : 프로그램의 로케이션을 설정(프로그램 로케일 설정)
   -- * 로케일은 사용자의 언어, 국가뿐 아니라 사용자 인터페이스에서 사용자가 선호하는 사항을 지정한 매개 변수의 모임
-- difftime : 주어진 두 시각의 차이를 리턴(초)
-- remove : 파일 혹은 디렉터리 삭제
-- rename : 파일 혹은 디렉터리 이름 변경

-- ex) time
local t1 = os.time() -- 1970년 1월 1일 00:00:00 UTC 부터 지금까지의 시각(초) 숫자로 리턴
print(t1) 

local t2 = os.time({ -- 매개 변수를 줄 경우, epoch 시각 부터 매개변수 시각까지의 경과 시간을 숫자로 리턴
    year = 1999,
    month = 1,
    day = 1,
    hour = 12,
    min = 10,
    sec = 30
  })
print(t2)

print ("Seconds Difference: ", os.difftime(t1,t2))

-- ex) date
print (os.date())

local date1 = os.date("*t", t2) -- 이전에 t2에 저장한 time 정보를 포맷팅 하여 넣어줌.
for key, value in pairs(date1) do
  print(key,value)
end
