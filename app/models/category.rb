class Category < ApplicationRecord
  has_many :category_term_memberships, dependent: :destroy
  has_many :terms, through: :category_term_memberships
  belongs_to :user, optional: true

  def owned_by_user?(asking_user)
    user == asking_user
  end
end
