function Intro() {}

Intro.prototype.create = function () {
  var text = this.add.text(this.game.width * 0.5, this.game.height * 0.5, 'Intro', {
    font: '42px Arial', fill: '#ffffff', align: 'center'
  });
  text.anchor.set(0.5);

  this.input.onDown.add(this.onInputDown, this);
};

Intro.prototype.update = function () {};

Intro.prototype.onInputDown = function () {
  this.game.state.start('menu');
};

module.exports = Intro;
