class Notice < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many :messages

  validates :subject, presence: true
  validates :notice, presence: true

  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end
end
