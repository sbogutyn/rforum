Given /^I have forum (.*)$/ do |name|
  Forum.create(:name => name)
end

Given /^I have forums (.*)$/ do |names|
  names.split(',').each do |name|
    Forum.create(:name => name)
  end
end

Given /^I add forum (.*)$/ do |name|
  Forum.create(:name => name)
end

Given /^I remove forum (.*)t$/ do |name|
  @forum = Forum.find(:name => name)
  @forum.destroy!
end

Given /^I change name of First to Other$/ do
  pending # express the regexp above with the code you wish you had
end
