# frozen_string_literal: true

FactoryBot.define do
  factory :newsletter_preference do
    email { 'sajjad.murtaza@asanarebel.com' }
    women_fashion { false }
    men_fashion { true }
    children_fashion { false }
  end
end
