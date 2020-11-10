class SetupUserMailer < ApplicationMailer
	default from: 'noreply@agrega.com'
	def setup
		@user = params[:user]
		mail(to: @user.email, subject: 'Finalizer o seu cadastro')
	end
end
