require_relative '../label'
require_relative '../book'

describe Label do
  before(:each) do
    @obj = Label.new(title: 'Cool label', color: 'red')
  end

  context 'Label instantiation' do
    it '#new' do
      expect(@obj).to be_a Label
    end
  end

  context 'Test add_item Method' do
    it 'Execute Method' do
      mock = Book.new(date: '2020/01/01', publisher: 'Me', cover_state: 'bad')
      @obj.add_item(mock)
      expect(@obj.instance_variable_get('@items').length).to be(1)
      expect(mock.instance_variable_get('@label')).to be(@obj)
    end
  end
end
