require "redmine"

unless TimeEntry.included_modules.include? RedmineTimelogUpdatesIssue::TimeEntryPatch
  TimeEntry.send(:include, RedmineTimelogUpdatesIssue::TimeEntryPatch)
end

Redmine::Plugin.register :redmine_timelog_updates_issue do
  name "Redmine Timelog-Updates-Issue Plugin"
  author "e-Legion"
  description "Redmine plugin that makes adding/deleting timelog entries to touch issue's update time."
  version "0.1"
  requires_redmine version_or_higher: "3.0"
  url "https://github.com/elegion/redmine_timelog_updates_issue"
  author_url "http://www.e-legion.com/"
end
