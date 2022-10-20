# == Schema Information
#
# Table name: companies
#
#  id           :bigint           not null, primary key
#  accountable  :string
#  address      :string
#  city         :string
#  cpf_cnpj     :string
#  email        :string
#  name         :string
#  neighborhood :string
#  phone        :string
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Company < ApplicationRecord
	after_create :setup_user
	has_many :orders

	def setup_user
		User.create(email: self.email, role: :company, company_id: self.id)
	end

	def to_s
		"#{name}"
	end
end
