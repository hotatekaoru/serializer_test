class Fj::ShopSerializer < Fj::ApplicationSerializer
  class BusinessDaySerializer < Fj::ApplicationSerializer
    class BusinessHourSerializer < Fj::ApplicationSerializer
      attribute :opened_at do |record|
        I18n.l record[:opened_at], format: :time
      end

      attribute :closed_at do |record|
        I18n.l record[:closed_at], format: :time
      end
    end

    attributes :day_of_week_code, :opened
    has_many :business_hours, serializer: BusinessHourSerializer
  end

  attribute :name
  has_many :business_days, serializer: BusinessDaySerializer
end
