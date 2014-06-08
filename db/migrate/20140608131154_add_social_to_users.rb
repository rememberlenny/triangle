class AddSocialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_facebook, :boolean, :default => false

    add_column :users, :is_linkedin, :boolean, :default => false

    add_column :users, :is_twitter, :boolean, :default => false

  end
end
