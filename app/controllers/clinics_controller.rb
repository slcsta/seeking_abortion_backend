class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: ClinicSerializer.new(clinics)
    end

    def create
        clinic = Clinic.new(clinic_params)
        if clinic.save
            render json: ClinicSerializer.new(clinic)
        else
            render json: {error: "error: failed to save"}
        end
    end

    private

    def clinic_params
        params.require(:clinic).permit(:name, :address, :city, :zip_code, :phone_number)
    end
end
