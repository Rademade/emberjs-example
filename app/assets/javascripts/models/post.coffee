@App.Post = DS.Model.extend
  name: DS.attr 'string'
  desc: DS.attr 'string'
  full_description: DS.attr 'string',
  createdAt: DS.attr 'string', defaultValue: -> new Date()