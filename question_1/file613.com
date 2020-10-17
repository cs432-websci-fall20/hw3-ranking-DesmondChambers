<!DOCTYPE html>
<html lang="en" class="no-js not-logged-in client-root">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>
Instagram on Instagram: “#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We’re dreaming of this view above the solar-powered canopy…”
</title>

        
        <meta name="robots" content="noimageindex, noarchive">
        <meta name="apple-mobile-web-app-status-bar-style" content="default">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="theme-color" content="#ffffff">
        <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">
        <link rel="manifest" href="/data/manifest.json">

        <link rel="preload" href="/static/bundles/metro/ConsumerUICommons.css/bae63654c3c6.css" as="style" type="text/css" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/Consumer.css/9dcaab750c7c.css" as="style" type="text/css" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/PostPageContainer.css/26f5237c41b6.css" as="style" type="text/css" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/Vendor.js/5a56d51ae30f.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/en_US.js/5745b6ef2b49.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/ConsumerLibCommons.js/646268ae7d30.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/ConsumerUICommons.js/b46a5b0e1318.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/ConsumerAsyncCommons.js/c4ca4238a0b9.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/Consumer.js/a8fdd362847c.js" as="script" type="text/javascript" crossorigin="anonymous" />
<link rel="preload" href="/static/bundles/metro/PostPageContainer.js/5fc8c1339d78.js" as="script" type="text/javascript" crossorigin="anonymous" />
        
        

        <script type="text/javascript">
        (function() {
  var docElement = document.documentElement;
  var classRE = new RegExp('(^|\\s)no-js(\\s|$)');
  var className = docElement.className;
  docElement.className = className.replace(classRE, '$1js$2');
})();
</script>
        <script type="text/javascript">
(function() {
  if ('PerformanceObserver' in window && 'PerformancePaintTiming' in window) {
    window.__bufferedPerformance = [];
    var ob = new PerformanceObserver(function(e) {
      window.__bufferedPerformance.push.apply(window.__bufferedPerformance,e.getEntries());
    });
    ob.observe({entryTypes:['paint']});
  }

  window.__bufferedErrors = [];
  window.onerror = function(message, url, line, column, error) {
    window.__bufferedErrors.push({
      message: message,
      url: url,
      line: line,
      column: column,
      error: error
    });
    return false;
  };
  window.__initialData = {
    pending: true,
    waiting: []
  };
  function asyncFetchSharedData(extra) {
    var sharedDataReq = new XMLHttpRequest();
    sharedDataReq.onreadystatechange = function() {
          if (sharedDataReq.readyState === 4) {
            if(sharedDataReq.status === 200){
              var sharedData = JSON.parse(sharedDataReq.responseText);
              window.__initialDataLoaded(sharedData, extra);
            }
          }
        }
    sharedDataReq.open('GET', '/data/shared_data/', true);
    sharedDataReq.send(null);
  }
  function notifyLoaded(item, data) {
    item.pending = false;
    item.data = data;
    for (var i = 0;i < item.waiting.length; ++i) {
      item.waiting[i].resolve(item.data);
    }
    item.waiting = [];
  }
  function notifyError(item, msg) {
    item.pending = false;
    item.error = new Error(msg);
    for (var i = 0;i < item.waiting.length; ++i) {
      item.waiting[i].reject(item.error);
    }
    item.waiting = [];
  }
  window.__initialDataLoaded = function(initialData, extraData) {
    if (extraData) {
      for (var key in extraData) {
        initialData[key] = extraData[key];
      }
    }
    notifyLoaded(window.__initialData, initialData);
  };
  window.__initialDataError = function(msg) {
    notifyError(window.__initialData, msg);
  };
  window.__additionalData = {};
  window.__pendingAdditionalData = function(paths) {
    for (var i = 0;i < paths.length; ++i) {
      window.__additionalData[paths[i]] = {
        pending: true,
        waiting: []
      };
    }
  };
  window.__additionalDataLoaded = function(path, data) {
    if (path in window.__additionalData) {
      notifyLoaded(window.__additionalData[path], data);
    } else {
      console.error('Unexpected additional data loaded "' + path + '"');
    }
  };
  window.__additionalDataError = function(path, msg) {
    if (path in window.__additionalData) {
      notifyError(window.__additionalData[path], msg);
    } else {
      console.error('Unexpected additional data encountered an error "' + path + '": ' + msg);
    }
  };
  
})();
</script><script type="text/javascript">

