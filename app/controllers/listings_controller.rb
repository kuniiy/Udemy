class ListingsController < ApplicationController
    before_action :authenticate_user!
    
  def index
  end

  def show
  end

  def new
      #現在のユーザーのリスティングの作成
      @listing = current_user.listings.build
  end

  def create
      #パラメーターと共に現在のユーザーのリスティングを作成
      @listing = current_user.listings.build(listing_params)
      
      if @listing.save
        redirect_to edit_listing_path(@listing), notice: "リスティングを作成・保存をしました"
      else
        redirect_to new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
      end
  end

  def edit
  end

  def update
  end
    
    private
    def listing_params
        params.require(:listing).permit(:area_type, :category_type, :people_type)
    end
end
