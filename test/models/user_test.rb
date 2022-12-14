# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  email_hash             :string
#  encrypted_password     :string           default(""), not null
#  is_online              :boolean
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  company_id             :bigint
#
# Indexes
#
#  index_users_on_company_id            (company_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
