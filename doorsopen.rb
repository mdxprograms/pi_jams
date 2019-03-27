live_loop :one do
  sample :bd_808, amp: 8, rate: 1
  sleep 0.5
end

live_loop :off_kilter do
  sample :drum_cymbal_closed, amp: 0.2, rate: 1
  sleep 0.9
  sample :elec_wood, rate: 0.1
  sample :elec_hollow_kick, rate: 1
end

live_loop :drone do
  sample :ambi_drone, rate: 0.3, slice: 0.1
  sleep 1
end

live_loop :sub do
  play 43
  sleep 1
end

live_loop :arp do
  play 64
  sleep 1
end