/*
 Copyright 2018 Google Inc. All Rights Reserved.
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/

(function(){function g(a,c){b||(b=a,f=c,h.forEach(function(a){removeEventListener(a,l,e)}),m())}function m(){b&&f&&0<d.length&&(d.forEach(function(a){a(b,f)}),d=[])}function n(a,c){function k(){g(a,c);d()}function b(){d()}function d(){removeEventListener("pointerup",k,e);removeEventListener("pointercancel",b,e)}addEventListener("pointerup",k,e);addEventListener("pointercancel",b,e)}function l(a){if(a.cancelable){var c=performance.now(),b=a.timeStamp;b>c&&(c=+new Date);c-=b;"pointerdown"==a.type?n(c,
a):g(c,a)}}var e={passive:!0,capture:!0},h=["click","mousedown","keydown","touchstart","pointerdown"],b,f,d=[];h.forEach(function(a){addEventListener(a,l,e)});window.perfMetrics=window.perfMetrics||{};window.perfMetrics.onFirstInputDelay=function(a){d.push(a);m()}})();
</script>
    
                <link rel="apple-touch-icon-precomposed" sizes="76x76" href="/static/images/ico/apple-touch-icon-76x76-precomposed.png/666282be8229.png">
                <link rel="apple-touch-icon-precomposed" sizes="120x120" href="/static/images/ico/apple-touch-icon-120x120-precomposed.png/8a5bd3f267b1.png">
                <link rel="apple-touch-icon-precomposed" sizes="152x152" href="/static/images/ico/apple-touch-icon-152x152-precomposed.png/68193576ffc5.png">
                <link rel="apple-touch-icon-precomposed" sizes="167x167" href="/static/images/ico/apple-touch-icon-167x167-precomposed.png/4985e31c9100.png">
                <link rel="apple-touch-icon-precomposed" sizes="180x180" href="/static/images/ico/apple-touch-icon-180x180-precomposed.png/c06fdb2357bd.png">
                
                    <link rel="icon" sizes="192x192" href="/static/images/ico/favicon-192.png/68d99ba29cc8.png">
                
            
            
                    <link rel="mask-icon" href="/static/images/ico/favicon.svg/fc72dd4bfde8.svg" color="#262626">
                  
                  <link rel="shortcut icon" type="image/x-icon" href="/static/images/ico/favicon.ico/36b3ee2d91ed.ico">
                
            
            
            
    
    <link rel="canonical" href="https://www.instagram.com/p/B_u0R1JAymO/" />
    <meta content="924k Likes, 13.7k Comments - Instagram (@instagram) on Instagram: “#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We’re dreaming of this…”" name="description" />
    <meta property="og:site_name" content="Instagram" />
    <meta property="og:title" content="Instagram on Instagram: “#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We’re dreaming of this view above the solar-powered canopy…”" />
    <meta property="og:image" content="https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/95956679_257876672260793_7142988463278779236_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=105&_nc_ohc=ofeZNMVVStIAX_EfsPL&tp=19&oh=1d0bf38f90ebf9c52e5a3bb2e109328e&oe=5FB2C3EA" />
    <meta property="og:description" content="924k Likes, 13.7k Comments - Instagram (@instagram) on Instagram: “#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We’re dreaming of this…”" />
    <meta property="fb:app_id" content="124024574287414" />
    <meta property="og:url" content="https://www.instagram.com/p/B_u0R1JAymO/" />
    <meta property="instapp:owner_user_id" content="25025320" />
    
    <meta property="al:ios:app_name" content="Instagram" />
    <meta property="al:ios:app_store_id" content="389801252" />
    <meta property="al:ios:url" content="instagram://media?id=2301006383342102926" />
    <meta property="al:android:app_name" content="Instagram" />
    <meta property="al:android:package" content="com.instagram.android" />
    <meta property="al:android:url" content="https://www.instagram.com/p/B_u0R1JAymO/" />
    
    
    <meta name="medium" content="image" />
    <meta property="og:type" content="instapp:photo" />
    <meta property="instapp:hashtags" content="hellofrom" />

    <link rel="alternate" href="android-app://com.instagram.android/https/instagram.com/p/B_u0R1JAymO/" />
    
            <script type="application/ld+json">
                {"@context":"http:\/\/schema.org","@type":"ImageObject","caption":"#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We\u2019re dreaming of this view above the solar-powered canopy where art, nature and architecture coexist.\n\nPhoto by @j9ryl","representativeOfPage":"http:\/\/schema.org\/True","uploadDate":"2020-05-03T15:55:57","author":{"@type":"Person","alternateName":"@instagram","mainEntityofPage":{"@type":"ProfilePage","@id":"https:\/\/www.instagram.com\/instagram\/"}},"comment":[{"@type":"Comment","text":"\ud83d\udd25\ud83d\udd25","author":{"@type":"Person","alternateName":"@ld__editz_","mainEntityofPage":{"@type":"ProfilePage","@id":"https:\/\/www.instagram.com\/ld__editz_\/"}}}],"commentCount":"13729","contentLocation":{"@type":"Place","name":"Super Tree Grove Garden By the Bay Singapore","mainEntityofPage":{"@type":"CollectionPage","@id":"https:\/\/www.instagram.com\/explore\/locations\/381109303\/super-tree-grove-garden-by-the-bay-singapore\/"},"address":{"@type":"PostalAddress","addressLocality":"Singapore","addressCountry":{"@type":"Country","name":"SG"}}},"interactionStatistic":{"@type":"InteractionCounter","interactionType":{"@type":"LikeAction"},"userInteractionCount":"924021"},"mainEntityofPage":{"@type":"ItemPage","@id":"https:\/\/www.instagram.com\/p\/B_u0R1JAymO\/%0A"},"description":"924k Likes, 13.7k Comments - Instagram (@instagram) on Instagram: \u201c#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We\u2019re dreaming of this\u2026\u201d","name":"Instagram on Instagram: \u201c#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We\u2019re dreaming of this view above the solar-powered canopy\u2026\u201d"}
            </script>
        
    
    <link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A" hreflang="x-default" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=en" hreflang="en" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=fr" hreflang="fr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=it" hreflang="it" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=de" hreflang="de" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es" hreflang="es" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=zh-cn" hreflang="zh-cn" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=zh-tw" hreflang="zh-tw" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ja" hreflang="ja" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ko" hreflang="ko" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=pt" hreflang="pt" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=pt-br" hreflang="pt-br" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=af" hreflang="af" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=cs" hreflang="cs" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=da" hreflang="da" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=el" hreflang="el" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=fi" hreflang="fi" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=hr" hreflang="hr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=hu" hreflang="hu" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=id" hreflang="id" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ms" hreflang="ms" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=nb" hreflang="nb" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=nl" hreflang="nl" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=pl" hreflang="pl" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ru" hreflang="ru" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=sk" hreflang="sk" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=sv" hreflang="sv" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=th" hreflang="th" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=tl" hreflang="tl" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=tr" hreflang="tr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=hi" hreflang="hi" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=bn" hreflang="bn" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=gu" hreflang="gu" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=kn" hreflang="kn" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ml" hreflang="ml" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=mr" hreflang="mr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=pa" hreflang="pa" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ta" hreflang="ta" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=te" hreflang="te" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ne" hreflang="ne" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=si" hreflang="si" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ur" hreflang="ur" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=vi" hreflang="vi" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=bg" hreflang="bg" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=fr-ca" hreflang="fr-ca" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=ro" hreflang="ro" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=sr" hreflang="sr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=uk" hreflang="uk" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=zh-hk" hreflang="zh-hk" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-mx" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-hn" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-ec" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-cl" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-cu" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-ni" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-pa" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-ar" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-sv" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-pr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-cr" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-py" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-ve" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-do" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-bo" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-pe" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-gt" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-co" />
<link rel="alternate" href="https://www.instagram.com/p/B_u0R1JAymO/%0A?hl=es-la" hreflang="es-uy" />
</head>
    <body class="" style="
    background: white;
">
        
    <div id="react-root">
      
        <span><svg width="50" height="50" viewBox="0 0 50 50" style="position:absolute;top:50%;left:50%;margin:-25px 0 0 -25px;fill:#c7c7c7"><path d="M25 1c-6.52 0-7.34.03-9.9.14-2.55.12-4.3.53-5.82 1.12a11.76 11.76 0 0 0-4.25 2.77 11.76 11.76 0 0 0-2.77 4.25c-.6 1.52-1 3.27-1.12 5.82C1.03 17.66 1 18.48 1 25c0 6.5.03 7.33.14 9.88.12 2.56.53 4.3 1.12 5.83a11.76 11.76 0 0 0 2.77 4.25 11.76 11.76 0 0 0 4.25 2.77c1.52.59 3.27 1 5.82 1.11 2.56.12 3.38.14 9.9.14 6.5 0 7.33-.02 9.88-.14 2.56-.12 4.3-.52 5.83-1.11a11.76 11.76 0 0 0 4.25-2.77 11.76 11.76 0 0 0 2.77-4.25c.59-1.53 1-3.27 1.11-5.83.12-2.55.14-3.37.14-9.89 0-6.51-.02-7.33-.14-9.89-.12-2.55-.52-4.3-1.11-5.82a11.76 11.76 0 0 0-2.77-4.25 11.76 11.76 0 0 0-4.25-2.77c-1.53-.6-3.27-1-5.83-1.12A170.2 170.2 0 0 0 25 1zm0 4.32c6.4 0 7.16.03 9.69.14 2.34.11 3.6.5 4.45.83 1.12.43 1.92.95 2.76 1.8a7.43 7.43 0 0 1 1.8 2.75c.32.85.72 2.12.82 4.46.12 2.53.14 3.29.14 9.7 0 6.4-.02 7.16-.14 9.69-.1 2.34-.5 3.6-.82 4.45a7.43 7.43 0 0 1-1.8 2.76 7.43 7.43 0 0 1-2.76 1.8c-.84.32-2.11.72-4.45.82-2.53.12-3.3.14-9.7.14-6.4 0-7.16-.02-9.7-.14-2.33-.1-3.6-.5-4.45-.82a7.43 7.43 0 0 1-2.76-1.8 7.43 7.43 0 0 1-1.8-2.76c-.32-.84-.71-2.11-.82-4.45a166.5 166.5 0 0 1-.14-9.7c0-6.4.03-7.16.14-9.7.11-2.33.5-3.6.83-4.45a7.43 7.43 0 0 1 1.8-2.76 7.43 7.43 0 0 1 2.75-1.8c.85-.32 2.12-.71 4.46-.82 2.53-.11 3.29-.14 9.7-.14zm0 7.35a12.32 12.32 0 1 0 0 24.64 12.32 12.32 0 0 0 0-24.64zM25 33a8 8 0 1 1 0-16 8 8 0 0 1 0 16zm15.68-20.8a2.88 2.88 0 1 0-5.76 0 2.88 2.88 0 0 0 5.76 0z"/></svg></span>
      
    </div>

        


        
            <link rel="stylesheet" href="/static/bundles/metro/ConsumerUICommons.css/bae63654c3c6.css" type="text/css" crossorigin="anonymous" />
<link rel="stylesheet" href="/static/bundles/metro/Consumer.css/9dcaab750c7c.css" type="text/css" crossorigin="anonymous" />
<script type="text/javascript">window._sharedData = {"config":{"csrf_token":"Lw4OnZS5kEl5dTcBGG4otgzqCRtOP36A","viewer":null,"viewerId":null},"country_code":"US","language_code":"en","locale":"en_US","entry_data":{"PostPage":[{"graphql":{"shortcode_media":{"__typename":"GraphImage","id":"2301006383342102926","shortcode":"B_u0R1JAymO","dimensions":{"height":1350,"width":1080},"gating_info":null,"fact_check_overall_rating":null,"fact_check_information":null,"sensitivity_friction_info":null,"media_overlay_info":null,"media_preview":"ACEqxx8v49/T6UqLk0pX5sHo3TFXo1jjK4O4Hkj+lISI5E8qINxuOfyP+FVHYnGf/wBYrYIVzuK/KOdp4wPX/wCtWXI/mn+6O3H+f/rVNhhsX1opfJT1/wDQv8KKP6/rURLbyoDmXLcEVLCFaQn2+mf8/rVFfkf+9j8j6fnVvmeQE/JnsOhz/KqGW5BsJI+Yc8f1x7jPFUZJUkwEUqVzmrEqtC+QSCOo/wDr9T/Sq/qe57UNgVMr/k0Uvl+/6UVOgiRWwDgd+O9KWxjHBFNFSEfKfof5UwHTy+btCZJxz9aZGu7hjgc9fX+tPxhSe/FRvyp+ppXuAzyz6fzoqOinYR//2Q==","display_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/95956679_257876672260793_7142988463278779236_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=105\u0026_nc_ohc=ofeZNMVVStIAX_EfsPL\u0026tp=19\u0026oh=1d0bf38f90ebf9c52e5a3bb2e109328e\u0026oe=5FB2C3EA","display_resources":[{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/95956679_257876672260793_7142988463278779236_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=105\u0026_nc_ohc=ofeZNMVVStIAX_EfsPL\u0026_nc_tp=25\u0026oh=bab43e9ddc6b50736c44afb2ed3ce663\u0026oe=5FB3D28D","config_width":640,"config_height":800},{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p750x750/95956679_257876672260793_7142988463278779236_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=105\u0026_nc_ohc=ofeZNMVVStIAX_EfsPL\u0026_nc_tp=25\u0026oh=09f87ad3f49843c5f7e3cf9485efb751\u0026oe=5FB3A78D","config_width":750,"config_height":937},{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/95956679_257876672260793_7142988463278779236_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=105\u0026_nc_ohc=ofeZNMVVStIAX_EfsPL\u0026tp=19\u0026oh=1d0bf38f90ebf9c52e5a3bb2e109328e\u0026oe=5FB2C3EA","config_width":1080,"config_height":1350}],"accessibility_caption":"Aerial photo of solar-powered trees.","is_video":false,"tracking_token":"eyJ2ZXJzaW9uIjo1LCJwYXlsb2FkIjp7ImlzX2FuYWx5dGljc190cmFja2VkIjp0cnVlLCJ1dWlkIjoiOWVmOTJkODA2YTRjNDYxY2I5MmFlNTUxMzhjMjkxNTIyMzAxMDA2MzgzMzQyMTAyOTI2In0sInNpZ25hdHVyZSI6IiJ9","edge_media_to_tagged_user":{"edges":[]},"edge_media_to_caption":{"edges":[{"node":{"text":"#HelloFrom the Supertree Grove of Gardens by the Bay, located in Singapore. We\u2019re dreaming of this view above the solar-powered canopy where art, nature and architecture coexist.\n\nPhoto by @j9ryl"}}]},"caption_is_edited":false,"has_ranked_comments":false,"edge_media_to_parent_comment":{"count":13729,"page_info":{"has_next_page":true,"end_cursor":"QVFDd0hjVkM0S05zcTlRUlA2NzVOUno1bU9nbWYxM2FzSkV3Rm1zdmFWSGFaZTBOY0ZzR0hEWDRqZVdub1VzSlhaamkwTnVmcVNOenExNkhjYnFKWDNpaw=="},"edges":[{"node":{"id":"17898994627534508","text":"\ud83d\udc4f","created_at":1597020956,"did_report_as_spam":false,"owner":{"id":"3930618887","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/116935227_314928636532308_4405290762803809726_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=KEDqC-TMBGYAX-3mwul\u0026oh=709506604d70813b304d58a09fc1c1b2\u0026oe=5FB45B18","username":"zk.gn"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17903792536509125","text":"Sellena","created_at":1597389281,"did_report_as_spam":false,"owner":{"id":"27533249958","is_verified":false,"profile_pic_url":"https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ad=z-m\u0026_nc_ht=scontent-nrt1-1.cdninstagram.com\u0026_nc_ohc=MVEG8QTyVK4AX-yZ5ve\u0026oh=0188ecfecf58a098bebb5ab1c6a6c37a\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"ezizbeyli_elgun"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17921607589438657","text":"Sellena","created_at":1597389343,"did_report_as_spam":false,"owner":{"id":"27533249958","is_verified":false,"profile_pic_url":"https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ad=z-m\u0026_nc_ht=scontent-nrt1-1.cdninstagram.com\u0026_nc_ohc=MVEG8QTyVK4AX-yZ5ve\u0026oh=0188ecfecf58a098bebb5ab1c6a6c37a\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"ezizbeyli_elgun"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18073090087216469","text":"Waooooo","created_at":1597637921,"did_report_as_spam":false,"owner":{"id":"39135063992","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/121432459_2741354059413986_3481505630828747762_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=KLKyRICAQKMAX-HHDCA\u0026oh=1693ba2f676432b3af06aacdc8768a03\u0026oe=5FB45BBA","username":"shruti_raj13"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17911687108474523","text":"\u3059\u3054\u3044\uff01","created_at":1597722295,"did_report_as_spam":false,"owner":{"id":"14683944915","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120985275_158308799265578_8984703248133599141_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=pHgHE1hQ8F4AX_czQki\u0026oh=318f0ee58491de2f12347291f38304ed\u0026oe=5FB4458A","username":"hiroya_sensei"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17985172495306204","text":"\ud83d\ude2e\ud83d\ude0d","created_at":1597924561,"did_report_as_spam":false,"owner":{"id":"12295664377","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/90633395_1091244627896234_4828558936044994560_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=-a_GLVCkisMAX8qIaQO\u0026oh=bdc1da7b6f19860a2558b63a5dbecca2\u0026oe=5FB598E8","username":"39widget"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18082058437201675","text":"\ud83d\ude0d\u2764\ufe0f","created_at":1598180698,"did_report_as_spam":false,"owner":{"id":"4935975686","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/17596794_387566201627826_6507751626768384000_a.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=m6L13r1tiowAX-pBPH5\u0026oh=7e41ed350fa0a029f419bf788c1776a8\u0026oe=5FB4780B","username":"malkijan"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17885071291724319","text":"\ud83d\udcaf\ud83d\udca2\ud83d\udca5\u2764\ud83d\udc4c","created_at":1598736036,"did_report_as_spam":false,"owner":{"id":"39714492066","is_verified":false,"profile_pic_url":"https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ad=z-m\u0026_nc_ht=scontent-nrt1-1.cdninstagram.com\u0026_nc_ohc=MVEG8QTyVK4AX-yZ5ve\u0026oh=0188ecfecf58a098bebb5ab1c6a6c37a\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"ma.ral11228"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17936352109390394","text":"Anil.kumar.9631487580","created_at":1598744877,"did_report_as_spam":false,"owner":{"id":"39262490074","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118472171_3192420577493299_8023464128075661562_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=kS-1HFWVvAUAX9uq-nJ\u0026oh=4b2db2b7f00f51367787382d67e381e5\u0026oe=5FB4B912","username":"anilk_umar4019"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17900449006553977","text":"wow","created_at":1598807726,"did_report_as_spam":false,"owner":{"id":"20909761945","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119889141_857653358388293_8137810899224656860_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=-lfJ8hGps9cAX-n3RGM\u0026oh=09d44f3893057bdb94cdbc8e5813269c\u0026oe=5FB32773","username":"__karit__01"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18049272283254165","text":"\ud83d\udc4c\ud83d\udc4c","created_at":1599014500,"did_report_as_spam":false,"owner":{"id":"36816562018","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/117393742_796384894500587_8180557756782778105_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=qIIMBsLZIb4AX92vU-L\u0026oh=c22423147fe9a791ce47520f91ea131c\u0026oe=5FB30D42","username":"luckysharma1163"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17886566473717986","text":"Amazing \u2764\ufe0f","created_at":1599118586,"did_report_as_spam":false,"owner":{"id":"309182912","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119225513_1040474613048866_1696580802087830187_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=QwSYVv05eyAAX-hz3Pu\u0026oh=a84af61ba9f384d72f2273d6ca595bad\u0026oe=5FB59AF9","username":"seto_k.kasbaryan"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17940233602386069","text":"Miss this place so much \ud83d\ude0d","created_at":1599216716,"did_report_as_spam":false,"owner":{"id":"8135048094","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/97926027_540227363530133_6024171956012580864_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=tZ75HvUGhpkAX8ZYERI\u0026oh=be8abc747b6cfec383f243b16b855272\u0026oe=5FB28EA2","username":"fefadessert_smd"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18158190907029930","text":"Wow this is incredible \ud83e\udd29","created_at":1599328497,"did_report_as_spam":false,"owner":{"id":"33072686227","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118776523_902063980283527_9021687865713882160_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=LC-FA8brH50AX-w6wBA\u0026oh=12615c54bffde93ea438525fde410cf9\u0026oe=5FB4027E","username":"v_eegan_dad"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17929342264422225","text":"\ud83d\udc9c\ud83d\udc99\ud83c\uddf8\ud83c\udde8\ud83d\udc9asuper","created_at":1599374433,"did_report_as_spam":false,"owner":{"id":"8004842756","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/34332059_171637303532387_3205767150262288384_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=Am8IItt1S7MAX-JkOaC\u0026oh=93238feaf4eb53170e36bbfecabd0a57\u0026oe=5FB41CA0","username":"suljicsebina"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18117079930151306","text":"\u2764\ufe0f\ud83d\ude0d\ud83d\ude0d","created_at":1601115430,"did_report_as_spam":false,"owner":{"id":"10359447226","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120739291_3305324536224674_2982847918833980954_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=hr51XUuJc_cAX80E76m\u0026oh=a473b59e21830c86c75ef2f2c18d95fc\u0026oe=5FB2833C","username":"amir__safarzadeh1995"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17967665752331328","text":"\ud83d\ude2e","created_at":1601449618,"did_report_as_spam":false,"owner":{"id":"38798847893","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120975986_3381560555261380_3646849945570340466_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=BE09-bIDeGYAX9G27Xk\u0026oh=33b09438b5bbbee37ebf9c1c069d2484\u0026oe=5FB48667","username":"anarodrigueslucia129"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18126236512190102","text":"\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d","created_at":1601574579,"did_report_as_spam":false,"owner":{"id":"12794670210","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118982622_2746823695644806_5679552046277789177_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=RL-3sTUULoEAX9sPG2v\u0026oh=7f9de52b06716c63c7ec1bab5f7869a7\u0026oe=5FB3B277","username":"anna.nasik12"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17858886737188489","text":"\ud83d\ude48","created_at":1601574581,"did_report_as_spam":false,"owner":{"id":"12794670210","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118982622_2746823695644806_5679552046277789177_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=RL-3sTUULoEAX9sPG2v\u0026oh=7f9de52b06716c63c7ec1bab5f7869a7\u0026oe=5FB3B277","username":"anna.nasik12"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17892605713650680","text":"\ud83d\udd25\ud83d\udd25\ud83d\udd25\ud83d\udd25","created_at":1601574582,"did_report_as_spam":false,"owner":{"id":"12794670210","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118982622_2746823695644806_5679552046277789177_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=RL-3sTUULoEAX9sPG2v\u0026oh=7f9de52b06716c63c7ec1bab5f7869a7\u0026oe=5FB3B277","username":"anna.nasik12"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17890124149687706","text":"cakep","created_at":1601820903,"did_report_as_spam":false,"owner":{"id":"41127321235","is_verified":false,"profile_pic_url":"https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ad=z-m\u0026_nc_ht=scontent-nrt1-1.cdninstagram.com\u0026_nc_ohc=MVEG8QTyVK4AX-yZ5ve\u0026oh=0188ecfecf58a098bebb5ab1c6a6c37a\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"orbanisilarto"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17875270663904948","text":"\ud83c\udf39\ud83c\udf39","created_at":1602146081,"did_report_as_spam":false,"owner":{"id":"35678729576","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/121397718_201695591347043_4679345047635165131_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=096Ajv3sXWQAX9PwIPk\u0026oh=04efd04bd281ef116d44afc2277c52ff\u0026oe=5FB230E6","username":"bewar_harki1"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17874974068943394","text":"\ud83d\udd25\ud83d\udd25","created_at":1602757229,"did_report_as_spam":false,"owner":{"id":"23162573041","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119684614_646451926307722_6036926628857542147_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=chZGv9jJ__IAX_kMJKC\u0026oh=b56afa7c6168ef27106563177b89fd4c\u0026oe=5FB355EB","username":"ld__editz_"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}}]},"edge_media_to_hoisted_comment":{"edges":[]},"edge_media_preview_comment":{"count":13729,"edges":[{"node":{"id":"17874974068943394","text":"\ud83d\udd25\ud83d\udd25","created_at":1602757229,"did_report_as_spam":false,"owner":{"id":"23162573041","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119684614_646451926307722_6036926628857542147_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=chZGv9jJ__IAX_kMJKC\u0026oh=b56afa7c6168ef27106563177b89fd4c\u0026oe=5FB355EB","username":"ld__editz_"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false}}]},"comments_disabled":false,"commenting_disabled_for_viewer":false,"taken_at_timestamp":1588521357,"edge_media_preview_like":{"count":924021,"edges":[]},"edge_media_to_sponsor_user":{"edges":[]},"location":{"id":"381109303","has_public_page":true,"name":"Super Tree Grove Garden By the Bay Singapore","slug":"super-tree-grove-garden-by-the-bay-singapore","address_json":"{\"street_address\": \"\", \"zip_code\": \"\", \"city_name\": \"Singapore\", \"region_name\": \"\", \"country_code\": \"SG\", \"exact_city_match\": false, \"exact_region_match\": false, \"exact_country_match\": false}"},"viewer_has_liked":false,"viewer_has_saved":false,"viewer_has_saved_to_collection":false,"viewer_in_photo_of_you":false,"viewer_can_reshare":true,"owner":{"id":"25025320","is_verified":true,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119381356_363756831450146_3008355575418576013_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=rrviAu0Aba8AX-SQ-lQ\u0026oh=7cb2bb955b34318ea51c4615ffc493ba\u0026oe=5FB33C76","username":"instagram","blocked_by_viewer":false,"restricted_by_viewer":null,"followed_by_viewer":false,"full_name":"Instagram","has_blocked_viewer":false,"is_private":false,"is_unpublished":false,"requested_by_viewer":false,"pass_tiering_recommendation":true,"edge_owner_to_timeline_media":{"count":6524},"edge_followed_by":{"count":372077108}},"is_ad":false,"edge_web_media_to_related_media":{"edges":[]},"edge_related_profiles":{"edges":[]}}}}]},"hostname":"www.instagram.com","is_whitelisted_crawl_bot":false,"connection_quality_rating":"EXCELLENT","deployment_stage":"c2","platform":"web","nonce":"JOQJkU59o/lrfGoPFhZHxw==","mid_pct":99.72305,"zero_data":{},"cache_schema_version":3,"server_checks":{},"knobx":{"17":false,"20":true,"22":true,"23":true,"24":true,"25":true,"26":true,"27":true,"28":true,"29":true,"32":true,"34":true,"35":false,"36":false,"38":25000,"39":true,"4":false,"40":false},"to_cache":{"gatekeepers":{"10":false,"100":false,"101":true,"102":true,"103":true,"104":true,"105":true,"106":true,"107":false,"108":true,"11":false,"112":true,"113":true,"114":true,"116":true,"119":false,"12":false,"120":true,"123":false,"126":false,"128":false,"13":true,"131":false,"132":false,"137":true,"14":true,"140":false,"142":false,"146":true,"147":false,"149":false,"15":true,"150":false,"151":false,"152":true,"153":false,"154":true,"156":false,"157":false,"158":false,"159":true,"16":true,"160":false,"162":true,"164":true,"166":false,"167":false,"168":false,"169":false,"18":true,"19":false,"23":false,"24":false,"26":true,"27":false,"28":false,"29":true,"31":false,"32":true,"34":false,"35":false,"38":true,"4":true,"40":true,"41":false,"43":true,"5":false,"59":true,"6":false,"61":false,"62":false,"63":false,"64":false,"65":false,"67":true,"68":false,"69":true,"7":false,"71":false,"73":false,"74":false,"75":true,"78":true,"79":false,"8":false,"81":false,"82":true,"84":false,"86":false,"9":false,"91":false,"95":true,"97":false},"qe":{"app_upsell":{"g":"","p":{}},"igl_app_upsell":{"g":"","p":{}},"notif":{"g":"","p":{}},"onetaplogin":{"g":"","p":{}},"felix_clear_fb_cookie":{"g":"","p":{}},"felix_creation_duration_limits":{"g":"","p":{}},"felix_creation_fb_crossposting":{"g":"","p":{}},"felix_creation_fb_crossposting_v2":{"g":"","p":{}},"felix_creation_validation":{"g":"","p":{}},"post_options":{"g":"","p":{}},"sticker_tray":{"g":"","p":{}},"web_sentry":{"g":"","p":{}},"0":{"p":{"9":false},"l":{},"qex":true},"100":{"p":{"0":true},"l":{},"qex":true},"101":{"p":{"0":false,"1":false},"l":{},"qex":true},"102":{"p":{"0":true},"l":{},"qex":true},"104":{"p":{"0":true},"l":{},"qex":true},"108":{"p":{"0":false,"1":false},"l":{},"qex":true},"109":{"p":{},"l":{},"qex":true},"111":{"p":{"0":false,"1":false},"l":{},"qex":true},"113":{"p":{"0":true,"1":false,"2":true,"4":false,"5":false,"7":false,"8":false},"l":{},"qex":true},"117":{"p":{"0":true},"l":{},"qex":true},"118":{"p":{"0":false,"1":true,"2":false},"l":{},"qex":true},"119":{"p":{"0":false},"l":{},"qex":true},"12":{"p":{"0":5},"l":{},"qex":true},"121":{"p":{},"l":{},"qex":true},"122":{"p":{"0":false},"l":{},"qex":true},"123":{"p":{"0":true,"1":true,"2":false},"l":{},"qex":true},"124":{"p":{"0":false,"1":true,"2":false,"3":false,"4":false},"l":{},"qex":true},"125":{"p":{"0":true},"l":{},"qex":true},"127":{"p":{"0":true,"1":true,"2":true},"l":{},"qex":true},"128":{"p":{"0":false,"1":false},"l":{},"qex":true},"129":{"p":{"1":false,"2":true},"l":{},"qex":true},"13":{"p":{"0":true},"l":{},"qex":true},"131":{"p":{"2":true,"3":true,"4":false},"l":{},"qex":true},"132":{"p":{"0":false},"l":{},"qex":true},"135":{"p":{"0":false,"1":false,"2":false,"3":false},"l":{},"qex":true},"137":{"p":{},"l":{},"qex":true},"141":{"p":{"0":false,"1":false,"2":false},"l":{},"qex":true},"142":{"p":{"0":false},"l":{},"qex":true},"143":{"p":{"1":true,"2":false,"3":false,"4":false},"l":{"1":true},"qex":true},"145":{"p":{},"l":{},"qex":true},"146":{"p":{"0":true},"l":{"0":true},"qex":true},"148":{"p":{"1":false},"l":{"1":true},"qex":true},"149":{"p":{},"l":{},"qex":true},"16":{"p":{"0":false},"l":{},"qex":true},"21":{"p":{"2":false},"l":{},"qex":true},"22":{"p":{"10":0.0,"11":15,"12":3,"13":false,"2":8.0,"3":0.85,"4":0.95},"l":{},"qex":true},"23":{"p":{"0":false,"1":false},"l":{},"qex":true},"25":{"p":{},"l":{},"qex":true},"26":{"p":{"0":""},"l":{},"qex":true},"28":{"p":{"0":false},"l":{},"qex":true},"29":{"p":{},"l":{},"qex":true},"31":{"p":{},"l":{},"qex":true},"33":{"p":{},"l":{},"qex":true},"34":{"p":{"0":false},"l":{},"qex":true},"36":{"p":{"0":true,"1":true,"2":false,"3":false,"4":false},"l":{},"qex":true},"37":{"p":{"0":false},"l":{},"qex":true},"39":{"p":{"0":false,"14":false,"8":false},"l":{},"qex":true},"41":{"p":{"3":true},"l":{},"qex":true},"42":{"p":{"0":true},"l":{},"qex":true},"43":{"p":{"0":false,"1":false,"2":false},"l":{},"qex":true},"44":{"p":{"1":"inside_media","2":0.2},"l":{},"qex":true},"45":{"p":{"13":false,"17":0,"32":false,"35":false,"36":"control","37":false,"38":false,"40":"control","46":false,"47":false,"48":false,"49":false,"51":false,"52":false},"l":{},"qex":true},"46":{"p":{"0":false},"l":{},"qex":true},"47":{"p":{"0":true,"1":true,"10":false,"11":false,"2":false,"3":false,"9":false},"l":{},"qex":true},"49":{"p":{"0":false},"l":{},"qex":true},"50":{"p":{"0":false},"l":{},"qex":true},"54":{"p":{"0":false},"l":{},"qex":true},"58":{"p":{"0":0.25,"1":true},"l":{},"qex":true},"59":{"p":{"0":true},"l":{},"qex":true},"62":{"p":{"0":false},"l":{},"qex":true},"67":{"p":{"0":true,"1":true,"2":true,"3":true,"4":false,"5":true,"7":false},"l":{},"qex":true},"69":{"p":{"0":true},"l":{},"qex":true},"71":{"p":{"1":"^/explore/.*|^/accounts/activity/$"},"l":{},"qex":true},"72":{"p":{"1":false,"2":false},"l":{"1":true,"2":true},"qex":true},"73":{"p":{"0":false},"l":{},"qex":true},"74":{"p":{"1":true,"12":false,"13":false,"15":false,"2":false,"3":true,"4":false,"7":true,"9":true},"l":{"7":true},"qex":true},"75":{"p":{"0":true},"l":{},"qex":true},"77":{"p":{"1":false},"l":{},"qex":true},"80":{"p":{"3":true,"4":false},"l":{},"qex":true},"84":{"p":{"0":true,"1":true,"2":true,"3":true,"4":true,"5":true,"6":false,"8":false},"l":{},"qex":true},"85":{"p":{"0":false,"1":"Pictures and Videos"},"l":{},"qex":true},"87":{"p":{"0":true},"l":{},"qex":true},"93":{"p":{"0":true},"l":{},"qex":true},"95":{"p":{"0":false},"l":{},"qex":true},"98":{"p":{"1":false},"l":{},"qex":true}},"probably_has_app":false,"cb":false},"device_id":"20304974-AEFA-429A-8F46-D5A9886F0F39","browser_push_pub_key":"BIBn3E_rWTci8Xn6P9Xj3btShT85Wdtne0LtwNUyRQ5XjFNkuTq9j4MPAVLvAFhXrUU1A9UxyxBA7YIOjqDIDHI","encryption":{"key_id":"140","public_key":"a7dd106e79b7e32db94149e5ba621fb921fc0b92c36a8e77bc1f53a230f92716","version":"10"},"is_dev":false,"signal_collection_config":null,"rollout_hash":"50907caa5097","bundle_variant":"metro","frontend_env":"prod"};</script>
<script type="text/javascript">window.__initialDataLoaded(window._sharedData);</script>
<script type="text/javascript">var __BUNDLE_START_TIME__=this.nativePerformanceNow?nativePerformanceNow():Date.now(),__DEV__=false,process=this.process||{};process.env=process.env||{};process.env.NODE_ENV=process.env.NODE_ENV||"production";!(function(r){"use strict";function e(){return c=Object.create(null)}function t(r){var e=r,t=c[e];return t&&t.isInitialized?t.publicModule.exports:o(e,t)}function n(r){var e=r;if(c[e]&&c[e].importedDefault!==f)return c[e].importedDefault;var n=t(e),i=n&&n.__esModule?n.default:n;return c[e].importedDefault=i}function i(r){var e=r;if(c[e]&&c[e].importedAll!==f)return c[e].importedAll;var n,i=t(e);if(i&&i.__esModule)n=i;else{if(n={},i)for(var o in i)p.call(i,o)&&(n[o]=i[o]);n.default=i}return c[e].importedAll=n}function o(e,t){if(!s&&r.ErrorUtils){s=!0;var n;try{n=u(e,t)}catch(e){r.ErrorUtils.reportFatalError(e)}return s=!1,n}return u(e,t)}function l(r){return{segmentId:r>>>v,localId:r&h}}function u(e,o){if(!o&&g.length>0){var u=l(e),f=u.segmentId,p=u.localId,s=g[f];null!=s&&(s(p),o=c[e])}var v=r.nativeRequire;if(!o&&v){var h=l(e),I=h.segmentId;v(h.localId,I),o=c[e]}if(!o)throw a(e);if(o.hasError)throw d(e,o.error);o.isInitialized=!0;var _=o,w=_.factory,y=_.dependencyMap;try{var M=o.publicModule;if(M.id=e,m.length>0)for(var b=0;b<m.length;++b)m[b].cb(e,M);return w(r,t,n,i,M,M.exports,y),o.factory=void 0,o.dependencyMap=void 0,M.exports}catch(r){throw o.hasError=!0,o.error=r,o.isInitialized=!1,o.publicModule.exports=void 0,r}}function a(r){var e='Requiring unknown module "'+r+'".';return Error(e)}function d(r,e){var t=r;return Error('Requiring module "'+t+'", which threw an exception: '+e)}r.__r=t,r.__d=function(r,e,t){null==c[e]&&(c[e]={dependencyMap:t,factory:r,hasError:!1,importedAll:f,importedDefault:f,isInitialized:!1,publicModule:{exports:{}}})},r.__c=e,r.__registerSegment=function(r,e){g[r]=e};var c=e(),f={},p={}.hasOwnProperty;t.importDefault=n,t.importAll=i;var s=!1,v=16,h=65535;t.unpackModuleId=l,t.packModuleId=function(r){return(r.segmentId<<v)+r.localId};var m=[];t.registerHook=function(r){var e={cb:r};return m.push(e),{release:function(){for(var r=0;r<m.length;++r)if(m[r]===e){m.splice(r,1);break}}}};var g=[]})('undefined'!=typeof global?global:'undefined'!=typeof window?window:this);
__s={"js":{"146":"/static/bundles/metro/PasswordEncryptionLogger.js/1b8a581a878c.js","147":"/static/bundles/metro/EncryptionUtils.js/4606f05f85cd.js","148":"/static/bundles/metro/MobileStoriesLoginPage.js/52b0d7a112b7.js","149":"/static/bundles/metro/DesktopStoriesLoginPage.js/fe00402dcdbf.js","150":"/static/bundles/metro/AvenyFont.js/a4de03cd349f.js","151":"/static/bundles/metro/StoriesDebugInfoNub.js/781d31ce13a5.js","152":"/static/bundles/metro/MobileStoriesPage.js/b2e4ada71d08.js","153":"/static/bundles/metro/DesktopStoriesPage.js/a96e2febaaa9.js","154":"/static/bundles/metro/ActivityFeedPage.js/f2d1fd746907.js","155":"/static/bundles/metro/AdsSettingsPage.js/6a872a4ff04e.js","156":"/static/bundles/metro/DonateCheckoutPage.js/9f3da7d15243.js","157":"/static/bundles/metro/FundraiserWebView.js/461d0fe3b10e.js","158":"/static/bundles/metro/FBPayConnectLearnMorePage.js/878076736145.js","159":"/static/bundles/metro/CameraPage.js/637c008a3ed7.js","160":"/static/bundles/metro/SettingsModules.js/162f4c8e6b23.js","161":"/static/bundles/metro/ContactHistoryPage.js/111c3347cb9b.js","162":"/static/bundles/metro/AccessToolPage.js/bef975fa2fdb.js","163":"/static/bundles/metro/AccessToolViewAllPage.js/573bdfda614b.js","164":"/static/bundles/metro/AccountPrivacyBugPage.js/ad3de29f1bf6.js","165":"/static/bundles/metro/FirstPartyPlaintextPasswordLandingPage.js/676058496b0a.js","166":"/static/bundles/metro/ThirdPartyPlaintextPasswordLandingPage.js/102c9a0253fc.js","167":"/static/bundles/metro/ShoppingBagLandingPage.js/58dbdf9aad22.js","168":"/static/bundles/metro/PlaintextPasswordBugPage.js/057b1b4c3d5d.js","169":"/static/bundles/metro/PrivateAccountMadePublicBugPage.js/f8109bd06aca.js","170":"/static/bundles/metro/PublicAccountNotMadePrivateBugPage.js/3a4d570e055f.js","171":"/static/bundles/metro/BlockedAccountsBugPage.js/58cb57611182.js","172":"/static/bundles/metro/AndroidBetaPrivacyBugPage.js/bff7358b05d9.js","173":"/static/bundles/metro/DataControlsSupportPage.js/5e291d7cd9b1.js","174":"/static/bundles/metro/DataDownloadRequestPage.js/87dd82972f5e.js","175":"/static/bundles/metro/DataDownloadRequestConfirmPage.js/eec60ce6a100.js","176":"/static/bundles/metro/CheckpointUnderageAppealPage.js/ff0e2e486ce2.js","177":"/static/bundles/metro/AccountRecoveryLandingPage.js/b3ebadbb0ffc.js","178":"/static/bundles/metro/ParentalConsentPage.js/800b05295fe7.js","179":"/static/bundles/metro/ParentalConsentNotParentPage.js/3155a739e021.js","180":"/static/bundles/metro/TermsAcceptPage.js/b2d56437c52c.js","181":"/static/bundles/metro/TermsUnblockPage.js/77a7d569dbe0.js","182":"/static/bundles/metro/NewTermsConfirmPage.js/dedc1729ea85.js","183":"/static/bundles/metro/CreationModules.js/2131ece165b7.js","184":"/static/bundles/metro/StoryCreationPage.js/ae46843f8b43.js","185":"/static/bundles/metro/DynamicExploreMediaPage.js/496841cc9244.js","186":"/static/bundles/metro/DiscoverMediaPageContainer.js/5923cd2fc99e.js","187":"/static/bundles/metro/DiscoverPeoplePageContainer.js/c192518b81d8.js","188":"/static/bundles/metro/EmailConfirmationPage.js/8a5f2869cc5a.js","189":"/static/bundles/metro/EmailReportBadPasswordResetPage.js/1ff276f10dc3.js","190":"/static/bundles/metro/FBSignupPage.js/06e377cd9035.js","191":"/static/bundles/metro/ReclaimAccountPage.js/16040d133d50.js","192":"/static/bundles/metro/NewUserInterstitial.js/d8f7b4d9f04d.js","193":"/static/bundles/metro/MultiStepSignupPage.js/b4b58344f30d.js","194":"/static/bundles/metro/EmptyFeedPage.js/f0f35d523391.js","195":"/static/bundles/metro/NewUserActivatorsUnit.js/568ab0c1dbbb.js","196":"/static/bundles/metro/FeedEndSuggestedUserUnit.js/d6dc5f900828.js","197":"/static/bundles/metro/FeedSidebarContainer.js/3ea910036ad3.js","198":"/static/bundles/metro/SuggestedUserFeedUnitContainer.js/b44add6ffbbd.js","199":"/static/bundles/metro/InFeedStoryTray.js/b119bcaf0864.js","200":"/static/bundles/metro/FeedPageContainer.js/89bc9d841d25.js","201":"/static/bundles/metro/FollowListModal.js/64e7b2f5623c.js","202":"/static/bundles/metro/FollowListPage.js/b238cdb0e87e.js","203":"/static/bundles/metro/SimilarAccountsPage.js/84de31a31bc0.js","204":"/static/bundles/metro/LikedByListContainer.js/1f6a438a283a.js","205":"/static/bundles/metro/shaka-player.ui.js/2e27fa05a609.js","206":"/static/bundles/metro/LiveBroadcastPage.js/cfccf041b696.js","207":"/static/bundles/metro/VotingInformationCenterPage.js/94d048d4dc0f.js","208":"/static/bundles/metro/FalseInformationLandingPage.js/5dd245078473.js","209":"/static/bundles/metro/FalseInformationAppealsPage.js/6d179f4cdae8.js","210":"/static/bundles/metro/CommentLikedByListContainer.js/cc206d8c1669.js","211":"/static/bundles/metro/LandingPage.js/c98f4106f07b.js","212":"/static/bundles/metro/LocationsDirectoryCountryPage.js/c2f6742edd92.js","213":"/static/bundles/metro/LocationsDirectoryCityPage.js/cbf10e59a0e0.js","214":"/static/bundles/metro/LocationPageContainer.js/e3d11743bce8.js","215":"/static/bundles/metro/LocationsDirectoryLandingPage.js/f5c0289104b5.js","216":"/static/bundles/metro/LoginAndSignupPage.js/bc8688757a77.js","217":"/static/bundles/metro/FXCalConsentPage.prerelease.js/8991cb9e5326.js","218":"/static/bundles/metro/FXCalLinkingAuthForm.js/32f7aa0318b3.js","219":"/static/bundles/metro/FXCalReauthLoginForm.js/47be9f8e1f55.js","220":"/static/bundles/metro/UpdateIGAppForHelpPage.js/f70db3180edf.js","221":"/static/bundles/metro/ResetPasswordPageContainer.js/17c67d7013ab.js","222":"/static/bundles/metro/MobileAllCommentsPage.js/418781320d48.js","223":"/static/bundles/metro/MediaChainingPageContainer.js/2bccd0dd8b3b.js","224":"/static/bundles/metro/PostPageContainer.js/5fc8c1339d78.js","225":"/static/bundles/metro/ProfilesDirectoryLandingPage.js/e8699a7e69c7.js","226":"/static/bundles/metro/HashtagsDirectoryLandingPage.js/f9ca97649350.js","227":"/static/bundles/metro/SuggestedDirectoryLandingPage.js/6b9be9b19d07.js","228":"/static/bundles/metro/ConsentWithdrawPage.js/cc0facaae13c.js","229":"/static/bundles/metro/SurveyConfirmUserPage.js/bfbad0acc8da.js","230":"/static/bundles/metro/ProductDetailsPage.js/6e4793d97b1a.js","231":"/static/bundles/metro/ShoppingCartPage.js/1dbbde09e2db.js","232":"/static/bundles/metro/ShoppingCartDetailsPage.js/407463b58e1c.js","233":"/static/bundles/metro/ProfessionalConversionPage.js/9535f21299cd.js","234":"/static/bundles/metro/TagPageContainer.js/d05acd63c5be.js","235":"/static/bundles/metro/PhoneConfirmPage.js/77e8df08f7db.js","236":"/static/bundles/metro/SimilarAccountsModal.js/386c5149c20b.js","237":"/static/bundles/metro/ProfilePageContainer.js/5cd23dae91d1.js","238":"/static/bundles/metro/HttpErrorPage.js/0c811534ff03.js","239":"/static/bundles/metro/IGTVVideoDraftsPageContainer.js/87a40b490f98.js","240":"/static/bundles/metro/IGTVVideoUploadPageContainer.js/f9730e084f7a.js","241":"/static/bundles/metro/OAuthPermissionsPage.js/ae00c1ccd325.js","242":"/static/bundles/metro/MobileDirectPage.js/0cc9740dfa9c.js","243":"/static/bundles/metro/DesktopDirectPage.js/96d02fddab3d.js","244":"/static/bundles/metro/GuideModalEntrypoint.js/a7226ab289aa.js","245":"/static/bundles/metro/GuidePage.js/884d5abe4d86.js","246":"/static/bundles/metro/SavedCollectionPage.js/8e8eba5d2523.js","247":"/static/bundles/metro/OneTapUpsell.js/fd5d2b4b6c43.js","248":"/static/bundles/metro/AvenyMediumFont.js/3dd42931c70f.js","249":"/static/bundles/metro/NametagLandingPage.js/fe4d4816f9fb.js","250":"/static/bundles/metro/LocalDevTransactionToolSelectorPage.js/ea09773ce0b6.js","251":"/static/bundles/metro/FBEAppStoreErrorPage.js/33ae9345f6b4.js","252":"/static/bundles/metro/BloksShellPage.js/a4661a6816dd.js","253":"/static/bundles/metro/BusinessCategoryPage.js/54825bef6b00.js","255":"/static/bundles/metro/BloksPage.js/d4a64ee278c9.js","256":"/static/bundles/metro/ClipsAudioPage.js/9d2ee88fa77b.js","259":"/static/bundles/metro/ActivityFeedBox.js/ae9ec1a4e57f.js","260":"/static/bundles/metro/DirectMQTT.js/072b425fbca4.js","264":"/static/bundles/metro/NewsworthyContentShareFrictionModal.js/78b073604d56.js","265":"/static/bundles/metro/PostModalEntrypoint.js/8a5f458ca000.js","266":"/static/bundles/metro/PostComments.js/2f234c939e66.js","267":"/static/bundles/metro/oz-player.main.js/ce50c6ed63b9.js","268":"/static/bundles/metro/BDClientSignalCollectionTrigger.js/03f9924a6810.js","269":"/static/bundles/metro/Consumer.js/a8fdd362847c.js","270":"/static/bundles/metro/Challenge.js/0135e809b5c1.js","271":"/static/bundles/metro/NotificationLandingPage.js/3653bde4fad9.js","290":"/static/bundles/metro/EmbedRich.js/3666314d479a.js","291":"/static/bundles/metro/EmbedVideoWrapper.js/165fb84ffaf3.js","292":"/static/bundles/metro/EmbedSidecarEntrypoint.js/0ba277c4134a.js","293":"/static/bundles/metro/EmbedGuideEntrypoint.js/32be6018bfd7.js","294":"/static/bundles/metro/EmbedAsyncLogger.js/710ba3e8832f.js"},"css":{"148":"/static/bundles/metro/MobileStoriesLoginPage.css/524e9a213e9e.css","149":"/static/bundles/metro/DesktopStoriesLoginPage.css/a9b44db8f8b9.css","150":"/static/bundles/metro/AvenyFont.css/25fd69ff2266.css","151":"/static/bundles/metro/StoriesDebugInfoNub.css/4bc325bd3e84.css","152":"/static/bundles/metro/MobileStoriesPage.css/44ad2c60549b.css","153":"/static/bundles/metro/DesktopStoriesPage.css/874aa3989634.css","154":"/static/bundles/metro/ActivityFeedPage.css/cb111926db8a.css","155":"/static/bundles/metro/AdsSettingsPage.css/a2d58362e040.css","156":"/static/bundles/metro/DonateCheckoutPage.css/e7a32c707b5b.css","158":"/static/bundles/metro/FBPayConnectLearnMorePage.css/228327863000.css","159":"/static/bundles/metro/CameraPage.css/63f46fc39f06.css","160":"/static/bundles/metro/SettingsModules.css/8f2311289895.css","161":"/static/bundles/metro/ContactHistoryPage.css/6450a9697d3b.css","162":"/static/bundles/metro/AccessToolPage.css/77c8460b4d9b.css","163":"/static/bundles/metro/AccessToolViewAllPage.css/61f9d399977f.css","164":"/static/bundles/metro/AccountPrivacyBugPage.css/b084aece73a3.css","165":"/static/bundles/metro/FirstPartyPlaintextPasswordLandingPage.css/d4c180511b0e.css","166":"/static/bundles/metro/ThirdPartyPlaintextPasswordLandingPage.css/d4c180511b0e.css","167":"/static/bundles/metro/ShoppingBagLandingPage.css/9ea9da8878b6.css","168":"/static/bundles/metro/PlaintextPasswordBugPage.css/d4c180511b0e.css","169":"/static/bundles/metro/PrivateAccountMadePublicBugPage.css/d4c180511b0e.css","170":"/static/bundles/metro/PublicAccountNotMadePrivateBugPage.css/d4c180511b0e.css","171":"/static/bundles/metro/BlockedAccountsBugPage.css/d4c180511b0e.css","172":"/static/bundles/metro/AndroidBetaPrivacyBugPage.css/158f7ff45015.css","173":"/static/bundles/metro/DataControlsSupportPage.css/2c93110330b6.css","174":"/static/bundles/metro/DataDownloadRequestPage.css/526b60394de5.css","175":"/static/bundles/metro/DataDownloadRequestConfirmPage.css/5deaa1b33b08.css","176":"/static/bundles/metro/CheckpointUnderageAppealPage.css/0dfde7fcc39c.css","177":"/static/bundles/metro/AccountRecoveryLandingPage.css/c2fce7e557e0.css","178":"/static/bundles/metro/ParentalConsentPage.css/c5f1e68fdc65.css","179":"/static/bundles/metro/ParentalConsentNotParentPage.css/6308e4086754.css","180":"/static/bundles/metro/TermsAcceptPage.css/14b0bd420229.css","181":"/static/bundles/metro/TermsUnblockPage.css/58dc1cabc72b.css","182":"/static/bundles/metro/NewTermsConfirmPage.css/eefd956746e6.css","183":"/static/bundles/metro/CreationModules.css/7b9c9a1f3d05.css","184":"/static/bundles/metro/StoryCreationPage.css/4679e6613df1.css","185":"/static/bundles/metro/DynamicExploreMediaPage.css/328c20c226d8.css","186":"/static/bundles/metro/DiscoverMediaPageContainer.css/63ba52792e4d.css","187":"/static/bundles/metro/DiscoverPeoplePageContainer.css/4c8a5990ffdc.css","188":"/static/bundles/metro/EmailConfirmationPage.css/d3ff48c961de.css","189":"/static/bundles/metro/EmailReportBadPasswordResetPage.css/e4462019534b.css","190":"/static/bundles/metro/FBSignupPage.css/69fe845008ba.css","191":"/static/bundles/metro/ReclaimAccountPage.css/d4c180511b0e.css","192":"/static/bundles/metro/NewUserInterstitial.css/ff3166381a45.css","193":"/static/bundles/metro/MultiStepSignupPage.css/5d38af6d00b4.css","194":"/static/bundles/metro/EmptyFeedPage.css/e1ccedbdafd4.css","196":"/static/bundles/metro/FeedEndSuggestedUserUnit.css/42e60023d1af.css","197":"/static/bundles/metro/FeedSidebarContainer.css/5c0e5c506162.css","198":"/static/bundles/metro/SuggestedUserFeedUnitContainer.css/7daaa9d9b746.css","199":"/static/bundles/metro/InFeedStoryTray.css/5cb58dca53c1.css","200":"/static/bundles/metro/FeedPageContainer.css/1b39124c7396.css","201":"/static/bundles/metro/FollowListModal.css/c87bdb99287d.css","202":"/static/bundles/metro/FollowListPage.css/827eed5e9080.css","203":"/static/bundles/metro/SimilarAccountsPage.css/d5a63776c54b.css","204":"/static/bundles/metro/LikedByListContainer.css/afae07d29ddc.css","206":"/static/bundles/metro/LiveBroadcastPage.css/71b37f39ddb7.css","207":"/static/bundles/metro/VotingInformationCenterPage.css/7533ac04c626.css","209":"/static/bundles/metro/FalseInformationAppealsPage.css/f7561461b909.css","210":"/static/bundles/metro/CommentLikedByListContainer.css/afae07d29ddc.css","211":"/static/bundles/metro/LandingPage.css/344096cb1b73.css","212":"/static/bundles/metro/LocationsDirectoryCountryPage.css/4dacfdb3fce0.css","213":"/static/bundles/metro/LocationsDirectoryCityPage.css/4dacfdb3fce0.css","214":"/static/bundles/metro/LocationPageContainer.css/54b25dcb19c6.css","215":"/static/bundles/metro/LocationsDirectoryLandingPage.css/8d8beac67daf.css","216":"/static/bundles/metro/LoginAndSignupPage.css/7843fc980a59.css","218":"/static/bundles/metro/FXCalLinkingAuthForm.css/c228eff939ba.css","219":"/static/bundles/metro/FXCalReauthLoginForm.css/b10376b96a91.css","220":"/static/bundles/metro/UpdateIGAppForHelpPage.css/6fb2336f846b.css","221":"/static/bundles/metro/ResetPasswordPageContainer.css/d4c180511b0e.css","222":"/static/bundles/metro/MobileAllCommentsPage.css/745e87d16b8b.css","223":"/static/bundles/metro/MediaChainingPageContainer.css/b17a8ab7e639.css","224":"/static/bundles/metro/PostPageContainer.css/26f5237c41b6.css","225":"/static/bundles/metro/ProfilesDirectoryLandingPage.css/b406e80cc262.css","226":"/static/bundles/metro/HashtagsDirectoryLandingPage.css/b406e80cc262.css","227":"/static/bundles/metro/SuggestedDirectoryLandingPage.css/b406e80cc262.css","230":"/static/bundles/metro/ProductDetailsPage.css/b4cbb2412785.css","231":"/static/bundles/metro/ShoppingCartPage.css/7ce7bc1a04cf.css","232":"/static/bundles/metro/ShoppingCartDetailsPage.css/196f10ea28e0.css","233":"/static/bundles/metro/ProfessionalConversionPage.css/f418091afcde.css","234":"/static/bundles/metro/TagPageContainer.css/5ff6f44c8d81.css","235":"/static/bundles/metro/PhoneConfirmPage.css/59398e0ab679.css","237":"/static/bundles/metro/ProfilePageContainer.css/17b63d429637.css","239":"/static/bundles/metro/IGTVVideoDraftsPageContainer.css/ec236f53db50.css","240":"/static/bundles/metro/IGTVVideoUploadPageContainer.css/8f1406ecfdde.css","241":"/static/bundles/metro/OAuthPermissionsPage.css/f127ac651626.css","242":"/static/bundles/metro/MobileDirectPage.css/94c56c9f2e27.css","243":"/static/bundles/metro/DesktopDirectPage.css/77e939b3f5b3.css","245":"/static/bundles/metro/GuidePage.css/0fd72026df11.css","246":"/static/bundles/metro/SavedCollectionPage.css/c9307f5c771b.css","247":"/static/bundles/metro/OneTapUpsell.css/c312b28c297e.css","248":"/static/bundles/metro/AvenyMediumFont.css/410fb2643dbe.css","249":"/static/bundles/metro/NametagLandingPage.css/0c3f6c69e197.css","250":"/static/bundles/metro/LocalDevTransactionToolSelectorPage.css/3f8f9bb4c8a7.css","251":"/static/bundles/metro/FBEAppStoreErrorPage.css/37c4f5efdab6.css","253":"/static/bundles/metro/BusinessCategoryPage.css/3697f7a627f9.css","255":"/static/bundles/metro/BloksPage.css/ebd31d13c7cc.css","259":"/static/bundles/metro/ActivityFeedBox.css/3893332a2b8f.css","266":"/static/bundles/metro/PostComments.css/205108e2268c.css","269":"/static/bundles/metro/Consumer.css/9dcaab750c7c.css","270":"/static/bundles/metro/Challenge.css/21b5875edadf.css","271":"/static/bundles/metro/NotificationLandingPage.css/c35e66b76f51.css","290":"/static/bundles/metro/EmbedRich.css/6f194ccb831d.css","291":"/static/bundles/metro/EmbedVideoWrapper.css/50ab304a28de.css","292":"/static/bundles/metro/EmbedSidecarEntrypoint.css/c552d8116087.css","293":"/static/bundles/metro/EmbedGuideEntrypoint.css/b13111844fea.css"}}</script>
<script type="text/javascript" src="/static/bundles/metro/Polyfills.js/ed1b23430825.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/Vendor.js/5a56d51ae30f.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/en_US.js/5745b6ef2b49.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/ConsumerLibCommons.js/646268ae7d30.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/ConsumerUICommons.js/b46a5b0e1318.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/ConsumerAsyncCommons.js/c4ca4238a0b9.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/static/bundles/metro/Consumer.js/a8fdd362847c.js" crossorigin="anonymous" charset="utf-8" async=""></script>
<script type="text/javascript" src="/static/bundles/metro/PostPageContainer.js/5fc8c1339d78.js" crossorigin="anonymous" charset="utf-8" async=""></script>

            
        

        <script type="text/javascript">
(function(){
  function normalizeError(err) {
    var errorInfo = err.error || {};
    var getConfigProp = function(propName, defaultValueIfNotTruthy) {
      var propValue = window._sharedData && window._sharedData[propName];
      return propValue ? propValue : defaultValueIfNotTruthy;
    };
    return {
      line: err.line || errorInfo.message || 0,
      column: err.column || 0,
      name: 'InitError',
      message: err.message || errorInfo.message || '',
      script: errorInfo.script || '',
      stack: errorInfo.stackTrace || errorInfo.stack || '',
      timestamp: Date.now(),
      ref: window.location.href,
      deployment_stage: getConfigProp('deployment_stage', ''),
      frontend_env: getConfigProp('frontend_env', 'prod'),
      rollout_hash: getConfigProp('rollout_hash', ''),
      is_prerelease: window.__PRERELEASE__ || false,
      bundle_variant: getConfigProp('bundle_variant', null),
      request_url: err.url || window.location.href,
      response_status_code: errorInfo.statusCode || 0
    }
  }
  window.addEventListener('load', function(){
    if (window.__bufferedErrors && window.__bufferedErrors.length) {
      if (window.caches && window.caches.keys && window.caches.delete) {
        window.caches.keys().then(function(keys) {
          keys.forEach(function(key) {
            window.caches.delete(key)
          })
        })
      }
      window.__bufferedErrors.map(function(error) {
        return normalizeError(error)
      }).forEach(function(normalizedError) {
        var request = new XMLHttpRequest();
        request.open('POST', '/client_error/', true);
        request.setRequestHeader('Content-Type', 'application/json; charset=utf-8');
        request.send(JSON.stringify(normalizedError));
      })
    }
  })
}());
</script>
    </body>
</html>
