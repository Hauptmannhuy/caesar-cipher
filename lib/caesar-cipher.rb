get_message = gets.chomp

def caesar_cipher (message, shift)
  encryption = message.bytes
  shifted = []
  encryption.each do |num|
    if num.between?(65,86) || num.between?(97,118)
      shifted << num+shift
    elsif num.between?(86,90) || num.between?(118,122) 
      shifted << num+shift-26
    else 
      shifted << num
    end
  end
  shifted.map{|el| el.chr}.join('')
  
end 

caesar_cipher(get_message, 5)