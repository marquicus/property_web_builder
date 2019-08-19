module Pwb
  class ApplicationMailer < ActionMailer::Base
    default from: 'soporte@consultorinmobiliario.mx'
    layout 'mailer'
  end
end
