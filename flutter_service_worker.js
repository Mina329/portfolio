'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"main.dart.js": "afa1876774d958b4e1643a793ddb4e55",
"favicon.png": "2dd4b9c316ae1e8a4d46367c1eac2f99",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"index.html": "9c09d90b26e5f14ce84e1b56a8c065de",
"/": "9c09d90b26e5f14ce84e1b56a8c065de",
"version.json": "009c9e65172e010890f7f65fde438006",
"assets/AssetManifest.bin.json": "0da4c44dbb0f432f3766434303a883f6",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "e601f7bb8026569fcfaaff3b8b2f3bf2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a7199da3ab0639aa51c5f746e7ecc1e0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "6e41f4107c33989110ff7b278b4e09a7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/fonts/MaterialIcons-Regular.otf": "e6ea23cafd1c29ab3c475f0494009fec",
"assets/AssetManifest.bin": "1a6ed65fdf3c7197a9b38837688a1824",
"assets/AssetManifest.json": "372ae445fffbd443f603edf9e2c612d6",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/NOTICES": "6c7ea6c986f2a52f75d72544b9516aa2",
"assets/assets/animation/waving.json": "42d46ccb5470f35f1f73544deacbfa07",
"assets/assets/images/colored.png": "ad4658dc40b401558a608f6db625e13e",
"assets/assets/images/data_analysis.svg": "2ab1747943cf0edc1bb81e031cc684a7",
"assets/assets/images/computer.svg": "4876e4b57b002921653e9d2fc5926ff8",
"assets/assets/images/projects_media/nectar_logo.png": "47bd29b86e89b1a0268ce473d1be1e98",
"assets/assets/images/projects_media/attendo_banner.png": "940bb3726db4759daf783284a4e124e4",
"assets/assets/images/projects_media/house_price.jpg": "2e2e0f518ca849271fb96fdd33bf8938",
"assets/assets/images/projects_media/esp_logo.png": "5aa2eb208cbe382fa2337a419cd26010",
"assets/assets/images/projects_media/tamam_logo.png": "001116e509adf6cda757c8c3f83cfc5c",
"assets/assets/images/projects_media/tamam_banner.png": "db7fa3e04ad96cb3df958cb3c2354a7a",
"assets/assets/images/projects_media/nectar_banner.png": "42d0796130e98a3fab21b43bc53deed4",
"assets/assets/images/projects_media/superstore.jpg": "fe51f680d21115af25dd66c29c78ec46",
"assets/assets/images/projects_media/heart_disease.jpg": "9be2a2ff956862ca9ed2e2d02cc88194",
"assets/assets/images/projects_media/esp_banner.png": "ca41d787f04dee0a667471adffc7486d",
"assets/assets/images/projects_media/netflix.png": "f18e3d6c39ad9de0a2a8b74421173b65",
"assets/assets/images/projects_media/attendo/application-11.png": "4c81bbd068e6c582b3372ebe05e5b3f1",
"assets/assets/images/projects_media/attendo/application-1.png": "4ca06adbd82ea217cc31a904e85f27f2",
"assets/assets/images/projects_media/attendo/application-9.png": "d0338a6680b9253736e4678154158c6c",
"assets/assets/images/projects_media/attendo/application-3.png": "4e1df001a3d5d5b9f0661cc86859d5e0",
"assets/assets/images/projects_media/attendo/application-4.png": "ea275811d9cb6695a5040d0e1af34b47",
"assets/assets/images/projects_media/attendo/application-7.png": "f11e0987a10d710f0bc6f92141eccdbd",
"assets/assets/images/projects_media/attendo/application-2.png": "aad3679149ff5fcb08fad073df8f2951",
"assets/assets/images/projects_media/attendo/application-5.png": "147b0c668620647844eaf3dd7128bf66",
"assets/assets/images/projects_media/attendo/dashboard-2.png": "6331fd4487e5aaaf9d5595e4c1687a32",
"assets/assets/images/projects_media/attendo/application-8.png": "0ac909e403b3052067c995ac6868a24f",
"assets/assets/images/projects_media/attendo/application-6.png": "171e4337ddf2eaefcfb62f5d535830a1",
"assets/assets/images/projects_media/attendo/dashboard-5.png": "74ca0250ca2893ad8c73520ebc5717fc",
"assets/assets/images/projects_media/attendo/dashboard-1.png": "d3dedefa4abb65285e560ab6b5e48d5b",
"assets/assets/images/projects_media/attendo/application-12.png": "45bf307c94806f871e342b61e62f25e6",
"assets/assets/images/projects_media/attendo/dashboard-3.png": "5d5497a4dddc59db4b88837719ad6278",
"assets/assets/images/projects_media/attendo/dashboard-4.png": "caa51e16e8a09934d81195bce7345ef5",
"assets/assets/images/projects_media/attendo/application-10.png": "4650e1c51422f589cdca3461586089b0",
"assets/assets/images/projects_media/iris.jpg": "bd40b797a202a20739c6aac31529b47f",
"assets/assets/images/projects_media/car.jpg": "20bc8fd5148b808321684ca1637d4a22",
"assets/assets/images/projects_media/titanic.jpg": "cbbc375fd5c33c65e12508b70c3d2c04",
"assets/assets/images/projects_media/tamam/onboarding-2.jpg": "b3ecce3a8fcf5b690144160abe612f8b",
"assets/assets/images/projects_media/tamam/index-ar.jpg": "39997af04085e9f4de7897d40c388720",
"assets/assets/images/projects_media/tamam/register.jpg": "749b49c3c1696529f54f4a33109fd427",
"assets/assets/images/projects_media/tamam/profile.jpg": "a5d5d62ba9fad4fd10cdb3014b92efee",
"assets/assets/images/projects_media/tamam/splash-1.jpg": "a8dde5cfd767b3df12510b3330f8393b",
"assets/assets/images/projects_media/tamam/onboarding-1.jpg": "a810ac0a648fc248a2b4f7b7496e3962",
"assets/assets/images/projects_media/tamam/profile-fr.jpg": "176220ee6bc82c9274d798c26feb9e4e",
"assets/assets/images/projects_media/tamam/index.jpg": "809987fa711127cc5afa4547626fb479",
"assets/assets/images/projects_media/tamam/onboarding-3.jpg": "e7fc56f620be94aa3feb30dfe51b4948",
"assets/assets/images/projects_media/tamam/login.jpg": "9ee3e83cfd017c567621bc04f2476f81",
"assets/assets/images/projects_media/tamam/splash-2.jpg": "3709ee4572cdcbe33f5d525952197ea0",
"assets/assets/images/projects_media/tamam/focus-2.jpg": "3884d6562a575504d08e540a67574540",
"assets/assets/images/projects_media/tamam/calendar-1.jpg": "27f567ea5e4aa5d7ac8af2607a6b0f10",
"assets/assets/images/projects_media/tamam/new-category.jpg": "ca05abd36c3017801239f8468a960bc6",
"assets/assets/images/projects_media/tamam/focus-1.jpg": "885a62141af397b0834dfd57f0ba897f",
"assets/assets/images/projects_media/tamam/choose-category.jpg": "bc4125fbaf16d2890224d07523860787",
"assets/assets/images/projects_media/tamam/choose-priority.jpg": "e9e065b6c8824390ee087639b5f1e727",
"assets/assets/images/projects_media/tamam/choose-time.jpg": "db9d4055ad4b91cda4d8724057be0da0",
"assets/assets/images/projects_media/tamam/edit-task.jpg": "0a778b23f137d469b40fa3f774789e11",
"assets/assets/images/projects_media/tamam/calendar-2.jpg": "ddd58580341f84f9d6fc7e65269e1e13",
"assets/assets/images/projects_media/medical.jpg": "0157a910f6f9c2c6f667cb5f875674de",
"assets/assets/images/projects_media/shopping.png": "7b72eb551b0336b913afd0f8ce9f5ac1",
"assets/assets/images/projects_media/xray.jpeg": "f911fcbbc2ebb8ba3cecbb3828ac743e",
"assets/assets/images/projects_media/house_price_2.png": "67db5aebf6521b6f807a7cd02c8fd3ba",
"assets/assets/images/projects_media/esp/p3.jpg": "250d30df994d2bc062b0031afd605dd4",
"assets/assets/images/projects_media/esp/p5.jpg": "780d773414381ab3b6e548a92c095df7",
"assets/assets/images/projects_media/esp/p2.jpg": "21fd3b7349382705cf76566c7765bb4c",
"assets/assets/images/projects_media/esp/p4.jpg": "d4e9e52feaa7cad854f3cef1b41fb7a5",
"assets/assets/images/projects_media/esp/p1.jpg": "fcfdb674b7a7ca8b84b6f502973fc972",
"assets/assets/images/projects_media/mushroom.jpg": "d6aeac6fc6d695fb5670703e6a89cc49",
"assets/assets/images/projects_media/nectar/setting.png": "29341323cac4fe96027563ffe47102a0",
"assets/assets/images/projects_media/nectar/category-section.png": "be714cf955a92a04f284a376b63fd69a",
"assets/assets/images/projects_media/nectar/groceries-section.png": "8a8a5ce0e1df9435d1f84c14d95b3187",
"assets/assets/images/projects_media/nectar/otp.png": "12792f23ef98dd6f3f54c18aa77ab5ea",
"assets/assets/images/projects_media/nectar/item-details.png": "bb2dece95dfbb12aba24a1af32b02b7c",
"assets/assets/images/projects_media/nectar/order-success.png": "edd81dfa3e54fd14dca8edc38ddd955f",
"assets/assets/images/projects_media/nectar/phone.png": "932419b3949ef2cd134318ecafd963a1",
"assets/assets/images/projects_media/nectar/shop-1.png": "67a7488f3c2d76d6eac1cc53139d3f66",
"assets/assets/images/projects_media/nectar/orders.png": "f9ce02a9b9feaf42cdf4a55a4e5e466f",
"assets/assets/images/projects_media/nectar/onboarding.png": "7f8d22cd26438219d8ce2d21e50d0980",
"assets/assets/images/projects_media/nectar/addresses.png": "c257931adefa48cb2e50c70d0781d65c",
"assets/assets/images/projects_media/nectar/login.png": "0a2d17ee27d78b1ab807321a487983f6",
"assets/assets/images/projects_media/nectar/search-dark.png": "2f39145d6e47d34a2c3b495f60298c4a",
"assets/assets/images/projects_media/nectar/splash.png": "0de4a3e614e63d249efba9c0ee65ace0",
"assets/assets/images/projects_media/nectar/cart.png": "0e225ba193f9e07aee3d337834d0222c",
"assets/assets/images/projects_media/nectar/map.png": "9ad5a38860e81e6054e70a352bf262db",
"assets/assets/images/projects_media/nectar/account-dark.png": "a5e4618f9c7658695f74c4fa63988768",
"assets/assets/images/projects_media/nectar/payment.png": "e96bd48ab913387b6991bbfcfd67d517",
"assets/assets/images/projects_media/nectar/pdf.png": "82d74fcdbe13b9a3606202eab4c97ae1",
"assets/assets/images/projects_media/nectar/explore.png": "15bef25e42f9c37810918be88a398ab5",
"assets/assets/images/projects_media/nectar/exclusive-section.png": "3f0f961c81103017324165ea17806d2d",
"assets/assets/images/projects_media/nectar/favourite-dark.png": "bad584ecfa892d1d7e7609a6bba9a02d",
"assets/assets/images/projects_media/nectar/address-confirm.png": "47f29ccda1e4a878b132b25c13e842ef",
"assets/assets/images/projects_media/nectar/mydetails.png": "ead1bb3afc4a2bdc6453d93bbeb51856",
"assets/assets/images/projects_media/nectar/shop-2.png": "ac240e4518d3e683a4b71fafe31c0575",
"assets/assets/images/projects_media/nectar/about.png": "18651f3b33a05d1730c95e6179f4323c",
"assets/assets/images/projects_media/attendo_logo.png": "d1042cd783c1d583995e14f21e2cbb8c",
"assets/assets/images/black-white.png": "4c3b50b86730e9b912011f2a6fcc8673",
"assets/assets/images/logo.png": "22f154188aa03f1eb4637e8a317401f0",
"assets/assets/images/colored-circle.png": "0b055974c5513e141a02a11b39d96dde",
"assets/assets/images/ai.svg": "9ff8b2ad9b99759bf2677c5e8b0ae2f8",
"assets/assets/images/mobile.svg": "d4d55db5a384ad4f45823ce65329d7ee",
"icons/Icon-512.png": "edbd406ed6f9c4c373d757c684911a67",
"icons/Icon-192.png": "87181d85824b4a96757fb36df2971044",
"icons/Icon-maskable-512.png": "edbd406ed6f9c4c373d757c684911a67",
"icons/Icon-maskable-192.png": "87181d85824b4a96757fb36df2971044",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
