require "pry"

def reformat_languages(languages)
  languages_reorg = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      if languages_reorg[language] == nil
        languages_reorg[language] = type_hash
        languages_reorg[language][:style] = [style]
      else languages_reorg[language][:style] << style
      end
    end
  end
  languages_reorg
end
