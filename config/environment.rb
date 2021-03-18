require 'bundler'
Bundler.require
Dotenv.load

require_relative "../models/cli.rb"
require_relative "../models/breaking_bad_api.rb"
require_relative "../models/character.rb"
require_relative "../models/message.rb"
require_relative "../models/user.rb"
require_relative "./seeds.rb"
