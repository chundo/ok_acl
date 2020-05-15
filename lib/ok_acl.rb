require "ok_acl/version"

module OkAcl
  class Error < StandardError; end
  # Your code goes here...

  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end  
end

# require 'ok_acl/translator'