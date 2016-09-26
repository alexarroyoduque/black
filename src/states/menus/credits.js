function Credits() {}

Credits.prototype.create = function () {
  var text = this.add.text(this.game.width * 0.5, this.game.height * 0.5, 'Créditos', {
    font: '42px Arial', fill: '#ffffff', align: 'center'
  });
  text.anchor.set(0.5);

  this.input.onDown.add(this.onInputDown, this);
};

Credits.prototype.update = function () {};

Credits.prototype.onInputDown = function () {
  this.game.state.start('level01');
};

module.exports = Credits;
