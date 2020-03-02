# frozen_string_literal: true

module Mutations
  class UpsertArticle < Mutations::BaseMutation
    argument :article, Inputs::ArticleInput, required: true
    argument :category_ids, [ID], required: false
    type Types::ArticleType

    def resolve(args)
      args_hash = args[:article].to_h

      if args_hash[:id]
        article = Article.find(args_hash[:id])
      else 
        article = Article.new(args_hash)
      end

      article.update(args_hash.merge(user_id: user_id))
      args[:category_ids].each { |id| ArticleCategory.create(article: article, category_id: id) } if args[:category_ids].count > 0

      article
    end
  end
end
