require 'minitest/autorun'

def palindrome(number)

  revNumber = number.reverse

  if number == revNumber
    puts 'Строка является полиндромом'
    return true
  else
    puts 'Строка НЕ полиндром'
    return false
  end
end

puts 'Введите строку для проверки на полиндром'
number = gets.chomp.to_s
palindrome(number)

#UnitTest
class Test < MiniTest::Test

  def test_true
    assert_equal true, palindrome('1221')
  end

  def test_false
    assert_equal false, palindrome('1223')
  end

end