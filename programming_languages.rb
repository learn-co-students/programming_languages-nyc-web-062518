require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, collection|
  collection.each do |language, type_hash|
    if !new_hash[language]
      new_hash[language] = type_hash
    end
      if language == :javascript
        #binding.pry
      end
      if new_hash[language][:style] == nil
      new_hash[language][:style] = [type]
      else
      new_hash[language][:style] << type
    end
    end
    #new_hash.each do |idiom, values|
    #  new_hash[idiom].store(:style, type)
    #end
  end

  new_hash
end
