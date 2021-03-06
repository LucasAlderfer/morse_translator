class Translator
  attr_reader :dictionary,
              :num_dictionary,
              :morse

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}

    @num_dictionary = {"0" => "-----",
                        "1" => ".----",
                        "2" => "..---",
                        "3" => "...--",
                        "4" => "....-",
                        "5" => ".....",
                        "6" => "-....",
                        "7" => "--...",
                        "8" => "---..",
                        "9" => "----."}

    create_morse_dictionary
  end

  def create_morse_dictionary
    @morse = {}
    @dictionary.each do |key, value|
      @morse[value] = key
    end
    @num_dictionary.each do |key, value|
      @morse[value] = key
    end
  end

end
