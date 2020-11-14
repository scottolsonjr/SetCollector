# SetCollector

[![Check out SetCollector on CurseForge](http://cf.way2muchnoise.eu/title/setcollector.svg)![Available for WoW Version](http://cf.way2muchnoise.eu/versions/setcollector_latest.svg)![Total SetCollector Downloads](http://cf.way2muchnoise.eu/setcollector.svg)![Available for WoW Retail](http://img.shields.io/badge/runs-retail-brightgreen)
](https://www.curseforge.com/wow/addons/setcollector)

Set Collector is an add-on for World of Warcraft that allows the player to view various gear/transmogrification sets on their character and track the progress of their appearance collection.

## Changes for Shadowlands

Thank you to everyone who has expressed interest in this project! We have updated SetCollector for Shadowlands.

Here are some of the changes for the Shadowlands release of Set Collector:

* Set Collector will now allow sets from an entire expansion to be hidden using the Set Collector Addon settings (Interface > Addons > Set Collector). You can also enable/disable expansions through chat command as well. E.g., to toggle the Legion sets `/setcollector version 7`
* Two commonly requested features are now here and may be set in the Interface options:
  * The Set Collector UI can be undocked and moved.
  * The setting to show/hide the minimap icon is now global and shared by all characters.
* The Garrison Collection has been renamed to Expansion and will include sets obtained from expansion-specific features, such as Garrisons, Class Halls, and Warfronts.
* Character filters (e.g., Show only favorite sets) can now be seen and modified in Interface options.
* Raid and PvP sets will now display the raids and pvp seasons the sets were obtained from.

## Localization

Interested in helping localize Set Collector? Translations can be submitted here: www.wowace.com/addons/setcollector/localization/

## Key Features

Players are able to view a list of collections (e.g., Raid, Dungeon or PvP) and their sets (e.g., BfA Season 1/Shaman/Horde) to select for preview. If there are multiple variants of the sets (e.g., Raid Finder/Normal/Heroic or Aspirant/Gladiator) then each variant is available for preview as well.

The list of sets is filtered by the activated specialization by default, but also allows for viewing off-spec sets or all sets for the class or armor type. It can also be filtered by sets marked as favorite. Right-click on the set or an unselected variant to mark it as a favorite. You can also filter by whether then set can be obtained or used for transmogrification.

In addition, Set Collector allows the player see their progress toward completing each set and set variant. A check mark will be displayed to show whether you have completed any or all of the variants in the set.

Set Collector also has key binding available to launch the UI. Currently located in the Other category in the Key Binding interface. Other options can be set in the Interface options.

## Included Gear Sets

Current gear sets in Set Collector include:

* Legendaries
* Raid sets
* Dungeon sets
* Mythic Keystone/Challenge Mode Dungeon Sets (Mists of Pandaria)
* PvP sets (Seasons 14 to present)
* Expansion-Specific Sets (e.g., Garrison and War Campaign Sets)
* Crafted sets
* Other Sets incl. Holiday sets (Not necessarily transmog. Just for fun)

## Slash Commands

Here are some of the notable slash commands for Set Collector (/setcollector or /sc).

* `/setcollector` - Toggles the Set Collector UI display
* `/setcollector button` - Toggles the minimap button
* `/setcollector show` - Shows the Set Collector UI
* `/setcollector hide` - Hides the Set Collector UI
* `/setcollector version [0-9]` - Toggles the expansion sets shown in Set Collector. Default: 0, 8, and 9. Requires `/reload` for change to take effect.
* `/setcollector docked` - Toggles the UI as docked or undocked. When undocked the Set Collector can be moved/dragged to a preferred location and will not move with other UI elements. Default: docked.
* `/setcollector resetdb` - Rebuilds the collection db (may help if the db gets corrupted or there is an issue with a Set Collector update)
* `/setcollector help` - Displays the Set Collector slash command help information. (new)

## Bugs and Support

Did you find a bug? Do you have a feature that you would like to see added to Set Collector?

If so, you can submit them here: www.wowace.com/addons/setcollector/tickets/

## Acknowledgements

My thanks go out to Nefret, Phanx, Okerhs, MartinL, joshmiller83, cc38941, Brear, AlexSUCF, and the many others who have helped providing testing and feedback at various stages throughout the development.
