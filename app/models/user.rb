class User < ApplicationRecord


has_many :votes
has_many :works, through: :votes

  def votes?(work)
    work.votes.where(user_id: id).any?
  end




end
