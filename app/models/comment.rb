class Comment < ActiveRecord::Base
  validates :text, :presence => true
  belongs_to :state
  #after_create :set_comment_state


  private
    def set_comment_state
      self.comment.state = self.state
      self.comment.save!
    end

end
