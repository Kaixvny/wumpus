package;
import flixel.*;

/**
 * ...
 * @author bbpanzu
   tysm bbpanzu for me not spend another 5 hours - coder kai
 */
class End extends MusicBeatState
{

	public function new() 
	{
		super();
	}
	
	override function create() 
	{
		super.create();
		
		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("goodjob"));
		add(bg);
		FlxG.sound.playMusic(Paths.music("boomboomboom"));
		
		
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		
		if (controls.ACCEPT){
		FlxG.sound.playMusic(Paths.music("freakyMenu"));
			FlxG.switchState(new StoryMenuState());
		}
	}
	
}