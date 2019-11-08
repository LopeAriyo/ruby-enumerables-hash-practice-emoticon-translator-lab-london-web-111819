# require modules here
require 'yaml'

def load_library(file_path)

  emoticon = {"get_meaning"=> {}, "get_emoticon" => {}}
#return value is a hash {}
# return value has two keys that point to inner hashes
#{"get_meaning"=> {japanese_emoticon => meaning}, "get_emoticon" => {english_emoticon => japanese_equivalent}}

  YAML.load_file(file_path).each do |meaning, describe| #for each emoticon in the file path
    eng, jpn = describe
    emoticon["get_meaning"][jpn] = meaning # makes japanese emoticon point to a meaning
    emoticon["get_emoticon"][eng] = jpn #makes the english emoticon point to japanese equivalent
  end

  emoticon

end

def get_japanese_emoticon (file_path, emoticon)
  # code goes here

  emoticon_directory = load_library(file_path) #calls library

  output = emoticon_directory["get_emoticon"][emoticon]

  if output #if the output exists in the directory is true

   output # returns the output
  else 
    
    p "Sorry, that emoticon was not found"
  end



end

def get_english_meaning (file_path, emoticon)
  # code goes here

  load_library(file_path)
end
