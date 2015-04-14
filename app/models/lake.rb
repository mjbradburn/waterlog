class Lake < ActiveRecord::Base
	has_many :samples, dependent: :destroy
	has_many :secchi_depths, dependent: :destroy
	has_many :phosphos, dependent: :destroy
end
