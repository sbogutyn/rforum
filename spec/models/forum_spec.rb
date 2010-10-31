require 'spec_helper'

describe Forum do

  before(:each) do
    @valid_attributes = {
      :name => "MegaForum"
    }
    @existing_forum = Forum.create(@valid_attributes)
  end

  it "should have a name" do
    new_forum = Forum.new 
    new_forum.should_not be_valid
  end

  it "should have unique names" do
    new_forum = Forum.new(:name => "MegaForum")
    new_forum.should_not be_valid
  end

  it "should have name lesser than 30 characters in length" do
    new_forum = Forum.new(:name => "A" * 31)
    new_forum.should_not be_valid
  end

  it "should have name with more thane 4 character length" do
    new_forum = Forum.new(:name => "A" * 3)
    new_forum.should_not be_valid
  end

  it "should have name starting with upper case letter" do
    new_forum = Forum.new(:name => "male forum")
    new_forum.should_not be_valid
  end

  it "should accept 'ExampleForum' as a name" do
    new_forum = Forum.new(:name => "ExampleForum")
    new_forum.should be_valid
  end

end
