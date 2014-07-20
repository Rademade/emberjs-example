@App.PostsNewController = Ember.ObjectController.extend

  actions:
    save: ->
      post = @store.createRecord('post',
        name: @content.get('name'),
        desc: @content.get('desc'),
        full_description: @content.get('full_description')
      )
      post.save()
      @transitionToRoute 'posts.index'
