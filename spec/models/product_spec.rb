require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "should not save the new product information, if there is no name present" do
      @category = Category.new(name: "test")
      @product = Product.new(price: 15, quantity: 10, category: @category)
      @product.save 
      expect(@product.errors.full_messages).to include ("Name can't be blank")
  end 

    it "should not save the new price information, if there is no price present" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", quantity: 10, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include ("Price can't be blank")
    end 

    it "should not save the new quantity information, if there is no quantity present" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 15, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include ("Quantity can't be blank")
    end 

    it "should not save the new category information, if there is no category present" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 15, quantity: 10)
      @product.save
      expect(@product.errors.full_messages).to include ("Category can't be blank")
    end

    it "should saved the new information successfully, if all required fields are present" do
    @category = Category.new(name: "test")
    @product = Product.new(name: "test", price: 15, quantity: 10, category: @category)
    @product.save
    expect(@product.id).to be_present
    end
  end
end 
