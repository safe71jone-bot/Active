# দিনলিপি – Android অ্যাপ প্রজেক্ট (Capacitor)

## যা পাবেন
- ✅ অ্যাপ বন্ধ থাকলেও **নির্ধারিত সময়ে অ্যালার্ম** (Android-এর নিজস্ব অ্যালার্ম সিস্টেম, রিবুটের পরেও চালু থাকে)
- ✅ **স্থায়ী ডেটা** (Android Preferences + WebView স্টোরেজ; আপডেট দিলেও মুছে যায় না)
- ✅ অফলাইনে সম্পূর্ণ চলে, ইন্টারনেট লাগে না (শুধু মার্কেটপ্লেস লিংক ছাড়া)

## পথ ১ (সবচেয়ে সহজ – কম্পিউটারে কিছু ইনস্টল ছাড়াই): GitHub দিয়ে APK
1. github.com-এ বিনামূল্যে অ্যাকাউন্ট খুলুন → **New repository** (নাম: dinlipi)।
2. এই ফোল্ডারের সব ফাইল (`.github` ফোল্ডারসহ) আপলোড করুন (Add file → Upload files)।
3. **Actions** ট্যাব → "Build APK" → **Run workflow**। ৪–৭ মিনিট অপেক্ষা করুন।
4. শেষ হলে রানের ভেতর **Artifacts → dinlipi-apk** ডাউনলোড করুন, জিপ খুলে `app-debug.apk` ফোনে পাঠান।
5. ফোনে APK খুলে ইনস্টল করুন (প্রথমবার "Install unknown apps" অনুমতি দিন)।

## পথ ২: নিজের কম্পিউটারে বানানো
দরকার: Node.js 20, JDK 17, Android Studio (SDK সহ)।
```
npm install
npm run setup        # android ফোল্ডার + পারমিশন তৈরি
npm run build:apk    # APK: android/app/build/outputs/apk/debug/app-debug.apk
```
USB দিয়ে সরাসরি ফোনে চালাতে: `npm run open` → Android Studio-তে ▶ চাপুন।

## প্রথমবার চালানোর পর (জরুরি)
1. নোটিফিকেশনের অনুমতি দিন এবং **"Alarms & reminders"** অনুমতি চালু করুন (অ্যাপ নিজেই সেটিং খুলবে)।
2. ফোনের Settings → Apps → দিনলিপি → Battery → **Unrestricted** করুন (Xiaomi/Oppo/Vivo/Samsung-এ "Autostart"ও চালু করুন), নইলে ফোন অ্যালার্ম আটকে দিতে পারে।
3. অ্যাপের **সেটিং → টেস্ট অ্যালার্ম** দিয়ে পরীক্ষা করুন।

## কাজ বা সময় বদলালে
`www/index.html` এডিট করে আবার APK বানান (পথ ১-এ ফাইল আপলোড করলেই নতুন APK তৈরি হবে)।

## Play Store-এ দিতে চাইলে
Debug APK শুধু নিজের ব্যবহারের জন্য। Play Store-এর জন্য সাইনিং কী দিয়ে `assembleRelease` / AAB বানাতে হয় এবং Google Play Developer অ্যাকাউন্ট ($২৫) লাগে।
