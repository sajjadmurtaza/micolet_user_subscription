# frozen_string_literal: true

class SubscriptionMailer < ApplicationMailer
  def confirmation(email)
    @email = email
    mail(to: @email, subject: 'Subscription Confirmation')
  end
end
