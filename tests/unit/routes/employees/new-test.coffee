`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:employees/new', 'Unit | Route | employees/new', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
