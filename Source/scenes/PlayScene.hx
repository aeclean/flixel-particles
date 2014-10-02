package scenes;

import flixel.FlxState;
import flixel.effects.particles.FlxEmitter;
import flixel.FlxG;
import flixel.ui.FlxButton;
import particles.SmokeParticle;
import particles.RainParticle;
import particles.SnowParticle;

class PlayScene extends FlxState
{
	private var emitter:FlxEmitter;
	private var smoke_particles_count:Int = 200;

	override public function create():Void
	{
		super.create();

		FlxG.camera.bgColor = 0xff131c1b;

		emitter = new FlxEmitter(0, 0);
		emitter.setSize(FlxG.width, 0);
		emitter.setXSpeed(0, 0);
		emitter.setYSpeed(30, 40);
		emitter.setRotation(0, 0);

		for(i in 0...smoke_particles_count)
		{
			var particle:SnowParticle = new SnowParticle();
			emitter.add(particle);
		}

		add(emitter);

		emitter.start(false, 10, .1);

		var smokeButton:FlxButton = new FlxButton(10, FlxG.height-25, "Smoke", startSmoke);
		add(smokeButton);

		var rainButton:FlxButton = new FlxButton((smokeButton.width + smokeButton.x) + 10, FlxG.height-25, "Rain", startRain);
		add(rainButton);

		var fireButton:FlxButton = new FlxButton((rainButton.width + rainButton.x) + 10, FlxG.height-25, "Fire", startFire);
		add(fireButton);
	}

	private function startSmoke():Void
	{
		trace("start smoke!");
	}

	private function startRain():Void
	{
		emitter.setXSpeed(0, 0);
		emitter.setYSpeed(80, 80);
		emitter.setRotation(0, 0);
	}

	private function startFire():Void
	{
		trace("start fire!");
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