class BackboneBlog.Routers.PostsRouter extends Backbone.Router

	initialize: (options) ->
		@posts = new BackboneBlog.Collections.PostsCollection()
		@posts.reset options.posts

	routes:
		"index"			: "index"
		"new"				: "newPost"
		":id"				:	"show"
		":id/edit"	: "edit"
		".*"				: "index"

		index: ->
			@view = new BackboneBlog.Views.PostsIndexView({collection: @posts})

		newPost: ->
			@view = new BackboneBlog.Views.PostsNewView({collection: @posts})

		show: (id) ->
			post = @posts.get(id)
			@view = new BackboneBlog.Views.PostsShowView({model: post})

		edit: (id) ->
			post = @posts.get(id)
			@view = new BackboneBlog.Views.PostsEditView({model: post})