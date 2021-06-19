# Creating A Custom Week

## Requirements
1. The ability to compile Kade Engine from the source code. All information related to building Kade Engine is listed [here.](https://kadedev.github.io/Kade-Engine/building)
2. A text editor.

---
### Step 1. Navigation
Navigate to your Kade Engine source code. In the `assets/preload/data` folder, look for `storyModeWeeks.txt`. Open it in your text editor.

It should look like this:

---

```
; , bf, gf; Tutorial

Daddy Dearest; dad, bf, gf; Bopeebo, Fresh, Dad Battle

Spooky Month; spooky, bf, gf; Spookeez, South, Monster

PICO; pico, bf, gf; Pico, Philly Nice, Blammed

MOMMY MUST MURDER; mom, bf, gf; Satin Panties, High, Milf

RED SNOW; parents-christmas, bf, gf; Cocoa, Eggnog, Winter Horrorland

Hating Simulator ft. Moawling; senpai, bf, gf; Senpai, Roses, Thorns

```

---
The `'; '` splits the weeks into three segments:

**1. Week Name** *Name of the week on the top right (max 1 argument)*
**2. Week Characters** *The characters showing in the story mode menu(max 3 arguments)*
**3. Week Songs** *The songs that belong to this week (has no maximum, but would recommend a max of 5 for it to look good)*
### Step 2. Week Name

Copy `Hating Simulator ft. Moawling; senpai, bf, gf; Senpai, Roses, Thorns` into an empty line below it, and change the first segment to whatever you want your week to be called.

Example
---

---

```
; , bf, gf; Tutorial

Daddy Dearest; dad, bf, gf; Bopeebo, Fresh, Dad Battle

Spooky Month; spooky, bf, gf; Spookeez, South, Monster

PICO; pico, bf, gf; Pico, Philly Nice, Blammed

MOMMY MUST MURDER; mom, bf, gf; Satin Panties, High, Milf

RED SNOW; parents-christmas, bf, gf; Cocoa, Eggnog, Winter Horrorland

Hating Simulator ft. Moawling; senpai, bf, gf; Senpai, Roses, Thorns

Tankman; senpai, bf, gf; Senpai, Roses, Thorns

```

---

### Step 3. Week Characters
The second segment tells the game what characters to display in the top yellow bar when a certain week is selected.
It's not very useful unless you followed the Characters guide (will link to it once it's actually done). If you have, though, you can insert the name of your character into the first field.

Example
---

---

```
; , bf, gf; Tutorial

Daddy Dearest; dad, bf, gf; Bopeebo, Fresh, Dad Battle

Spooky Month; spooky, bf, gf; Spookeez, South, Monster

PICO; pico, bf, gf; Pico, Philly Nice, Blammed

MOMMY MUST MURDER; mom, bf, gf; Satin Panties, High, Milf

RED SNOW; parents-christmas, bf, gf; Cocoa, Eggnog, Winter Horrorland

Hating Simulator ft. Moawling; senpai, bf, gf; Senpai, Roses, Thorns

Tankman; tankman, bf, gf; Senpai, Roses, Thorns

```

---

### Step 4. Songlist

The last segment are the songs that are gonna be in the week, put in your song names separated with a `', '`. **(don't forget the space)**

Example
---

---

```
; , bf, gf; Tutorial

Daddy Dearest; dad, bf, gf; Bopeebo, Fresh, Dad Battle

Spooky Month; spooky, bf, gf; Spookeez, South, Monster

PICO; pico, bf, gf; Pico, Philly Nice, Blammed

MOMMY MUST MURDER; mom, bf, gf; Satin Panties, High, Milf

RED SNOW; parents-christmas, bf, gf; Cocoa, Eggnog, Winter Horrorland

Hating Simulator ft. Moawling; senpai, bf, gf; Senpai, Roses, Thorns

Tankman; tankman, bf, gf; Ugh, Guns, Stress

```

---

  Now, compile the game, and if all goes correctly, the Story Mode menu shouldn't crash your game. If you make your way to the bottom of the list, there's your custom week! Except... its displaying as a HaxeFlixel Logo?

### Step 5. Graphics

Displaying a week icon for your custom week is as simple as dropping a .png into `assets/images/storymenu`. Rename the file to `week7.png`, `week8.png`, etc.

Example
---

---

![weeks1](https://user-images.githubusercontent.com/55949451/122635123-69bb4900-d0e2-11eb-8bcc-1071cfda4e35.png)

---
## if [#894](https://github.com/KadeDev/Kade-Engine/pull/894) gets accepted, ignore this

![weeks3-1](https://user-images.githubusercontent.com/55949451/122635138-7b9cec00-d0e2-11eb-9793-7d500ac2d034.png) *

**NOTE: You will have to add a new item to `weekUnlocked`, so that the week is playable.**

![weeks3-2](https://user-images.githubusercontent.com/55949451/122635144-835c9080-d0e2-11eb-9114-3548526f945d.png)

---

![weeks2](https://user-images.githubusercontent.com/55949451/122635129-763fa180-d0e2-11eb-841e-3456e74a50ba.png) *

\* *for these screenshots I removed tankman in the second segment as it would crash because I don't have a tankman character added*
### Conclusion

If you followed all of the steps correctly, you have successfully created a new week in the Story Mode.
