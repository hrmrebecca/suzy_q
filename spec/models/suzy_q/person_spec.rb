describe SuzyQ::Person do
  it "has a table named suzy_q_people" do
    expect(described_class.table_name).to eq 'suzy_q_people'
  end

  #TODO pending
  xit { should belong_to(:personable) }
end
