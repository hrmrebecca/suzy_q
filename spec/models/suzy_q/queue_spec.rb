describe SuzyQ::Queue do
  it "should have a table named suzy_q_queues" do
    expect(described_class.table_name).to eq("suzy_q_queues")
  end
end
