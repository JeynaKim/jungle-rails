require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "should save successfully, if all of the required information are filled" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", password: "12345", email:"jeyna.kim@test.com", password_confirmation: "12345")
      @user.save
      expect(@user.id).to be_present
    end 

    it "should not save, if there is no password information for new user" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", email:"jeyna.kim@test.com", password_confirmation: "12345")
      @user.save
      expect(@user.id).not_to be_present
    end 

    it "should not save, if there is no password_confirmation for new user" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", email:"jeyna.kim@test.com", password_confirmation: "")
      @user.save
      expect(@user.id).not_to be_present
    end

    it "should not save, if password and password_confirmation do not match" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", email:"jeyna.kim@test.com", password: "1234", password_confirmation: "12345")
      @user.save
      expect(@user.errors.full_messages).to include ("Password confirmation doesn't match Password")
    end 

    it "should not save, if the user's email is not present" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", password: "12345", password_confirmation: "12345")
      @user.save
      expect(@user.errors.full_messages).to include ("Email can't be blank")
    end 

    it "should not save, if the user's first name is not present" do
      @user = User.new(last_name: "Kim", email:"jeyna.kim@test.com", password: "1234", password_confirmation: "12345")
      @user.save
      expect(@user.errors.full_messages).to include ("First name can't be blank")
    end 

    it "should not save, if the user's last name is not present" do
      @user = User.new(first_name: "Jeyna", email:"jeyna.kim@test.com", password: "1234", password_confirmation: "12345")
      @user.save
      expect(@user.errors.full_messages).to include ("Last name can't be blank")
    end 
  end 

  describe '.authenticate_with_credentials' do

    it "should successfully authenticate if the user's id and password matches" do 
      @user = User.new(first_name: "Jeyna", last_name:"Kim", email:"jeyna.kim@test.com", password: "12345", password_confirmation: "12345")
      expect(@user.save).to eq true 
      expect(User.authenticate_with_credentials("jeyna.kim@test.com", @user.password)).to eq @user
    end 

    it "should authenticate if the user types few spaces before and/or after their email address" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", email:"jeyna.kim@test.com", password: "12345", password_confirmation: "12345")
      expect(@user.save).to eq true 
      expect(User.authenticate_with_credentials(" jeyna.kim@test.com ", @user.password)).to eq @user
    end

    it "should authenticate if the user types in the wrong case for their email" do
      @user = User.new(first_name: "Jeyna", last_name: "Kim", email:"jeyna.kim@test.com", password: "12345", password_confirmation: "12345")
      expect(@user.save).to eq true 
      expect(User.authenticate_with_credentials(" JeYNa.kim@Test.com ", @user.password)).to eq @user
    end
  end
end
