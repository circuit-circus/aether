var gulp = require('gulp');
var sass = require('gulp-sass');
var prefix = require('gulp-autoprefixer');
var minify = require('gulp-minify-css');
var minifyjs = require('gulp-minify');
var notify = require('gulp-notify');
var livereload = require('gulp-livereload');
var lr = require('tiny-lr');
var server = lr();

var port = 35729;

// Compile sass and move it
gulp.task('minify-css', function() {
    gulp.src('public/styles/scss/style.scss')
        .pipe(sass()
            .on('error', notify.onError('Error: <%= error.message %>'))
        )
        .pipe(prefix('last 5 versions'))
        .pipe(minify())
        .pipe(livereload(server))
        .pipe(gulp.dest('public/styles/'))
});

// Compress the javascript and move it
gulp.task('compress-js', function() {
    gulp.src('public/js/src/*.js')
        .pipe(minifyjs({
            exclude: ['tasks'],
            ignoreFiles: ['.combo.js', '-min.js'],
            noSource: true
            })
            .on('error', notify.onError('Error: <%= error.message %>'))
        )
        .pipe(livereload(server))
        .pipe(gulp.dest('public/js/'))
});

//Watch task
gulp.task('default',function() {
    livereload.listen();
    gulp.start('minify-css');
    gulp.start('compress-js');
    gulp.watch('public/styles/scss/**/*.scss',['minify-css']);
    gulp.watch('public/js/**/*.js', ['compress-js']);
});