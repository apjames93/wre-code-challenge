# frozen_string_literal: true

module FieldResolvers
  module ArticlesField
    def self.included(child_class)
      child_class.field :articles, Types::ArticleType, null: true do
        description 'gets article by id'
        argument :title, GraphQL::Types::String, required: false
        argument :description, GraphQL::Types::String, required: false
        argument :user_id, GraphQL::Types::ID, required: false
      end
    end

    def articles(args)
      Article.where(args)
    end
  end
end
