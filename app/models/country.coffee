`import DS from 'ember-data'`

Country = DS.Model.extend {
        name: DS.attr('string'),
        code: DS.attr('string')  
}

`export default Country`
