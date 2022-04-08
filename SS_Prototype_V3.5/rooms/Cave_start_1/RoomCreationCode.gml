//
/*

This room can act as a template for all future rooms.
The creation scripts for objects like locked doors and room transitions will live in this box.

objects such as upgrades and keys will also be marked in the 
*/
Create_upgrade(4350, 1850, Unlock_shot, "", "Unlocked Shot. Can break some walls", 0)

Create_upgrade(1375, 2235, Health_up, "", "Health Up", 1)

Create_upgrade(1888, 1562, Progressive_dash, "", "Dash with SHIFT", 2)

Create_upgrade(3549, 1182, Progressive_jump, "", "Jump Higher", 3)

Create_upgrade(1336, 2558, Progressive_UD_dash, "", "Dash Up and Down", 4)



Create_Room_Portal(-128, 2208, 1376, 224, Cave_start_0)

Create_locked_Door(1856, 1856, 64, 1300, 0)