class ClinicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :city, :zip_code, :phone_number, :state_id, :state
end
