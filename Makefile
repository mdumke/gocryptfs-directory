open:
	@ gocryptfs "${HOME}/secret/encrypted" "${HOME}/secret/secrets"

recovery:
	@ gocryptfs -masterkey=<master> "${HOME}/secret/encrypted" "${HOME}/secret/secrets"

close:
	@ fusermount -u "${HOME}/secret/secrets" && echo "Closed successfully"

setup:
# create directories
	@ if [ ! -d "$(shell pwd)/encrypted" ]; then mkdir "$(shell pwd)/encrypted"; fi
	@ if [ ! -d "$(shell pwd)/secrets" ]; then mkdir "$(shell pwd)/secrets"; fi

# initialize encryption
	@ if [ ! -f "$(shell pwd)/encrypted/gocryptfs.conf" ]; then \
		gocryptfs --init "$(shell pwd)/encrypted" \
	;fi

