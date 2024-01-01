# frozen_string_literal: true

require "bundler/setup"
require "sinatra"
require "sinatra/reloader"
require "json"

set :port, 7000

post "/" do
  body = JSON.parse(request.body.read)

  branch = body["ref"].split("/").last
  repo = body["repository"]["name"]
  owner = body["repository"]["owner"]["name"]

  puts "Received push event for #{owner}/#{repo} on branch #{branch}"

  system("./deploy-maz.dev.sh")

  status 202
end
