<!DOCTYPE html>
<html lang="en" class="no-js not-logged-in client-root">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>
Instagram on Instagram: “You have more power than you know. ✨ Register to vote for the US election, check your registration status, learn how to vote by mail and…”
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
                
            
            
            
    
    <link rel="canonical" href="https://www.instagram.com/p/CEuHr-EsehV/" />
    <meta content="287.4k Likes, 3,676 Comments - Instagram (@instagram) on Instagram: “You have more power than you know. ✨ Register to vote for the US election, check your registration…”" name="description" />
    <meta property="og:site_name" content="Instagram" />
    <meta property="og:title" content="Instagram on Instagram: “You have more power than you know. ✨ Register to vote for the US election, check your registration status, learn how to vote by mail and…”" />
    <meta property="og:image" content="https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/118762848_236599064351975_161505221488279935_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=111&_nc_ohc=-NgoOVytk44AX9XiJsh&_nc_tp=15&oh=78943bad36ca47a356a46ca9e443c8fa&oe=5FB2A394" />
    <meta property="og:description" content="287.4k Likes, 3,676 Comments - Instagram (@instagram) on Instagram: “You have more power than you know. ✨ Register to vote for the US election, check your registration…”" />
    <meta property="fb:app_id" content="124024574287414" />
    <meta property="og:url" content="https://www.instagram.com/p/CEuHr-EsehV/" />
    <meta property="instapp:owner_user_id" content="25025320" />
    
    <meta property="al:ios:app_name" content="Instagram" />
    <meta property="al:ios:app_store_id" content="389801252" />
    <meta property="al:ios:url" content="instagram://media?id=2390882260094150741" />
    <meta property="al:android:app_name" content="Instagram" />
    <meta property="al:android:package" content="com.instagram.android" />
    <meta property="al:android:url" content="https://www.instagram.com/p/CEuHr-EsehV/" />
    
    
    <meta name="medium" content="image" />
    <meta property="og:type" content="instapp:photo" />
    

    <link rel="alternate" href="android-app://com.instagram.android/https/instagram.com/p/CEuHr-EsehV/" />
    
            <script type="application/ld+json">
                {"@context":"http:\/\/schema.org","@type":"ImageObject","caption":"You have more power than you know. \u2728 Register to vote for the US election, check your registration status, learn how to vote by mail and get more info at our link in bio. \u2709\ufe0f\ud83d\uddf3\u2063\n\u2063\nArt by @tyler_spangler","representativeOfPage":"http:\/\/schema.org\/True","uploadDate":"2020-09-04T16:03:17","author":{"@type":"Person","alternateName":"@instagram","mainEntityofPage":{"@type":"ProfilePage","@id":"https:\/\/www.instagram.com\/instagram\/"}},"comment":[{"@type":"Comment","text":"\ud83d\ude18","author":{"@type":"Person","alternateName":"@carriewst_shines","mainEntityofPage":{"@type":"ProfilePage","@id":"https:\/\/www.instagram.com\/carriewst_shines\/"}}},{"@type":"Comment","text":"\ud83d\ude0d\ud83d\ude18","author":{"@type":"Person","alternateName":"@dipti1843","mainEntityofPage":{"@type":"ProfilePage","@id":"https:\/\/www.instagram.com\/dipti1843\/"}}}],"commentCount":"3676","interactionStatistic":{"@type":"InteractionCounter","interactionType":{"@type":"LikeAction"},"userInteractionCount":"287443"},"mainEntityofPage":{"@type":"ItemPage","@id":"https:\/\/www.instagram.com\/p\/CEuHr-EsehV\/%0A"},"description":"287.4k Likes, 3,676 Comments - Instagram (@instagram) on Instagram: \u201cYou have more power than you know. \u2728 Register to vote for the US election, check your registration\u2026\u201d","name":"Instagram on Instagram: \u201cYou have more power than you know. \u2728 Register to vote for the US election, check your registration status, learn how to vote by mail and\u2026\u201d"}
            </script>
        
    
    <link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A" hreflang="x-default" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=en" hreflang="en" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=fr" hreflang="fr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=it" hreflang="it" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=de" hreflang="de" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es" hreflang="es" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=zh-cn" hreflang="zh-cn" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=zh-tw" hreflang="zh-tw" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ja" hreflang="ja" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ko" hreflang="ko" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=pt" hreflang="pt" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=pt-br" hreflang="pt-br" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=af" hreflang="af" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=cs" hreflang="cs" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=da" hreflang="da" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=el" hreflang="el" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=fi" hreflang="fi" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=hr" hreflang="hr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=hu" hreflang="hu" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=id" hreflang="id" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ms" hreflang="ms" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=nb" hreflang="nb" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=nl" hreflang="nl" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=pl" hreflang="pl" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ru" hreflang="ru" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=sk" hreflang="sk" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=sv" hreflang="sv" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=th" hreflang="th" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=tl" hreflang="tl" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=tr" hreflang="tr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=hi" hreflang="hi" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=bn" hreflang="bn" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=gu" hreflang="gu" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=kn" hreflang="kn" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ml" hreflang="ml" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=mr" hreflang="mr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=pa" hreflang="pa" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ta" hreflang="ta" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=te" hreflang="te" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ne" hreflang="ne" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=si" hreflang="si" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ur" hreflang="ur" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=vi" hreflang="vi" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=bg" hreflang="bg" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=fr-ca" hreflang="fr-ca" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=ro" hreflang="ro" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=sr" hreflang="sr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=uk" hreflang="uk" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=zh-hk" hreflang="zh-hk" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-uy" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-ve" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-pa" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-py" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-ec" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-do" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-ni" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-cu" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-gt" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-pr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-hn" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-sv" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-bo" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-cr" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-cl" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-mx" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-co" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-ar" />
