# frozen_string_literal: true

module Inputs
  class CategoryInput < Types::BaseInputObject
    graphql_name 'CategoryInput'
    argument :id, ID, required: false
    argument :name, String, required: false
    argument :created_at, String, required: false
    argument :updated_at, String, required: false
    argument :articles, [ArticleInput], required: false
  end
end
