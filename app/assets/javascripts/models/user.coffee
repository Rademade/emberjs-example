@App.User = DS.Model.extend
  email: DS.attr 'string'
  passwd: DS.attr 'string'
  name: DS.attr 'string'
  last_name: DS.attr 'string'