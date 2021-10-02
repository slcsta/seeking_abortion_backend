class StateSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :clinics
end
