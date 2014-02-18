exports.config =
  modules: [
    "server"
    "browserify"
    "jshint"
    "sass",
    "csslint"
    "live-reload"
    "bower"
    "coffeescript"
    "copy",
    "jade" ]
  sass:
    lib: require 'node-sass' # if not configured, mimosa-saas modules attempts to user compass/sass which is not available for windows. instead - require node-sass which is cross platform.
  template:
    wrapType: 'common'
    commonLibPath: 'jade'
  bower:
    copy:
      mainOverrides:
        "foundation": [
            scss: "foundation"
        ],
        "bourbon": [
            "app/assets/stylesheets": "bourbon"
        ],
        "jade": [
            "runtime.js": "jade/index.js"
        ]
  browserify:
    bundles:
      [
        entries: [ 'javascripts/main.js' ]
        outputFile: 'bundle.js'
      ]
    shims:
      jquery:
        path: 'javascripts/vendor/jquery/jquery'
        exports: '$'
      jade:
        path: 'javascripts/vendor/jade/index.js'
        exports: 'jade'
    aliases:
      templates: 'javascripts/templates'