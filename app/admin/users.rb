ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column ('Tweets') { |u| u.tweets.count }
    column ('Likes') { |u| u.likes.count }
    column ('Retweets') { |u| u.tweets.sum(:retweets) }
    column :profile_img_url
    actions
  end
  
end
