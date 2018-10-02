require 'date'

module Wirk
  # Model for AppProject Get
  class AppProjectReaderServiceModel
    attr_accessor :app_name

    attr_accessor :app_project_state

    attr_accessor :creation_date

    attr_accessor :credit

    attr_accessor :has_instruction

    attr_accessor :has_question_options

    attr_accessor :id_app

    attr_accessor :id_app_project

    attr_accessor :id_quality

    attr_accessor :instruction

    attr_accessor :nb_task_closed

    attr_accessor :nb_total_task

    attr_accessor :qualities

    attr_accessor :quality_name

    attr_accessor :question_options

    attr_accessor :title

    attr_accessor :title_question_options

    attr_accessor :url_notification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'app_name' => :'AppName',
        
        :'app_project_state' => :'AppProjectState',
        
        :'creation_date' => :'CreationDate',
        
        :'credit' => :'Credit',
        
        :'has_instruction' => :'HasInstruction',
        
        :'has_question_options' => :'HasQuestionOptions',
        
        :'id_app' => :'IdApp',
        
        :'id_app_project' => :'IdAppProject',
        
        :'id_quality' => :'IdQuality',
        
        :'instruction' => :'Instruction',
        
        :'nb_task_closed' => :'NbTaskClosed',
        
        :'nb_total_task' => :'NbTotalTask',
        
        :'qualities' => :'Qualities',
        
        :'quality_name' => :'QualityName',
        
        :'question_options' => :'QuestionOptions',
        
        :'title' => :'Title',
        
        :'title_question_options' => :'TitleQuestionOptions',
        
        :'url_notification' => :'UrlNotification'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'app_name' => :'String',
        :'app_project_state' => :'Integer',
        :'creation_date' => :'DateTime',
        :'credit' => :'Integer',
        :'has_instruction' => :'BOOLEAN',
        :'has_question_options' => :'BOOLEAN',
        :'id_app' => :'Integer',
        :'id_app_project' => :'Integer',
        :'id_quality' => :'Integer',
        :'instruction' => :'String',
        :'nb_task_closed' => :'Integer',
        :'nb_total_task' => :'Integer',
        :'qualities' => :'Array<QualityReaderServiceModel>',
        :'quality_name' => :'String',
        :'question_options' => :'Array<String>',
        :'title' => :'String',
        :'title_question_options' => :'String',
        :'url_notification' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AppName']
        self.app_name = attributes[:'AppName']
      end
      
      if attributes[:'AppProjectState']
        self.app_project_state = attributes[:'AppProjectState']
      end
      
      if attributes[:'CreationDate']
        self.creation_date = attributes[:'CreationDate']
      end
      
      if attributes[:'Credit']
        self.credit = attributes[:'Credit']
      end
      
      if attributes[:'HasInstruction']
        self.has_instruction = attributes[:'HasInstruction']
      end
      
      if attributes[:'HasQuestionOptions']
        self.has_question_options = attributes[:'HasQuestionOptions']
      end
      
      if attributes[:'IdApp']
        self.id_app = attributes[:'IdApp']
      end
      
      if attributes[:'IdAppProject']
        self.id_app_project = attributes[:'IdAppProject']
      end
      
      if attributes[:'IdQuality']
        self.id_quality = attributes[:'IdQuality']
      end
      
      if attributes[:'Instruction']
        self.instruction = attributes[:'Instruction']
      end
      
      if attributes[:'NbTaskClosed']
        self.nb_task_closed = attributes[:'NbTaskClosed']
      end
      
      if attributes[:'NbTotalTask']
        self.nb_total_task = attributes[:'NbTotalTask']
      end
      
      if attributes[:'Qualities']
        if (value = attributes[:'Qualities']).is_a?(Array)
          self.qualities = value
        end
      end
      
      if attributes[:'QualityName']
        self.quality_name = attributes[:'QualityName']
      end
      
      if attributes[:'QuestionOptions']
        if (value = attributes[:'QuestionOptions']).is_a?(Array)
          self.question_options = value
        end
      end
      
      if attributes[:'Title']
        self.title = attributes[:'Title']
      end
      
      if attributes[:'TitleQuestionOptions']
        self.title_question_options = attributes[:'TitleQuestionOptions']
      end
      
      if attributes[:'UrlNotification']
        self.url_notification = attributes[:'UrlNotification']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          app_name == o.app_name &&
          app_project_state == o.app_project_state &&
          creation_date == o.creation_date &&
          credit == o.credit &&
          has_instruction == o.has_instruction &&
          has_question_options == o.has_question_options &&
          id_app == o.id_app &&
          id_app_project == o.id_app_project &&
          id_quality == o.id_quality &&
          instruction == o.instruction &&
          nb_task_closed == o.nb_task_closed &&
          nb_total_task == o.nb_total_task &&
          qualities == o.qualities &&
          quality_name == o.quality_name &&
          question_options == o.question_options &&
          title == o.title &&
          title_question_options == o.title_question_options &&
          url_notification == o.url_notification
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [app_name, app_project_state, creation_date, credit, has_instruction, has_question_options, id_app, id_app_project, id_quality, instruction, nb_task_closed, nb_total_task, qualities, quality_name, question_options, title, title_question_options, url_notification].hash
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
