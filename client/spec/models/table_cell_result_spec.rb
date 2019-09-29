=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveOcrApiClient::TableCellResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TableCellResult' do
  before do
    # run before each test
    @instance = CloudmersiveOcrApiClient::TableCellResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TableCellResult' do
    it 'should create an instance of TableCellResult' do
      expect(@instance).to be_instance_of(CloudmersiveOcrApiClient::TableCellResult)
    end
  end
  describe 'test attribute "column_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cell_values"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

