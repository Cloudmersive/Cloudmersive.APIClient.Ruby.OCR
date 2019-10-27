# CloudmersiveOcrApiClient::ReceiptRecognitionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**timestamp** | **DateTime** | The date and time printed on the receipt (if included on the receipt) | [optional] 
**business_name** | **String** | The name of the business printed on the receipt (if included on the receipt) | [optional] 
**business_website** | **String** | The website URL of the business printed on the receipt (if included on the receipt) | [optional] 
**address_string** | **String** | The address of the business printed on the receipt (if included on the receipt) | [optional] 
**phone_number** | **String** | The phone number printed on the receipt (if included on the receipt) | [optional] 
**receipt_items** | [**Array&lt;ReceiptLineItem&gt;**](ReceiptLineItem.md) | The individual line items comprising the order; does not include total (see ReceiptTotal) | [optional] 
**receipt_sub_total** | **Float** | Optional; if available, the monetary value of the receipt subtotal - typically not including specialized line items such as Tax. If this value is not available, it will be 0. | [optional] 
**receipt_total** | **Float** | The total monetary value of the receipt (if included on the receipt) | [optional] 


