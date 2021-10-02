class StatesController < ApplicationController
    def index
        states = State.all
        render json: StateSerializer.new(state, {include: [:clinics]})
    end
end
