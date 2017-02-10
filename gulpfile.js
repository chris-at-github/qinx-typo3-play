// include gulp
var gulp = require('gulp');

// include error handling plugins
var plumber = require('gulp-plumber');
var notify = require('gulp-notify');
var util = require('gulp-util');

// include js plugins
// var webpack = require('webpack-stream');

// include css plugins
var sass = require('gulp-sass');
var cssnano = require('gulp-cssnano');
var sourcemap = require('gulp-sourcemaps');
var postcss = require('gulp-postcss');
var autoprefixer = require('autoprefixer');

// include iconfont plugins
// var iconfont = require('gulp-iconfont');
// var consolidate = require('gulp-consolidate');
// var timestamp = Math.round(Date.now() / 1000);

// include svg plugins
var svgsprite = require('gulp-svg-sprite');

// Error handler for plumber.
var onError = function(err) {
	console.log('Error occurred: ' + err.message);
	notify({
		title:   'Shit happens',
		message: 'See console for details!'
	});
	util.beep();
	this.emit('end');
};

// paths for watching
var folders = {
	source: {
		scss: ['./typo3conf/ext/qxplay/Resources/Private/Scss/*.scss', './fileadmin/Resources/Private/Scss/**/*.scss', './fileadmin/Resources/Private/Scss/*.scss'],
		// js:   ['./fileadmin/Resources/Private/Js/*.js', './fileadmin/Resources/Private/Js/**/*.js', './typo3conf/ext/qxwork/Resources/Private/Js/*.js'],
		// font: ['./fileadmin/Resources/Private/Svg/Font/*.svg'],
		svg:  './fileadmin/Resources/Private/Svg'
	},
	target: {
		css:   './fileadmin/Resources/Public/Css',
		// js:    './fileadmin/Resources/Public/Js',
		// font:  './fileadmin/Resources/Public/Fonts',
		image: './fileadmin/Resources/Public/Images'
	}
};

// gulp.task('webpack', function() {
// 	return gulp.src('./fileadmin/Resources/Private/Js/qinx.js')
// 		.pipe(plumber({
// 			errorHandler: onError
// 		}))
// 		.pipe(webpack(require('./webpack.config.js')))
// 		.pipe(gulp.dest(folders.target.js))
// 		.pipe(notify({
// 			message: 'Webpack Ready',
// 			onLast:  true
// 		}));
// });

// CSS concat and minify
gulp.task('scss', function() {
	gulp.src(folders.source.scss)
		.pipe(plumber({
			errorHandler: onError
		}))
		.pipe(sourcemap.init())
		.pipe(sass())
		.pipe(postcss([autoprefixer({browsers: ['last 2 versions']})]))
		// .pipe(cssnano())
		.pipe(sourcemap.write('.'))
		.pipe(gulp.dest(folders.target.css))
		.pipe(notify({
			sound: false,
			message: 'Scss Ready',
			onLast:  true
		}));
});

gulp.task('svg-sprite', function() {
	gulp.src(folders.source.svg + '/*.svg')
		.pipe(plumber({
			errorHandler: onError
		}))
		.pipe(svgsprite({
			shape:     {
				spacing: {
					padding: 5
				}
			},
			mode:      {
				css:   {
					sprite: './Public/Images/sprite.svg',
					dest:   ".",
					render: {
						scss: {
							dest:     "./Private/Scss/_sprite.scss",
							template: "./typo3conf/ext/qxplay/Resources/Private/Build/template.scss"
						}
					},
					bust: false
				}
			},
			variables: {
				mapname: 'icons'
			}
		}))
		.pipe(gulp.dest('./fileadmin/Resources/'))
		.pipe(notify({
			sound: false,
			message: 'Svg Sprite Ready',
			onLast:  true
		}));
});

// gulp.task('iconfont', ['svg-optimize'], function() {
// 	return gulp.src(folders.source.font)
// 		.pipe(plumber({
// 			errorHandler: onError
// 		}))
// 		.pipe(iconfont({
// 			fontName:       'icons', // required,
// 			normalize:      true,
// 			prependUnicode: true, // recommended option
// 			formats:        ['ttf', 'eot', 'woff', 'svg'], // default, 'woff2' and 'svg' are available
// 			timestamp:      timestamp, // recommended to get consistent builds when watching files
// 		}))
// 		.on('glyphs', function(glyphs, options) {
// 			gulp.src('./fileadmin/Resources/Private/Fonts/_icons.scss')
// 				.pipe(consolidate('lodash', {
// 					glyphs:    glyphs,
// 					fontName:  'icons',
// 					fontPath:  '../Fonts/',
// 					className: 'icon'
// 				}))
// 				.pipe(gulp.dest('./fileadmin/Resources/Private/Scss/'))
// 		})
// 		.pipe(gulp.dest(folders.target.font))
// 		.pipe(notify({
// 			message: 'Iconfont Ready',
// 			onLast:  true
// 		}));
// });

// Rerun the task when a file changes
gulp.task('watch', function() {
	gulp.watch(folders.source.scss, ['scss']);
	// gulp.watch(folders.source.js, ['webpack']);
});

// The default task (called when you run `gulp` from cli)
gulp.task('default', ['watch', 'svg-sprite', 'scss']);