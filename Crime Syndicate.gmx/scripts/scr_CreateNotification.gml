var notifs;
var xx = real(argument0);
var yy = real(argument1);
var text = string(argument2);

if !instance_exists(obj_notification)
{
    instance_create(xx,yy,obj_notification);
    
    with obj_notification
    {
        passedOn1 = text;  
    }
}
