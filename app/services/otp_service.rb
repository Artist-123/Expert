require 'rotp'
class OTPService
	
	def self.generate_otp(secret_key)
		totp = ROTP::TOTP.new(secret_key)
		totp.now
	end
end