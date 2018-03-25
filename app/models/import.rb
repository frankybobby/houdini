class Import < ActiveRecord::Base

	attr_accessible \
		:user_id, :user,
		:email, # email of the user who ma
		:nonprofit_id, :nonprofit,
		:row_count,
		:imported_count,
		:date

	has_many :supporters
	belongs_to :nonprofit
	belongs_to :user

	validates :user, presence: true

end
