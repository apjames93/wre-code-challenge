# frozen_string_literal: true

module Mutations
  class DestroyArticle < Mutations::BaseMutation
    argument :id, GraphQL::Types::ID, required: true
    type Types::ArticleType

    def resolve(args)
      article = Article.find(args[:id])

      raise GraphQL::ExecutionError.new('Article not found') if article.id.blank?

      if article.user_id != context[:current_user][:id] && context[:current_user][:admin] == false
        raise GraphQL::ExecutionError.new('You can only delete your own articles')
      end

      article.destroy
    end
  end
end
