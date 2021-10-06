class StatesController < ApplicationController
    def index
        state = State.all
        render json: StateSerializer.new(state, {include: [:clinics]})
    end
end
