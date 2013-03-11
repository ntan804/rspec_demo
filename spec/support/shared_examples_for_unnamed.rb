shared_examples_for 'the unnamed' do
  it 'does not have a name' do
    subject.name.should == nil
  end
end
