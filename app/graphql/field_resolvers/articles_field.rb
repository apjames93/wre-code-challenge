# frozen_string_literal: true

module FieldResolvers
  module ArticlesField
    def self.included(child_class)
      child_class.field :articles, [Types::ArticleType], null: true do
        description 'Returns the most recent 25 articles. Available arguments: title, description, user_id, or none at all. If any of the arguments are given, it will apply them to the database where clause.'
        argument :title, GraphQL::Types::String, required: false
        argument :description, GraphQL::Types::String, required: false
        argument :user_id, GraphQL::Types::ID, required: false
      end
    end

    def articles(args = {})
      if args[:title] != '' || args[:description] != '' || args[:user_id] != ''
        Article.where(args)
      else
        Article.all.limit(25)
      end
    end
  end
end
