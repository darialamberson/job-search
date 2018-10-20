import Ember from 'ember';

const {
  Route,
  inject: { service }
} = Ember;

export default Route.extend({
  model(params) {
    return this.store.findAll('listing');
  },

  afterModel() {
//    return this.get('userDataCache').fetch('userAddresses');
  },
});
