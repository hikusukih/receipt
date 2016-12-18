class AddOauthExpiresToUsers < ActiveRecord::Migration
  def change
    add_column :users, :oauth_expires, :datetime
  end
end
