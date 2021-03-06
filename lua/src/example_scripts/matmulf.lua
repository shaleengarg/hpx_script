function inner(a,b,c,i,n)
  local k,j
  for j=1,n do
    for k=1,n do
      c[i][j] = c[i][j]+a[i][k]*b[k][j]
    end
  end
end

function matmul(a,b,c)
  local i
  for i=1,n do
    inner(a,b,c,i,n)
  end
end

n = 50
local a=table_t.new()
local b=table_t.new()
local c=table_t.new()
for i=1,n do
  a[i] = vector_t.new()
  b[i] = vector_t.new()
  c[i] = vector_t.new()
  for j=1,n do
    a[i][j] = i+j
    b[i][j] = i-j
    c[i][j] = 0
  end
end

matmul(a,b,c)

for i=1,10 do
  for j=1,10 do
    io.write(c[i][j])
    io.write('\t')
  end
  io.write('\n')
end
