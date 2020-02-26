# frozen_string_literal: true

module Inputs
  class ArticleInput < Types::BaseInputObject
    graphql_name 'ArticleInput'
    argument :id, ID, required: false
    argument :user_id, ID, required: false
    argument :title, String, required: false
    argument :description, String, required: false
    argument :created_at, String, required: false
    argument :updated_at, String, required: false
    argument :user, UserInput, required: false
    argument :categories, [CategoryInput], required: false
  end
end
