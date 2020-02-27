# frozen_string_literal: true

module Mutations
  class DestroyArticle < Mutations::BaseMutation
    argument :id, GraphQL::Types::ID, required: true
    type Types::ArticleType

    def resolve(args)
      article = Article.find(args[:id])
      article.destroy
    end
  end
end
