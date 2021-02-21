window.CONFIG = {
  defaultTemplateId: 'default', //This is the default template for 2 args1
  defaultAltTemplateId: 'defaultAlt', //This one for 1 arg
  templates: { //You can add static templates here
    'default': '<b>{0}</b>: {1}',
    'defaultAlt': '{0}',
    'print': '<pre>{0}</pre>',
    'example:important': '<h1>^2{0}</h1>'
  },
  fadeTimeout: 2000,
  suggestionLimit: 3,
  style: {
    background: 'rgba(0.0, 0.0, 0.0, 0.0)',
    width: '38%',
    height: '15%',
  }
};
