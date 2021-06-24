# Requirements

Download FFMPEG (GPL Shared Ver) https://github.com/BtbN/FFmpeg-Builds/releases


Install these libraries in CMD/Terminal:
```js
haxelib git extension-webm https://github.com/KadeDev/extension-webm

lime rebuild extension-webm [windows/mac/linux]

haxelib install openfl

haxelib run openfl setup

haxelib install openfl-webm

haxelib install actuate
```

# Getting Your Video

First you need to download your video as an VP8 Webm format, MP4, and as an OGG file. (Make sure they all have the same name!)

Extract the FFMPEG, and go into bin, put your MP4 video into there, go into command prompt and paste in:
```cmd
ffprobe -v error -count_frames -select_streams v:0 -show_entries stream=nb_read_frames -of default=nokey=1:noprint_wrappers=1 "yourvideo.mp4"
```
(Rename 'yourvideo' to your MP4 file's name) Copy the number that shows, then make a new txt file and name it to your Webm file's name, paste the number into the txt file.

Go into your source code then go to `assets/preload/videos` there make a new folder and name it to your webm file's name.
Put your Webm video, MP4 video, OGG file, and txt file in the folder you just made.

# Playing The Video

For this part I'll give you an example.

Let's say our video's name is "prime" and I want to play it during the beginning of Week 1 it would look something like:

(StoryMenuState, Line 308)

``` haxe
		if (curWeek == 1)
		{
			FlxG.switchState(new VideoState('assets/videos/prime/prime.webm', new PlayState()));
		}
		else
		{
			LoadingState.loadAndSwitchState(new PlayState(), true);
		}
```
This should play the video at the beginning of Week 1.

### The code

``` haxe
FlxG.switchState(new VideoState('path', new ()));
```
A brief explanation of this line of code, first it changes the state to `VideoState`, inside of the part that says `path` (e.g. 'assets/videos/pog.webm')would be where you put your video path, after that part you would then switch it to a different state (e.g. PlayState, StoryMenuState, etc).

### Ending

If you follow the steps correctly and compile the game, you should have the video play when/where you wanted it.
