module RedmineTimelogUpdatesIssue
  # Patches Redmine's TimeEntry dynamically.
  module TimeEntryPatch
    def self.included(base)
      base.class_eval do
        unloadable # Send unloadable so it will not be unloaded in development

        after_save do
          issue.touch if issue.present? && issue.persisted?
        end
        after_destroy do
          issue.touch if issue.present? && issue.persisted?
        end
      end
    end
  end
end
