require 'bundler/setup'
Bundler.require
ActiveRecord::Base.logger = nil
require 'tty-prompt'
require_all 'lib'
