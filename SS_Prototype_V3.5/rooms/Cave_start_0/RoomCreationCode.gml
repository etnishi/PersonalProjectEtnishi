//
/*
This room can act as a template for all future rooms.
The creation scripts for objects like locked doors and room transitions will live in this box.

objects such as upgrades and keys will also be marked in the global variables
*/

Create_upgrade(-128, 672, Progressive_swim, "", "Swim Up", 6)

Create_Room_Portal(1440, 224, -64, 2208, Cave_start_1)