# Define a table of morse code characters and their corresponding letters or numbers.
MORSE_TABLE = {
    'A' => '.-',
    'B' => '-...',
    'C' => '-.-.',
    'D' => '-..',
    'E' => '.',
    'F' => '..-.',
    'G' => '--.',
    'H' => '....',
    'I' => '..',
    'J' => '.---',
    'K' => '-.-',
    'L' => '.-..',
    'M' => '--',
    'N' => '-.',
    'O' => '---',
    'P' => '.--.',
    'Q' => '--.-',
    'R' => '.-.',
    'S' => '...',
    'T' => '-',
    'U' => '..-',
    'V' => '...-',
    'W' => '.--',
    'X' => '-..-',
    'Y' => '-.--',
    'Z' => '--..',
    '0' => '-----',
    '1' => '----',
    '2' => '..---',
    '3' => '...--',
    '4' => '....-',
    '5' => '.....',
    '6' => '-....',
    '7' => '--...',
    '8' => '---..',
    '9' => '----.'
}.freeze

# Define a method to decode a single character from the morse table
def decode_char(char)
    MORSE_TABLE[char]
end

# Define a method to decode a word from morse table
def decode_word(word)
    decoded_word = ''

    # Map each character in morse table to it's corresponding letter in the word
    word.split.each do |char|
        decoded_word += decode_char(char)
    end

    # Return the decoded word
    decoded_word
end

# Define method to decode a sentence
def decode (sentence)
    decoded_sentence = ''
    sentence.split(' ').each do |word|
        decoded_sentence += "#{decode_word(word)}"
    end
end
