package particles;

import flixel.effects.particles.FlxParticle;

class FireParticle extends FlxParticle
{
	public function new()
	{
		super();
		makeGraphic(2, 2, 0xFFFFFFFF);
	}
}