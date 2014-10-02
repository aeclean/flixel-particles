package particles;

import flixel.effects.particles.FlxParticle;

class SnowParticle extends FlxParticle
{
	public function new()
	{
		super();
		loadGraphic("assets/snowflake.png", false, 9, 9);
	}
}