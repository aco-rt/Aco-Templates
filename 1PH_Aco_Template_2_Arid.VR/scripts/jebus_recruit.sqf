{_x enableAI "path"} foreach units group (_this select 0);
{[_x] join (_this select 1)} foreach units group (_this select 0);
{removeallactions _x} foreach units group (_this select 0);