function natp() {
	# Report whether you are behind a NATing firewall
	INTERFACE=$(ifconfig en0 | grep 'inet ' | cut -f2 | awk '{ print $2}')
	PUBLIC=$(curl -s http://ifconfig.co)
	[ $INTERFACE = $PUBLIC ] || echo True
	return
}
