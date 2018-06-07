require "pry"

def reformat_languages(languages)
  reformated_hash = {}
  languages.each do |language_style, language|
    language.each do |language_name, language_attributes|
      if language_attributes[:style] == nil
      language_attributes[:style] = [language_style]
      else
        language_attributes[:style] << language_style
      end
      if reformated_hash[language_name] == nil
        reformated_hash[language_name] = language_attributes
      else
        reformated_hash[language_name][:style] << language_style
      end
    end
  end
  reformated_hash
end
