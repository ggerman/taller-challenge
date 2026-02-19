require "rails_helper"

RSpec.describe Book, type: :model do
  describe "associations" do
    it "has many reservations" do
      association = described_class.reflect_on_association(:reservations)
      expect(association.macro).to eq(:has_many)
    end
  end

  describe "enum status" do
    it "defines the correct statuses" do
      expect(Book.statuses).to eq(
        "available"   => 0,
        "reserved"    => 1,
        "checked_out" => 2
      )
    end

    it "defaults to available when created" do
      book = Book.new
      expect(book.status).to eq("available")
    end

    it "can change status to reserved" do
      book = Book.create!(status: :available)
      book.reserved!
      expect(book.status).to eq("reserved")
    end

    it "can change status to checked_out" do
      book = Book.create!(status: :available)
      book.checked_out!
      expect(book.status).to eq("checked_out")
    end
  end

  describe "enum helpers" do
    it "available? returns true when available" do
      book = Book.create!(status: :available)
      expect(book.available?).to be true
    end

    it "reserved? returns true when reserved" do
      book = Book.create!(status: :reserved)
      expect(book.reserved?).to be true
    end

    it "checked_out? returns true when checked_out" do
      book = Book.create!(status: :checked_out)
      expect(book.checked_out?).to be true
    end
  end
end
