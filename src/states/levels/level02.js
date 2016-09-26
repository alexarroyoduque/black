function Level02() {}

Level02.prototype.create = function () {
  this.input.onDown.add(this.onInputDown, this);

    var text = this.add.text(this.game.width * 0.5, this.game.height * 0.5, 'Level02', {
      font: '42px Arial', fill: '#ffffff', align: 'center'
    });
    text.anchor.set(0.5);
};

Level02.prototype.update = function () {};

Level02.prototype.onInputDown = function () {
  this.game.state.start('gameover');
};

module.exports = Level02;
