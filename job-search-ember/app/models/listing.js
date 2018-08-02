import DS from 'ember-data';

export default DS.Model.extend({
  companyName: DS.attr('string'),
  description: DS.attr('string'),
  jobTitle: DS.attr('string'),
  stage: DS.belongsTo('stage'),
  companyUrl: DS.attr('string')
});
