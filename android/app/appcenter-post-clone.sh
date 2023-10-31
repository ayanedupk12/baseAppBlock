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

source bitbucket.sh

bitbucket_set_status_pending

#!/usr/bin/env bash
#!/usr/bin/env sh
HOMEBREW_NO_AUTO_UPDATE=1 brew update && brew upgrade yq
#Place this script in project/android/app/

cd ..

# fail if any command fails
set -e
# debug log
set -x

cd ..
git clone -b stable https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH

flutter channel stable
flutter doctor

echo "Installed flutter to `pwd`/flutter"

APPCENTER_ANDROID_AAB="aab"

echo "Building with flavor $APPCENTER_ANDROID_VARIANT"
echo "Build Version is $APPCENTER_BUILD_ID"
echo "AppCenter android module is $APPCENTER_ANDROID_AAB"

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
if [ "$APPCENTER_ANDROID_AAB" == "aab" ]; then
  flutter build appbundle --release --flavor $buildEnv -t lib/main.dart
fi

# change apk file name
#mv build/app/outputs/flutter-apk/app-$APPCENTER_ANDROID_VARIANT-release.apk build/app/outputs/flutter-apk/wfm.apk

# copy the APK where AppCenter will find it
#mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/flutter-apk/wfm.apk $_

if [ "$APPCENTER_ANDROID_AAB" == "aab" ]; then
 if [ "$APPCENTER_ANDROID_VARIANT" == "productionRelease" ]; then
    mkdir -p android/app/build/outputs/bundle/; mv build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/app-$buildEnv-release.aab build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.aab
    mv build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.aab $_
    cp build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.aab android/app/build/outputs/bundle/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.aab
 elif [ "$APPCENTER_ANDROID_VARIANT" != "productionRelease" ]; then
   mkdir -p android/app/build/outputs/bundle/; mv build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/app-$buildEnv-release.aab build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.aab
     mv build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.aab $_
     cp build/app/outputs/bundle/$APPCENTER_ANDROID_VARIANT/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.aab android/app/build/outputs/bundle/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.aab
 fi
fi

# copy the APK where AppCenter will find it
if [ "$APPCENTER_ANDROID_AAB" == "aab" ]; then
 if [ "$APPCENTER_ANDROID_VARIANT" == "productionRelease" ]; then
    mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/flutter-apk/app-$buildEnv-release.apk build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.apk
    mv build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.apk $_
    #copy file to path where app center can also find it
    cp build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.apk android/app/build/outputs/apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')'('$APPCENTER_BUILD_ID')'.apk
 elif [ "$APPCENTER_ANDROID_VARIANT" != "productionRelease" ]; then
  mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/flutter-apk/app-$buildEnv-release.apk build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk
  mv build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk $_
  #copy file to path where app center can also find it
  cp build/app/outputs/flutter-apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk android/app/build/outputs/apk/$(cat pubspec.yaml | yq e '.newName')-v$(cat  pubspec.yaml | yq e '.newVersion')-$buildEnv'('$APPCENTER_BUILD_ID')'.apk
 fi
fi

# copy the AAB where AppCenter will find it
#mkdir -p android/app/build/outputs/bundle/; mv build/app/outputs/bundle/${buildEnv}Release/app-$buildEnv-release.aab $_