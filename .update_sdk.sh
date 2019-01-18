rm -rf ~/usr/lib/dart

if [ "$(uname)" == "Darwin" ]; then
	PLATFORM="macos-ia32"
else
	PLATFORM="linux-x64"
fi

if [ -z "$1" ]; then
	VERSION="latest"
else
	VERSION="$1"
fi

echo "Downloading latest dart"
DOWNLOAD="https://storage.googleapis.com/dart-archive/channels/dev/release/"
VERSION_PATH="$VERSION/sdk/dartsdk-$PLATFORM-release.zip"
curl $DOWNLOAD$VERSION_PATH -o /tmp/dart-release.zip
unzip -qo /tmp/dart-release.zip -d ~
