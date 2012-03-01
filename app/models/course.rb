class Course < ActiveRecord::Base
	validates_length_of :title, :within => 5..100,
	:too_short => "Title too short! Please pick a longer title.",
	:too_long => "Title too long! Please pick a shorter title"

	has_many :assignments
end
