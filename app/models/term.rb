class Term < ApplicationRecord
  has_many :categories, through: :category_term_memberships
  belongs_to :user

  def owned_by_user?(asking_user)
    user == asking_user
  end
end
