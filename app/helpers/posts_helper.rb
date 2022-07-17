# Helper related to posts
module PostsHelper
  def post_meta(post)
    tag.small class: "post-meta" do
      concat("Posted by ")
      concat(tag.strong(post.user.name))
      concat(" on #{post.created_at.to_s(:long)}")
    end
  end
end
