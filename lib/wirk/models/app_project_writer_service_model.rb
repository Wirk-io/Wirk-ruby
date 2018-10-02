require 'date'

module Wirk
  # Model for AppProject
  class AppProjectWriterServiceModel
    attr_accessor :id_app

    attr_accessor :id_quality

    attr_accessor :instruction

    attr_accessor :question_options

    attr_accessor :title

    attr_accessor :url_notification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id_app' => :'IdApp',
        
        :'id_quality' => :'IdQuality',
        
        :'instruction' => :'Instruction',
        
        :'question_options' => :'QuestionOptions',
        
        :'title' => :'Title',
        
        :'url_notification' => :'UrlNotification'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id_app' => :'Integer',
        :'id_quality' => :'Integer',
        :'instruction' => :'String',
        :'question_options' => :'Array<String>',
        :'title' => :'String',
        :'url_notification' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'IdApp']
        self.id_app = attributes[:'IdApp']
      end
      
      if attributes[:'IdQuality']
        self.id_quality = attributes[:'IdQuality']
      end
      
      if attributes[:'Instruction']
        self.instruction = attributes[:'Instruction']
      end
      
      if attributes[:'QuestionOptions']
        if (value = attributes[:'QuestionOptions']).is_a?(Array)
          self.question_options = value
        end
      end
      
      if attributes[:'Title']
        self.title = attributes[:'Title']
      end
      
      if attributes[:'UrlNotification']
        self.url_notification = attributes[:'UrlNotification']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id_app == o.id_app &&
          id_quality == o.id_quality &&
          instruction == o.instruction &&
          question_options == o.question_options &&
          title == o.title &&
          url_notification == o.url_notification
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [id_app, id_quality, instruction, question_options, title, url_notification].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Wirk.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
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