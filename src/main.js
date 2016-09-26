const game = new Phaser.Game(window.innerWidth, window.innerHeight, Phaser.AUTO, 'black-game');

game.state.add('boot', require('./states/boot'));
game.state.add('preloader', require('./states/preloader'));
game.state.add('menu', require('./states/menus/menu'));
game.state.add('credits', require('./states/menus/credits'));
game.state.add('intro', require('./states/transitions/intro'));
game.state.add('gameover', require('./states/transitions/gameover'));
game.state.add('level01', require('./states/levels/level01'));
game.state.add('level02', require('./states/levels/level02'));

window.Utils = require('./utils/utils.js');

game.state.start('boot');
