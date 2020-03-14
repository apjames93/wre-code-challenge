# frozen_string_literal: true

module Mutations
  class UpsertArticle < Mutations::BaseMutation
    description 'Creates or updates an article. Pass an ID with an article to update, omit ID to create. Pass category_ids to assign new categories to the article.'
    argument :article, Inputs::ArticleInput, required: true
    argument :category_ids, [ID], required: false
    type Types::ArticleType

    def resolve(args)
      category_ids = args[:category_ids] || []
      args_hash = args[:article].to_h

      if args_hash[:id]
        article = Article.find(args_hash[:id])
        article.update(args_hash)
      else 
        article = Article.new(args_hash)
        article.save
      end

      if category_ids.count > 0
        category_ids.each do |id|
          ArticleCategory.create(article: article, category_id: id) if ArticleCategory.find_by(article: article, category_id: id).nil?
        end
      end
      
      raise GraphQL::ExecutionError.new(article.errors.full_messages) unless article.errors.empty?

      article
    end
  end
end
