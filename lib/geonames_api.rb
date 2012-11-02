require 'open-uri'
require 'json'
require 'active_support/all'
require "geonames_api/version"
require "geonames_api/hash"
require "geonames_api/object"
require "geonames_api/country"
require "geonames_api/weather"

module GeoNamesAPI
  
  mattr_accessor :url
  @@url = "http://api.geonames.org/"

  mattr_accessor :formatted
  @@formatted = true
  
  mattr_accessor :lang
  @@lang = :en
  
  mattr_accessor :username
  @@username = "demo"
  
  mattr_accessor :style
  @@style = :full
  
  def self.params
    { formatted: formatted, lang: lang, username: username, style: style }
  end
  
  
end
