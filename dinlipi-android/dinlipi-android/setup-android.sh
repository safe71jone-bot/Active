#!/usr/bin/env bash
# অ্যান্ড্রয়েড প্রজেক্ট তৈরি + অ্যালার্মের জন্য দরকারি পারমিশন যোগ
set -e
[ -d android ] || npx cap add android
M=android/app/src/main/AndroidManifest.xml
for perm in POST_NOTIFICATIONS SCHEDULE_EXACT_ALARM USE_EXACT_ALARM VIBRATE WAKE_LOCK RECEIVE_BOOT_COMPLETED; do
  grep -q "android.permission.$perm" $M || sed -i "s#<application#<uses-permission android:name=\"android.permission.$perm\" />\n    <application#" $M
done
npx cap sync android
echo "✅ প্রস্তুত। এবার: npm run build:apk"
