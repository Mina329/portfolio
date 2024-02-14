'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "87181d85824b4a96757fb36df2971044",
"icons/Icon-512.png": "edbd406ed6f9c4c373d757c684911a67",
"icons/Icon-192.png": "87181d85824b4a96757fb36df2971044",
"icons/Icon-maskable-512.png": "edbd406ed6f9c4c373d757c684911a67",
"version.json": "009c9e65172e010890f7f65fde438006",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"index.html": "48ad242580e1b4361aa49a828efa71cf",
"/": "48ad242580e1b4361aa49a828efa71cf",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "2dd4b9c316ae1e8a4d46367c1eac2f99",
"main.dart.js": "6c750225d31efe69a35893736c77ed29",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a7199da3ab0639aa51c5f746e7ecc1e0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "e601f7bb8026569fcfaaff3b8b2f3bf2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "6e41f4107c33989110ff7b278b4e09a7",
"assets/AssetManifest.bin": "3231c37d37c1093cfd14d1f0c82a13bb",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.json": "f82f39dfd8ca4b9d8448e1ed06348057",
"assets/FontManifest.json": "7936f92fd4453059249409ba430c9e7d",
"assets/fonts/MaterialIcons-Regular.otf": "510606d22c8897a19585f7884ffd2ca6",
"assets/AssetManifest.bin.json": "3bf46c8477d53a6656c221aa542a773d",
"assets/NOTICES": "8582a80eba972a1d31d8bbe8add9d31e",
"assets/assets/animation/wave.gif": "7253e8503c591fd8ecab7937a1080abe",
"assets/assets/images/black-white.png": "87c68f0a2bf8803ee86a2abf7a667c4c",
"assets/assets/images/colored-circle.png": "243473586da5a2a1f47119b4d3085139",
"assets/assets/images/logo.png": "931ab19899995472819456839f3c6bfd",
"assets/assets/images/mobile.svg": "d4d55db5a384ad4f45823ce65329d7ee",
"assets/assets/images/feature%25202.png": "9dba486d7d55c12d38706033d3c86026",
"assets/assets/images/data_analysis.svg": "2ab1747943cf0edc1bb81e031cc684a7",
"assets/assets/images/colored.png": "32dd64018e5a5d87d57586494b975944",
"assets/assets/images/computer.svg": "4876e4b57b002921653e9d2fc5926ff8",
"assets/assets/images/projects_media/tamam_banner.png": "50f47b0ab20dfaa9660fed355aa87add",
"assets/assets/images/projects_media/heart_disease.jpg": "28643444a1a2741c8f02e88f3682b6e9",
"assets/assets/images/projects_media/shopping.png": "595abe27d36a92c685205f3c49c657b8",
"assets/assets/images/projects_media/tamam_logo.png": "d95072db48b5f90f8ca3c38e5a09f9af",
"assets/assets/images/projects_media/titanic.jpg": "db8fa05923d9cb97a87927b9cb548407",
"assets/assets/images/projects_media/superstore.jpg": "e49aed3d38716a483e99d2ba485760b9",
"assets/assets/images/projects_media/mushroom.jpg": "0cba8e72aa435bbe3df3f4bda6234901",
"assets/assets/images/projects_media/house_price.jpg": "06497754f88a2938214b8fde7efd7f58",
"assets/assets/images/projects_media/medical.jpg": "a10f2d074ea90c1aa41768c537486ec9",
"assets/assets/images/projects_media/nectar_logo.png": "95b08e319f418653f3e37d6d30ce4568",
"assets/assets/images/projects_media/tamam/onboarding-1.jpg": "ee196e538963a43f63f15fe5bed871fe",
"assets/assets/images/projects_media/tamam/calendar-1.jpg": "5b4f2c55671dc74ee7189606b4e8acac",
"assets/assets/images/projects_media/tamam/edit-task.jpg": "887cf821d8e3ff6030785a108394306f",
"assets/assets/images/projects_media/tamam/login.jpg": "c5e30d07285e925f5eb9da954add9d8a",
"assets/assets/images/projects_media/tamam/choose-priority.jpg": "7c691bb14c80907bd3b4f19aed44ef4f",
"assets/assets/images/projects_media/tamam/profile-fr.jpg": "c1759ae206303aa356923d95ea61b860",
"assets/assets/images/projects_media/tamam/splash-2.jpg": "a9aa9cfe4ee42611600f1b54ef761957",
"assets/assets/images/projects_media/tamam/onboarding-2.jpg": "fa33d1e1ee1b1c5b5f7c3ab82123e0f7",
"assets/assets/images/projects_media/tamam/index.jpg": "74e45ccf2ac8bdd06f05d1fad1ccb017",
"assets/assets/images/projects_media/tamam/focus-1.jpg": "80063d6402f8b636f4bd151b712cea3b",
"assets/assets/images/projects_media/tamam/profile.jpg": "bfb85e62faf549ee6c857ea7b157783d",
"assets/assets/images/projects_media/tamam/focus-2.jpg": "46cc68e5a92c722dd623f1300a020b13",
"assets/assets/images/projects_media/tamam/index-ar.jpg": "3f7bc8478623aa71cea0c6d42af6f456",
"assets/assets/images/projects_media/tamam/choose-time.jpg": "73c102ebea339d1c47a3d538c57b2850",
"assets/assets/images/projects_media/tamam/choose-category.jpg": "482d8aeb77109f683f676a86a953d633",
"assets/assets/images/projects_media/tamam/calendar-2.jpg": "2c1100cf8c107cbc00475eb8f95fd33f",
"assets/assets/images/projects_media/tamam/register.jpg": "e248ac0930cbc7333bfd653c589c1998",
"assets/assets/images/projects_media/tamam/splash-1.jpg": "a8f728a24c30ac3c1e213a6704cda83b",
"assets/assets/images/projects_media/tamam/new-category.jpg": "ac73f30eb8a0d404e33ada421c216fed",
"assets/assets/images/projects_media/tamam/onboarding-3.jpg": "3536e55c6f66b6d025019970b50d830e",
"assets/assets/images/projects_media/esp_banner.png": "878d77d45fd627cb0b32a79e8b439950",
"assets/assets/images/projects_media/esp/p2.jpg": "9cc0d5562e46c7236245ed8f3b070283",
"assets/assets/images/projects_media/esp/p3.jpg": "a462cc199c2edecedce012325351dda8",
"assets/assets/images/projects_media/esp/p4.jpg": "80493f6ab10ccce9a38d81475784538c",
"assets/assets/images/projects_media/esp/p5.jpg": "a4f8b4b32d4f2fee02851e9f5713bc3d",
"assets/assets/images/projects_media/esp/p1.jpg": "2abcf27b6aeb358ac2a434965934a639",
"assets/assets/images/projects_media/nectar/item-details.png": "6131e400a2bafea9d014dbe49d5dbe02",
"assets/assets/images/projects_media/nectar/payment.png": "9108d5ec3c8715f2ba418b0da2485292",
"assets/assets/images/projects_media/nectar/search-dark.png": "e8cc25a79d9c63539b31a433b0319fae",
"assets/assets/images/projects_media/nectar/onboarding.png": "c93803c533c62844c4089c33758e2cb8",
"assets/assets/images/projects_media/nectar/order-success.png": "b0e604362e2026bdfefc1aed0ed58a9e",
"assets/assets/images/projects_media/nectar/favourite-dark.png": "14deace23858d56ebc460641b61cfc5d",
"assets/assets/images/projects_media/nectar/pdf.png": "6db4585d8826a81ed9dd5d9f0ea26781",
"assets/assets/images/projects_media/nectar/shop-2.png": "998499c5ddd302aa3b164ddfb265933a",
"assets/assets/images/projects_media/nectar/explore.png": "f1c7a0c35c10b1f133afe53aac3fb475",
"assets/assets/images/projects_media/nectar/login.png": "00471df6a119db03592661d59654703d",
"assets/assets/images/projects_media/nectar/otp.png": "e0e19bf27503c36e67054e1b4f2bf5ac",
"assets/assets/images/projects_media/nectar/map.png": "99da5774d94b4c2e406b0e79f6fbf910",
"assets/assets/images/projects_media/nectar/phone.png": "c0c6d379663ec8c3ca3df493964fe113",
"assets/assets/images/projects_media/nectar/addresses.png": "de4e9b53f8d6fa6ebb7ef02e41f25f35",
"assets/assets/images/projects_media/nectar/category-section.png": "0bbd6210f3a9be881e527f367000272b",
"assets/assets/images/projects_media/nectar/exclusive-section.png": "be03631f39245c7aa143be0f44b0bb62",
"assets/assets/images/projects_media/nectar/orders.png": "93ef52ab72fdd255712c52f571006934",
"assets/assets/images/projects_media/nectar/splash.png": "e0daf5490867c4f6b8d003ab91fee35e",
"assets/assets/images/projects_media/nectar/setting.png": "ffcf578942a2ed6872060b72e9149cdc",
"assets/assets/images/projects_media/nectar/cart.png": "72020236b8dd7b1f8818dbf31d801c7e",
"assets/assets/images/projects_media/nectar/shop-1.png": "028f26d88c967f02fdd3e9f702b9e77f",
"assets/assets/images/projects_media/nectar/groceries-section.png": "432dc12f93c0a0e938b1b2e4309832bc",
"assets/assets/images/projects_media/nectar/about.png": "e05c36fffa7694cb2125f1190adb25dc",
"assets/assets/images/projects_media/nectar/account-dark.png": "79b357d2546cf944593d03cfb30377c0",
"assets/assets/images/projects_media/nectar/address-confirm.png": "a50a1d608adf1359a65f79184bfd40c5",
"assets/assets/images/projects_media/nectar/mydetails.png": "30aa834e4abe33d8eac49f7c07b726be",
"assets/assets/images/projects_media/attendo_logo.png": "ddc4db620c4e3c21aa5c1ba7506bd9ec",
"assets/assets/images/projects_media/nectar_banner.png": "a593aefd2f8db918cdd44909f50f5d36",
"assets/assets/images/projects_media/car.jpg": "07ffc32af208da544f05afeb3643de6f",
"assets/assets/images/projects_media/attendo_banner.png": "d02f32ad0d7eaf42640a722970c8cf43",
"assets/assets/images/projects_media/netflix.png": "bf79fc07afc5395ed97dd8932dede8a3",
"assets/assets/images/projects_media/esp_logo.png": "7beb6b0fde33744a8ff4e79103781baa",
"assets/assets/images/projects_media/iris.jpg": "a6c8b629e94613d58b25b4fec03a520b",
"assets/assets/images/projects_media/attendo/application-12.png": "acd792acd9560b84a741da47daddc829",
"assets/assets/images/projects_media/attendo/dashboard-1.png": "dfa1be9a46cde1389ea8d0b96bce6938",
"assets/assets/images/projects_media/attendo/application-10.png": "ea396d9d5a0ab6c0879af3900b42dbfe",
"assets/assets/images/projects_media/attendo/application-5.png": "9afee453f89298e1aa2c28a26b498cd1",
"assets/assets/images/projects_media/attendo/dashboard-4.png": "ceac5743ccec6ea49633d9d12ba4c725",
"assets/assets/images/projects_media/attendo/application-6.png": "f5ee15aedc16d7990da715b7a6a14d03",
"assets/assets/images/projects_media/attendo/application-9.png": "97f7dc15fa11ae1096a0fd053f8cb19d",
"assets/assets/images/projects_media/attendo/application-2.png": "fa9afdfc329703a143f0ce2b2d169e90",
"assets/assets/images/projects_media/attendo/application-8.png": "8d589bb0574b3888d691d7e318c7908a",
"assets/assets/images/projects_media/attendo/dashboard-2.png": "e47cd38aabefa74363524de5d2c8e30f",
"assets/assets/images/projects_media/attendo/dashboard-3.png": "4253fe1644d858c422717f34e5ac10fd",
"assets/assets/images/projects_media/attendo/dashboard-5.png": "436fdd45b2d3558afde4cd63c208c8b3",
"assets/assets/images/projects_media/attendo/application-3.png": "3f688da97fa2b987543a2175e036e1f5",
"assets/assets/images/projects_media/attendo/application-4.png": "86ed4019d7d2492acdf90fe9870038a7",
"assets/assets/images/projects_media/attendo/application-11.png": "2e5410d5ced62bc9044815d08d4efef9",
"assets/assets/images/projects_media/attendo/application-1.png": "eb7214257cfab38e9d8dcde567656b03",
"assets/assets/images/projects_media/attendo/application-7.png": "4615b2ee8f51fa80cf63accefb263895",
"assets/assets/images/projects_media/house_price_2.jpg": "67db5aebf6521b6f807a7cd02c8fd3ba",
"assets/assets/images/projects_media/xray.jpg": "e6447ed5047a419b49cde324a6be6a81",
"assets/assets/images/feature1.png": "e147086132f79363e88bd7091b990b46",
"assets/assets/images/ai.svg": "9ff8b2ad9b99759bf2677c5e8b0ae2f8",
"assets/assets/fonts/DancingScript-Bold.ttf": "6c5b41b0622681bb6aafb3d4ed2a1171",
"assets/assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410"};
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
