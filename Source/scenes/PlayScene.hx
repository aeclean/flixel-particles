package scenes;

import flixel.FlxState;
import flixel.effects.particles.FlxEmitter;
import particles.SmokeParticles;

class PlayScene extends FlxState
{
	private var emitter:FlxEmitter;
	private var smoke_particles_count:Int = 100;

	override public function create():Void
	{
		super.create();

		emitter = new FlxEmitter(0, 0);

		for(i in 0...smoke_particles_count)
		{
			emitter.add(new SmokeParticles());
		}

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