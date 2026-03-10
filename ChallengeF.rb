num = 21

87.times do
  play(num)
  sleep 0.1
  num = num + 1
end

87.times do
  play(num)
  sleep 0.25
  num = num - 1
end
sample :drum_splash_hard
print("#done")
