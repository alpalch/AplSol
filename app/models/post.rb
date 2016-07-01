class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  def user_name
    user_name = User.where(id: user_id).first
  end
end
