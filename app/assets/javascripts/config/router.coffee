window.App.Router.map ->
  @resource 'users'
  @resource 'posts', ->
    @route 'new'
    @resource 'post', 'path': ':post_id'
  @resource 'about'


App.UsersRoute = Ember.Route.extend
  model: -> @store.find('user')

App.PostsRoute = Ember.Route.extend
  model: -> @store.find('post')

App.PostRoute = Ember.Route.extend
  model: (params) -> @store.getById( parseInt(params.post_id, 10) )