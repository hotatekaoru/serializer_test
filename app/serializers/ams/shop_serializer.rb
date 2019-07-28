class Ams::ShopSerializer < Ams::ApplicationSerializer
  class BusinessDaySerializer < Ams::ApplicationSerializer
    class BusinessHourSerializer < Ams::ApplicationSerializer
      attributes :opened_at, :closed_at

      def opened_at
        I18n.l object.opened_at, format: :time
      end

      def closed_at
        I18n.l object.closed_at, format: :time
      end
    end

    attributes :day_of_week_code, :opened
    has_many :business_hours, each_serializer: BusinessHourSerializer
  end

  attribute :name
  has_many :business_days, each_serializer: BusinessDaySerializer
end
