# Requirements

Download FFMPEG (GPL Shared Ver) https://github.com/BtbN/FFmpeg-Builds/releases

Install extension-webm fork in CMD/Terminal: haxelib git extension-webm https://github.com/GrowtopiaFli/extension-webm, lime rebuild extension-webm [windows/mac/linux]

(Replace '[windows/mac/linux]' with your operating system)

 Install Actuate in CMD/Terminal: haxelib install actuate

# Getting Your Video

First you need to download your video as an VP8 Webm format, MP4, and as an OGG file. (Make sure they all have the same name!)

Extract the FFMPEG, and go into bin, put your MP4 video into there, go into command prompt and paste in:
```cmd
ffprobe -v error -count_frames -select_streams v:0 -show_entries stream=nb_read_frames -of default=nokey=1:noprint_wrappers=1 "yourvideo.mp4"
```
(Rename 'yourvideo' to your MP4 file's name) Copy the number that shows, then make a new txt file and name it to your Webm file's name, paste the number into the txt file.

Go into your source code then go to 'assets/preload/videos' there make a new folder and name it to your webm file's name.
Put your Webm video, MP4 video, OGG file, and txt file in the folder you just made.

I'll change some stuff in a bit.
