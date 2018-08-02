import Ember from 'ember';
import JSONAPIAdapter from 'ember-data/adapters/json-api';

const { String: { pluralize } } = Ember;
import { underscore } from '@ember/string'

export default JSONAPIAdapter.extend({

  pathForType(type) {
    return pluralize(underscore(type));
  }

});
