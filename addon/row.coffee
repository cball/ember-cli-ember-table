`import Ember from 'ember';`

Row = Ember.ObjectProxy.extend
  content: null

  isSelected: Ember.computed (key, val) ->
    if arguments.length > 1
      @get('parentController').setSelected this, val
    @get('parentController').isSelected this
  .property 'parentController._selection.[]'

  isShowing:  yes

  isHovered:   no

`export default Row`