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

class Deliveryman < ApplicationRecord
	include BCrypt
	has_secure_password 
	has_many :orders, foreign_key: :deliveryman_id
	#validates_uniqueness_of [:email, :rg, :cpf_cnpj]

	def to_s
		"#{name}"
	end

	def self.token_secret
		Time.now.to_s
	end

	def notify(title, message, data, buttons)
		begin
			# Create headings for different languages. English is required.
			headings = OneSignal::Notification::Headings.new(en: "#{title}")
			# Create contents for different languages. English is required.
			contents = OneSignal::Notification::Contents.new(en: "#{message}")
			# Select the included (and/or excluded) segments to target
			included_segments = [OneSignal::Segment::ACTIVE_USERS]
			
			filters = [{field: "email", relation: '=', value: self.email}]

			attachments = OneSignal::Attachments.new(
				data: data
			)
			# Create the Notification object
			notification = OneSignal::Notification.new(headings: headings, contents: contents, included_segments: included_segments, filters: filters, attachments: attachments, buttons: buttons)
			
			response = OneSignal.send_notification(notification)
		rescue => e
			puts e
		end
	end

	def self.send_notification(title, message, data, buttons)
		self.where("is_online = true").each do |user|
			user.notify(title, message, data, buttons)
		end
	end
	
  
  	def self.decodeWebToken(token, token_secret)
		decoded_token = JWT.decode token, token_secret, true, { algorithm: 'HS256' }
	end

	def generate_web_token
		if !self.wb_token_expires_at || self.wb_token_expires_at < Time.now
			
			payload = {user_id: self.id}
			token = JWT.encode payload, Deliveryman.token_secret, 'HS256'
			self.wb_token = token
			self.wb_token_expires_at = Time.now + 15.minutes
			self.save

		end
	end
end
