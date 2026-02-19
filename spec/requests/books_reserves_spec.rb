require "rails_helper"

RSpec.describe "Book Reservations", type: :request do
  let!(:book) { Book.create!(title: "Clean Code", status: :available) }

  describe "POST /books/:id/reserve" do
    it "reserves an available book" do
      post "/books/#{book.id}/reserve",
           params: { reservation: { email: "ggerman@gmail.com" } },
           as: :json

      expect(response).to have_http_status(:created)
      expect(book.reload.status).to eq("reserved")
      expect(Reservation.count).to eq(1)
    end

    it "fails when book is not available" do
      book.update!(status: :reserved)

      post "/books/#{book.id}/reserve",
           params: { reservation: { email: "ggerman@gmail.com" } },
           as: :json

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
