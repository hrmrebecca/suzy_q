describe SuzyQ::Task do
  it "should have a table named suzy_q_tasks" do
    expect(described_class.table_name).to eq("suzy_q_tasks")
  end
end
