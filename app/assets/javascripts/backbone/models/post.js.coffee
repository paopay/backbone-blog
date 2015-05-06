class BackboneBlog.Models.Post extends Backbone.Model
	# not actually backbone 
	# comes from gem
	# sets namespace for params
	# e.g. {"post" => {"title"=>"first post", "content"=>"hello world"}}
  paramRoot: 'post'

  # sets default values for model
  defaults:

class BackboneBlog.Collections.PostsCollection extends Backbone.Collection
	# what objects collection should have
  model: BackboneBlog.Models.Post
  # what route to go to to fetch method of collection
  url: '/posts'
