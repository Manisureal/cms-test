class NewFeaturesController < ApplicationController
  def index
    @news = NewFeature.all
  end

  def new
    @new_feature = NewFeature.new
  end

  def create
    # @new_feature = NewFeature.create!(new_feature_params)
    @new_feature = NewFeature.new(new_feature_params)
    if !@new_feature.images.attach.blank? == true
      @new_feature.images.attach(params[:new_feature][:images])
      @new_feature.save
      redirect_to new_features_path
      flash[:notice] = "News Blog was successfully created!"
      # @new_feature_images = @new_feature.images.attach(params[:new_feature][:images])
      # @new_feature_images.save
    else
      @new_feature.save
      redirect_to new_features_path
      flash[:notice] = "News Blog was successfully created!"
    end
  end

  def show
    @new_feature = NewFeature.find(params[:id])
  end

  def edit
    @new_feature = NewFeature.find(params[:id])
  end

  def update
    @new_feature = NewFeature.find(params[:id])
    if @new_feature.update(new_feature_params)
      flash[:notice] = "News Blog successfully updated!"
    end
  end

  def destroy
    @new_feature = NewFeature.find(params[:id])
    if @new_feature.destroy
      redirect_to new_features_path
      flash[:notice] = "News Blog was successfully deleted!"
    end
  end

  private

  def new_feature_params
    params.require(:new_feature).permit(:title, :text, images: [])
  end
end
