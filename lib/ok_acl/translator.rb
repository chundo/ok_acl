class OkAcl::Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "es"
      "¡Estoy construyendo algo genial para ti!"
    else
      "I'm building something great for you!"
    end
  end
end