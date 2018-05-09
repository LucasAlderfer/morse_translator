# YOUR TESTS GO IN HERE!
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'
require './lib/translate.rb'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def test_it_translates
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_it_handles_caps_and_numbers
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_it_can_take_input_from_files
    translator = Translate.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_it_can_translate_back
    translator = Translate.new
    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
