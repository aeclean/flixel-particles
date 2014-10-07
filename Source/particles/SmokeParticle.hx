package particles;

import flixel.effects.particles.FlxParticle;

class SmokeParticle extends FlxParticle
{
	public function new()
	{
		super();
		makeGraphic(3, 3, 0x999999FF);
	}
}