require 'rails/generators'

module Docker
  class DockerfileGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    desc 'Generate a Dockerfile & .dockerignore'
    def generate_dockerfile
      copy_file 'Dockerfile', 'Dockerfile'
      copy_file '.dockerignore', '.dockerignore'
    end
  end
end
