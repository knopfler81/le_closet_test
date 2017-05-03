class Like < ApplicationRecord
  belongs_to :user
  belongs_to :product


  def upvote
    self.liked = true
    self.save
  end
end
