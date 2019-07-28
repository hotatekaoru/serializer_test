class Api::Ams::ShopsController < ApplicationController
  def index
    shops = Shop.preload(business_days: :business_hours).page(params[:page]).per(100)
    benchmark('AMS') do
      render json: shops, each_serializer: ::Ams::ShopSerializer,
                          adapter: :json, include: { business_days: :business_hours }
    end
  end
end
