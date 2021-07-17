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

class User < ApplicationRecord
  include Rails.application.routes.url_helpers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: { company: 'company', admin: 'admin', deliveryman: 'deliveryman' }
  
  belongs_to :company

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile

  delegate :name, to: :profile, allow_nil: true

  accepts_nested_attributes_for :profile

  after_initialize :auto_fill_password
  after_initialize :setup_profile

  after_create :send_mail_to_finalize_register

  

  def configuration_last_year
    company.balance_sheets.where("year is not null").order(:year).configs.last.year
  end

  def last_significant_change
    Time.now + 6.years
  end 

  def setup_profile
  	self.profile ||= Profile.new
  end

  def auto_fill_password
    if !self.persisted?
      generated_password = Devise.friendly_token.first(8)         
      self.password ||= generated_password
      self.password_confirmation ||= generated_password  
    end
  end

  def send_mail_to_finalize_register
    self.email_hash =  SecureRandom.uuid
    self.save
    SetupUserMailer.with(user: self).setup.deliver_now
  end

  
  
end
