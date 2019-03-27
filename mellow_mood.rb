use_bpm 125

live_loop :main do
  sleep 1
end

melody_chords = [
  [:E2, :B3, :E4],
  [:D2, :A3, :D3],
  [:D2, :A3, :D4],
  [:D2, :A3, :D4],
  [:D2, :A3, :D4],
  [:Fs3, :Cs4, :Fs4],
  [:A3, :D4, :A4]
]

# drum beat
live_loop :kicker, sync: :main do
  sample :bd_fat, amp: [0.8, 1, 1.2].choose
  sleep 1
end

live_loop :snare, sync: :kicker do
  with_fx :gverb, damp: 0.5, dry: 1, mix: 0.1 do
    sample :sn_generic, pitch: [0.2, 0.25].choose, amp: 0.1
  end
  sample :drum_snare_soft, amp: [0.5, 0.75, 1].choose
  sleep 2
end

live_loop :hats, sync: :kicker do
  sleep 0.5
  sample :drum_cymbal_closed, amp: [0.15, 0.2, 0.25].choose
  sleep 0.5
end

live_loop :blipper, sync: :kicker do
  sleep 3.75
  sample :elec_beep, amp: 0.05
  sleep 4.25
end

live_loop :break, sync: :kicker do
  with_fx :panslicer do
    with_fx :bitcrusher, mix: 0.2 do
      sample :loop_breakbeat, beat_stretch: 2, amp: 0.3, pitch: [0, -0.5, 2].choose
      sleep 2
    end
  end
end

# sounds
live_loop :melody, sync: :main do
  use_synth :chipbass
  melody_chords.each_with_index do |chord, index|
    
    with_fx :echo, mix: 1, phase: 0.5, max_phase: 2, mix: 1, decay: 10 do
      play chord, amp: 0.17
    end
    
    if index < 4
      sleep 1.5
    else
      sleep 0.5
    end
  end
end
