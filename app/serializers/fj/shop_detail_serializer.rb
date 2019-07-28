class Fj::ShopDetailSerializer < Fj::ApplicationSerializer
  set_id :nil?

  class BusinessHourSerializer < Fj::ApplicationSerializer
    attribute :opened_at do |record|
      I18n.l record[:opened_at], format: :time
    end

    attribute :closed_at do |record|
      I18n.l record[:closed_at], format: :time
    end
  end

  attribute :name

  attribute :business_hours do |record|
    BusinessHourSerializer.new(record.hours).serializable_hash
  end
end
