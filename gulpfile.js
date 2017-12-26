var path = require('path');
var gulp = require('gulp');
var assetRev = require('gulp-asset-rev');
var clean = require('gulp-clean');

gulp.task('clean', function() {
    return gulp.src('./dest', {read: false})
        .pipe(clean());
});

gulp.task('rev', ['clean'], function() {
    gulp.src("../views/customerCenter/index.jsp")
        .pipe(assetRev({
            rootPath: path.join(__dirname, '../')
        }))
        .pipe(gulp.dest('./dest'));
});

gulp.task('default',['rev']);