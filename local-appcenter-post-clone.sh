#!/usr/bin/env bash
#
# Report build status next to bitbucket commit.
#
# Adjust settings in bitbucket.sh file
#
# Contributed by: DrBeak1
# https://bitbucket.org/DrBeak1/
# Copyright 2019 Zume, Inc.
# SPDX Identifier: MIT

#source bitbucket.sh

bitbucket_set_status_pending

#!/usr/bin/env bash
#!/usr/bin/env sh
#HOMEBREW_NO_AUTO_UPDATE=1 brew update && brew upgrade yq
#Place this script in project/android/app/

cd ..

# fail if any command fails
set -e
# debug log
set -x

cd /Users/mac/StudioProjects/p0000g-base-flutter-app/
#git clone -b stable https://github.com/flutter/flutter.git
#export PATH=`pwd`/flutter/bin:$PATH

#flutter channel stable
flutter doctor

APPCENTER_ANDROID_VARIANT="stagingRelease"
APPCENTER_BUILD_ID="1"
APPCENTER_ANDROID_MODULE="apk"

echo "Building with flavor $APPCENTER_ANDROID_VARIANT"
echo "Build Version is $APPCENTER_BUILD_ID"
echo "AppCenter android module is $APPCENTER_ANDROID_MODULE"

buildEnv="production"
if [ "$APPCENTER_ANDROID_VARIANT" == "productionRelease" ]; then
    buildEnv="production";
elif [ "$APPCENTER_ANDROID_VARIANT" == "acceptanceRelease" ]; then
    buildEnv="acceptance";
elif [ "$APPCENTER_ANDROID_VARIANT" == "stagingRelease" ]; then
    buildEnv="staging";
elif [ "$APPCENTER_ANDROID_VARIANT" == "developmentRelease" ]; then
    buildEnv="development";
fi

echo "using environment: $buildEnv"

# build APK
# if you get "Execution failed for task ':app:lintVitalRelease'." error, uncomment next two lines
# flutter build apk --debug
# flutter build apk --profile
flutter build apk --release --flavor $buildEnv -t lib/main.dart
#flutter build appbundle --release --flavor $buildEnv -t lib/main.dart

# change apk file name
#mv build/app/outputs/flutter-apk/app-$APPCENTER_ANDROID_VARIANT-release.apk build/app/outputs/flutter-apk/wfm.apk

# copy the APK where AppCenter will find it
#mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/flutter-apk/wfm.apk $_


# copy the APK where AppCenter will find it
mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/flutter-apk/app-$buildEnv-release.apk build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk
mv build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk $_
cp build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk android/app/build/outputs/apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk

# copy the AAB where AppCenter will find it
#mkdir -p android/app/build/outputs/bundle/; mv build/app/outputs/bundle/${buildEnv}Release/app-$buildEnv-release.aab $_