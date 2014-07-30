namespace :auto_mail do
	desc 'Task to send daily email'
	message = ""
	task send_mail: :environment do
		User.all.each do |u|
			message << u.email + "\n"
			Employee.where("user_id = ?", u.id).each do |e|
				message << "#{e.name}\t\t#{e.buddy}\n"
			end
			message << "\n"
		end
	puts message
	UserMailer.daily_email(message).deliver	
	end
end