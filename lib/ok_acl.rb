# frozen_string_literal: true

require 'ok_acl/version'
require 'ok_acl/translator'
require 'ok_acl/railtie' if defined?(Rails)

module OkAcl
  class Error < StandardError; end
  # Your code goes here...

  # Say hi to the world!
  #
  # Example:
  #   >> OkAcl.hi("es")
  #   => ¡Estoy construyendo algo genial para ti!
  #
  #   >> OkAcl.hi("en")
  #   => I'm building something great for you!
  #
  # Arguments:
  #   language: (String)

  def self.hi(language = 'en')
    translator = Translator.new(language)
    translator.hi
  end
end
