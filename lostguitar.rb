in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

live_loop :flibble do
  sample :ambi_choir, rate: 0.2
  sample :bd_haus, rate: 0.3
  sample :drum_cymbal_closed, rate: 0.5
  sleep 0.5
end

live_loop :guit do
  with_fx :echo, mix: 0.1, phase: 0.5 do
    sample :guit_em9, rate: 1
  end
  sample :guit_em9, rate: -0.5
  sleep 8
end

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 0.5
end

live_loop :perc do
  with_fx :ixi_techno do
    sample :perc_snap2, amp: 2, rate: 1
  end
  sleep 0.2
end

live_loop :snare do
  sample :sn_dub, amp: 1, rate: 1
  sleep 1
end

loop do
  sample :loop_amen
  sleep sample_duration :loop_amen
end

