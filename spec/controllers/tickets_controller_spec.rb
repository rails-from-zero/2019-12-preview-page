require 'rails_helper'

RSpec.describe TicketsController do
  describe "#new" do
    it "renders the new template" do
      get :new

      expect(response).to render_template("new")
    end
  end

  describe "#create" do
    subject(:perform_request) { post :create, params: params }

    let(:params) {
      {
        ticket: {
          title: "Some title",
          description: "some",
          reporter: "someone"
        }
      }
    }

    it "creates a record" do
      expect { perform_request }.to change { Ticket.count }.by(1)
    end

    it { is_expected.to redirect_to(Ticket.last) }

    context "with invalid data" do
      before do
        params[:ticket][:title] = ""
      end

      it "renders the new template" do
        perform_request

        expect(response).to render_template("new")
      end
    end
  end
end
