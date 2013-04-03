telnet-kiosk
============

A text-based program to display information on a terminal, such as time, temperature, and news

Running
=======

To launch the program, run kiosk.sh

Status
======

* Prompts for time zone (currently only continental US and UTC)
* Prompts for 12-hour and 24-hour time format
* Fetches latest blog posts from www.vintagecomputing.com

To-do
=====

* Save settings to file so the user doesn't have to re-enter information (unless desired)
* Add multiple terminal sizes. Right now everything is mostly targeted at 80x24
* Work on user input. Different clients seem to add different line terminations when they send data, 
  which makes it hard to offer more than single-digit numbered choices. Probably missing a bash read parameter
* Add additional data sources
* Organize data sources into user-selectable modules
