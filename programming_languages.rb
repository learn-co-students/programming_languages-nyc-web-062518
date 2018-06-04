def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_or_functional, language_hash|
    #:oo, {:ruby => {...}}
    language_hash.each do |language, attribute_hash|
      #:ruby, {:type => "interpreted"}
      attribute_hash.each do |attribute, str_value|
        #:type, "interpreted"
        if language_attributes[language].nil?
          #if language :ruby doesn't exist in new hash
          language_attributes[language] = {}  
        end
       
        language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        language_attributes[language][:style] << oo_or_functional                                
        if language_attributes[language][attribute].nil?
           language_attributes[language][attribute] = str_value  
        end
      end
    end
  end
  language_attributes
end
