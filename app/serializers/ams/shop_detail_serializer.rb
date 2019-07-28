class Ams::ShopDetailSerializer < Ams::ApplicationSerializer
  class BusinessHourSerializer < Ams::ApplicationSerializer
    attributes :opened_at, :closed_at

    def opened_at
      I18n.l object.opened_at, format: :time
    end

    def closed_at
      I18n.l object.closed_at, format: :time
    end
  end

  attribute :name
  has_many :hours, each_serializer: BusinessHourSerializer
end
