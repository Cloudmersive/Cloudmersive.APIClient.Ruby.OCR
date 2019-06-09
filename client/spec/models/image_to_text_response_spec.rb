=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveOcrApiClient::ImageToTextResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImageToTextResponse' do
  before do
    # run before each test
    @instance = CloudmersiveOcrApiClient::ImageToTextResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImageToTextResponse' do
    it 'should create an instance of ImageToTextResponse' do
      expect(@instance).to be_instance_of(CloudmersiveOcrApiClient::ImageToTextResponse)
    end
  end
  describe 'test attribute "mean_confidence_level"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "text_result"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

