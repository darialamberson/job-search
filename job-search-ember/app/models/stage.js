import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  rank: DS.attr('number'),
  isActive: DS.attr('boolean'),
  isDeleted: DS.attr('boolean')
});
