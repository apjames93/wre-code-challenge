# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description 'Fields accessible for ArticleType'
    field :id, ID, null: true
    field :username, String, null: true
    field :email, String, null: true
    field :admin, Boolean, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :articles, [ArticleType], null: true
  end
end
