json.extract! config_log, :id, :userid, :timemodified, :plugin, :name, :value, :oldvalue, :created_at, :updated_at
json.url config_log_url(config_log, format: :json)
