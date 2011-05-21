
LHNotifications={}

-- Call to post a notification, the arg is optional but will be forwarded along
function postNotification(notificationName,arg)
	local l=LHNotifications[notificationName]	or {};
	for i,v in ipairs(l) do
		if (v ~=nil) then
			v(arg);
		end
	end

end

-- call this to be notified, with the function to be called
-- here is a trick -- you can use lambdas for quick and easy functions
-- e.g. registerForNotification("COUNTER_FOCUS_OBTAINED",function (arg) print "focused";end);
-- of course you can always just put a predefined fucntion in
function registerForNotification(notificationName,func)
	LHNotifications[notificationName]=LHNotifications[notificationName] or {}; -- set it up
	local l=LHNotifications[notificationName]
	
	l[#l+1]=func;
	
end

-- call this to stop receiving notifications for a given function
function removeFromNotification(notificationName,func)
		local l=LHNotifications[notificationName];
		for i = 1,#l do
			if (l[i] == func) then
				l[i]=nil;
			end
		end
end
