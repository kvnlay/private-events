class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(params[:id])
  end

  def new
  end

  def create
    current_user = @user
    @event = @user.events.build(event_params)
    if @event.save
      flash[:success] = 'Event successfully created'
      redirect_to events_path
    else
      flash.now[:danger] = 'Event couldn\'t be created'
      render 'new'
    end
  end



  private
  def event_params
    params.require(:event).permit(:description)
  end
end
