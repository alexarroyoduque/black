var Utils = {};

Utils.Audio = require('./player');
Utils.Collisions = require('./collisions');
Utils.Menu = require('./menu');
Utils.Player = require('./player');

Utils.setupMap = function (gameContext, tilemapKey) {
    gameContext.map = gameContext.game.add.tilemap(tilemapKey);
    gameContext.map.addTilesetImage('tiles');
    gameContext.map.setCollisionBetween(0, gameContext.map.tiles.length);
    gameContext.layer = gameContext.map.createLayer('Tiles');
    gameContext.layer.resizeWorld();
    // gameContext.layer.debug = true;
};

module.exports = Utils;
