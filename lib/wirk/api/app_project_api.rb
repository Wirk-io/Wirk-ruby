require "uri"

module Wirk
  class AppProjectApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Post app project
    # @param app_project_writer_service_model Definition of the appProject
    # @param [Hash] opts the optional parameters
    # @return [AppProjectReaderServiceModel]
    def post(app_project_writer_service_model, opts = {})
      data, status_code, headers = post_with_http_info(app_project_writer_service_model, opts)
      return data
    end

    # 
    # Post app project
    # @param app_project_writer_service_model Definition of the appProject
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppProjectReaderServiceModel, Fixnum, Hash)>] AppProjectReaderServiceModel data, response status code and response headers
    def post_with_http_info(app_project_writer_service_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppProjectApi#post ..."
      end
      
      # verify the required parameter 'app_project_writer_service_model' is set
      fail "Missing the required parameter 'app_project_writer_service_model' when calling post" if app_project_writer_service_model.nil?
      
      # resource path
      path = "/AppProject".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(app_project_writer_service_model)
      

      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppProjectReaderServiceModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppProjectApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get
    # @param id ID
    # @param [Hash] opts the optional parameters
    # @return [AppProjectReaderServiceModel]
    def get(id, opts = {})
      data, status_code, headers = get_with_http_info(id, opts)
      return data
    end

    # 
    # Get
    # @param id ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppProjectReaderServiceModel, Fixnum, Hash)>] AppProjectReaderServiceModel data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppProjectApi#get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get" if id.nil?
      
      # resource path
      path = "/AppProject/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppProjectReaderServiceModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppProjectApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




