class Qa < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user,optional: true
  has_many :notices
  has_many :messages

  validates :subject, presence: true
  validates :question, presence: true
  validates :answer, presence: true

  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end
end
