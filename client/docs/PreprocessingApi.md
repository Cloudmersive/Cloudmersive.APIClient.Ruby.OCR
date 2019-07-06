# CloudmersiveOcrApiClient::PreprocessingApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**preprocessing_binarize**](PreprocessingApi.md#preprocessing_binarize) | **POST** /ocr/preprocessing/image/binarize | Convert an image of text into a binarized (light and dark) view
[**preprocessing_binarize_advanced**](PreprocessingApi.md#preprocessing_binarize_advanced) | **POST** /ocr/preprocessing/image/binarize/advanced | Convert an image of text into a binary (light and dark) view with ML
[**preprocessing_get_page_angle**](PreprocessingApi.md#preprocessing_get_page_angle) | **POST** /ocr/preprocessing/image/get-page-angle | Get the angle of the page / document / receipt
[**preprocessing_unrotate**](PreprocessingApi.md#preprocessing_unrotate) | **POST** /ocr/preprocessing/image/unrotate | Detect and unrotate a document image
[**preprocessing_unskew**](PreprocessingApi.md#preprocessing_unskew) | **POST** /ocr/preprocessing/image/unskew | Detect and unskew a photo of a document


# **preprocessing_binarize**
> String preprocessing_binarize(image_file)

Convert an image of text into a binarized (light and dark) view

Perform an adaptive binarization algorithm on the input image to prepare it for further OCR operations.

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

api_instance = CloudmersiveOcrApiClient::PreprocessingApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Convert an image of text into a binarized (light and dark) view
  result = api_instance.preprocessing_binarize(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling PreprocessingApi->preprocessing_binarize: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **preprocessing_binarize_advanced**
> String preprocessing_binarize_advanced(image_file)

Convert an image of text into a binary (light and dark) view with ML

Perform an advanced adaptive, Deep Learning-based binarization algorithm on the input image to prepare it for further OCR operations.  Provides enhanced accuracy than adaptive binarization.  Image will be upsampled to 300 DPI if it has a DPI below 300.

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

api_instance = CloudmersiveOcrApiClient::PreprocessingApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Convert an image of text into a binary (light and dark) view with ML
  result = api_instance.preprocessing_binarize_advanced(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling PreprocessingApi->preprocessing_binarize_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **preprocessing_get_page_angle**
> GetPageAngleResult preprocessing_get_page_angle(image_file)

Get the angle of the page / document / receipt

Analyzes a photo or image of a document and identifies the rotation angle of the page.

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

api_instance = CloudmersiveOcrApiClient::PreprocessingApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Get the angle of the page / document / receipt
  result = api_instance.preprocessing_get_page_angle(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling PreprocessingApi->preprocessing_get_page_angle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**GetPageAngleResult**](GetPageAngleResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **preprocessing_unrotate**
> String preprocessing_unrotate(image_file)

Detect and unrotate a document image

Detect and unrotate an image of a document (e.g. that was scanned at an angle).  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.

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

api_instance = CloudmersiveOcrApiClient::PreprocessingApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect and unrotate a document image
  result = api_instance.preprocessing_unrotate(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling PreprocessingApi->preprocessing_unrotate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **preprocessing_unskew**
> String preprocessing_unskew(image_file)

Detect and unskew a photo of a document

Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.

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

api_instance = CloudmersiveOcrApiClient::PreprocessingApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect and unskew a photo of a document
  result = api_instance.preprocessing_unskew(image_file)
  p result
rescue CloudmersiveOcrApiClient::ApiError => e
  puts "Exception when calling PreprocessingApi->preprocessing_unskew: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



