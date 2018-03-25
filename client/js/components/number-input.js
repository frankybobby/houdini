const h = require('flimflam/h')
const classObject = require('../common/class-object')

module.exports  = (name, placeholder, value, classes) => {
return h('input.max-width-2', {
    props: {
      type: 'number'
    , 
    , name
    , placeholder
    , value
    }
  , class: classObject(classes)
  })
}
