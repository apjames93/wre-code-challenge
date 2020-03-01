# frozen_string_literal: true

module Types
  class ArticleType < Types::BaseObject
    description 'Fields accessible for an ArticleType'
    field :id, ID, null: true
    field :user_id, ID, null: true
    field :title, String, null: true
    field :description, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :user, UserType, null: true
    field :categories, [CategoryType], null: true
  end
end
