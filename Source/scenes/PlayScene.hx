package scenes;

import flixel.FlxState;
import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;
import flixel.FlxG;
import flixel.ui.FlxButton;
import particles.SmokeParticle;
import particles.RainParticle;
import particles.SnowParticle;
import particles.FireParticle;

class PlayScene extends FlxState
{
	private var emitter:FlxEmitter;
	private var particles_count:Int = 200;

	override public function create():Void
	{
		super.create();

		FlxG.camera.bgColor = 0xff131c1b;

		initEmitter();

		var rainButton:FlxButton = new FlxButton(10, FlxG.height-25, "Rain", startRain);
		add(rainButton);

		var snowButton:FlxButton = new FlxButton((rainButton.width + rainButton.x) + 10, FlxG.height-25, "Snow", startSnow);
		add(snowButton);

		var smokeButton:FlxButton = new FlxButton((snowButton.width + snowButton.x) + 10, FlxG.height-25, "Smoke", startSmoke);
		add(smokeButton);

		var fireButton:FlxButton = new FlxButton((smokeButton.width + smokeButton.x) + 10, FlxG.height-25, "Fire", startFire);
		add(fireButton);
	}

	private function startRain():Void
	{
		emitter.destroy();

		initEmitter();

		emitter.setXSpeed(5, 0);
		emitter.setYSpeed(280, 280);
		emitter.setRotation(0, 0);

		for(i in 0...particles_count*2)
		{
			var particle:RainParticle = new RainParticle();
			emitter.add(particle);
		}

		emitter.start(false, 10, .1);
	}

	private function startSnow():Void
	{
		emitter.destroy();

		initEmitter();

		emitter.setXSpeed(0, 0);
		emitter.setYSpeed(30, 40);
		emitter.setRotation(0, 0);

		for(i in 0...particles_count*2)
		{
			var particle:SnowParticle = new SnowParticle();
			emitter.add(particle);
		}

		emitter.start(false, 10, .1);
	}

	private function startSmoke():Void
	{

	}

	private function startFire():Void
	{
		emitter.destroy();

		initEmitter();
		emitter.setPosition(FlxG.width/2, FlxG.height-100);
		emitter.setRotation(0, 0);
		emitter.setSize(100, 300);

		emitter.startAlpha.set(.5, 1);
		emitter.startRed.set(.6, 1);
		emitter.startGreen.set(0, .1);
		emitter.startBlue.set(0, 0);

		emitter.endAlpha.set(0, 0);
		emitter.endRed.set(1, 1);
		emitter.endGreen.set(1, 1);
		emitter.endBlue.set(0, 0);

		emitter.setXSpeed(0, 0);
		emitter.setYSpeed(-30, -40);

		for(i in 0...particles_count*4)
		{
			var particle:FireParticle = new FireParticle();
			emitter.add(particle);
		}

		emitter.start(false, 3, .025);
	}

	private function initEmitter():Void
	{
		emitter = new FlxEmitter(0, 0);
		emitter.setSize(FlxG.width, 0);

		add(emitter);
	}

	override public function update():Void
	{
		super.update();
	}

	override public function destroy():Void
	{
		super.destroy();
	}
}