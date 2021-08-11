class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ポイントカード' },
    { id: 3, name: 'アプリ' },
    { id: 4, name: '決済方法' },
    { id: 5, name: 'クーポン' },
    { id: 6, name: 'キャンペーン' },
  ]

  include ActiveHash::Associations
  has_many :notices

  end