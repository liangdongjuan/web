local request_method=ngx.var.request_method
local arg=nil
ngx.header.content_type = "text/plain"
if request_method=="GET" then
    ngx.say("request method is error")
elseif request_method =="POST" then
    local args, err = ngx.req.get_post_args()

         if err == "truncated" then
             -- one can choose to ignore or reject the current request here
             ngx.say("failed: ", err)
             return
         end

         if not args then
             ngx.say("failed to get post args: ", err)
             return
         end
         for key, val in pairs(args) do
             if type(val) == "table" then
                 ngx.say(key, ": ", table.concat(val, ", "))
             else
                 if key =="user"  then
                    local user=val
                 elseif key=="passwd" then
                    local passwd=val
                 end
             end
         end
         if user=="anyu" and passwd=="2j39ej3dhs" then
            ngx.say("welcome:",user)
         else
            ngx.say("user or passwd is wrong")
         end
end
