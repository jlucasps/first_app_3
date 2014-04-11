class Comment < ActiveRecord::Base

  belongs_to :commentable, polymorphic: true

  validates :content, presence: true
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true

  attr_accessor :type_and_id
  default_scope { order(created_at: :desc) }

  def self.create_from_sidebar(params)
    comment = Comment.new
    comment.content = params[:comment][:content]
    data = params[:comment][:type_and_id].split("_")
    comment.commentable_type = data[0]
    comment.commentable_id = data[1]
    comment.save
    comment
  end

end