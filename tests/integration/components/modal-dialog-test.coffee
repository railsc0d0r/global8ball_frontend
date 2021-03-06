`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'modal-dialog', 'Integration | Component | modal dialog', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{modal-dialog}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#modal-dialog}}
      template block text
    {{/modal-dialog}}
  """

  assert.equal @$().text().trim(), 'template block text'
