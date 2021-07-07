# Modchart Documentation: Getting Started

To get started navigate to a chart's .json file. (ex: assets/data/**songName**/)

Now after that create a file called **modchart.lua** and then copy and paste this template in.

```lua
-- this gets called starts when the level loads.
function start(song) -- arguments, the song name

end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame

end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song

end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)

end
```

Now that we've gotten done with our template file, we can start talking about how our modcharts work. 

Our modcharts work based on lua which is what you're going to be programming in, and an editor we recommend is [Visual Studio Code](https://code.visualstudio.com/)

You should also look at our [actor id system](https://github.com/KadeDev/Kade-Engine/wiki/Actor-ID-System)

## Full Examples

Here are some examples that you can base your code on.

```lua
function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
	end
end

function beatHit (beat)
   -- do nothing
end

function stepHit (step)
   -- do nothing
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")
```

Spinning Receptor Example

```lua
function update (elapsed)
	for i=0,7 do
		setActorAngle(getActorAngle(i) + 15, i)
	end
end
```

Spinning Hud Example

```lua
function update (elapsed)
	camHudAngle = camHudAngle + 0.005
end
```

Spin at a specific part of the song

```lua
function update (elapsed)
	if curStep >= 352 and curStep < 400 then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
		end
	else
        	for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'],i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
        	end
    	end
end
```

Showing/Hiding receptors/the hud

```lua
function start (song)
    showOnlyStrums = true -- remove all hud elements besides notes and strums
    for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
		tweenFadeIn(i,0,0.6)
    end
end
```

Looping through all of the rendered notes

```lua
for i = 0, getRenderedNotes() do -- sets all of the rendered notes to 0 0 on the x and y axsis
	setRenderedNotePos(0,0,i)
end
```

Centering BF's Side

```lua
function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

-- put this somewhere in a function

for i = 4, 7 do -- go to the center
	tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
end
```

Jumping Arrows Example
```lua
function stepHit (step)
    if step == 1 then
        setActorAccelerationY(100, 4)
    end
    if step == 3 then
        setActorAccelerationY(100, 5)
    end
    if step == 5 then
        setActorAccelerationY(100, 6)
    end
    if step == 7 then
        setActorAccelerationY(100, 7)
    end
    for i=4,7 do
        if getActorY(i) >= 100 then
        setActorY(100, i)
        setActorVelocityY(-100, i)
        end
    end
end
```
