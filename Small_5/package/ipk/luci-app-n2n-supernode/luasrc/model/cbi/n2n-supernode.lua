m=Map("n2n-supernode")
m.title=translate("N2N Supernode")
m.description=translate("N2N is a layer-two peer-to-peer virtual private network (VPN) which allows users to exploit features typical of P2P applications at network instead of application level.")
m:section(SimpleSection).template="n2n-supernode/status"
s=m:section(TypedSection,"base",translate("N2N Supernode Settings"))
s.anonymous=true
o=s:option(Flag,"enabled",translate("Enable"))
o.rmempty=false
o=s:option(Value,"port",translate("Port"))
o.datatype="port"
o.rmempty=false
o=s:option(Value,"subnet",translate("Subnet range"),
	translate("Subnet range for auto ip address service(optional)<br / >For example: 192.168.0.0-192.168.255.0/24"))
o.placeholder="10.128.255.0-10.255.255.0/24"
o=s:option(Flag,"allowed",translate("Enable community verification"))
o.rmempty=false
o=s:option(DynamicList,"community",translate("Community Name"),
	translate("Automatic IP segment can be specified after the network group name<br / >For example: MyN2N 192.168.1.0/24"))
o:depends("allowed","1")

return m
