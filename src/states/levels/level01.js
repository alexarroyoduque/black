function Level01() {}

Level01.prototype.create = function () {
  // map
  Utils.setupMap(this, 'tilemap01');

  this.input.onDown.add(this.onInputDown, this);

    var text = this.add.text(this.game.width * 0.5, this.game.height * 0.5, 'Level01', {
      font: '42px Arial', fill: '#ffffff', align: 'center'
    });
    text.anchor.set(0.5);
};

Level01.prototype.update = function () {};

Level01.prototype.onInputDown = function () {
  this.game.state.start('level02');
};

module.exports = Level01;
