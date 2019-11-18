# CloudmersiveOcrApiClient::FormRecognitionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**field_value_extraction_result** | [**Array&lt;FieldResult&gt;**](FieldResult.md) | Result of form field OCR data extraction | [optional] 
**table_value_extraction_results** | [**Array&lt;TableResult&gt;**](TableResult.md) | Result of form table OCR data extraction | [optional] 
**diagnostics** | **Array&lt;String&gt;** | Diagnostic images - default is null, enable diagnostics&#x3D;true to populate this parameter with one image per field | [optional] 


