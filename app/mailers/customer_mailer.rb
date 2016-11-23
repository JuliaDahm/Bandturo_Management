class CustomerMailer < ApplicationMailer
  default from: ENV["SMTP_USERNAME"]

  def admin_email(customer)
    @customer = customer
    mail(to: ENV["SMTP_USERNAME"], subject: "Bandturo ~ #{@customer.band_name} Form Submission")
  end 
end
