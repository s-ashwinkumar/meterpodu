module GoogleApi
  class Direction

  	include RosettaStone::YamlSettings
    yaml_settings(:config_file => 'sgoogleapi.yml', :hash_reader => false)
    
    class << self
    	def get_distance
    	end	
    end	
  end
end  	