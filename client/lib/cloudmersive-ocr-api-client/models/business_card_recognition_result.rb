=begin
#ocrapi

#The powerful Optical Character Recognition (OCR) APIs let you convert scanned images of pages into recognized text.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module CloudmersiveOcrApiClient
  # Result of recognizing a business card, to extract the key information from the business card
  class BusinessCardRecognitionResult
    # True if the operation was successful, false otherwise
    attr_accessor :successful

    # The name of the person printed on the business card (if included on the business card)
    attr_accessor :person_name

    # The title of the person printed on the business card (if included on the business card)
    attr_accessor :person_title

    # The name of the business printed on the business card (if included on the business card)
    attr_accessor :business_name

    # The address printed on the business card (if included on the business card)
    attr_accessor :address_string

    # The phone number printed on the business card (if included on the business card)
    attr_accessor :phone_number

    # The email address printed on the business card (if included on the business card)
    attr_accessor :email_address

    # The date and time printed on the business card (if included on the business card)
    attr_accessor :timestamp


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'successful' => :'Successful',
        :'person_name' => :'PersonName',
        :'person_title' => :'PersonTitle',
        :'business_name' => :'BusinessName',
        :'address_string' => :'AddressString',
        :'phone_number' => :'PhoneNumber',
        :'email_address' => :'EmailAddress',
        :'timestamp' => :'Timestamp'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'successful' => :'BOOLEAN',
        :'person_name' => :'String',
        :'person_title' => :'String',
        :'business_name' => :'String',
        :'address_string' => :'String',
        :'phone_number' => :'String',
        :'email_address' => :'String',
        :'timestamp' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Successful')
        self.successful = attributes[:'Successful']
      end

      if attributes.has_key?(:'PersonName')
        self.person_name = attributes[:'PersonName']
      end

      if attributes.has_key?(:'PersonTitle')
        self.person_title = attributes[:'PersonTitle']
      end

      if attributes.has_key?(:'BusinessName')
        self.business_name = attributes[:'BusinessName']
      end

      if attributes.has_key?(:'AddressString')
        self.address_string = attributes[:'AddressString']
      end

      if attributes.has_key?(:'PhoneNumber')
        self.phone_number = attributes[:'PhoneNumber']
      end

      if attributes.has_key?(:'EmailAddress')
        self.email_address = attributes[:'EmailAddress']
      end

      if attributes.has_key?(:'Timestamp')
        self.timestamp = attributes[:'Timestamp']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          successful == o.successful &&
          person_name == o.person_name &&
          person_title == o.person_title &&
          business_name == o.business_name &&
          address_string == o.address_string &&
          phone_number == o.phone_number &&
          email_address == o.email_address &&
          timestamp == o.timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [successful, person_name, person_title, business_name, address_string, phone_number, email_address, timestamp].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CloudmersiveOcrApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
