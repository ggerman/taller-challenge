require "rails_helper"

RSpec.describe Reservation, type: :model do
  describe "associations" do
    it "belongs to a book" do
      association = described_class.reflect_on_association(:book)
      expect(association.macro).to eq(:belongs_to)
    end
  end

  describe "validations" do
    let(:book) { Book.create!(title: "Test Book", status: :available) }

    it "is valid with a valid email and book" do
      reservation = Reservation.new(
        email: "user@example.com",
        book: book
      )

      expect(reservation).to be_valid
    end

    it "is invalid without an email" do
      reservation = Reservation.new(book: book)

      expect(reservation).not_to be_valid
      expect(reservation.errors[:email]).to be_present
    end

    it "is invalid with malformed email" do
      reservation = Reservation.new(
        email: "not-an-email",
        book: book
      )

      expect(reservation).not_to be_valid
    end

    it "is invalid without a book" do
      reservation = Reservation.new(email: "user@example.com")

      expect(reservation).not_to be_valid
      expect(reservation.errors[:book]).to be_present
    end
  end
end

