class BeanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :active
end
