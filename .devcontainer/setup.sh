if [ ! -d depot_tools ]; then
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
fi

if [ ! -f dart.zip ]; then
	curl -Lo dart.zip https://gsdview.appspot.com/dart-archive/channels/be/raw/latest/sdk/dartsdk-linux-x64-release.zip
fi

if [ ! -d dart-sdk ]; then
	unzip dart.zip
fi

if [ ! -d dart-sdk-src ]; then
	mkdir dart-sdk-src
	pushd dart-sdk-src
	fetch dart
	popd
fi

cd dart-sdk-src
gclient sync -D

dart --version