<link rel="alternate" href="https://www.instagram.com/p/CEuHr-EsehV/%0A?hl=es-la" hreflang="es-pe" />
</head>
    <body class="" style="
    background: white;
">
        
    <div id="react-root">
      
        <span><svg width="50" height="50" viewBox="0 0 50 50" style="position:absolute;top:50%;left:50%;margin:-25px 0 0 -25px;fill:#c7c7c7"><path d="M25 1c-6.52 0-7.34.03-9.9.14-2.55.12-4.3.53-5.82 1.12a11.76 11.76 0 0 0-4.25 2.77 11.76 11.76 0 0 0-2.77 4.25c-.6 1.52-1 3.27-1.12 5.82C1.03 17.66 1 18.48 1 25c0 6.5.03 7.33.14 9.88.12 2.56.53 4.3 1.12 5.83a11.76 11.76 0 0 0 2.77 4.25 11.76 11.76 0 0 0 4.25 2.77c1.52.59 3.27 1 5.82 1.11 2.56.12 3.38.14 9.9.14 6.5 0 7.33-.02 9.88-.14 2.56-.12 4.3-.52 5.83-1.11a11.76 11.76 0 0 0 4.25-2.77 11.76 11.76 0 0 0 2.77-4.25c.59-1.53 1-3.27 1.11-5.83.12-2.55.14-3.37.14-9.89 0-6.51-.02-7.33-.14-9.89-.12-2.55-.52-4.3-1.11-5.82a11.76 11.76 0 0 0-2.77-4.25 11.76 11.76 0 0 0-4.25-2.77c-1.53-.6-3.27-1-5.83-1.12A170.2 170.2 0 0 0 25 1zm0 4.32c6.4 0 7.16.03 9.69.14 2.34.11 3.6.5 4.45.83 1.12.43 1.92.95 2.76 1.8a7.43 7.43 0 0 1 1.8 2.75c.32.85.72 2.12.82 4.46.12 2.53.14 3.29.14 9.7 0 6.4-.02 7.16-.14 9.69-.1 2.34-.5 3.6-.82 4.45a7.43 7.43 0 0 1-1.8 2.76 7.43 7.43 0 0 1-2.76 1.8c-.84.32-2.11.72-4.45.82-2.53.12-3.3.14-9.7.14-6.4 0-7.16-.02-9.7-.14-2.33-.1-3.6-.5-4.45-.82a7.43 7.43 0 0 1-2.76-1.8 7.43 7.43 0 0 1-1.8-2.76c-.32-.84-.71-2.11-.82-4.45a166.5 166.5 0 0 1-.14-9.7c0-6.4.03-7.16.14-9.7.11-2.33.5-3.6.83-4.45a7.43 7.43 0 0 1 1.8-2.76 7.43 7.43 0 0 1 2.75-1.8c.85-.32 2.12-.71 4.46-.82 2.53-.11 3.29-.14 9.7-.14zm0 7.35a12.32 12.32 0 1 0 0 24.64 12.32 12.32 0 0 0 0-24.64zM25 33a8 8 0 1 1 0-16 8 8 0 0 1 0 16zm15.68-20.8a2.88 2.88 0 1 0-5.76 0 2.88 2.88 0 0 0 5.76 0z"/></svg></span>
      
    </div>

        


        
            <link rel="stylesheet" href="/static/bundles/metro/ConsumerUICommons.css/bae63654c3c6.css" type="text/css" crossorigin="anonymous" />
