exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor|bower_components/
        'js/templates.js': /^app\/.*.jade$/
    stylesheets:
      joinTo: 'css/app.css'
    templates:
      joinTo: 'js/app.js'

  plugins:
    autoReload:
      enabled:
        css: on
        js: on
        assets: on
      port: [1234, 2345, 3456]
      delay: if require('os').platform() is 'win32' then 200 else 0