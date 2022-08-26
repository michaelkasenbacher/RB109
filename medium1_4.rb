=begin
You have a bank of switches before you, numbered from 1 to n.
Each switch is connected to exactly one light that is initially off.
You walk down the row of switches and toggle every one of them.
You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches
and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on |on if num
round 2: [2, 4] off; [1, 3, 5] on |on if num % 2 != 0
round 3: [2, 3, 4] off; [1, 5] on |on if num % 3 != 0
round 4: [2, 3] off; [1, 4, 5] on
round 5: [2, 3, 5] off; [1, 4] on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=end
# on = "o"
# off = "O"

#my new solution
# def lights(num)
#   arr = (0...num).to_a
#   arr = arr.map {|num| "o"}
#   rounds = num - 1
#   counter = 2
#   rounds.times do
#     arr.each.with_index do |char, idx|
#       char.swapcase! if (idx+1) % counter == 0
#     end
#     counter += 1
#   end
#   arr = arr.map.with_index {|toggle, idx| idx+1 if toggle == "o"}
#   arr.compact
# end

# my old solution
def lights_on?(num)
  on = []
  1.upto(num) {|n| on << n}
  off = []
  round = 2

  while round <= num
    on_select = on.select{|n| n if n % round == 0}
    on = on.reject{|n| n if n % round == 0}

    off_select = off.select{|n| n if n % round == 0}
    off = off.reject{|n| n if n % round == 0}
    
    on += off_select
    off += on_select
    round += 1
  end
  
  on
end

p lights_on?(1000)