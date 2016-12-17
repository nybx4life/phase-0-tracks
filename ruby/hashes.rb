#Pseudocode: Create hash, ask user for input for client's name, age, # of children, and decor style.
#Afterwards, if statements to check if they want to change their input. Finally, print hash.

client = Hash.new 
#clientname
#clientage
#clientchildnum
#clientdecor

puts "Please input your name: "
client[:clientname] = gets.chomp!

puts "Please input your age: "
client[:clientage] = gets.to_i 

puts "Please input number of children: "
client[:clientchildnum] = gets.to_i

puts "Please input decor style: "
client[:clientdecor] = gets.chomp!

puts "Would you like to update your name? (Type 'none' to keep your name)"
tmpname = gets.chomp!
if(tmpname == "none")
  puts "No change for your name."
else
  client[:clientname] = tmpname
end

puts "Would you like to update your age? (Type '00' to keep your age)"
tmpage = gets.to_i
if(tmpage == 00)
  puts "No change for your age."
else
  client[:clientage] = tmpage
end

puts "Would you like to update your number of children? (Type '00' to keep your number of children)"
tmpkids = gets.to_i
if(tmpkids == 00)
  puts "No change for your number of kids."
else
  client[:clientchildnum] = tmpkids
end

puts "Would you like to update your decor theme? (Type 'none' to keep your decor theme)"
tmpdecor = gets.chomp!
if(tmpdecor == "none")
  puts "No change for your decor."
else
  client[:clientdecor] = tmpdecor
end
  

puts client