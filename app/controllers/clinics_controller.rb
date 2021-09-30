class ClinicsController < ApplicationController
    def index
        clincs = Clinic.all
        render json: clinics 
    end
end
