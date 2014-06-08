class AddSocialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_facebook, :boolean
    add_column :users, :is_linkedin, :boolean
    add_column :users, :is_twitter, :boolean
  end
end
