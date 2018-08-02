import DS from 'ember-data';

export default DS.Model.extend({
  stage: DS.belongsTo('stage'),
  listing: DS.belongsTo('listing'),
  actionDate: DS.attr('date'),
  isComplete: DS.attr('boolean')
});
