import { moduleForModel, test } from 'ember-qunit';

moduleForModel('listing', 'Unit | Model | listing', {
  // Specify the other units that are required for this test.
  needs: ['model:stage']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
