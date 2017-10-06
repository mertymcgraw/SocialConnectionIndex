class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :linkedin_connections, default: 0
      t.integer :facebook_friends, default: 0
      t.integer :twitter_followers, default: 0


      t.timestamps
    end
  end
end