<link rel="stylesheet" href="/static/bundles/metro/Consumer.css/9dcaab750c7c.css" type="text/css" crossorigin="anonymous" />
<script type="text/javascript">window._sharedData = {"config":{"csrf_token":"TZ7Aitjvu9npfSyywNLcwyYyKd9Kl0Bz","viewer":null,"viewerId":null},"country_code":"US","language_code":"en","locale":"en_US","entry_data":{"PostPage":[{"graphql":{"shortcode_media":{"__typename":"GraphImage","id":"2390882260094150741","shortcode":"CEuHr-EsehV","dimensions":{"height":1080,"width":1080},"gating_info":null,"fact_check_overall_rating":null,"fact_check_information":null,"sensitivity_friction_info":null,"media_overlay_info":null,"media_preview":"ACoq5xFLHCgk+gGaf5En91vyP+FaejY3tnplQfpk1vsybSVKk4HoPXPBPHbPf2o3Glc4zyJP7revQ0vkyf3WP/ATXZEJkAMCQCDz1O0kHnHfPPPbmmggL1UkJ3Izuye+ew/PiixXL5nGtGyfeBUe4IpldRq2PJbbjHy9Meo9Cf1wetcxmgl6D4pnhOUO0ng+/wBa6uJ45E8z8fru4H02kHOOuBWDpYBl55wpx+YH9a6Yom4hRllzhQTzggdcZzjkgUIa7oNiZ5wFyApzndkHrz64OeOeKVI0wA+N3AOTzzuPGDgHAHXj8aQQpzn5egI9CwGAfXBJ/rS+QmQMZG4qevb9Bz6/hTK/r+v6/wAjmNRmfzDGSdnBx26D/wCvWfuNb2sxKFVwOTjkcjBBPB7jjj8awef8gUjMkhmaFtydcYOeQRVj+0Zt27II4+UjgY9B2PuDk96pnt9KSgC//aM3Q7f++R+X+fzoGpS/7P8A3zWfSigdy1NdyTgK2AAc4Axz61VxRRk0CP/Z","display_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/118762848_236599064351975_161505221488279935_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=111\u0026_nc_ohc=-NgoOVytk44AX9XiJsh\u0026_nc_tp=15\u0026oh=78943bad36ca47a356a46ca9e443c8fa\u0026oe=5FB2A394","display_resources":[{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/118762848_236599064351975_161505221488279935_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=111\u0026_nc_ohc=-NgoOVytk44AX9XiJsh\u0026_nc_tp=24\u0026oh=9227d208bbd7ccc7e05cc739cc8b79db\u0026oe=5FB27625","config_width":640,"config_height":640},{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s750x750/118762848_236599064351975_161505221488279935_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=111\u0026_nc_ohc=-NgoOVytk44AX9XiJsh\u0026_nc_tp=24\u0026oh=1285acdf8f5b265193548ebcacbc699b\u0026oe=5FB2FE25","config_width":750,"config_height":750},{"src":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/118762848_236599064351975_161505221488279935_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_cat=111\u0026_nc_ohc=-NgoOVytk44AX9XiJsh\u0026_nc_tp=15\u0026oh=78943bad36ca47a356a46ca9e443c8fa\u0026oe=5FB2A394","config_width":1080,"config_height":1080}],"accessibility_caption":"Artwork that says \u201cRealize Your Power.\u201d","is_video":false,"tracking_token":"eyJ2ZXJzaW9uIjo1LCJwYXlsb2FkIjp7ImlzX2FuYWx5dGljc190cmFja2VkIjp0cnVlLCJ1dWlkIjoiMDdlMzcwYTdmZDA2NGE4NGEyMGEzNjY5Y2FmNWM5ZjcyMzkwODgyMjYwMDk0MTUwNzQxIn0sInNpZ25hdHVyZSI6IiJ9","edge_media_to_tagged_user":{"edges":[]},"edge_media_to_caption":{"edges":[{"node":{"text":"You have more power than you know. \u2728 Register to vote for the US election, check your registration status, learn how to vote by mail and get more info at our link in bio. \u2709\ufe0f\ud83d\uddf3\u2063\n\u2063\nArt by @tyler_spangler"}}]},"caption_is_edited":false,"has_ranked_comments":false,"edge_media_to_parent_comment":{"count":3676,"page_info":{"has_next_page":true,"end_cursor":"QVFDSzRjb3Rqak5mWE4yQi15Q08yWEJtTHB1QmE2Vk9EZDhFdVR0X3FPR0JUX0NuVlF2RmFBQzAyYmtCYUZHVUt0NHFXWkZTUV9MYldNWGhpemFpcE9ibw=="},"edges":[{"node":{"id":"17863275179112091","text":"\ud83d\udcaa\ud83c\udffb\ud83d\udcaa\ud83c\udffb\ud83d\udcaa\ud83c\udffb","created_at":1601484667,"did_report_as_spam":false,"owner":{"id":"41282897966","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119564205_327742398501470_850362186589416291_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=pJunDzBL5h4AX9jga4S\u0026oh=fb3d2a99ab08de2851476ac0af905e17\u0026oe=5FB488AA","username":"chicabohem"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18103764115173371","text":"\ud83d\udd25","created_at":1601528128,"did_report_as_spam":false,"owner":{"id":"30379649513","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120321699_356748658809666_3825418036973628262_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=MGtt8EuhlvMAX-VukBK\u0026oh=ac32a0fffe0837cbe796bb703409ac09\u0026oe=5FB4F7D4","username":"saurinanpon"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18121880806135035","text":"\ud83d\ude4c\ud83c\udffd\ud83d\udd25\ud83d\udd25\ud83d\udd25\ud83d\ude4c\ud83c\udffd","created_at":1601644472,"did_report_as_spam":false,"owner":{"id":"13392238614","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/59230035_639380326527270_839544326865289216_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=I0rZhvJfay8AX90rm1a\u0026oh=552dba542f606f5f6d864e4bb64cc1e5\u0026oe=5FB5C5A9","username":"lachicagia____realtor"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17879076808866640","text":"THE POWER WITH DONALD TRUMP. VOTE, VOTE, EL PODER ESTA CON DONALD TRUMP EL JEFE  EA","created_at":1601662005,"did_report_as_spam":false,"owner":{"id":"29380037262","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/82945955_616507139162535_3596272534661627904_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=A1NtCas8cH4AX9GrTkN\u0026oh=00c94b2799e5d0bd685f078b1d91be5f\u0026oe=5FB341BB","username":"mirhaydee53"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17888935954701226","text":"Omg","created_at":1601744861,"did_report_as_spam":false,"owner":{"id":"4394630275","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119993366_323816015509222_7981633110929945200_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=FC1fth-qC0kAX8R6D_A\u0026oh=c07c321825a9ed3871c42dc85da2df9b\u0026oe=5FB3490D","username":"naydeliiin._.xd"},"viewer_has_liked":false,"edge_liked_by":{"count":2},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17860245896139208","text":"\ud83d\udd25","created_at":1601744863,"did_report_as_spam":false,"owner":{"id":"4394630275","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119993366_323816015509222_7981633110929945200_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=FC1fth-qC0kAX8R6D_A\u0026oh=c07c321825a9ed3871c42dc85da2df9b\u0026oe=5FB3490D","username":"naydeliiin._.xd"},"viewer_has_liked":false,"edge_liked_by":{"count":2},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17883786946784160","text":"It would be really cool if you could add an option to create instagram collections based on posts in your saved with a specific hash tag. Think about it!","created_at":1601796606,"did_report_as_spam":false,"owner":{"id":"28168337673","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/84156254_564127064195096_4720231554373124096_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=smK6hO9a9esAX_1EWRD\u0026oh=8a0c6e03bbb1f520ba740ac402e4ebb4\u0026oe=5FB29EFE","username":"everdr3d"},"viewer_has_liked":false,"edge_liked_by":{"count":2},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17891293249667006","text":"\ud83d\udc4d\ud83d\udc4d\ud83d\udc4d\ud83d\udc4d\ud83d\udc4d","created_at":1601799080,"did_report_as_spam":false,"owner":{"id":"2217519605","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120194175_2486019758362996_1918426016749716285_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=sGJZn_5JC88AX97tESq\u0026oh=ef9f5abe79427683c032e681675dfc1a\u0026oe=5FB3A34F","username":"za_kaimov_177_"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17885165020746427","text":"0","created_at":1601810453,"did_report_as_spam":false,"owner":{"id":"42675446264","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120825427_663137557662766_328420846708999076_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=0N3uPzuDrhYAX_emmgL\u0026oh=8f026bfdcbb708483e8c83947117483e\u0026oe=5FB3E17C","username":"ranaadnan893"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17891214988663276","text":"@fnm.ink \ud83d\udc95","created_at":1601832653,"did_report_as_spam":false,"owner":{"id":"30746195852","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/118213743_168346321436097_2330967983371235650_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=JcVxMtbAuoMAX9LxyH5\u0026oh=768bbcd7e8a3c0f0a37d9eb3ce92f62f\u0026oe=5FB29B9D","username":"mughalassociates"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18056406613247258","text":"Alus","created_at":1601901395,"did_report_as_spam":false,"owner":{"id":"42835285817","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120371454_754272151822177_7019094590439453977_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=BVWRewfdiDAAX8GFHUC\u0026oh=f1cb0e5be9a8efee044fc0c9c139f690\u0026oe=5FB41050","username":"nikitaniki9315"},"viewer_has_liked":false,"edge_liked_by":{"count":4},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18166697017032706","text":"\ud83d\udc9c\ud83d\udc9c","created_at":1601962774,"did_report_as_spam":false,"owner":{"id":"41368234994","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120261323_269176210859124_6049445366923565068_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=x3FZelzF8M4AX_AXmyu\u0026oh=37ae48d79aef641a0a7956c398a8546b\u0026oe=5FB557DB","username":"i_indian_boy_"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17882449840807629","text":"\ud83d\udcaa\ud83d\udcaa\ud83d\udcaa\ud83d\udcaa","created_at":1601974824,"did_report_as_spam":false,"owner":{"id":"19545312041","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120938072_385552722607349_8768380606192502902_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=wf-jTLViLhkAX_LSWUB\u0026oh=75e09f691c56ab0fc9c1631e71fc8e4e\u0026oe=5FB53CDF","username":"cobraipsita"},"viewer_has_liked":false,"edge_liked_by":{"count":3},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17875753375917742","text":"yo hablar espa\u00f1ol, okei?","created_at":1601975485,"did_report_as_spam":false,"owner":{"id":"24410624503","is_verified":false,"profile_pic_url":"https://instagram.fcgk10-1.fna.fbcdn.net/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ht=instagram.fcgk10-1.fna.fbcdn.net\u0026_nc_ohc=MVEG8QTyVK4AX-KsZeS\u0026oh=dedbf8ba14ec972cbc995e3cf6f11142\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"eljuaniquililador"},"viewer_has_liked":false,"edge_liked_by":{"count":2},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17900993731574842","text":"\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f","created_at":1601983754,"did_report_as_spam":false,"owner":{"id":"13934823002","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/80334900_468924520677548_9073698744486068224_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=2mnIEkTDd-kAX-ryCXj\u0026oh=7d3eeb530c90c82a4e4bde05e73b0428\u0026oe=5FB5CF43","username":"airsoftvape"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17923828216451947","text":"\ud83d\udcab\ud83d\udcab\ud83d\udcab","created_at":1602109113,"did_report_as_spam":false,"owner":{"id":"1466114416","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120198939_672614890285181_3099658908599913019_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=X-hGJgE7bZgAX-8jR3c\u0026oh=2ce5243be198fc30dc47782a4d0d96b6\u0026oe=5FB3B3D6","username":"nazar_malak"},"viewer_has_liked":false,"edge_liked_by":{"count":2},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17886441646743282","text":"\ud83d\udd25Yes sis\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d\ud83d\ude0d","created_at":1602334210,"did_report_as_spam":false,"owner":{"id":"43157731595","is_verified":false,"profile_pic_url":"https://instagram.fcgk10-1.fna.fbcdn.net/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ht=instagram.fcgk10-1.fna.fbcdn.net\u0026_nc_ohc=MVEG8QTyVK4AX-KsZeS\u0026oh=dedbf8ba14ec972cbc995e3cf6f11142\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"osbve_ywmosphdy"},"viewer_has_liked":false,"edge_liked_by":{"count":1},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17858346941186822","text":"\ud83d\ude4c\ud83d\ude4c\ud83d\ude4c\ud83d\ude4c\ud83d\ude4c\ud83d\ude4c\ud83d\ude4c","created_at":1602396092,"did_report_as_spam":false,"owner":{"id":"42537529794","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/121091134_1481876145342762_1206152082301956004_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=DB4axSWFFvcAX9T-tsI\u0026oh=6e251cf98acfbbad95a1caad627831cd\u0026oe=5FB3C5F8","username":"lefotodinerina"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"18122013769087162","text":"\ud83d\ude0d\ud83d\ude0d","created_at":1602560312,"did_report_as_spam":false,"owner":{"id":"227382128","is_verified":false,"profile_pic_url":"https://instagram.fcgk10-1.fna.fbcdn.net/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ht=instagram.fcgk10-1.fna.fbcdn.net\u0026_nc_ohc=MVEG8QTyVK4AX-KsZeS\u0026oh=dedbf8ba14ec972cbc995e3cf6f11142\u0026oe=5FB5D50F\u0026ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2","username":"goodbay.5557"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17893656220632807","text":"https://peoople.app/skarletyohara.  baixem esse app  que est\u00e1 sendo um dias mais usado pelos blogueiros para ganha um estras\ud83d\udcb0\ud83d\udcaf\ud83e\udd11","created_at":1602775945,"did_report_as_spam":false,"owner":{"id":"29044906511","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/117809067_366502661008873_2495116916229449906_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=gZlRfXxr7GIAX-QgZ2n\u0026oh=2460a981705dfbf9c71d0a2e2dd46830\u0026oe=5FB29871","username":"oharasemijoias"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17878912096880529","text":"\ud83d\ude18","created_at":1602839563,"did_report_as_spam":false,"owner":{"id":"18653729882","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120372022_269647194162623_5934791034118990083_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=w3j9EWgecH4AX8rH9xN\u0026oh=4143f5743c50eff3859d57833a6f5a2c\u0026oe=5FB3CC5C","username":"carriewst_shines"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}},{"node":{"id":"17844344291413885","text":"\ud83d\ude0d\ud83d\ude18","created_at":1602839871,"did_report_as_spam":false,"owner":{"id":"13386025257","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119118848_3110285605766809_7624624554764857256_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=7CjOOxWsgXEAX9HK9oF\u0026oh=848881e44782ade88109240e6bffb343\u0026oe=5FB29878","username":"dipti1843"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false,"edge_threaded_comments":{"count":0,"page_info":{"has_next_page":false,"end_cursor":null},"edges":[]}}}]},"edge_media_to_hoisted_comment":{"edges":[]},"edge_media_preview_comment":{"count":3676,"edges":[{"node":{"id":"17878912096880529","text":"\ud83d\ude18","created_at":1602839563,"did_report_as_spam":false,"owner":{"id":"18653729882","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/120372022_269647194162623_5934791034118990083_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=w3j9EWgecH4AX8rH9xN\u0026oh=4143f5743c50eff3859d57833a6f5a2c\u0026oe=5FB3CC5C","username":"carriewst_shines"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false}},{"node":{"id":"17844344291413885","text":"\ud83d\ude0d\ud83d\ude18","created_at":1602839871,"did_report_as_spam":false,"owner":{"id":"13386025257","is_verified":false,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119118848_3110285605766809_7624624554764857256_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=7CjOOxWsgXEAX9HK9oF\u0026oh=848881e44782ade88109240e6bffb343\u0026oe=5FB29878","username":"dipti1843"},"viewer_has_liked":false,"edge_liked_by":{"count":0},"is_restricted_pending":false}}]},"comments_disabled":false,"commenting_disabled_for_viewer":false,"taken_at_timestamp":1599235397,"edge_media_preview_like":{"count":287443,"edges":[]},"edge_media_to_sponsor_user":{"edges":[]},"location":null,"viewer_has_liked":false,"viewer_has_saved":false,"viewer_has_saved_to_collection":false,"viewer_in_photo_of_you":false,"viewer_can_reshare":true,"owner":{"id":"25025320","is_verified":true,"profile_pic_url":"https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/s150x150/119381356_363756831450146_3008355575418576013_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com\u0026_nc_ohc=rrviAu0Aba8AX-SQ-lQ\u0026oh=7cb2bb955b34318ea51c4615ffc493ba\u0026oe=5FB33C76","username":"instagram","blocked_by_viewer":false,"restricted_by_viewer":null,"followed_by_viewer":false,"full_name":"Instagram","has_blocked_viewer":false,"is_private":false,"is_unpublished":false,"requested_by_viewer":false,"pass_tiering_recommendation":true,"edge_owner_to_timeline_media":{"count":6524},"edge_followed_by":{"count":372077364}},"is_ad":false,"edge_web_media_to_related_media":{"edges":[]},"edge_related_profiles":{"edges":[]}}}}]},"hostname":"www.instagram.com","is_whitelisted_crawl_bot":false,"connection_quality_rating":"EXCELLENT","deployment_stage":"c1","platform":"web","nonce":"b7tn5C7zsDlsjD3cAyR7qw==","mid_pct":94.99712,"zero_data":{},"cache_schema_version":3,"server_checks":{},"knobx":{"17":false,"20":true,"22":true,"23":true,"24":true,"25":true,"26":true,"27":true,"28":true,"29":true,"32":true,"34":true,"35":false,"36":false,"38":25000,"39":true,"4":false,"40":false},"to_cache":{"gatekeepers":{"10":false,"100":false,"101":true,"102":true,"103":true,"104":true,"105":true,"106":true,"107":false,"108":true,"11":false,"112":true,"113":true,"114":true,"116":true,"119":false,"12":false,"120":true,"123":false,"126":false,"128":false,"13":true,"131":false,"132":false,"137":true,"14":true,"140":false,"142":false,"146":true,"147":false,"149":false,"15":true,"150":false,"151":false,"152":true,"153":false,"154":true,"156":false,"157":false,"158":false,"159":true,"16":true,"160":false,"162":true,"164":true,"166":false,"167":false,"168":false,"169":false,"18":true,"19":false,"23":false,"24":false,"26":true,"27":false,"28":false,"29":true,"31":false,"32":true,"34":false,"35":false,"38":true,"4":true,"40":true,"41":false,"43":true,"5":false,"59":true,"6":false,"61":false,"62":false,"63":false,"64":false,"65":false,"67":true,"68":false,"69":true,"7":false,"71":false,"73":false,"74":false,"75":true,"78":true,"79":false,"8":false,"81":false,"82":true,"84":false,"86":false,"9":false,"91":false,"95":true,"97":false},"qe":{"app_upsell":{"g":"","p":{}},"igl_app_upsell":{"g":"","p":{}},"notif":{"g":"","p":{}},"onetaplogin":{"g":"","p":{}},"felix_clear_fb_cookie":{"g":"","p":{}},"felix_creation_duration_limits":{"g":"","p":{}},"felix_creation_fb_crossposting":{"g":"","p":{}},"felix_creation_fb_crossposting_v2":{"g":"","p":{}},"felix_creation_validation":{"g":"","p":{}},"post_options":{"g":"","p":{}},"sticker_tray":{"g":"","p":{}},"web_sentry":{"g":"","p":{}},"0":{"p":{"9":false},"l":{},"qex":true},"100":{"p":{"0":true},"l":{},"qex":true},"101":{"p":{"0":false,"1":false},"l":{},"qex":true},"102":{"p":{"0":true},"l":{},"qex":true},"104":{"p":{"0":true},"l":{},"qex":true},"108":{"p":{"0":false,"1":false},"l":{},"qex":true},"109":{"p":{},"l":{},"qex":true},"111":{"p":{"0":false,"1":false},"l":{},"qex":true},"113":{"p":{"0":true,"1":false,"2":true,"4":false,"5":false,"7":false,"8":false},"l":{},"qex":true},"117":{"p":{"0":true},"l":{},"qex":true},"118":{"p":{"0":false,"1":true,"2":false},"l":{},"qex":true},"119":{"p":{"0":false},"l":{},"qex":true},"12":{"p":{"0":5},"l":{},"qex":true},"121":{"p":{"0":true},"l":{},"qex":true},"122":{"p":{"0":false},"l":{},"qex":true},"123":{"p":{"0":true,"1":true,"2":false},"l":{},"qex":true},"124":{"p":{"0":false,"1":true,"2":false,"3":false,"4":false},"l":{"3":true},"qex":true},"125":{"p":{"0":true},"l":{},"qex":true},"127":{"p":{"0":true,"1":true,"2":true},"l":{},"qex":true},"128":{"p":{"0":false,"1":false},"l":{},"qex":true},"129":{"p":{"1":false,"2":true},"l":{},"qex":true},"13":{"p":{"0":true},"l":{},"qex":true},"131":{"p":{"2":true,"3":true,"4":false},"l":{},"qex":true},"132":{"p":{"0":true},"l":{},"qex":true},"135":{"p":{"0":false,"1":false,"2":false,"3":false},"l":{"2":true},"qex":true},"137":{"p":{},"l":{},"qex":true},"141":{"p":{"0":false,"1":false,"2":false},"l":{},"qex":true},"142":{"p":{"0":false},"l":{},"qex":true},"143":{"p":{"1":true,"2":false,"3":false,"4":false},"l":{"1":true},"qex":true},"145":{"p":{},"l":{},"qex":true},"146":{"p":{"0":true},"l":{"0":true},"qex":true},"148":{"p":{"1":false},"l":{"1":true},"qex":true},"149":{"p":{},"l":{},"qex":true},"16":{"p":{"0":false},"l":{},"qex":true},"21":{"p":{"2":false},"l":{},"qex":true},"22":{"p":{"10":0.0,"11":15,"12":3,"13":false,"2":8.0,"3":0.85,"4":0.95},"l":{},"qex":true},"23":{"p":{"0":false,"1":false},"l":{},"qex":true},"25":{"p":{},"l":{},"qex":true},"26":{"p":{"0":""},"l":{},"qex":true},"28":{"p":{"0":false},"l":{},"qex":true},"29":{"p":{},"l":{},"qex":true},"31":{"p":{},"l":{},"qex":true},"33":{"p":{},"l":{},"qex":true},"34":{"p":{"0":false},"l":{},"qex":true},"36":{"p":{"0":true,"1":true,"2":false,"3":false,"4":false},"l":{},"qex":true},"37":{"p":{"0":false},"l":{},"qex":true},"39":{"p":{"0":false,"14":false,"8":false},"l":{},"qex":true},"41":{"p":{"3":true},"l":{},"qex":true},"42":{"p":{"0":true},"l":{},"qex":true},"43":{"p":{"0":false,"1":false,"2":false},"l":{},"qex":true},"44":{"p":{"1":"inside_media","2":0.2},"l":{},"qex":true},"45":{"p":{"13":false,"17":0,"32":false,"35":false,"36":"control","37":false,"38":false,"40":"control","46":false,"47":false,"48":false,"49":false,"51":false,"52":false},"l":{},"qex":true},"46":{"p":{"0":false},"l":{},"qex":true},"47":{"p":{"0":true,"1":true,"10":false,"11":false,"2":false,"3":false,"9":false},"l":{},"qex":true},"49":{"p":{"0":false},"l":{},"qex":true},"50":{"p":{"0":false},"l":{},"qex":true},"54":{"p":{"0":false},"l":{},"qex":true},"58":{"p":{"0":0.25,"1":true},"l":{},"qex":true},"59":{"p":{"0":true},"l":{},"qex":true},"62":{"p":{"0":false},"l":{},"qex":true},"67":{"p":{"0":true,"1":true,"2":true,"3":true,"4":false,"5":true,"7":false},"l":{},"qex":true},"69":{"p":{"0":true},"l":{},"qex":true},"71":{"p":{"1":"^/explore/.*|^/accounts/activity/$"},"l":{},"qex":true},"72":{"p":{"1":false,"2":false},"l":{"1":true,"2":true},"qex":true},"73":{"p":{"0":false},"l":{},"qex":true},"74":{"p":{"1":true,"12":false,"13":false,"15":false,"2":false,"3":true,"4":false,"7":false,"9":true},"l":{},"qex":true},"75":{"p":{"0":true},"l":{},"qex":true},"77":{"p":{"1":false},"l":{},"qex":true},"80":{"p":{"3":true,"4":false},"l":{},"qex":true},"84":{"p":{"0":true,"1":true,"2":true,"3":true,"4":true,"5":true,"6":false,"8":false},"l":{},"qex":true},"85":{"p":{"0":false,"1":"Pictures and Videos"},"l":{},"qex":true},"87":{"p":{"0":true},"l":{},"qex":true},"93":{"p":{"0":true},"l":{},"qex":true},"95":{"p":{"0":false},"l":{},"qex":true},"98":{"p":{"1":false},"l":{},"qex":true}},"probably_has_app":false,"cb":false},"device_id":"C172DD8E-AD8C-438B-BFFB-C3FFFA6071BE","browser_push_pub_key":"BIBn3E_rWTci8Xn6P9Xj3btShT85Wdtne0LtwNUyRQ5XjFNkuTq9j4MPAVLvAFhXrUU1A9UxyxBA7YIOjqDIDHI","encryption":{"key_id":"140","public_key":"a7dd106e79b7e32db94149e5ba621fb921fc0b92c36a8e77bc1f53a230f92716","version":"10"},"is_dev":false,"signal_collection_config":null,"rollout_hash":"50907caa5097","bundle_variant":"metro","frontend_env":"prod"};</script>
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
