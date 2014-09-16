App.ReasonController = Ember.ObjectController.extend
  actions:
    editReason: -> @set('isEditing', true)

    acceptChanges: ->
      @set('isEditing', false)

      if Ember.isEmpty(@get('model.text'))
        @send('removeReason')
      else
        @get('model').save()

    destroyReason: ->
      @get('model').destroyRecord()

