def reformat_languages(languages)
  # your code here
  arrayOfStyles = []
  new_hash = {}
  languages.each do |languageCategory, languageSet|
    languageSet.each do |languageItem, type|
      if languageItem != :javascript
        type[:style] = [languageCategory]
        new_hash[languageItem] = type
      else
        arrayOfStyles.push(languageCategory)
        new_hash[languageItem] = type
      end
    end
  end
  new_hash[:javascript][:style] = arrayOfStyles
  return new_hash
end
