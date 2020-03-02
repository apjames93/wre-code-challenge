# frozen_string_literal: true

module FieldResolvers
  module CategoriesField
    def self.included(child_class)
      child_class.field :categories, [Types::CategoryType], null: true do
        description 'Get a category by name'
        argument :name, GraphQL::Types::String, required: true
      end
    end

    def categories(args)
      Category.where(args)
    end
  end
end
