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

# Unit tests for CloudmersiveOcrApiClient::OcrPageResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OcrPageResult' do
  before do
    # run before each test
    @instance = CloudmersiveOcrApiClient::OcrPageResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OcrPageResult' do
    it 'should create an instance of OcrPageResult' do
      expect(@instance).to be_instance_of(CloudmersiveOcrApiClient::OcrPageResult)
    end
  end
  describe 'test attribute "page_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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

