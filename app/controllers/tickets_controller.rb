class TicketsController < ApplicationController
  def index
    @tickets = Ticket.order(created_at: :desc)
  end

  def new
    @ticket = Ticket.new

    if params[:ticket]
      @ticket.assign_attributes(ticket_params)
    end
  end

  def preview
    @ticket = Ticket.new(ticket_params)

    render :new unless @ticket.valid?
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket,
                  notice: 'Ticket was successfully created.'
    else
      render :preview
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  private

  def ticket_params
    params
      .require(:ticket)
      .permit(
        :title,
        :description,
        :reporter,
        :terms_of_service,
        :require_terms_of_service
      )
  end
  helper_method :ticket_params
end
