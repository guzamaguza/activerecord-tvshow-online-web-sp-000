class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
  end

  def Show::most_popular_show
    Show.order(rating: :desc).first
  end

  def Show::lowest_rating
    Show.minimum(:rating).value
  end

  def Show::least_popular_show
    Show.order(rating: :asc).first
  end

  def ratings_sum
    #returns the sum of all of the ratings
    Show.sum(:rating)
  end

  def popular_shows
    Show.where(:rating > 5)
  end

  def shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end
