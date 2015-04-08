require "drprl/version"
require 'nokogiri'
require 'time'
require 'json'
require 'open-uri'

require 'document_builder'

require 'drprl/post'
require 'drprl/post_collection'
require 'drprl/document'

require 'drprl/parser'
require 'drprl/uri_parser'

module Drprl
  def self.parse(uri)
    Parser.new(uri).call
  end

  def self.parse_uri(uri)
    URIParser.new(uri).call
  end
end
