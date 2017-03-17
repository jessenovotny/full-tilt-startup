class Lead < ApplicationRecord

	before_save :set_first_name

	def set_first_name
		self.first_name = self.name.split(' ')[0] if self.name
	end
end
