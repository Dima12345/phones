class Swagger::Docs::Config
  def self.transform_path(path, api_version)
    "apidocs/#{path}"
  end

  def self.base_application
    [Rails.application]
  end

  def self.base_api_controller
    ApplicationController
  end
end


Swagger::Docs::Config.register_apis(
  '1.0' => {
    controller_base_path: '',
    api_file_path: 'public/apidocs/',
    base_path: '/',
    clean_directory: true
  },
)
