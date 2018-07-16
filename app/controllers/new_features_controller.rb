class NewFeaturesController < ApplicationController
  def index
    @news = NewFeature.all
  end

  def new
    @new_feature = NewFeature.new
  end

  def create
    @new_feature = NewFeature.create!(new_feature_params)
    @new_feature.image.attach(params[:new_feature][:image])
    # redirect_to @new_feature
  end

  def show
    @new_feature = NewFeature.find(params[:id])
  end

  private

  def new_feature_params
    params.require(:new_feature).permit(:title, :text, :image)
  end
end
