class Show < ActiveRecord::Base
  attr_accessor :season

  def Show::highest_rating
    Show.maximum(:rating)
  end

  def Show::most_popular_show
    Show.order(rating: :desc).first
  end

  def Show::lowest_rating
    Show.minimum(:rating)
  end

  def Show::least_popular_show
    Show.order(rating: :asc).first
  end

  def Show::ratings_sum
    #returns the sum of all of the ratings
    Show.sum(:rating)
  end

  def Show::popular_shows
    #returns an array of all of the shows that have a rating greater than 5
    Show.where("rating > 5")
  end

  def Show::shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end
