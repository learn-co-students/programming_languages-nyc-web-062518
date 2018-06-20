def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, lan|
    lan.each do |language, hash|
      if new_hash[language] == nil
        new_hash[language] = hash
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
