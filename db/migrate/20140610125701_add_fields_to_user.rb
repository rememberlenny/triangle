class AddFieldsToUser < ActiveRecord::Migration
  def change
    # https://github.com/skorks/omniauth-linkedin
    add_column :users, :auth_hash_linkedin, :text

    # https://github.com/mkdynamic/omniauth-facebook
    add_column :users, :auth_hash_facebook, :text

    # https://github.com/arunagw/omniauth-twitter
    add_column :users, :auth_hash_twitter, :text
  end
end
