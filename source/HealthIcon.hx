package;

import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	var tex:FlxAtlasFrames;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();

		// Allows for animated icons and shit like that
		
		tex = Paths.getSparrowAtlas("icons/" + char, "preload");
		frames = tex;

		animation.addByPrefix('win', char +' Win', 24);
		animation.addByPrefix('lose', char +' Lose', 24);

		animation.play('win');


		switch(char)
		{
			case 'senpai'|'senpai-angry'|'spirit'|'bf-pixel'|'gf-pixel':
				antialiasing = false;
			default:
				antialiasing = true;
		}

		flipX = isPlayer;

		setGraphicSize(100);


/*
		/// THESE ARE SHIT LMAO



		tex = Paths.getSparrowAtlas("iconGrid", "preload");

		frames = tex;

		animation.addByPrefix('bf', 'bf Win', 24, true);
		animation.addByPrefix('bfLOSE', 'bf Lose', 24, true);
		animation.addByPrefix('bf-car', 'bf Win', 24, true);
		animation.addByPrefix('bf-carLOSE', 'bf Lose', 24, true);
		animation.addByPrefix('bf-christmas', 'bf Win', 24, true);
		animation.addByPrefix('bf-christmasLOSE', 'bf Lose', 24, true);
		animation.addByPrefix('bf-pixel', 'bf pixel', 24, true);
		animation.addByPrefix('bf-pixelLOSE', 'bf pixel', 24, true);
		animation.addByPrefix('gf', 'gf', 24, true);
		animation.addByPrefix('gfLOSE', 'gf', 24, true);
		animation.addByPrefix('gf-pixel', 'gf', 24, true);
		animation.addByPrefix('gf-pixelLOSE', 'gf', 24, true);
		animation.addByPrefix('dad', 'dad', 24, true);
		animation.addByPrefix('dadLOSE', 'dad', 24, true);
		animation.addByPrefix('parents-christmas', 'parents Win', 24, true);
		animation.addByPrefix('parents-christmasLOSE', 'parents Lose', 24, true);
		animation.addByPrefix('mom', 'mom Win', 24, true);
		animation.addByPrefix('momLOSE', 'mom Lose', 24, true);
		animation.addByPrefix('mom-car', 'mom Win', 24, true);
		animation.addByPrefix('mom-carLOSE', 'mom Lose', 24, true);
		animation.addByPrefix('pico', 'pico Win', 24, true);
		animation.addByPrefix('picoLOSE', 'pico Lose', 24, true);
		animation.addByPrefix('monster', 'monster Win', 24, true);
		animation.addByPrefix('monster-christmas', 'monster Win', 24, true);
		animation.addByPrefix('monsterLOSE', 'monster Lose', 24, true);
		animation.addByPrefix('monster-christmasLOSE', 'monster Lose', 24, true);
		animation.addByPrefix('senpai', 'senpai', 24, true);
		animation.addByPrefix('senpaiLOSE', 'senpai', 24, true);
		animation.addByPrefix('senpai-angry', 'senpai', 24, true);
		animation.addByPrefix('senpai-angryLOSE', 'senpai', 24, true);
		animation.addByPrefix('spirit', 'spirit', 24, true);
		animation.addByPrefix('spiritLOSE', 'spirit', 24, true);
		animation.addByPrefix('spooky', 'spooky Win', 24, true);
		animation.addByPrefix('spookyLOSE', 'spooky Lose', 24, true);
		animation.addByPrefix('tankman', 'tankman Win', 24, true);
		animation.addByPrefix('tankmanLOSE', 'tankman Lose', 24, true);
		animation.addByPrefix('vy', 'vy Win', 24, true);
		animation.addByPrefix('vyLOSE', 'vy Lose', 24, true);
		animation.play(char);

		switch(char){
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				{

				}
			default:
				{
					antialiasing = true;
				}
		}

		loadGraphic(Paths.image('iconGrid'), true, 150, 150);


		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('vy', [24, 25], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.play(char);
		switch(char){
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				{

				}
			default:
				{
					antialiasing = true;
				}
		}
		scrollFactor.set();
				*/
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
