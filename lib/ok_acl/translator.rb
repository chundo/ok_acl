class OkAcl::Translator
    def initialize(language)
      @language = language
    end
  
    def hi
      case @language
      when "spanish"
        # "hola mundo"
        "¡Estoy construyendo algo genial para ti!"
      else
        # "hello world"
        "I'm building something great for you!"
      end
    end
end