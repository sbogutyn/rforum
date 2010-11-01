Given /^I have forum (.+)$/ do |name|
  Forum.create(:name => name)
end

Given /^I have forums (.+)$/ do |names|
  names.split(', ').each do |name|
    Forum.create(:name => name)
  end
end

Given /^I add forum (.+)$/ do |name|
  Forum.create(:name => name)
end

Given /^I remove forum (.+)$/ do |name|
  @forum = Forum.where(:name => name).first
  @forum.destroy
end

Given /^I change name of (.+) to (.+)$/ do |original, changed|
  @forum = Forum.where(:name => original).first
  @forum.name = changed
  @forum.save
end
