App.EditReasonView = Ember.TextField.extend
  didInsertElement: ->
    @$().focus()


Ember.Handlebars.helper('edit-reason', App.EditReasonView)
