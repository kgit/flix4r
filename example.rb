require 'flix4r'


NetFlix::Credentials.config_file_name = 'netflix.yml'
list = NetFlix::Title.search(:term => 'sneakers', :max_results => 2)

puts list.first.title
