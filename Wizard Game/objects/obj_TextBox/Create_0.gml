text = "aaaaaaaaaa";
DenyButton = instance_create_layer(x,y+32,"Buttons",obj_ButtonConfirm);
ConfirmButton = instance_create_layer(x+128,y+32,"Buttons",obj_ButtonDeny);

Confirm = false;
Deny = false;
WandItem = self;