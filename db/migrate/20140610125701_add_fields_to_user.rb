class AddFieldsToUser < ActiveRecord::Migration
  def change
    # https://github.com/skorks/omniauth-linkedin
    add_column :users, :auth_hash_linkedin, :string

    # https://github.com/mkdynamic/omniauth-facebook
    add_column :users, :auth_hash_facebook, :string

    # https://github.com/arunagw/omniauth-twitter
    add_column :users, :auth_hash_twitter, :string
  end
end
