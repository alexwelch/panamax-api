class AppSerializer < ActiveModel::Serializer
  self.root = false

  attributes :id, :name, :from, :errors, :documentation

  has_many :categories, serializer: AppCategorySerializer

  def errors
    object.errors.delete(:services) if object.errors.has_key?(:services)
    object.errors if object.errors.present?
  end
end
