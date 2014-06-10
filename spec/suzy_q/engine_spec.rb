describe SuzyQ::Engine do
  it "is a Rails Engine" do
    expect(described_class.ancestors).to include(Rails::Engine)
  end
end
  
