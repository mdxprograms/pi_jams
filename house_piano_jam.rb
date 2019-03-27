# Welcome to Sonic Pi v3.1
use_bpm 130

in_thread do
  # drums
  live_loop :snare do
    
    sleep 1
    sample :sn_zome, amp: 1.2, compress: 1, amp: [1, 1.8].choose
    sleep 1
  end
  
  live_loop :tom do
    sample :elec_wood, amp: 0.5, decay: 1, attack: 0.2
    sleep [0.25, 0.5, 0.75].choose
  end
  
  live_loop :kick do
    sample :bd_haus, compress: 1, amp: [1, 1.5].choose
    sleep 1
  end
  
  live_loop :hat do
    
    sleep 0.5
    sample :elec_cymbal, amp: [0.2, 0.3].choose
    sleep 0.5
  end
  
  #bass
  live_loop :bass do
    use_synth :sine
    with_fx :distortion, amp: 0.3 do
      play ["a2", "e3", "c3", "b2"].choose
      sleep 1
    end
  end
  
  # lead
  live_loop :lead do
    
    use_synth :piano
    play [["e3", "b3"], ["c4", "g4"], ["a4", "e4"]].choose
    sleep 1
  end
end


