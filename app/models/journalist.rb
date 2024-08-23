class Journalist < ApplicationRecord
  belongs_to :user
  validates :name, presence: true #, format: { with: /\A[^\.\s\/?#&%•]+\z/ , message: "Sorry, you can use Any Language but URL Specific Characters are not allowed because they break the links. You cannot use: .?#&%•"} , uniqueness: { case_sensitive: false }
end
