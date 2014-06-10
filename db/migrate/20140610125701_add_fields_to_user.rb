class AddFieldsToUser < ActiveRecord::Migration
  def change
    # https://github.com/skorks/omniauth-linkedin
    add_column :users, :linkedin_id, :string
    add_column :users, :linkedin_email_address, :string
    add_column :users, :linkedin_first_name, :string
    add_column :users, :linkedin_last_name, :string
    add_column :users, :linkedin_headline, :string
    add_column :users, :linkedin_industry, :string
    add_column :users, :linkedin_picture_url, :string
    add_column :users, :linkedin_public_profile_url, :string
    add_column :users, :linkedin_location, :string

    # https://github.com/mkdynamic/omniauth-facebook
    add_column :users, :facebook_nickname, :string
    add_column :users, :facebook_email, :string
    add_column :users, :facebook_name, :string
    add_column :users, :facebook_first_name, :string
    add_column :users, :facebook_last_name, :string
    add_column :users, :facebook_image, :string
    add_column :users, :facebook_urls, :string
    add_column :users, :facebook_location, :string
    add_column :users, :facebook_id, :string
    add_column :users, :facebook_nam, :string
    add_column :users, :facebook_first_nam, :string
    add_column :users, :facebook_last_nam, :string
    add_column :users, :facebook_lin, :string
    add_column :users, :facebook_usernam, :string
    add_column :users, :facebook_locatio, :string
    add_column :users, :facebook_gende, :string
    add_column :users, :facebook_emai, :string
    add_column :users, :facebook_timezon, :string
    add_column :users, :facebook_local, :string
    add_column :users, :facebook_verifie, :string

    # https://github.com/arunagw/omniauth-twitter
    add_column :users, :twitter_nickname, :string
    add_column :users, :twitter_name, :string
    add_column :users, :twitter_location, :string
    add_column :users, :twitter_image, :string
    add_column :users, :twitter_description, :string
    add_column :users, :twitter_Website, :string
    add_column :users, :twitter_Twitter, :string
    add_column :users, :twitter_name, :string
    add_column :users, :twitter_listed_count, :string
    add_column :users, :twitter_profile_sidebar_border_color, :string
    add_column :users, :twitter_url, :string
    add_column :users, :twitter_lang, :string
    add_column :users, :twitter_statuses_count, :string
    add_column :users, :twitter_profile_image_url, :string
    add_column :users, :twitter_profile_background_image_url_https, :string
    add_column :users, :twitter_location, :string
    add_column :users, :twitter_time_zone, :string
    add_column :users, :twitter_follow_request_sent, :string
    add_column :users, :twitter_id, :string
    add_column :users, :twitter_profile_background_tile, :string
    add_column :users, :twitter_profile_sidebar_fill_color, :string
    add_column :users, :twitter_followers_count, :string
    add_column :users, :twitter_default_profile_image, :string
    add_column :users, :twitter_screen_name, :string
    add_column :users, :twitter_following, :string
    add_column :users, :twitter_utc_offset, :string
    add_column :users, :twitter_verified, :string
    add_column :users, :twitter_favourites_count, :string
    add_column :users, :twitter_profile_background_color, :string
    add_column :users, :twitter_is_translator, :string
    add_column :users, :twitter_friends_count, :string
    add_column :users, :twitter_notifications, :string
    add_column :users, :twitter_geo_enabled, :string
    add_column :users, :twitter_profile_background_image_url, :string
    add_column :users, :twitter_protected, :string
    add_column :users, :twitter_description, :string
    add_column :users, :twitter_profile_link_color, :string
    add_column :users, :twitter_created_at, :string
    add_column :users, :twitter_id_str, :string
    add_column :users, :twitter_profile_image_url_https, :string
    add_column :users, :twitter_default_profile, :string
    add_column :users, :twitter_profile_use_background_image, :string
    add_column :users, :twitter_profile_text_color, :string
    add_column :users, :twitter_contributors_enabled, :string
  end
end
