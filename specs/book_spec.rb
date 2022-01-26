require_relative '../book.rb'
require 'date'

describe Book do 
  before(:each) do
    @obj = Book.new date: '2022/01/01', publisher: "Me", cover_state: "bad"
  end

  context 'Book instantiation' do
    it '#new' do
      expect(@obj).to be_a Book
    end
  end

  context 'Test Can_be_archived? Method' do
    it 'Execute Method' do
      @obj.can_be_archived?
      expect(@obj.instance_variable_get("@archived")).to be(true)
    end
  end

end