OAUTH_CONFIG = YAML.load_file("#{::Rails.root}/config/oauth.yml")[::Rails.env]