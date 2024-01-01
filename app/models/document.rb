class Document < ApplicationRecord
  belongs_to :emp

  has_one_attached :image

  validates :name, :doc_type, presence: true
end
