class Api::ShopDetail
  # for AMS
  alias :read_attribute_for_serialization :send

  def initialize(shop:)
    @shop = shop
  end

  def name
    shop.name
  end

  def hours
    today_business_day = shop.business_days.preload(:business_hours).find_by!(day_of_week_code: Date.today.wday)
    today_business_day.business_hours
  end

  # for AMS
  def self.model_name
    @_model_name ||= ActiveModel::Name.new(self)
  end

  private

  attr_reader :shop
end
