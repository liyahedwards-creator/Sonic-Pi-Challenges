use_bpm 85
use_synth :sine
lorde = "C:/Users/liyah_edwards/Downloads/Lorde - Royals (Instrumental).mp3"
royals = "C:/Users/liyah_edwards/Downloads/Lorde - Royals [vocals only].mp3"
lyrics ="C:/Users/liyah_edwards/Downloads/background.mp3"
intro = "C:/Users/liyah_edwards/Downloads/Lorde reveals how she feels about Charli xcxs song Girl, so confusing  Take 5 with Zan Rowe.mp3"
i = 0
notes = [
  :e2,:e2,:d3,:e2,:e2,:e2,:e2,:e2,:e2,:e2,
  :e2,:e2,:e2,:e2,:d3,:e2
]
times = [
  0.75,0.25,0.5,0.5,0.5,0.25,0.25,0.25,0.25,0.5,
  0.75,0.25,0.75,0.25,0.5,0.5
]
starts = [0, 0.25, 0.5, 0.75]
amps   = [1, 2, 3, 4]
sleep_time = 3.337 / 4

define :anynote do |loops, notes, sleeps|
  loops.times do
    play notes
    sleep sleeps
  end
end
define :param1 do |sleeptime|
  play :cs4
  sleep sleeptime
end
define :d4Play do
  play :d4
  sleep 0.5
end
define :measures5And4And8 do
  anynote 2, :cs4, 0.5
  anynote 2, :d4, 0.5
  anynote 4, :fs4, 0.25
  anynote 2, :d4, 0.5
end

live_loop :inny do
  1.times do
    sample intro, amp: 2
  end
  stop
end

sleep 30
live_loop :Lorde do
  6.times do
    sample lorde
    sleep sample_duration(lorde)
  end
  stop
end

sleep 4
live_loop :beat do
  64.times do
    sleep 0.5
    sample :drum_cymbal_closed ,amp: 0.3
    sleep 0.125
    sample :drum_cymbal_closed ,amp: 0.3
    sleep 0.125
    sleep 0.25
  end
  stop
end

live_loop :vocals do
  #measure 1
  2.times do
    play :r
    sleep 2.5
    anynote 2, :d4, 0.25
    d4Play
    play :g4
    sleep 0.5
    #measure 2
    play :fs4
    sleep 2
    2.times do
      play :d4
      sleep 0.25
      d4Play
    end
    play :g4
    sleep 0.5
    #measure 3
    play :fs4
    sleep 0.25
    play :e4
    sleep 0.5
    play :d4
    sleep 0.25
    play :d4
    sleep 1
    play :d4
    sleep 0.25
    anynote 2, :d4, 0.25
    play :e4
    sleep 0.25
    play :fs4
    sleep 0.25
    play :e4
    sleep 0.25
    d4Play
    #measure 4&5
    2.times do
      measures5And4And8
    end
    #measure 6
    play :cs4
    sleep 0.25
    param1 0.5
    play :cs4
    sleep 0.25
    param1 1
    play :r
    sleep 1
    play :r
    sleep 0.25
    anynote 3, :cs4, 0.25
    #measure 7
    anynote 2, :cs4, 0.25
    param1 0.5
    play :cs4
    sleep 0.25
    param1 0.5
    anynote 2, :cs4, 0.25
    anynote 2, :d4, 0.25
    play :e4
    sleep 0.25
    play :fs4
    sleep 0.25
    play :e4
    sleep 0.25
    play :d4
    sleep 0.5
    #measure 8
    measures5And4And8
  end
  stop
end

live_loop :lyrics do
  1.times do sleep 33.5
    sample lyrics, amp: 1.5
  end
  stop
end

sleep 32
live_loop :bass do
  4.times do
    16.times do
      play notes[i]
      sleep times[i]
      i = i + 1
      if i > 15
        i = 0
      end
    end
  end
  stop
end

sleep 32
live_loop :royalsSample do
  4.times do
    sample royals, start: starts[i], finish: starts[i] + 0.25, amp: amps[i]
    sleep sleep_time
    i += 1
  end
  stop
end
