#!/bin/bash
set -ev

ADDON_NAME='dropbox-sync-bolek117-amd64'

docker run \
	--rm \
	--privileged \
	-v ~/.docker:/root/.docker \
	-v $(pwd)/dropbox-sync:/data \
	homeassistant/amd64-builder \
		--amd64 \
		-t dropbox-sync \
		-r 'https://github.com/bolek117/hassio-dropbox-sync' \
		-b 20220203_fix \
		--no-cache


	#-it --rm --privileged --name "$ADDON_NAME" \
        #-v ~/.docker:/root/.docker \
        #-v "$(pwd)":/docker \
        #hassioaddons/build-env:latest \
        #--target "$ADDON_NAME" \
        #-t "dropbox_sync" \
        #--all \
        #--from "homeassistant/amd64-base" \
        #--author "bolek117 <hole@example.com>" \
        #--doc-url 'https://github.com/bolek117/hassio-dropbox-sync'

echo "Local Docker build successful."
