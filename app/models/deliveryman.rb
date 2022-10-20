# == Schema Information
#
# Table name: deliverymen
#
#  id                    :bigint           not null, primary key
#  address               :string
#  birthday              :date
#  city                  :string
#  cpf_cnpj              :string
#  email                 :string
#  name                  :string
#  neighborhood          :string
#  phone                 :string
#  rg                    :string
#  uf                    :string
#  vehicle_color         :string
#  vehicle_license_plate :string
#  vehicle_model         :string
#  vehicle_year          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Deliveryman < ApplicationRecord
	def to_s
		"#{name}"
	end
end
