=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module CloudmersiveOcrApiClient
  class PreprocessingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Convert an image of text into a binarized (light and dark) view
    # Perform an adaptive binarization algorithm on the input image to prepare it for further OCR operations.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def preprocessing_binarize(image_file, opts = {})
      data, _status_code, _headers = preprocessing_binarize_with_http_info(image_file, opts)
      return data
    end

    # Convert an image of text into a binarized (light and dark) view
    # Perform an adaptive binarization algorithm on the input image to prepare it for further OCR operations.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def preprocessing_binarize_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_binarize ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_binarize"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/binarize"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_binarize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert an image of text into a binary (light and dark) view with ML
    # Perform an advanced adaptive, Deep Learning-based binarization algorithm on the input image to prepare it for further OCR operations.  Provides enhanced accuracy than adaptive binarization.  Image will be upsampled to 300 DPI if it has a DPI below 300.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def preprocessing_binarize_advanced(image_file, opts = {})
      data, _status_code, _headers = preprocessing_binarize_advanced_with_http_info(image_file, opts)
      return data
    end

    # Convert an image of text into a binary (light and dark) view with ML
    # Perform an advanced adaptive, Deep Learning-based binarization algorithm on the input image to prepare it for further OCR operations.  Provides enhanced accuracy than adaptive binarization.  Image will be upsampled to 300 DPI if it has a DPI below 300.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def preprocessing_binarize_advanced_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_binarize_advanced ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_binarize_advanced"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/binarize/advanced"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_binarize_advanced\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the angle of the page / document / receipt
    # Analyzes a photo or image of a document and identifies the rotation angle of the page.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [GetPageAngleResult]
    def preprocessing_get_page_angle(image_file, opts = {})
      data, _status_code, _headers = preprocessing_get_page_angle_with_http_info(image_file, opts)
      return data
    end

    # Get the angle of the page / document / receipt
    # Analyzes a photo or image of a document and identifies the rotation angle of the page.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetPageAngleResult, Fixnum, Hash)>] GetPageAngleResult data, response status code and response headers
    def preprocessing_get_page_angle_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_get_page_angle ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_get_page_angle"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/get-page-angle"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetPageAngleResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_get_page_angle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detect and unrotate a document image
    # Detect and unrotate an image of a document (e.g. that was scanned at an angle).  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def preprocessing_unrotate(image_file, opts = {})
      data, _status_code, _headers = preprocessing_unrotate_with_http_info(image_file, opts)
      return data
    end

    # Detect and unrotate a document image
    # Detect and unrotate an image of a document (e.g. that was scanned at an angle).  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def preprocessing_unrotate_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_unrotate ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_unrotate"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/unrotate"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_unrotate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detect and unrotate a document image (advanced)
    # Detect and unrotate an image of a document (e.g. that was scanned at an angle) using deep learning.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def preprocessing_unrotate_advanced(image_file, opts = {})
      data, _status_code, _headers = preprocessing_unrotate_advanced_with_http_info(image_file, opts)
      return data
    end

    # Detect and unrotate a document image (advanced)
    # Detect and unrotate an image of a document (e.g. that was scanned at an angle) using deep learning.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def preprocessing_unrotate_advanced_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_unrotate_advanced ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_unrotate_advanced"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/unrotate/advanced"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_unrotate_advanced\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detect and unskew a photo of a document
    # Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def preprocessing_unskew(image_file, opts = {})
      data, _status_code, _headers = preprocessing_unskew_with_http_info(image_file, opts)
      return data
    end

    # Detect and unskew a photo of a document
    # Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def preprocessing_unskew_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PreprocessingApi.preprocessing_unskew ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling PreprocessingApi.preprocessing_unskew"
      end
      # resource path
      local_var_path = "/ocr/preprocessing/image/unskew"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PreprocessingApi#preprocessing_unskew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
