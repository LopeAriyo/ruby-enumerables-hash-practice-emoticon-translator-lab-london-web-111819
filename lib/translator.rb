# require modules here

def load_library(file_path)

  emoticon = {"get_meaning"=> {}, "get_emoticon" => {}}
#return value is a hash {}
# return value has two keys that point to inner hashes
#{"get_meaning"=> {japanese_emoticon => meaning}, "get_emoticon" => {english_emoticon => japanese_equivalent}}

  YAML.load_file(file_path).each do |meaning, describe|
    eng, jpn = describe
    emoticon["get_meaning"][jpn] = meaning
    emoticon["get_emoticon"][eng] = jpn
  end

  #for each emoticon in the file path 

  p emoticon

end

def get_japanese_emoticon (file_path, emoticon)
  # code goes here

  load_library(file_path)

end

def get_english_meaning (file_path, emoticon)
  # code goes here

  load_library(file_path)
end
