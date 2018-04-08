/// @description
cycle_vehicle(self);

lk = ord(left_key);
rk = ord(right_key);
sk = ord(shoot_key);
if (left_key == "1") lk = vk_numpad1;
if (right_key == "3") rk = vk_numpad3;
if (shoot_key == "2") sk = vk_numpad2;

alarm_set(0, random_range(100, 300));
alarm_set(1, 105);
