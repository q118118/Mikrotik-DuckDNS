# Get ether3 (WAN) 的 IP
:local ipAddress [:pick [/ip/address/get [find interface="ether3 (WAN)"] address] 0 [:find [/ip/address/get [find interface="ether3 (WAN)"] address] "/"]]

# Create DuckDNS Update Link
:local duckUrl ("https://www.duckdns.org/update?domains=YOUR_SUBDOMAIN&token=YOUR_TOKEN&ip=" . $ipAddress)

# Update
/tool/fetch url=$duckUrl http-method=get
