a = {1, 2, 3, 4, 5};
local i = 1;
while a[i] do
	print(a[i]);
	i = i + 1;
end

print("Hello Lua!")

print("------------")
function createCountdownTimer(second)
  local ms = second * 1000
  local function countDown()
    ms = ms - 1
    return ms
  end
  return countDown
end

timer1 = createCountdownTimer(1)

for i = 1, 3 do
  print(timer1())
end

print("------------")
timer2 = createCountdownTimer(1)
for i = 1, 3 do
  print(timer2())
end

print("------------")
print(timer1())	-->996
print(timer1())	-->995
print(timer1())	-->994


print("------------")
timer3 = createCountdownTimer(1)
for i = 1, 3 do
  print(timer3())
end

timer3 = createCountdownTimer(1)
print(timer3())
print(timer3())