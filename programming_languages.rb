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

      if !new_hash[languageHash]
        dataHash[:style] = []
        dataHash[:style].push(style)
        new_hash[languageHash] = dataHash

      else
        new_hash[languageHash][:style].push(style)

      end
    end
  end
  puts new_hash
  new_hash
end
