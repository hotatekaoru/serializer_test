class Api::Fj::ShopsController < ApplicationController
  def index
    shops = Shop.preload(business_days: :business_hours).page(params[:page]).per(100)
    benchmark('FJ') do
      render json: ::Fj::ShopSerializer.new(shops).serialized_json
    end
  end
end
