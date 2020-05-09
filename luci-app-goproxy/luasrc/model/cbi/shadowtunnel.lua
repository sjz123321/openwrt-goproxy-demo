require("luci.sys")

m=Map("goproxy",translate("goproxy demo"),translate("demo luci support for goproxy"))

s=m:section(TypedSection,"login","")
s.addremove=false
s.anonymous=true

switch=s:option(ListValue,"switch",translate("switch"))
switch:value("enable",translate("enable"))
switch:value("disable",translate("disable"))

mode=s:option(ListValue,"mode",translate("Proxy mode selection"))
mode:value("manual",translate("manual"))


manual_parameters=s:option(TextValue,"manual_parameters",translate("Custom proxy commandline setting"))
manual_parameters.rmempty = true   
manual_parameters.rows = 10 
manual_parameters:depends({mode="manual"}) 

local e=luci.http.formvalue("cbi.apply")
if e then
  io.popen("/etc/init.d/control_proxy restart &")
  --os.execute("crontab -r")
  --if (switch==enable) then
  --os.execute("sh /etc/goproxy/goproxy_cron.sh &")
  --end
  --os.execute("sh /etc/goproxy/ipset_cron.sh")
end

return m
