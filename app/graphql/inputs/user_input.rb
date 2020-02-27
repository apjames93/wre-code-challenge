# frozen_string_literal: true

module Inputs
  class UserInput < Types::BaseInputObject
    graphql_name 'userInput'
    argument :id, ID, required: false
    argument :username, String, required: false
    argument :email, String, required: false
    argument :admin, Boolean, required: false
    argument :created_at, String, required: false
    argument :updated_at, String, required: false
    argument :articles, [ArticleInput], required: false
  end
end
