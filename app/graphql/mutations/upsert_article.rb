# frozen_string_literal: true

module Mutations
  class UpsertArticle < Mutations::BaseMutation
    argument :article, Inputs::ArticleInput, required: true
    argument :category_ids, [ID], required: false
    type Types::ArticleType

    def resolve(args)
      artical_arg = args[:article].to_h
      user_id = context[:current_user][:id]

      if artical_arg[:id]
        article = Article.find(artical_arg[:id])
        user_id = article.user_id
      else 
        article = Article.new(artical_arg)
      end

      if article.id && article.user_id != context[:current_user][:id] && context[:current_user][:admin] == false
        raise GraphQL::ExecutionError.new('You can only edit or delete your own articles')
      end

      article.update(artical_arg.merge(user_id: user_id))

      args[:category_ids].each { |id| ArticleCategory.create(article: article, category_id: id) } if args[:category_ids].count > 0

      article
    end
  end
end
