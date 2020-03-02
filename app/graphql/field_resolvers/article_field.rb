# frozen_string_literal: true

module FieldResolvers
  module ArticleField
    def self.included(child_class)
      child_class.field :article, Types::ArticleType, null: true do
        description 'Get an article by ID'
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    def article(args)
      Article.find(args[:id])
    end
  end
end
