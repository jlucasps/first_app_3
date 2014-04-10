class Bill < ActiveRecord::Base

  validates :name, presence: true, allow_blank: false
  validates :user_id, presence: true
  validates :date, presence: true
  validates :value, presence: true

  belongs_to :user
  has_many :comments, as: :commentable

  default_scope { order('bills.date DESC') } 

  scope :recents, -> { order('bills.date DESC').limit(5) }

  scope :yesterday, -> { where('bills.date > ?', 1.day.ago) }

  scope :before_yesterday, -> {
    where('bills.date > ?', 2.days.ago).
    where.not('bills.date > ?', 1.day.ago) 
  }

  scope :days_ago, ->(x) {
    where('bills.date > ?', x.days.ago)
  }
end