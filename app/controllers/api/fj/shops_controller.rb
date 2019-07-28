class Api::Fj::ShopsController < ApplicationController
  def index
    shops = Shop.preload(business_days: :business_hours).page(params[:page]).per(100)
    benchmark('FJ index') do
      render json: ::Fj::ShopSerializer.new(shops).serialized_json
    end
  end

  def show
    shop = Shop.find(params[:id])
    benchmark('FJ show') do
      render json: ::Fj::ShopDetailSerializer.new(::Api::ShopDetail.new(shop: shop)).serialized_json
    end
  end
end
