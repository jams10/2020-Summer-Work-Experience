sample = {}

function sample.add(n1,n2)
  return n1+n2
end

function sample.hi(name)
  return "hi "..name
end

function sample.twofer (v1, v2, v3)
  return v1, v2, v3, (v1+v2) * v3
end

return sample
