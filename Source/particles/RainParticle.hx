package particles;

import flixel.effects.particles.FlxParticle;

class RainParticle extends FlxParticle
{
	public function new()
	{
		super();
		makeGraphic(2, 2, 0xCCCCCCFF);
	}
}