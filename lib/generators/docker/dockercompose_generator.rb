module Docker
  class DockercomposeGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    desc 'Generate a .docker-compose for developement (includes Postgres)'
    def generate_dockercompose
      copy_file 'docker-compose.yml', 'docker-compose.yml'
    end
  end
end
