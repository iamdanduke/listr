class Film < ActiveRecord::Base
	validates :title, presence: true
end
