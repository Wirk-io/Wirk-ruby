# Common files
require 'wirk/api_client'
require 'wirk/api_error'
require 'wirk/version'
require 'wirk/configuration'

# Models
require 'wirk/models/task_line_reader_service_model'
require 'wirk/models/task_line_writer_service_model'
require 'wirk/models/task_reader_service_model'
require 'wirk/models/outputs'
require 'wirk/models/app_project_writer_service_model'
require 'wirk/models/quality_reader_service_model'
require 'wirk/models/app_project_reader_service_model'
require 'wirk/models/app_reader_service_model'

# APIs
require 'wirk/api/app_project_api'
require 'wirk/api/task_line_api'
require 'wirk/api/app_api'

module Wirk
  class << self
    # Customize default settings for the SDK using block.
    #   Wirk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
