module Api::V1
  class CategoriesController < ApplicationController

    before_action :set_categories, only: [:index]
  
    def index
      render json: @categories, status: :ok, each_serializer: CategorySerializer
    end
  
    private
  
    def set_categories
      @categories = Category.all
    end
  end
end

