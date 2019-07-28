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
    attribute :business_hours do |record|
      BusinessHourSerializer.new(record.business_hours).serializable_hash
    end
  end

  attribute :name
  attribute :business_days do |record|
    BusinessDaySerializer.new(record.business_days).serializable_hash
  end
end
