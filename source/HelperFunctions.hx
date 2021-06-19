import flixel.tweens.FlxEase;

class HelperFunctions
{
    public static function truncateFloat( number : Float, precision : Int): Float {
		var num = number;
		num = num * Math.pow(10, precision);
		num = Math.round( num ) / Math.pow(10, precision);
		return num;
	}

	public static function getEase( type: String ): (t : Float) -> Float {
		switch(type.toLowerCase())
		{
			case "linear":
				return FlxEase.linear;
			case "quadin":
				return FlxEase.quadIn;
			case "quadout":
				return FlxEase.quadOut;
			case "quadinout":
				return FlxEase.quadInOut;
			case "cubein":
				return FlxEase.cubeIn;
			case "cubeout":
				return FlxEase.cubeOut;
			case "cubeinout":
				return FlxEase.cubeInOut;
			case "quartin":
				return FlxEase.quartIn;
			case "quartout":
				return FlxEase.quartOut;
			case "quartinout":
				return FlxEase.quartInOut;
			case "quintin":
				return FlxEase.quintIn;
			case "quintout":
				return FlxEase.quintOut;
			case "quintinout":
				return FlxEase.quintInOut;
			case "smoothstepin":
				return FlxEase.smoothStepIn;
			case "smoothstepout":
				return FlxEase.smoothStepOut;
			case "smoothstepinout":
				return FlxEase.smoothStepInOut;
			case "smootherstepin":
				return FlxEase.smootherStepIn;
			case "smootherstepout":
				return FlxEase.smootherStepOut;
			case "smootherstepinout":
				return FlxEase.smootherStepInOut;
			case "sinein":
				return FlxEase.sineIn;
			case "sineout":
				return FlxEase.sineOut;
			case "sineinout":
				return FlxEase.sineInOut;
			case "bouncein":
				return FlxEase.bounceIn;
			case "bounceout":
				return FlxEase.bounceOut;
			case "bounceinout":
				return FlxEase.bounceInOut;
			case "circin":
				return FlxEase.circIn;
			case "circout":
				return FlxEase.circOut;
			case "circinout":
				return FlxEase.circInOut;
			case "expoin":
				return FlxEase.expoIn;
			case "expoout":
				return FlxEase.expoOut;
			case "expoinout":
				return FlxEase.expoInOut;
			case "backin":
				return FlxEase.backIn;
			case "backout":
				return FlxEase.backOut;
			case "backinout":
				return FlxEase.backInOut;
			case "elasticin":
				return FlxEase.elasticIn;
			case "elasticout":
				return FlxEase.elasticOut;
			case "elasticinout":
				return FlxEase.elasticInOut;
			default:
				return FlxEase.linear;
		}
	}
}