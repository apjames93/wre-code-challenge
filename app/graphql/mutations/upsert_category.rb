# frozen_string_literal: true

module Mutations
  class UpsertCategory < Mutations::BaseMutation
    description 'Creates or updates an category. Pass an ID with an category to update, omit ID to create.'
    argument :category, Inputs::CategoryInput, required: true
    type Types::CategoryType

    def resolve(args)
      args_hash = args[:category].to_h

      if args_hash[:id]
        category = Category.find(args_hash[:id])
        category.update(args_hash)
      else 
        category = Category.new(args_hash)
        category.save
      end

      raise GraphQL::ExecutionError.new(category.errors.full_messages) unless category.errors.empty?

      category
    end
  end
end
