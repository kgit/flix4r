module NetFlix
  class Credentials < Valuable

    @@config_file_name = if defined?(RAILS_ROOT) then File.join( RAILS_ROOT, 'config', 'netflix.yml')
      else File.join(File.dirname(__FILE__), '..', '..', 'netflix.yml')
    end

    has_value :key
    has_value :secret
    has_value :access_token
    
    def valid?
      (key && secret) != nil
    end
    
    class << self

      def config_file_name= file_name
        @@config_file_name = file_name
      end

      def from_file
        new(config_file_exists? ? YAML.load(File.open(@@config_file_name)) : {}) 
      end

      def config_file_exists?
        File.exist? @@config_file_name
      end

    end # class methods

    def to_file!
      credentials_store = File.new(@@config_file_name, 'w')
      credentials_store.puts(self.to_yaml)
      credentials_store.close
    end

    def to_yaml
      attributes.to_yaml
    end
  end

end
