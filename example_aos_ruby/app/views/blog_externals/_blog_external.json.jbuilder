json.extract! blog_external, :id, :id, :userid, :name, :description, :url, :filtertags, :failedlastsync, :timemodified, :timefetched, :created_at, :updated_at
json.url blog_external_url(blog_external, format: :json)
