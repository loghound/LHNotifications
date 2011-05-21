lhnot=require("LHNotifications")

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


postNotification("A_NOTIFICATION") -- print a
postNotification("ABC_NOTIFICATION") -- print abc
