require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  word = 'What a string!'

  it 'returns "Bmfy f xywnsl!" if shift is 5' do
    result = caesar_cipher( word, 5 )
    expect(result).to eql('Bmfy f xywnsl!')
  end
  it 'returns "Vgvs z rzsirf!" if shift is 25' do
    result = caesar_cipher(word, 25)
    expect(result).to eql('Vgzs z rsqhmf!')
  end
  it 'returns original string if shift is 26' do
    result = caesar_cipher(word, 26)
    expect(result).to eql(word)
  end
  it 'returns "Value of shift cannot be zero or less!" if shift <= 0' do
    result = caesar_cipher(word,0)
    expect(result).to eql('Value of shift cannot be zero or less!')
  end
  it 'returns "Message have not been set!" if message is empty' do
    result = caesar_cipher('',1)
    expect(result).to eql("Message haven't been set!")
  end
end