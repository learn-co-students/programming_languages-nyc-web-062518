languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


def reformat_languages(languages)
  new_hash = {}
  languages.each do | style, languagesHash |
    languagesHash.each do | languageHash, dataHash |
      new_hash[languageHash] ||= dataHash
      new_hash[languageHash][:style] ||= []
      new_hash[languageHash][:style].push(style)
    end
  end
  new_hash
end
