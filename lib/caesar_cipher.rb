def caesar_cipher(message, shift)
  return 'Value of shift cannot be zero or less!' if shift <= 0
  return "Message haven't been set!" if message.empty?

  encryption = message.bytes
  shifted = []
  encryption.each do |num|
    if num.between?(65, 90) || num.between?(97, 122)
      shift.times do
        num -= 26 if [90, 122].include?(num)
        num += 1
      end
    end
    shifted << num
  end
  shifted.map(&:chr).join('')
end
