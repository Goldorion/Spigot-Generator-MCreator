# Changelog

## 0.10.0
* Ported the command mod element to the new system
  Note: Only the normal call procedure and the old command call procedure are available.

## 0.9.0
* Updated to Minecraft 1.19
  * Mappings related to 1.19 are not implemented. Waiting for official data lists

## 0.8.0
Note: Compatible with MCreator 2022.1.19518 and newest only
* Update to MCreator 2022.1.19518
* Added base support for Spigot 1.18.2
* Added Custom code element support
* Added support for following procedure blocks: Get command parameters
* Added support for following global triggers: On block multiplace, On block place
* ADded Turkish translations (by TheKralGameOfficial)
* [Bugfix #46] On player join global trigger caused a build error

## 1.0-alpha07:

* Updated to MCreator 2021.1.03117
* Updated Spigot to Minecraft 1.16.5
* Removed support for ClothCommons
* Added support for following entity procedure blocks: Add item to player's inventory, Add potion effect to entity (
  basic & advanced), Entity is invulnerable, Entity is in water, Entity is alive, Entity is invisible, Entity is
  leashed, Entity is on ground
* Added support for following block/world procedure blocks: Block is fluid, Get block light level, Get block at, Get
  Number & logic gamerule, Set Number & logic gamerule, Spawn entity, Spawn entity with rotation, Is block powered, Get
  redstone power
* Get Entity display name now returns the custom name of the entity if this is not a player
* Procedure blocks for the player now uses the entity input
* Added On Enable and On Disable gobal triggers
* [Bugfix] Create a new workspace caused an error
* [Bugfix] Run the environment test server caused an error
* [Bugfix] Export the plugin caused an error
* [Bugfix] Some mapping files weren't correct
* [Bugfix] Number dependencies didn't work properly

## 1.0-alpha06:

* Updated the plugin for MCreator 2020.5
* Updated Spigot for Minecraft 1.16.4

## 1.0-alpha05:

* Added all mappings (1.16.2 and before)

## 1.0-alpha04:

* Updated to Minecraft 1.16.2

## 1.0-alpha03:

* Added a lot of new procedure blocks
* Added support for Global triggers (Thank you Klemen)
* Added support to test plugins inside MCreator (Thank you Klemen)
* Added and updated mappings for Minecraft 1.16
* Few bug fixes

## 1.0-alpha02:

* Added Gradle wrapper
* Added partial support for Procedures (Thank you to Klemen)
* Added a few procedure blocks (Thank you to Klemen)
* Changed the license for the GNU Lesser General Public License v2.1

## 1.0-alpha01:

First version of the plugin

* Base workspace
* Added Commands
