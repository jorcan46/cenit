require 'oauth2'

OAuth2::Response::PARSERS[:text] = ->(body) { MultiJson.load(body) rescue Rack::Utils.parse_query(body) }