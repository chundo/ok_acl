require "ok_acl/version"
require 'ok_acl/translator'

module OkAcl
  class Error < StandardError; end
  # Your code goes here...
  
  def self.hi(language = "en")
    translator = Translator.new(language)
    translator.hi
  end
end