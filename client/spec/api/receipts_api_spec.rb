=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveOcrApiClient::ReceiptsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReceiptsApi' do
  before do
    # run before each test
    @instance = CloudmersiveOcrApiClient::ReceiptsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReceiptsApi' do
    it 'should create an instance of ReceiptsApi' do
      expect(@instance).to be_instance_of(CloudmersiveOcrApiClient::ReceiptsApi)
    end
  end

  # unit tests for receipts_photo_to_csv
  # Convert a photo of a receipt into a CSV file containing structured information from the receipt
  # Leverage Deep Learning to automatically turn a photo of a receipt into a CSV file containing the structured information from the receipt.
  # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'receipts_photo_to_csv test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
