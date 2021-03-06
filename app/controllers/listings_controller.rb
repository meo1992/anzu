class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:update, :basics, :description, :address, :price, :shokai, :photos, :calendar, :bankaccount, :publish]

  def index
  end

  def show
  end

  def new
    @listing = current_user.listings.build
  end

  def create
    #パラメーターとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
    end

  end

  def edit
  end

  def update
   if  @listing.update(listing_params)
    redirect_to :back, notice: "更新できました"
   end
  end

  def basics
  end

  def description
  end

  def address
  end

  def price
  end

  def shokai
  end

  def photos
    @photo = Photo.new
  end

  def calendar
  end

  def bankaccount
  end

  def publish
  end


  private
  def listing_params
    params.require(:listing).permit(:national, :bogo, :japanese, :gengo, :price_normal, :price_first)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end