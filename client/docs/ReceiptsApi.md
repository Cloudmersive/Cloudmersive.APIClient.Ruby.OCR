# CloudmersiveOcrApiClient::ReceiptsApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**receipts_photo_to_csv**](ReceiptsApi.md#receipts_photo_to_csv) | **POST** /ocr/receipts/photo/to/csv | Convert a photo of a receipt into a CSV file containing structured information from the receipt


# **receipts_photo_to_csv**
> Object receipts_photo_to_csv(image_file)

Convert a photo of a receipt into a CSV file containing structured information from the receipt

Leverage Deep Learning to automatically turn a photo of a receipt into a CSV file containing the structured information from the receipt.

### Example
```ruby
# load the gem
require 'cloudmersive-ocr-api-client'
# setup authorization
CloudmersiveOcrApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveOcrApiClient::ReceiptsApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Convert a photo of a receipt into a CSV file containing structured information from the receipt
  result = api_instance.receipts_photo_to_csv(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling ReceiptsApi->receipts_photo_to_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



