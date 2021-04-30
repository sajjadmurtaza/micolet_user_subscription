# frozen_string_literal: true

class NewsletterPreference < ApplicationRecord
  validate :atleast_one_preference_is_checked

  validates :email, presence: true, uniqueness: true, 'valid_email_2/email': true
  validate :check_email

  private

  def atleast_one_preference_is_checked
    errors.add(:base, 'Select atleast one fashion') unless women_fashion || men_fashion || children_fashion
  end

  def check_email
    quality_score = EmailValidation.email_quality_score(email)

    errors.add :email, 'is not valid' unless quality_score.to_f > 0.7
  end
end
