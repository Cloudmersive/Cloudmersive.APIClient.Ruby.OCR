=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveOcrApiClient
  class ReceiptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Convert a photo of a receipt into a CSV file containing structured information from the receipt
    # Leverage Deep Learning to automatically turn a photo of a receipt into a CSV file containing the structured information from the receipt.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def receipts_photo_to_csv(image_file, opts = {})
      data, _status_code, _headers = receipts_photo_to_csv_with_http_info(image_file, opts)
      data
    end

    # Convert a photo of a receipt into a CSV file containing structured information from the receipt
    # Leverage Deep Learning to automatically turn a photo of a receipt into a CSV file containing the structured information from the receipt.
    # @param image_file Image file to perform OCR on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def receipts_photo_to_csv_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptsApi.receipts_photo_to_csv ...'
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling ReceiptsApi.receipts_photo_to_csv"
      end
      # resource path
      local_var_path = '/ocr/receipts/photo/to/csv'

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
      form_params['imageFile'] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#receipts_photo_to_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
