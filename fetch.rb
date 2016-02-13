#!/usr/bin/env ruby

require 'mysql2'
require 'strava/api/v3'

CLUB_ID = 2904

mysql = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'pv')
insert = mysql.prepare('INSERT INTO activity(id, date, distance) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE distance=?')

strava = Strava::Api::V3::Client.new(access_token: 'INSERT ACCESS TOKEN HERE')
activities = strava.list_club_activities(CLUB_ID, per_page: 200)

activities.each do |activity|
  puts "#{activity['id']} #{activity['start_date_local']} #{activity['distance']}"
  insert.execute(activity['id'], activity['start_date_local'], activity['distance'], activity['distance'])
end
