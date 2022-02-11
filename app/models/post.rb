class Post < ApplicationRecord
  # enum :status, [:published, :draft, :archived, :in_review]
  enum :status, { published: 0, draft: 1, archived: 2 }, default: :published

end

# post.published # scope Post.where(status: :published)
# post.published! # => status = "published"
# post.published? # true
# post.status = "published"

# post.draft # scope Post.where(status: :draft)
# post.draft! # => status = "draft"
# post.draft? # true
# post.status = "draft"

# post.archived # scope Post.where(status: :archived)
# post.archived! # => status = "archived"
# post.archived? # true
# post.status = "archived"

# Post.published # all published posts
# Post.not_published # all non-published posts
# Post.draft # all drafts
# Post.not_draft # all non-drafts
# Post.archived # all archived
# Post.not_archived # all non-archived

# SUFFIX
# post.published_status # scope Post.where(status: :published)
# post.published_status! # => status = "published"
# post.published_status? # true
# post.status = "published"

# post.draft_status # scope Post.where(status: :draft)
# post.draft_status! # => status = "draft"
# post.draft_status? # true
# post.status = "draft"

# post.archived_status # scope Post.where(status: :archived)
# post.archived_status! # => status = "archived"
# post.archived_status? # true
# post.status = "archived"

# Prefix - users
# post.users_published
# post.users_draft
