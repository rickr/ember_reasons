App.ReasonsController = Ember.ArrayController.extend
  actions:
    editReason: -> @set('isEditing', true)
    createReason: ->
      reason_text = @get('newReason')
      if !reason_text
        return false
      if !reason_text.trim
        return



      reason = @store.createRecord('reason', {text: reason_text})
      reason.save()
      @set('newReason', '')




  itemController: 'reason'


  isEditing: false
