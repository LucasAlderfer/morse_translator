require './lib/translator.rb'
require 'pry'

class Translate
  def initialize
  end

  def eng_to_morse(string)
    translator = Translator.new
    to_translate = string
    first_array = to_translate.downcase.split('')
    new_string = []
    first_array.each do |each|
      if each.to_i == 0 && each != "0"
       new_string << translator.dictionary[each]
      else
       new_string << translator.num_dictionary[each]
      end
    end
    translation = new_string.join
  end

  def from_file(file)
    if file == "input.txt"
      file_name = "./lib/input.txt"
      file_object = File.open(file_name)
      text = file_object.read
    else
      text = file
    end
    eng_to_morse(text)
  end

  def morse_to_eng(morse_entry)
    translator = Translator.new
    to_translate = morse_entry
    first_array = to_translate.downcase.split('  ')
    translated_string = []
    first_array.each do |word|
      letters = word.split(' ')
      new_string = []
      letters.each do |each|
        new_string << translator.morse[each]
      end
      translated_string << new_string.join
    end
    translation = translated_string.join(" ")
  end

end
