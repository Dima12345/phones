class PhonesSerrializer < ActiveModel::Serializer
  attributes :number, :user

  def number
    self.object.number.to_s.insert(3, '-').insert(7,'-')
  end
end