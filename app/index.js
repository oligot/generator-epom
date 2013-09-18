'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');


var EpomGenerator = module.exports = function EpomGenerator(args, options, config) {
  yeoman.generators.Base.apply(this, arguments);

  this.pkg = JSON.parse(this.readFileAsString(path.join(__dirname, '../package.json')));
};

util.inherits(EpomGenerator, yeoman.generators.Base);

EpomGenerator.prototype.askFor = function askFor() {
  var cb = this.async();

  // have Yeoman greet the user.
  console.log(this.yeoman);

  var prompts = [{
    name: 'className',
    message: 'Business class name'
  }];

  this.prompt(prompts, function (props) {
    this.className = props.className;

    cb();
  }.bind(this));
};

EpomGenerator.prototype.app = function app() {
  var baseName = this.className.toLowerCase();
  this.template('_input.xml', baseName + '.xml');
  this.template('_class_name.e', baseName + '_class_name.e');
  this.template('_pid.e', baseName + '_pid.e');
  this.template('_adapter.e', baseName + '_adapter.e');
};
