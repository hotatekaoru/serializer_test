class Fj::ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  # fast_jsonapiをJSON:API型で返さなくさせる魔法の呪文
  # override https://github.com/Netflix/fast_jsonapi/blob/master/lib/fast_jsonapi/object_serializer.rb
  def hash_for_collection
    fieldset = @fieldsets[self.class.record_type.to_sym]
    @resource.map do |record|
      self.class.record_hash(record, fieldset, @params)[:attributes]
    end
  end

  # fast_jsonapiをJSON:API型で返さなくさせる魔法の呪文
  # override https://github.com/Netflix/fast_jsonapi/blob/master/lib/fast_jsonapi/object_serializer.rb
  def hash_for_one_record
    return nil unless @resource

    self.class.record_hash(@resource, @fieldsets[self.class.record_type.to_sym], @params)[:attributes]
  end
end
