in_thread do
  loop do
    sample :bd_fat, amp: 4, rate: 1, compress: 1
    sleep 0.5
  end
end

live_loop :flibble do
  with_fx :pan, pan: [-1, 1].choose do
    sample :ambi_choir, rate: 0.7, amp: 0.4
  end
  sleep 0.5
end

live_loop :guit do
  sleep 4
  with_fx :echo, mix: 0.1, phase: 0.5 do
    sample :guit_em9, rate: 1
  end
  sample :guit_em9, rate: -0.5
  sleep 8
end

live_loop :boom do
  sleep 0.5
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 8, rate: 2, compress: 1, decay_level: 0.5
  end
  sleep 0.5
end

live_loop :perc do
  sample :perc_snap2, amp: 2, rate: 2, pitch: [5, 2, 4].choose
  sleep 0.2
end

live_loop :snare do
  sleep 0.5
  sample :sn_dub, amp: 1, rate: 1.5, decay_level: 0.5, compress: 1
  sleep 0.5
end

loop do
  sample :loop_amen, beat_stretch: 2, pitch: 2
  sleep 1
end

