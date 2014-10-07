package particles;

import flixel.effects.particles.FlxParticle;

class SmokeParticle extends FlxParticle
{
	public function new()
	{
		super();
		makeGraphic(2, 2, 0x999999FF);
		angularVelocity = .7;
	}
}