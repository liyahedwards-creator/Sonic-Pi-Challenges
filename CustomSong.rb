use_bpm 70
use_synth :piano

define :param do |sleeptime|
  play :fs3
  sleep sleeptime
end
i = 0
arrayNotes = [ :cs5, :d5, :a5, :fs4, :fs4, :a4, :cs5, :d5]

djo = "C:/Users/liyah_edwards/Downloads/short.mp3"
chicago = "C:/Users/liyah_edwards/Downloads/Djo  Joe Keery - End of Beginning (acapellavocals only).mp3"


live_loop :ddjo do
  6.times do
    sample djo, amp: 0.6
    sleep 7
  end
  stop
end

sleep 7

live_loop :test do
  2.times do
    8.times do
      play (arrayNotes[i])
      sleep 0.5
      i = i + 1
      if i > 7
        i = 0
      end
    end
    play :cs5
    play :fs4
    sleep 1.5
    play :fs4
    sleep 0.5
    play :fs4
    sleep 0.5
    play :a4
    sleep 0.5
    play :cs5
    sleep 0.5
    play :d5
    sleep 0.5
    play :r
    sleep 1
    play :cs5
    sleep 0.5
    play :b4
    sleep 0.5
    play :r
    sleep 2
    
    play :r
    sleep 1
    play :d5
    play :b4
    sleep 0.5
    play :d5
    play :b4
    sleep 0.5
    play :cs5
    sleep 0.5
    play :d5
    sleep 0.25
    play :cs5
    sleep 0.25
    play :cs5
    sleep 1
  end
  stop
end

sleep 16

live_loop :bass do
  4.times do
    play :e2, amp: 0.5
    sleep 0.5
    play :fs2, amp: 0.5
    sleep 0.5
    play :a2
    sleep 1
  end
  
  play :b2
  sleep 0.5
  play :d3
  sleep 0.5
  param 1
  play :b2
  sleep 0.5
  play :d3
  sleep 0.5
  param 0.5
  play :d3
  sleep 0.5
  
  
  play :g2
  sleep 1
  play :b2
  sleep 0.5
  play :e3
  sleep 0.5
  play :a2
  sleep 1
  play :cs3
  sleep 0.5
  play :e3
  sleep 0.5
  stop
end

sleep 16

live_loop :chicagi do
  sample chicago, start: 0, finish: 0.25, amp: 1
  sleep 5.735/4
  sample chicago, start: 0.25, finish: 0.5, amp: 2
  sleep 5.735/4
  sample chicago, start: 0.5, finish: 0.75, amp: 3
  sleep 5.735/4
  sample chicago, start: 0.75, finish: 1, amp: 4
  sleep 5.735/4
  stop
end
sleep 5.735
sample :drum_splash_hard
