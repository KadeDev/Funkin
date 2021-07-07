# Modchart Documentation: Actors

## Actor IDs

Kade Engine modcharts use a very simple actor id system, this is based on these premade ids:
| Sprite ID  |             Sprite Purpose               |
| :--------: | :--------------------------------------: |
|    0-7     |       Represents Note Receptor 0-7       |
| boyfriend  | Represents the Boyfriend Actor (player1) |
|    dad     |    Represents the Dad Actor (player2)    |
| girlfriend |     Represents the Girlfriend Actor      |

The Sprite ID can also be any object in [PlayState.hx.](https://github.com/KadeDev/Kade-Engine/blob/stable/source/PlayState.hx)

Example:
```lua
setActorX(0,'healthBarBG') -- sets the health bar's background x position
```

## Functions to manipulate actors

### setActorX

Arguments: **setActorX(x:Int,id:String)**

Description: Set the specified actor's x position.

### setActorY

Arguments: **setActorY(y:Int,id:String)**

Description: Set the specified actor's y position.

### setActorX

Arguments: **setActorX(x:Int,id:String)**

Description: Set the specified actor's x position.

### setActorAccelerationX

Arguments: **setActorAccelerationX(x:Int,id:String)**

Description: Set the specified actor's x acceleration.

### setActorAccelerationY

Arguments: **setActorAccelerationY(y:Int,id:String)**

Description: Set the specified actor's y acceleration.

### setActorDragX

Arguments: **setActorDragX(x:Int,id:String)**

Description: Set the specified actor's drag x.

### setActorDragY

Arguments: **setActorDragY(x:Int,id:String)**

Description: Set the specified actor's drag y.

### setActorVelocityX

Arguments: **setActorVelocityX(x:Int,id:String)**

Description: Set the specified actor's drag y.

### playActorAnimation

Arguments: **playActorAnimation(id:String,anim:String,force:Bool,reverse:Bool)**

Description: Play an actor's animation

### setActorAlpha

Arguments: **setActorAlpha(alpha:Float,id:String)**

Description: Set an actor's alpha

### setActorAngle

Arguments: **setActorAngle(angle:Int,id:String)**

Description: Set an actor's angle

### setActorScale

Arguments: **setActorScale(scale:Float,id:String)**

Description: Set an actor's scale

### setActorScaleXY

Arguments: **setActorScaleXY(scaleX:Float, scaleY:Float, id:String)**

Description: Set an actor's scale x and y

### setActorFlipX

Arguments: **setActorFlipX(flip:Bool, id:String)**

Description: Set an actor's flip x

### setActorFlipY

Arguments: **setActorFlipY(flip:Bool, id:String)**

Description: Set an actor's flip y

### getActorWidth

Arguments: **getActorWidth(id:String)**

Description: Get an actors width

### getActorHeight

Arguments: **getActorHeight(id:String)**

Description: Get an actors height

### getActorAlpha

Arguments: **getActorAlpha(id:String)**

Description: Get an actors alpha

### getActorAngle

Arguments: **getActorAngle(id:String)**

Description: Get an actors angle

### getActorX

Arguments: **getActorX(id:String)**

Description: Get an actors x position

### getActorY

Arguments: **getActorY(id:String)**

Description: Get an actors y position
