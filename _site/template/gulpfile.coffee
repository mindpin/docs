gulp    = require 'gulp'
util    = require 'gulp-util'
concat  = require 'gulp-concat'
smaps   = require 'gulp-sourcemaps'
coffee  = require 'gulp-coffee'
sass    = require 'gulp-ruby-sass'
haml    = require 'gulp-ruby-haml'

# 防止编译 coffee 过程中 watch 进程中止
plumber = require 'gulp-plumber'

# 资源配置
res =
  src: 
    js:   'src/js/**/*.coffee'
    css:  'src/css/**/*.scss'
    html: 'src/html/**/*.haml'
  dist:
    js:   'dist/js'
    css:  'dist/css'
    html: 'dist/html'

gulp.task 'js', ->
  gulp.src res.src.js
    .pipe plumber()
    .pipe smaps.init()
    .pipe coffee()
    .pipe smaps.write('../maps')
    .pipe gulp.dest(res.dist.js)

gulp.task 'css', ->
  gulp.src res.src.css
    .pipe sass({
        "sourcemap=none": true
    })
    .on 'error', (err)->
      file = err.message.match(/^error\s([\w\.]*)\s/)[1]
      util.log [
        err.plugin,
        util.colors.red file
        err.message
      ].join ' '
    .pipe concat('ui.css')
    .pipe gulp.dest(res.dist.css)

gulp.task 'html', ->
  gulp.src res.src.html
    .pipe haml()
    .on 'error', (err)->
      util.log [
        err.plugin,
        util.colors.red err.message
        err.message
      ].join ' '
    .pipe gulp.dest(res.dist.html)

gulp.task 'build', ['js', 'css', 'html']

gulp.task 'watch', ['build'], ->
  gulp.watch res.src.js, ['js']
  gulp.watch res.src.css, ['css']
  gulp.watch res.src.html, ['html']
