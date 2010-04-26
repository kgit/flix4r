require 'flix4r'


NetFlix::Credentials.config_file_name = 'netflix.yml'
puts NetFlix::Request.default_cache_options
list = NetFlix::Title.search(:term => 'sneak', :max_results => 2)

puts list.first.title
