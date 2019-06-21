if Rails.env == "development"
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device = File.open(Rails.root.join("log","active_merchant.log"), "a+")
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device.sync = true
  ActiveMerchant::Billing::Base.mode = :test

  login = "janet24"
  password="99!Monkies"
elsif Rails.env == "production"
  login = 'mylogin'
  password='mypassword'
end
GATEWAY = ActiveMerchant::Billing::FirstdataE4Gateway.new({
                                                              login: "janet24",
                                                              password: "99!Monkies"
                                                          })