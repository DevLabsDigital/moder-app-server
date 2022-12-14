# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  cpf        :string
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :role
  has_one :address
  has_many :consultings

  accepts_nested_attributes_for :address
end
