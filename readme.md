This is a simple 'cocoa' style notification system.  By that I mean you can register to 'listen' for events and you can post events.

This is very handy when you have controls that want to share intersting information (things like "I just went active") and you may want other people to be able to respond to it.  It's an especially great pattern for one person to post and have multiple listeners.

The notification names are strings and the calling function will be called with the option argument.

You can inline functions which makes it quick and easy to add listeners 

     registerForNotification("COUNTER_FOCUS_OBTAINED",function (arg) print "focused";end);

The downside of that approach is you can no longer 'unlisten' to it


here is an example of using it

    require("LHNotifications")
    
    function a()	
    	print ("a")
    end
    
    function b()
    	print ('b')
    end
    
    function c()
    	print ('c')
    end


    registerForNotification("A_NOTIFICATION",a)
    registerForNotification("B_NOTIFICATION",b)
    registerForNotification("C_NOTIFICAITON",c)
    registerForNotification("ABC_NOTIFICATION",a)
    registerForNotification("ABC_NOTIFICATION",b)
    registerForNotification("ABC_NOTIFICATION",c)
    
    
    postNotification("A_NOTIFICATION") -- print a
    postNotification("ABC_NOTIFICATION") -- print abc
    
    print ("removing a from a notification")
    removeFromNotification("A_NOTIFICATION",a)
    
    
    postNotification("A_NOTIFICATION") -- Nothing happens now
    postNotification("ABC_NOTIFICATION") -- print abc


