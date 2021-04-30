# frozen_string_literal: true

class CreateNewsletterPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :newsletter_preferences do |t|
      t.string :email
      t.boolean :women_fashion, default: 0
      t.boolean :men_fashion, default: 0
      t.boolean :children_fashion, default: 0

      t.timestamps
    end
  end
end
