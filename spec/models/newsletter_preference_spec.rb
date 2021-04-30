# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NewsletterPreference, type: :model do
  it 'has a valid factory' do
    newsletter_preference = create :newsletter_preference
    expect(newsletter_preference).to be_valid
  end
end
