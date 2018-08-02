import DS from 'ember-data';

export default DS.Model.extend({
  url: DS.attr('string'),
  description: DS.attr('string'),
  listing: DS.belongsTo('listing')
});
