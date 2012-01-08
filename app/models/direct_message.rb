class DirectMessage < ActiveRecord::Base
  belongs_to :to_user, class_name: "User", foreign_key: "to_id"
  belongs_to :from_user, class_name: "User", foreign_key: "from_id"
  
  default_scope order("created_at DESC")
  
  def self.conversation_user_ids (user)
    @sent_dm_ids = find_all_by_from_id(user.id).map{|i| i.to_id }
    @received_dm_ids = find_all_by_to_id(user.id).map{|i| i.from_id }
    @ans = (@sent_dm_ids + @received_dm_ids).uniq!
  end
  
  # def self.last_dm (user1,user2)
  #   @sent_dm_ids = find_all_by_from_id_and_to_id(user1.id,user2.id).map{|i| i.to_id }
  #   @sent_dm_ids = find_all_by_from_id_and_to_id(user2.id,user1.id).map{|i| i.to_id }
  #   @ans = (@sent_dm_ids + @received_dm_ids).last
  # end
  
  
end
