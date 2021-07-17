# == Schema Information
#
# Table name: deliverymen
#
#  id                    :bigint           not null, primary key
#  address               :string
#  birthday              :date
#  cep                   :string
#  city                  :string
#  cpf_cnpj              :string
#  email                 :string
#  is_online             :boolean
#  name                  :string
#  neighborhood          :string
#  password_digest       :string
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

class DeliverymanSerializer
  include JSONAPI::Serializer
  set_key_transform :camel_lower
  attributes :name, :email, :is_online #:address ,:birthday ,:cep ,:city ,:cpf_cnpj ,:email ,:is_online ,:name ,:neighborhood ,:phone ,:rg ,:uf ,:vehicle_color ,:vehicle_license_plate ,:vehicle_model ,:vehicle_year
  
end
