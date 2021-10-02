class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: ClinicSerializer.new(clinics)
    end
end
