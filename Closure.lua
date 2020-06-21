-- Closure(함수와 그 함수가 사용하는 비지역 변수들의 묶음)
-- Lua에서 함수는 변수와 동등한 궝한을 갖는 성질을 활용

local function currentCount()
  i=0
  return function()
    i=i+1
    return i
  end
end

local first = currentCount()

print(first()) -- 함수 호출 마다 currentCount()의 내부 변수 값은 유지됨.
print(first()) -- 내부 변수 값은 유지되고, 내부 함수의 연산에 따라 값이 증가함.
               -- 외부 함수의 변수 -> 멤버 변수, 내부 함수 -> 멤버 함수

--[[

local function startWave(waveNumber)
  local temp
  local timerDelay=0
  for i = 1, #wave[waveNumber] do
    temp = function() addRunner(wave[waveNumber][i]) end
    timerDelay = timerDelay+500+math.random(0,500)
    timer.performWithDelay(timerDelay,temp)
  end
end
]]

-- Closure를 이용, 반복자 구현하기
-- 출처 : https://m.blog.naver.com/PostView.nhn?blogId=kzh8055&logNo=140117776108&proxyReferer=https:%2F%2Fwww.google.com%2F

function list_iter(t)
    local i = 0
    local n = #t                                     
    return function()
        i = i + 1                                     
        if i <= n then return t[ i ] end
    end
end


