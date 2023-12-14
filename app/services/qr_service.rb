require 'rqrcode'
class QRService
def generate_qr_code(otp)
  qrcode = RQRCode::QRCode.new(otp)
  # Render the QR code as an image (you may want to customize the size, format, etc.)
  qrcode.as_png
end

# Generate the QR code for the OTP
qr_code = generate_qr_code(otp)
end