require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe "HIT adapter" do

  before(:all) do
    aws = YAML.load(File.open(File.join(SPEC_ROOT, 'mturk.yml')))
    RTurk.setup(aws['AWSAccessKeyId'], aws['AWSAccessKey'], :sandbox => true)
    faker('create_hit', :operation => 'CreateHIT')
  end

  it "should let us create a hit" do
    RTurk::Hit.create(:title => 'foo', :description => 'do foo', :question => 'http://mpercival.com', :reward => 0.05)
  end
  
  it "should request information on an existing hit" do
    RTurk::Hit.new(12345)
  end
  
  it "should get all reviewable hits"
  
  it "should find assignments for a hit"
  
  it "should expire a hit"
  
  it "should dispose of a hit"

end
