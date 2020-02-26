# frozen_string_literal: true

module Mutations
  class UpsertCategory < Mutations::BaseMutation
    argument :category, Inputs::CategoryInput, required: true
    type Types::CategoryType

    def resolve(args)
      category_arg = args[:category].to_h
      if context[:current_user][:admin].blank?
        raise GraphQL::ExecutionError.new('Only admins can perform that action')
      end

      if category_arg[:id]
        category = Category.find(category_arg[:id])
      else 
        category = Category.new(category_arg)
      end
      category.update(category_arg)
      category
    end
  end
end
