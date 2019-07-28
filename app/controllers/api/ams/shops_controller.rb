class Api::Ams::ShopsController < ApplicationController
  def index
    shops = Shop.preload(business_days: :business_hours).page(params[:page]).per(100)
    benchmark('AMS index') do
      render json: shops, each_serializer: ::Ams::ShopSerializer,
                          adapter: :json, include: { business_days: :business_hours }
    end
  end

  def show
    shop = Shop.find(params[:id])
    benchmark('AMS show') do
      render json: ::Api::ShopDetail.new(shop: shop),
             serializer: ::Ams::ShopDetailSerializer,
             adapter: :json
    end
  end
end
