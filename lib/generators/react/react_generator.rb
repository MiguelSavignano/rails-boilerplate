class ReactGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  def generate_layout
    template "react_commponet.html.erb", "client/app/#{file_name.camelize}.jsx"
  end
end
