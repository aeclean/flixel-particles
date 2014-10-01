package;

import openfl.display.Sprite;
import openfl.Lib;
import flixel.FlxGame;
import flixel.FlxState;
import scenes.PlayScene;

class Main extends FlxGame
{
	var gameWidth:Int = 480;
	var gameHeight:Int = 640;
	var zoom:Float = -1; //-1 to fit window automatically
	var initialState:Class<FlxState> = PlayScene;
	var fps:Int = 60;
	var skipSplash:Bool = true;
	var startFullScreen:Bool = false;//desktop only

	public function new()
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		super(stageWidth, stageHeight, initialState, zoom, fps, fps, skipSplash, startFullScreen);
	}
}