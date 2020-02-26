# frozen_string_literal: true

module Types
  class CategoryType < Types::BaseObject
    description 'Fields accessible for category'
    field :id, ID, null: true
    field :name, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :articles, [ArticleType], null: true
  end
end
