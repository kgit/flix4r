
this_dir = File.dirname(__FILE__)

require 'rubygems'
require 'active_support'
require 'open-uri'
require 'yaml'
require 'hmac-sha1'
require 'json'
require 'net/http'
require 'fileutils'
require 'nokogiri'
require 'crack'
require 'api_cache'
require File.join( this_dir, 'valuable' )

builders = File.join( this_dir, 'net_flix', 'builders')

ActiveSupport::Dependencies.autoload_paths << this_dir
ActiveSupport::Dependencies.autoload_paths << builders
