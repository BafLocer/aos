json.extract! post, :id, :module, :userid, :courseid, :groupid, :moduleid, :coursemoduleid, :subject, :summary, :content, :uniquehash, :rating, :format, :summaryformat, :attachment, :publishstate, :lastmodified, :created, :usermodified, :blog_association_id, :created_at, :updated_at
json.url post_url(post, format: :json)
