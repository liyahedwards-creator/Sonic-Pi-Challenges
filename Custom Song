use_bpm 80
use_synth :piano

djo = "C:/Users/liyah_edwards/Downloads/Djo - end of beginning (drums).mp3"

live_loop :ddjo do
  1.times do
    sample djo, amp:1
    sleep 10
  end
  stop
end

sleep 0.5

live_loop :bass1 do
  2.times do
    play :cs4
    sleep 0.5
    play :d4
    sleep 0.5
    play :fs4
    sleep 1
  end
  stop
end

live_loop :test do
  1.times do
    play :cs5
    sleep 0.5
    play :d5
    sleep 0.5
    play :a5
    sleep 0.5
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
  end
  stop
end

sleep 4

live_loop :dogs do
  1.times do
    play :cs5
    play :fs4
    sleep 0.5
    
    play :fs4
    sleep 0.5
  end
  stop
end

sleep 4

play :cs5
sleep 0.5
play :b4
