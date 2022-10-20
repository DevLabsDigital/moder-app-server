# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  address    :string
#  cep        :string
#  city       :string
#  district   :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  profile_id :bigint
#
# Indexes
#
#  index_addresses_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  fk_rails_...  (profile_id => profiles.id)
#

class Address < ApplicationRecord
  belongs_to :profile
end
