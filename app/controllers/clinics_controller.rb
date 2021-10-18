class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: ClinicSerializer.new(clinics)
    end

    def show
        
    end

    def create
        
        clinic = Clinic.new(clinic_params)
        if clinic.save
            render json: ClinicSerializer.new(clinic)
        else
            render json: {error: "Failed to save"}
        end
    end

    def destroy
        clinic = Clinic.find_by_id(params[:id])
        clinic.destroy
        render json: {message: "#{clinic.name} successfully deleted"}
    end

    private

    def clinic_params
        params.require(:clinic).permit(:name, :address, :city, :zip_code, :phone_number, :state_id, :state.name)
    end
end
