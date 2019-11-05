class CommentsController < ApplicationController
  def create
    comment = ticket.comments.create!(comment_params)

    redirect_to ticket
  end

  private

  def ticket
    Ticket.find(params[:ticket_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
