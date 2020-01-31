class StatesController < ApplicationController

  def index
    @states = States.all
    json_response(@states)
  end

  def show
    @state = State.find(params[:id])
    json_response(@state)
  end

  def create
    @state = State.create!(state_params)
    json_response(@state, :created)
  end

  def update
    @state = State.find(params[:id])
    if @state.update!(state_params)
      render status: 200, json: {
       message: "This state information has been updated successfully."
       }
    end  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def state_params
    params.permit(:name, :check_reg, :register, :absentee, :next_election, :reg_deadlines)
  end
end
