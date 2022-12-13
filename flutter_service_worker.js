'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "manifest.json": "05f725318f41bf1601ead9ffa9355535",
"version.json": "f18d220f770434409d5d68bddf9bd1af",
"icons/Icon-512.png": "4032afccf767686889200cc5c571783c",
"icons/Icon-192.png": "a59263cd2a455c616ccc40c221e5bdf0",
"icons/Icon-maskable-512.png": "209ea246467305353dd31e0cbc6cf5c5",
"icons/Icon-maskable-192.png": "400d7b72a58397c9a1b36c9daa1b921c",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"favicon.png": "f4fcc25da3b0a50ab28f2fd2bf12729e",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"main.js": "4ad2f4e46435b0e220d6b0182f9de8ad",
"main.css": "95b4b81b36e3fc590205207f2454e1f2",
"index.html": "574bcd83f8fb9902a2e3dd7b7d9e341c",
"/": "574bcd83f8fb9902a2e3dd7b7d9e341c",
"main.dart.js": "5b30358bfcc4a740523a5abedcee3c80",
"assets/NOTICES": "5cd21f5f8bfb213a9752a8a3814786d4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/postory_theme/lotties/store_check.json": "415df23403389bbb201e758eee900c6c",
"assets/packages/postory_theme/lotties/store_loading.json": "003282d39535384b86bb9506a25045b4",
"assets/packages/postory_theme/lotties/point.json": "819455b0a0104a05ec6b27865141b654",
"assets/packages/postory_theme/svgs/inbox_only.svg": "f3c4b035c42694c915602f5216a4d6ab",
"assets/packages/postory_theme/svgs/slice_logo.svg": "c513e5dd1e9eaa9f8c030302deb3aab0",
"assets/packages/postory_theme/svgs/inbox_good.svg": "40108a817996573cbe6564ada104fef8",
"assets/packages/postory_theme/svgs/POSTORY.svg": "d60f8995fbcf0ca9a1e3a048a107db5b",
"assets/packages/postory_theme/svgs/inbox_lock.svg": "20b34adfa8b5b2757a23669fe16591f1",
"assets/packages/postory_theme/svgs/send_digital.svg": "d8e1d8b1878a299629f7a58a19e85cb3",
"assets/packages/postory_theme/svgs/slice_googleplay.svg": "0a2433cd5ccdcb76b6d73c616d545450",
"assets/packages/postory_theme/svgs/color-privite.svg": "5b6b49d14357d2fa1fe3ee5097047f26",
"assets/packages/postory_theme/svgs/inbox_all.svg": "5ed840c98a8f46998154364944d92094",
"assets/packages/postory_theme/svgs/point.svg": "764ed477d30e2e2c04bdfb438bf9e942",
"assets/packages/postory_theme/svgs/notify_off.svg": "e93cda928df42ed8a6a07573b98b844e",
"assets/packages/postory_theme/svgs/success.svg": "bdb21beea19e4538320c2713b2ef15ca",
"assets/packages/postory_theme/svgs/inbox_others.svg": "8e2256cc949ea1a973a23e2ce54da1b4",
"assets/packages/postory_theme/svgs/send_real.svg": "12a7a63b6ad70e590d05663fd7e5857a",
"assets/packages/postory_theme/svgs/fail.svg": "495943b819946a8aadcb9206746f79e9",
"assets/packages/postory_theme/svgs/inbox_email.svg": "f16265fcc5a8d27382514422081390ed",
"assets/packages/postory_theme/svgs/inbox_star.svg": "591763631d3428f269614b18d9206ac7",
"assets/packages/postory_theme/svgs/post_hand.svg": "b1c1f0b89e425ea420c6be08fe462ad8",
"assets/packages/postory_theme/svgs/notify_on.svg": "bde90a4528b89e805a73fb8868af0057",
"assets/packages/postory_theme/svgs/post_point.svg": "8a9c57999c4ff2323c252dd7b9bfa202",
"assets/packages/postory_theme/svgs/slice_appstore.svg": "0353d793b75e6ac916a8e32ccae8e56e",
"assets/packages/postory_theme/svgs/qrcode.svg": "cffdcecfa6a3d74cf06bf021f32e6431",
"assets/packages/postory_theme/svgs/color-public.svg": "0e70b9494a649e44645b3ca13fd974e7",
"assets/packages/postory_theme/svgs/locate.svg": "e0da19d46f7ea0639dc9fc3890316d89",
"assets/packages/postory_theme/images/pocoin/stamp.png": "33a6995d2894fc0f4822b98339ecf561",
"assets/packages/postory_theme/images/pocoin/2.0x/stamp.png": "373fa60c2abcea0fb7a2eac966048681",
"assets/packages/postory_theme/images/pocoin/2.0x/top_up_banner.png": "abf1eba1dff16f121cb378e53c405a26",
"assets/packages/postory_theme/images/pocoin/2.0x/mail_multi.png": "5a53730f9c8c5d491f5c9115bc6627ad",
"assets/packages/postory_theme/images/pocoin/2.0x/top_up_3.png": "fb96c612d2b26e7dd2dfe427e24e7f4f",
"assets/packages/postory_theme/images/pocoin/2.0x/top_up_2.png": "bc960b03d4dc9f66e24497bc46b60d0a",
"assets/packages/postory_theme/images/pocoin/2.0x/top_up_1.png": "e64eedd0529074ed296c93356e07e45c",
"assets/packages/postory_theme/images/pocoin/2.0x/mail_single.png": "10d1028b60bf99836f01fdda610b42af",
"assets/packages/postory_theme/images/pocoin/2.0x/postcard.png": "68bff556e5e9af6dbd5d18b486b257d6",
"assets/packages/postory_theme/images/pocoin/top_up_banner.png": "ad398acc33fc50999e9155dae929885b",
"assets/packages/postory_theme/images/pocoin/mail_multi.png": "17a27f5defd74e1407d8ae325686bcae",
"assets/packages/postory_theme/images/pocoin/top_up_3.png": "0eaaeb4d177806ccbff7807428e4e0ea",
"assets/packages/postory_theme/images/pocoin/top_up_2.png": "a0fdd615fa266b6163f5b471e372bf74",
"assets/packages/postory_theme/images/pocoin/3.0x/stamp.png": "539bfcadfdb0ae299ea1d4d2b5b0280f",
"assets/packages/postory_theme/images/pocoin/3.0x/top_up_banner.png": "e0020fe8194c70d215a6693c8ab904bf",
"assets/packages/postory_theme/images/pocoin/3.0x/mail_multi.png": "f1ca68940e75132adf7229300bec4fc2",
"assets/packages/postory_theme/images/pocoin/3.0x/top_up_3.png": "dd68c38960a17b09e7cdb3dde4ab18b1",
"assets/packages/postory_theme/images/pocoin/3.0x/top_up_2.png": "29c277410986def4b8bd42baf2919d7e",
"assets/packages/postory_theme/images/pocoin/3.0x/top_up_1.png": "582d8b373bd703464c2b40670e8e4ea8",
"assets/packages/postory_theme/images/pocoin/3.0x/mail_single.png": "86f2fec90a889dbaf0652535846ea3a0",
"assets/packages/postory_theme/images/pocoin/3.0x/postcard.png": "66959c0a3c27dd9477ef2f2c8c647e77",
"assets/packages/postory_theme/images/pocoin/top_up_1.png": "1ff1f5217b5a2c58c58b4f4b692c3180",
"assets/packages/postory_theme/images/pocoin/mail_single.png": "2d510c39eaedbb458a9d7ec4a0d6cd3b",
"assets/packages/postory_theme/images/pocoin/postcard.png": "1e816e0070f725bd072850433f83c5b8",
"assets/packages/postory_theme/images/virtual_address/temp_road.png": "57b4ae9701b4cb0fc7caa9bcdcc3258c",
"assets/packages/postory_theme/images/virtual_address/2.0x/temp_road.png": "981d7afb887be3a39c336b14bebf4cf9",
"assets/packages/postory_theme/images/virtual_address/2.0x/gold_city.png": "143c5cf477047e03147a4066eaf635e6",
"assets/packages/postory_theme/images/virtual_address/2.0x/dog_city.png": "3d95c4e2dc75c83f3d50810774e1a003",
"assets/packages/postory_theme/images/virtual_address/2.0x/dream_city.png": "2e5649168519a1403e1f735a502d5264",
"assets/packages/postory_theme/images/virtual_address/2.0x/virtual_address_bg.png": "25cc0ab78626a6c02578edcfb2b75750",
"assets/packages/postory_theme/images/virtual_address/2.0x/mars_city.png": "de2fd47834e144083615da8904a06b07",
"assets/packages/postory_theme/images/virtual_address/2.0x/book_city.png": "525b0d56980dd7a11ebf7d04cced1cab",
"assets/packages/postory_theme/images/virtual_address/2.0x/v_search.png": "faac52fa4e5100af08ad587d9962055c",
"assets/packages/postory_theme/images/virtual_address/2.0x/silicon_valley_city.png": "62a7d158209f19dfe833efd8334c1b6d",
"assets/packages/postory_theme/images/virtual_address/2.0x/code_city.png": "f1acdf2e9d3d1ea8e17b3f518a45d426",
"assets/packages/postory_theme/images/virtual_address/gold_city.png": "b3cca54033784f2b3ef052725596547d",
"assets/packages/postory_theme/images/virtual_address/dog_city.png": "324d18bdb05422770fd572d6aae77572",
"assets/packages/postory_theme/images/virtual_address/dream_city.png": "16015dcea30f6de00850c418c031f9a8",
"assets/packages/postory_theme/images/virtual_address/virtual_address_bg.png": "223a2238beecded5ca8237876b146042",
"assets/packages/postory_theme/images/virtual_address/mars_city.png": "5e34b73de405a1e4b505c1ab193f8e59",
"assets/packages/postory_theme/images/virtual_address/book_city.png": "47db7084dd35d43a47f3984c03a15f86",
"assets/packages/postory_theme/images/virtual_address/v_search.png": "e3ee305f3604dea3eb6574dc3d9fe674",
"assets/packages/postory_theme/images/virtual_address/3.0x/temp_road.png": "16b3cdf040cd66653c5dd22e2710a8ab",
"assets/packages/postory_theme/images/virtual_address/3.0x/gold_city.png": "c225070b4e5c795f41e895b7e17a5ee7",
"assets/packages/postory_theme/images/virtual_address/3.0x/dog_city.png": "cbe0b3185ff96c8eb51a329acb279647",
"assets/packages/postory_theme/images/virtual_address/3.0x/dream_city.png": "93d793b912400ce582a74454a7354fd7",
"assets/packages/postory_theme/images/virtual_address/3.0x/virtual_address_bg.png": "75287bc26cbd3faef169213d6ff69043",
"assets/packages/postory_theme/images/virtual_address/3.0x/mars_city.png": "45835aaeb76554f55e2b02cfc1e602dc",
"assets/packages/postory_theme/images/virtual_address/3.0x/book_city.png": "864764a3c98914ef830cf2e98f1196ea",
"assets/packages/postory_theme/images/virtual_address/3.0x/v_search.png": "97238b199245399455d06fd07dddc6b6",
"assets/packages/postory_theme/images/virtual_address/3.0x/silicon_valley_city.png": "cd6f781dba479023635ffb4e7db21c57",
"assets/packages/postory_theme/images/virtual_address/3.0x/code_city.png": "75d96ae63c3282cc0b293843c78b8fe2",
"assets/packages/postory_theme/images/virtual_address/silicon_valley_city.png": "cd500634d768cf9e205884ba8fd4d3c1",
"assets/packages/postory_theme/images/virtual_address/code_city.png": "771ebb7303428d1e3ecdf84f102958d6",
"assets/packages/postory_theme/images/explore/2.0x/explore_main.png": "b0b54c9542ff28ab67d5f1cacf7f22e6",
"assets/packages/postory_theme/images/explore/explore_main.png": "f8b40911d36a503a878d70ae30559444",
"assets/packages/postory_theme/images/explore/3.0x/explore_main.png": "84921629487be0148259111d53b99a6e",
"assets/packages/postory_theme/images/payment/Jcb.png": "7d8ad18f5bb5e803d16dbd0924d83572",
"assets/packages/postory_theme/images/payment/CreditCard.png": "66ea9d65e8029e1639aac8353a7eb7ae",
"assets/packages/postory_theme/images/payment/2.0x/Jcb.png": "510cbc786d41b7bf4ed6b0be39af3659",
"assets/packages/postory_theme/images/payment/2.0x/CreditCard.png": "dbc6c5e00f1b341b12ca2de677a28362",
"assets/packages/postory_theme/images/payment/2.0x/JkopayPay.png": "e02ab1f603beeadb6080b638ccfbbc5a",
"assets/packages/postory_theme/images/payment/2.0x/Visa.png": "c31b4ff9ebc4f8f8361e3dac51ada850",
"assets/packages/postory_theme/images/payment/2.0x/ApplePay.png": "95ce0985071693b310a7e6d8e73ab1bb",
"assets/packages/postory_theme/images/payment/2.0x/master-color.png": "6c409ca460236ff447dfc64d0038c213",
"assets/packages/postory_theme/images/payment/2.0x/Default.png": "b0ba9aff1357461580acbd7357280118",
"assets/packages/postory_theme/images/payment/2.0x/jcb-color.png": "85da8852f34ece99d454aedfb5c33edf",
"assets/packages/postory_theme/images/payment/2.0x/LinePay.png": "7246a61e22732b7309157f51fd0a3f09",
"assets/packages/postory_theme/images/payment/2.0x/Mastercard.png": "a4e6c99c5ec1dfe717deb5089a0357a5",
"assets/packages/postory_theme/images/payment/2.0x/tappay.png": "88595f3dc811d40763a6a0724e7288c0",
"assets/packages/postory_theme/images/payment/2.0x/GooglePay.png": "a96ed28ef1400cccd03c0979023fade1",
"assets/packages/postory_theme/images/payment/2.0x/visa-color.png": "94617cb3b9c0b371c4b8bc34247bc216",
"assets/packages/postory_theme/images/payment/JkopayPay.png": "3bd884d9bce8708cf475cd9468371f78",
"assets/packages/postory_theme/images/payment/Visa.png": "7fd2661993aa1adb6ea5f5ad0140a9a4",
"assets/packages/postory_theme/images/payment/ApplePay.png": "60927e58226b1c2e63a12bbbb1f7cf7c",
"assets/packages/postory_theme/images/payment/master-color.png": "01c5e94021e0b2c4196d8028d032f3b0",
"assets/packages/postory_theme/images/payment/Default.png": "003cf6b68988660fca6d660eaa173846",
"assets/packages/postory_theme/images/payment/jcb-color.png": "dc938d92b6ae45d2c479b59f0fe11c51",
"assets/packages/postory_theme/images/payment/3.0x/Jcb.png": "941affa5ee9e7b6a6749957131dec9f5",
"assets/packages/postory_theme/images/payment/3.0x/CreditCard.png": "df42a554f6db2ffb88f1326b908414bf",
"assets/packages/postory_theme/images/payment/3.0x/JkopayPay.png": "8c23468ed8216bf0a74358a59d4a92f4",
"assets/packages/postory_theme/images/payment/3.0x/Visa.png": "68f46e8823b120ff573d2bd8008a4a26",
"assets/packages/postory_theme/images/payment/3.0x/ApplePay.png": "01815d6a51944b4f9e3ea53f0d2ce3d3",
"assets/packages/postory_theme/images/payment/3.0x/master-color.png": "c8ccffe6cd117db9c028b6c3ff02762b",
"assets/packages/postory_theme/images/payment/3.0x/Default.png": "a680c1da73f62883fe5d90c927c58a33",
"assets/packages/postory_theme/images/payment/3.0x/jcb-color.png": "e1c95bdc7e43b5bb69448b3300c412ec",
"assets/packages/postory_theme/images/payment/3.0x/LinePay.png": "2777c16ef9de3a94b48822f7bbdcabe9",
"assets/packages/postory_theme/images/payment/3.0x/Mastercard.png": "a16531868c08ae6ac38a79a5c6b1f9f9",
"assets/packages/postory_theme/images/payment/3.0x/tappay.png": "3fa38afd2b0b5d9585b6263810392799",
"assets/packages/postory_theme/images/payment/3.0x/GooglePay.png": "b27422390bcf0ed0f9a3198024584ac7",
"assets/packages/postory_theme/images/payment/3.0x/visa-color.png": "cdb8073d485634b8724ca3302c455b27",
"assets/packages/postory_theme/images/payment/LinePay.png": "9448c9e4e4046b22346c871c851dab7f",
"assets/packages/postory_theme/images/payment/Mastercard.png": "a326c21720286b6bf78db9c20c71347b",
"assets/packages/postory_theme/images/payment/tappay.png": "a3e5195f7455d20013b9778258ae77ba",
"assets/packages/postory_theme/images/payment/GooglePay.png": "9a6bea0735825565419e63849cc97835",
"assets/packages/postory_theme/images/payment/visa-color.png": "fcd23cc56bdc9c9098854820b0d00799",
"assets/packages/postory_theme/fonts/POSTORY.ttf": "f6af3b77928a5c17c0bcfc4529e085c5",
"assets/shaders/ink_sparkle.frag": "7ff7388e83c41d3004d4335a0e6dca0c",
"assets/FontManifest.json": "51e7f309b6bd5450385e397762aeb944",
"assets/AssetManifest.json": "11ea668cfd96d9014049240815d2c49d",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
