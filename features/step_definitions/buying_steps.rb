require 'user'
require 'test/unit'
include Test::Unit::Assertions

Given("user is customer") do
  @user = User.new type: :customer
end

When("user request is see price") do
  @user.request == :price
end

When("user do not have the information") do
  @user.context == :none
end

Then("user receives {string}") do |string|
  assert_equal @user.response, string
end
