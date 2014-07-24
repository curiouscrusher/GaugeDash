require 'pivotal-tracker'

SCHEDULER.every '1m', first_in: 0 do |job|
  # The API key of your account
  TOKEN = '288cf81cb68c18f634d1314077dccebb'

  PivotalTracker::Client.token = TOKEN
  PivotalTracker::Client.use_ssl = true

  statuses = [:unstarted, :started, :finished]
  stories  = Hash.new { |hash, key| hash[key] = [] }
  projects = PivotalTracker::Project.all

  projects.each do |project|
    statuses.each do |status|
      my_stories = project.stories.all(owner: full_name, state: status.to_s)
      stories[status] << my_stories.map{ |story| story.name[0..20] + '...' }
      stories[status].flatten!
    end
  end

  send_event('pivotal', stories )
end
