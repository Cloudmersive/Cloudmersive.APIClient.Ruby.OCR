# CloudmersiveOcrApiClient::FormTableColumnDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**column_id** | **String** | The identifier of the field; use this to identify which field is being referenced | [optional] 
**top_anchor** | **String** | Optional - the top anchor of the column heading | [optional] 
**anchor_mode** | **String** | Optional - the matching mode for the anchor.  Possible values are Complete (requires the entire anchor to match) and Partial (allows only part of the anchor to match).  Default is Partial. | [optional] 
**data_type** | **String** | The data type of the field; possible values are INTEGER (Integer value), STRING (Arbitrary string value, spaces are permitted), DATE (Date in a structured format), DECIMAL (Decimal number), ALPHANUMERIC (Continuous alphanumeric string with no spaces), STRINGNOWHITESPACE (A string that contains no whitespace characters), SERIALNUMBER (A serial-number style string that contains letters and numbers, and certain symbols; must contain at least one number), ALPHAONLY (Alphabet characters only, no numbers or symbols or whitespace) | [optional] 
**minimum_character_count** | **Integer** | Optional - the target number of digits in the field; useful for fixed-length fields | [optional] 
**allow_numeric_digits** | **BOOLEAN** | Optional - set to false to block values that contain numeric digits, set to true to allow numeric digits | [optional] 


