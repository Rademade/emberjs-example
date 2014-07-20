@App.Store = DS.Store.extend({
  revision : 11,
  adapter : DS.RESTAdapter.extend({
    namespace : 'api/v1'
  })
});