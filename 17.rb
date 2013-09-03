@sentence = ''

def generate_word(number)
  numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  large_num = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'hundred', 'one thousand']
  if number > 0 and number < 20
    @sentence += numbers[number]
    number = 0
  elsif number >= 20 and number < 100 and number % 10 == 0
    @sentence += large_num[(number/10) - 2]
    number = 0
  elsif number >= 20 and number < 100 and number % 10 != 0
    @sentence += large_num[(number/10) - 2] + ' '
    number  = (number%10).to_i
  elsif number == 1000
    @sentence += large_num[9]
    number -= 1000
  elsif number >= 100 and number < 1000
    @sentence += numbers[number.to_s[0].to_i] + ' ' + 'hundred'
    number = number%100.to_i
    if number > 0
      @sentence += ' and '
    end
  end
  if number != 0
    generate_word(number)
  else
    @sentence += "\n"
  end
end

string = ' '
1.upto(1000) { |x|
 string += generate_word(x)
 @sentence = ''  
}

string = string.gsub(/\s+/, "")
puts string.length