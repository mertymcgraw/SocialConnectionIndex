class User < ApplicationRecord
  validates :name, :linkedin_connections, :facebook_friends, :twitter_followers {presence: true}
  validates :linkedin_connections, :facebook_friends, :twitter_followers, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


  def social_connection_index

  end 

end
