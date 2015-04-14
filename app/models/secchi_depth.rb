class SecchiDepth < ActiveRecord::Base
	belongs_to :lake
	has_one :chloro
	#validates_presence_of :secchi_depth
	
end
