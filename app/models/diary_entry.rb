class DiaryEntry < ActiveRecord::Base 
  belongs_to :user 
  
  def formattted_created_at 
    self.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end