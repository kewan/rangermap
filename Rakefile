require "./app"
require "sinatra/activerecord/rake"

task :import_points do
  require 'gmail'

  regex = /Speed:\s+(?<speed>\d+).*Heading:\s+(?<heading>\d+).*Altitude:\s+(?<altitude>\d+).*Position\sTime:\s+(?<time>.+Z).*q=(?<latitude>[^,]*),(?<longitude>[^+]*)/m

  gmail = Gmail.connect(ENV['GMAIL_USER'], ENV['GMAIL_PASS'])

  gmail.inbox.emails(:unread).each do |mail|
    next unless mail.subject.include? "Message from Sat4Rent"
    match_data = regex.match(mail.parts[0].body.decoded)

    next if match_data.nil?

    Point.create!(latitude: match_data[:latitude], 
                  longitude: match_data[:longitude], 
                  date_there: match_data[:time], 
                  speed: match_data[:speed], 
                  heading: match_data[:heading], 
                  altitude: match_data[:altitude])
  end

  gmail.logout

end
