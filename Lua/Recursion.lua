-- Recursion

local function recursive( counter, limit )
  counter = counter + 1
  print( "In recursive loop : " .. counter )
  if counter < limit then
    recursive( counter, limit )
  end
  print( "Exiting recursive loop. Step: " .. counter )
end

recursive(0, 5)