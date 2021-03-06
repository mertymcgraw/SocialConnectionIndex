class User < ApplicationRecord
  validates :name, :linkedin_connections, :facebook_friends, :twitter_followers, presence: true
  validates :linkedin_connections, :facebook_friends, :twitter_followers, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


  def social_connection_index
  
    total_followers = self.linkedin_connections + self.twitter_followers + self.facebook_friends

    if total_followers <= 50
      return 1
    elsif total_followers <= 100
      return 1.5
    elsif total_followers <= 200
      return 5
    elsif total_followers <= 400
      return 10
    else 
      return 15
    end 

  end 

  def self.search(search)
    where('lower(name) LIKE ?', "%#{search.downcase}%")
  end


  def self.sort_by_social_connection_index
   User.all.sort_by(&:social_connection_index).reverse
  end

  def self.sorted_by(filter)
    if filter == "rank"
      return User.sort_by_social_connection_index
    elsif filter == "name"
      return order(filter.to_sym)
    end
    order(filter.to_sym => :desc)
  end 



end
