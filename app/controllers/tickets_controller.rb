class TicketsController < ApplicationController
  def index
    @tickets = Ticket.order(created_at: :desc)
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket,
                  notice: 'Ticket was successfully created.'
    else
      render :new
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  private

  def ticket_params
    params
      .require(:ticket)
      .permit(:title, :description, :reporter)
  end
end
