@App.PostController = Ember.ObjectController.extend
  isEditing: false,
  isExpanded: false,

  actions:
    more: -> @set 'isExpanded', true
    hide: -> @set 'isExpanded', false

    edit: -> @set 'isEditing', true
    done: ->
      @set 'isEditing', false
      @content.save()
      @transitionToRoute 'posts.index'