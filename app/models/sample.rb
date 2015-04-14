class Sample < ActiveRecord::Base
	belongs_to :lake
	validates_presence_of :data
end
