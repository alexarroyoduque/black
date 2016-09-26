function Preloader() {
  this.asset = null;
  this.ready = false;
}

Preloader.prototype.preload = function () {
  this.asset = this.add.sprite(this.game.width * 0.5 - 110, this.game.height * 0.5 - 10, 'preloader');
  this.load.setPreloadSprite(this.asset);

  // this.load.onLoadComplete.addOnce(this.onLoadComplete, this);
  // this.loadResources();

  this.load.spritesheet('tiles', 'assets/scenario/tiles.png', 16, 16);
  this.load.tilemap('tilemap01', 'assets/scenario/tilemap01.json', null, Phaser.Tilemap.TILED_JSON);

  this.ready = true;
};

Preloader.prototype.loadResources = function () {
  // load your resources here
};

Preloader.prototype.create = function () {

};

Preloader.prototype.update = function () {
  // if (!!this.ready) {
    this.game.state.start('intro');
  // }
};

Preloader.prototype.onLoadComplete = function () {
  // this.ready = true;
};

module.exports = Preloader;
