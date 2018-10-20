import Ember from 'ember';
import computed from 'ember-computed';
import { downstreamReads } from 'shippo-frontend/computed';
import formatAddress from 'shippo-frontend/utils/format-address';

const {
  get,
  Controller,
  getOwner,
  isPresent,
  inject: { service }
} = Ember;

const { alias, or, and } = computed;

function formatAddressForOrder(address) {
  let objectId = get(address, 'id') || get(address, 'object_id');
  if (objectId) { return objectId; }
  return formatAddress(address);
}

function populateAllStages() {
  this.store.createRecord('stage', {
    name: 'Phone Screen',
    rank: 1,
    isActive: true,
    isDeleted: false
  });
  this.store.createRecord('stage', {
    name: 'Phone Interview',
    rank: 2,
    isActive: true,
    isDeleted: false
  });
  this.store.createRecord('stage', {
    name: 'Onsite',
    rank: 3,
    isActive: true,
    isDeleted: false
  });
  this.store.createRecord('stage', {
    name: 'Done',
    rank: 4,
    isActive: true,
    isDeleted: false
  });
}

export default Controller.extend({

  listing: alias('model'),

  allStages: () => {
    this.populateAllStages();
    return this.store.findAll('stage');
  }

  actions: {
    // None yet
  },
});
