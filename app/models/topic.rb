class Topic < ActiveRecord::Base
  attr_accessible :name, :user_id, :family_id
  has_many :quizzes
  belongs_to :family
  belongs_to :user
  validates :slug, presence: true

  def to_param
    "#{slug}".parameterize
  end
end
