def encrypt (code)
  #base variable. loop through string length
  y = 0 
  
  
  #limitation: changing value of z -> a only works for first occurance. If there is more than one z, code fails.
 
 
 
  while y < code.length 
  
   
   code[y] =   code[y].next.chr
  

   y += 1 
  end
  #puts code
  return code
end
encrypt("abc")

encrypt("zed")

def decrypt (code)
  #two base variables to loop thorugh string length

  y = 0 
    
  
 # puts code[x]
 #one loop to identify a letters. This will swap them to z and keep them there.
 
   
  while y < code.length 
    if code.index("a") != NIL
       code[code.index("a")] = "z"
    else
      code[y] =  (code[y].ord-1).chr
    end
   y += 1 
  end
  #puts code
  return code
end

decrypt("bcd")
decrypt("afe")



#Decrypt-encrypt first decrypts the text, then encrypts the result, giving you the same text you had initially.
decrypt(encrypt("swordfish"))

puts "Would you like to encrypt or decrypt? "
lock = gets.chomp!
#while crypt != "encrypt" && crypt != "decrypt"
 # puts "Enter encrypt or decrypt: "
 # crypt = gets.chomp!
#end
puts "Enter password: "
password = gets.chomp!

if lock == "encrypt"
  puts "Encrypting password:  #{encrypt(password)}"
elsif lock == "decrypt"
  puts "Decrypting password: #{decrypt(password)}"
end
