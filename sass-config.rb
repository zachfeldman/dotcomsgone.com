configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
  set :scss, Compass.sass_engine_options
end

Dir["views/sass/*"].each do |file|
  filename = file.split("/").last.split(".").first
  get "/#{filename}.css" do
    sass "sass/#{filename}".to_sym
  end
end