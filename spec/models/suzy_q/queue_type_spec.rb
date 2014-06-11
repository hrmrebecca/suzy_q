describe SuzyQ::QueueType do
  it "should have a table named suzy_q_queue_types" do
    expect(described_class.table_name).to eq("suzy_q_queue_types")
  end
end
