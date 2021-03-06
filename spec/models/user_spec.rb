require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :name => "Example User", :email => "user@example.com" }
  end
<<<<<<< HEAD
 
=======

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end
  
>>>>>>> modeling-users
  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end
<<<<<<< HEAD
=======
  #it "should reject duplicate email addresses" do
      # Put a user with given email address into the database.
  #    User.create!(@attr)
  #    user_with_duplicate_email = User.new(@attr)
  #    user_with_duplicate_email.should_not be_valid
  #  end
>>>>>>> modeling-users
end
