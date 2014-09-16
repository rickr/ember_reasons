# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ()->
  @resource 'reasons', path: '/'


App.ReasonsRoute = Ember.Route.extend
  model: -> @store.find 'reason'
