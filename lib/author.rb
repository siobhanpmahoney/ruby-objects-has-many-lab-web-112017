class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(ind_post)
    @posts << ind_post
    ind_post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    add_post(post_title)
  end

  def self.post_count
    @@post_count
  end


end
