# frozen_string_literal: true

class NewsletterPreferencesController < ApplicationController
  def new
    @newsletter_preference = NewsletterPreference.new
  end

  def create
    @newsletter_preference = NewsletterPreference.new(newsletter_preference_params)

    if @newsletter_preference.save
      SubscriptionMailer.confirmation(@newsletter_preference.email).deliver

      flash[:notice] = 'You have successfully subscribed to the newsletter'
    else
      flash[:alert] = @newsletter_preference.errors.full_messages.to_sentence
    end

    redirect_to new_newsletter_preference_path
  end

  private

  def newsletter_preference_params
    params.require(:newsletter_preference).permit(:email, :women_fashion, :men_fashion, :children_fashion)
  end
end
