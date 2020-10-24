open:
	gocryptfs "${HOME}/secret/encrypted" "${HOME}/secret/secrets"

recovery:
	gocryptfs -masterkey=<master> "${HOME}/secret/encrypted" "${HOME}/secret/secrets"

close:
	fusermount -u "${HOME}/secret/secrets"
