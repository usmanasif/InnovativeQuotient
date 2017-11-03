class BusinessesController < ApplicationController
  def new
    @business = Business.new
    @categories = Category.all
    # @classes = 2.times{ @business.classes.build }
    @classes = @business.classes.build
  end

  def edit
  end
end
