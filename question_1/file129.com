<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>
	<meta charset="UTF-8"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"f6169b8cc4",applicationID:"100041457"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>How Hatred Came To Dominate American Politics | FiveThirtyEight</title>
<!-- Jetpack Site Verification Tags -->
					<link
			rel="preload"
			as="font"
			type="font/woff2"
			href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/fonts/AtlasGrotesk-Bold-Web.woff2"
			crossorigin="anonymous">
					<link
			rel="preload"
			as="font"
			type="font/woff2"
			href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/fonts/AtlasGrotesk-Regular-Web.woff2"
			crossorigin="anonymous">
					<link
			rel="preload"
			as="font"
			type="font/woff2"
			href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/fonts/decimamonopro-webfont.woff2"
			crossorigin="anonymous">
				<link rel='dns-prefetch' href='//cdn.registerdisney.go.com' />
<link rel='dns-prefetch' href='//platform.twitter.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel='dns-prefetch' href='//pagead2.googlesyndication.com' />
<link rel='dns-prefetch' href='//tpc.googlesyndication.com' />
<link rel='dns-prefetch' href='//securepubads.g.doubleclick.net' />
<link rel='dns-prefetch' href='//www.googletagmanager.com' />
<link rel='dns-prefetch' href='//www.googletagservices.com' />
<link rel='dns-prefetch' href='//www.googleadservices.com' />
<link rel='dns-prefetch' href='//adservice.google.com' />
<link rel='dns-prefetch' href='//www.google.com' />
<link rel='stylesheet' id='all-css-0' href='https://fivethirtyeight.com/_static/??-eJxtzUEOwjAMBMAPkTrlwA3xliZ1GwvHjWIXlN83EkJCFefdnYV3cSSR9xkVoirMpAaBt/h0TKFOtYFaYxwyydALF+iLuImhGBTeVxKFlRZXeGou7GabwKSK9vFO0V/GEuZ+j1rELfRCS1StIa3JfqlT9KUe+T7e/NWP3vvxADB1TZA=' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify{text-align:justify;}
</style>
<script id='disney-oneid-js-extra'>
var DisneyOneID = {"config":{"clientId":"DATG-FIVETHIRTYEIGHT.WEB-PROD","langPref":"en-US","debug":false,"responderPage":"https:\/\/fivethirtyeight.com\/oneid-responder","campaignName":"FiveThirtyEight"}};
</script>
<script src='https://cdn.registerdisney.go.com/v2/outer/DisneyID.js' id='disney-oneid-js'></script>
<script id='taboola-js-extra'>
var ESPNTaboola = {"publisher":"abcnews-fivethirtyeight","type":"article"};
</script>
<script type='text/javascript' src='https://fivethirtyeight.com/_static/??-eJydkdFOwzAMRX+ILIBAbA+IbwnJbeuSOiF2WvXv6caAgkYleIpk+xzLN3bKxidWsNoca0ssNpAwZjNAxC2F1joRqNhebGJQ2A3Eu16u7MIS+1gDTs3+taLM5+dj4Kccktmoe04pupX4XFmrL5KSPLm4AhvnsaAvfyd1IlUUk0sasm7xVSmS0nLlFz1SQNqCNlIcwSEVm2uhZv6ngzFJxPGA376jckARnwourdAOi/Y9moZGaEdFZ1Db6Trd7x3TwYXPjU/D4839YX/YP9xd3/ZvsWPd2g=='></script>
<script async="async" defer="defer" src='https://platform.twitter.com/widgets.js?ver=1.0.24' id='platform-twitter-js'></script>
<script id='abc-analytics-js-extra'>
var ABCAnalytics = {"nielsen":{"asset_id":286546,"section":"politics2020-election","seg_a":"","seg_b":"","seg_c":"","debug":""},"chartbeat":{"uid":"12240","domain":"fivethirtyeight.com","path":"\/features\/how-hatred-negative-partisanship-came-to-dominate-american-politics\/","sections":"politics,features","authors":"Lee Drutman","title":"How Hatred Came To Dominate American Politics","loadPubJS":false,"loadVidJS":true},"gtm":{"id":"GTM-KLHT6T2"},"omniture":{"pageName":"politics:features:how-hatred-negative-partisanship-came-to-dominate-american-politics","prop1":"fivethirtyeight","prop2":"","prop5":"features","prop6":"Lee Drutman","prop7":"politics","prop8":"politics:2020-election","prop12":"How Hatred Came To Dominate American Politics","prop13":"286546:How Hatred Came To Dominate American Politics","prop14":"","prop15":"https:\/\/fivethirtyeight.com\/features\/how-hatred-negative-partisanship-came-to-dominate-american-politics\/","prop16":"https:\/\/fivethirtyeight.com\/features\/how-hatred-negative-partisanship-came-to-dominate-american-politics\/","prop20":"Desktop","prop23":"2020 Election, Authoritarianism, Democracy, Democrats, Donald Trump, Joe Biden, Negative Partisanship, Partisanship, Political Science, Republicans","eVar5":"features","eVar6":"Lee Drutman","eVar7":"politics","eVar8":"politics:2020-election","eVar9":"2020-10-05","eVar10":"06:00","eVar12":"How Hatred Came To Dominate American Politics","eVar13":"286546:How Hatred Came To Dominate American Politics","eVar14":"","eVar15":"https:\/\/fivethirtyeight.com\/features\/how-hatred-negative-partisanship-came-to-dominate-american-politics\/","eVar16":"https:\/\/fivethirtyeight.com\/features\/how-hatred-negative-partisanship-came-to-dominate-american-politics\/","eVar20":"Desktop","eVar21":null,"eVar22":null,"prop35":"2020-10-05"},"account":"wdgnewfivethirtyeight"};
</script>
<script type='text/javascript' src='https://fivethirtyeight.com/wp-content/plugins/abc-analytics/assets/js/analytics.min.js?m=1596587059g'></script>
<link rel="https://api.w.org/" href="https://fivethirtyeight.com/wp-json/" /><link rel="alternate" type="application/json" href="https://fivethirtyeight.com/wp-json/wp/v2/fte_features/286546" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://fivethirtyeight.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://fivethirtyeight.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.5.1" />
<link rel='shortlink' href='https://53eig.ht/30nrfug' />
<link rel="alternate" type="application/json+oembed" href="https://fivethirtyeight.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Ffivethirtyeight.com%2Ffeatures%2Fhow-hatred-negative-partisanship-came-to-dominate-american-politics%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://fivethirtyeight.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Ffivethirtyeight.com%2Ffeatures%2Fhow-hatred-negative-partisanship-came-to-dominate-american-politics%2F&#038;format=xml" />
<style type='text/css'>img#wpstats{display:none}</style><link rel="amphtml" href="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/amp/">
<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="article" />
<meta property="og:title" content="How Hatred Came To Dominate American Politics" />
<meta property="og:url" content="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/" />
<meta property="og:description" content="To anyone following American politics, it’s not exactly news that Democrats and Republicans don’t like each other. Take what happened in the presidential debate&#8230;" />
<meta property="article:published_time" content="2020-10-05T10:00:03+00:00" />
<meta property="article:modified_time" content="2020-10-05T10:00:03+00:00" />
<meta property="og:site_name" content="FiveThirtyEight" />
<meta property="og:image" content="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-16x9-1.png?w=575" />
<meta property="og:image:width" content="575" />
<meta property="og:image:height" content="323" />
<meta property="og:locale" content="en_US" />
<meta property="article:author" content="https://fivethirtyeight.com/contributors/lee-drutman/" />
<meta property="article:publisher" content="https://www.facebook.com/fivethirtyeight" />
<meta property="fb:app_id" content="797620670264818" />
<meta property="fb:pages" content="687958677914631" />
<meta name="twitter:site" content="FiveThirtyEight" />
<meta name="twitter:site:id" content="2303751216" />
<meta name="twitter:widgets:csp" content="on" />
<meta name="twitter:maxage" content="300" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:creator" content="leedrutman" />
<meta name="twitter:creator:id" content="176905010" />
<meta name="twitter:image:src" content="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-16x9-1.png?w=575" />
<meta name="twitter:label1" content="Written by" />
<meta name="twitter:data1" content="Lee Drutman" />
<meta name="twitter:label2" content="Filed under" />
<meta name="twitter:data2" content="2020 Election, Authoritarianism, Democracy, Democrats, Donald Trump, Joe Biden, Negative Partisanship, Partisanship, Political Science, Republicans" />

<!-- End Jetpack Open Graph Tags -->
<meta name="DC.date.issued" content="2020-10-05T10:00:03+00:00" />
<meta name="description" content="To anyone following American politics, it’s not exactly news that Democrats and Republicans don’t like each other. Take what happened in the presidential debate&#8230;" />
<meta name='author' content='Lee Drutman' />
<link rel='author' href='https://fivethirtyeight.com/contributors/lee-drutman/' />
<link rel="alternate" type="application/rss+xml" title="Posts feed for Lee Drutman" href="https://fivethirtyeight.com/contributors/lee-drutman/feed/">
<link type="text/plain" rel="author" href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/humans.txt" /><link rel='canonical' href='https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/' />
<script type='application/ld+json'>
{"@context":"http://schema.org","@type":"NewsArticle","mainEntityOfPage":{"@type":"WebPage","@id":"https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/"},"headline":"How Hatred Came To Dominate American Politics","datePublished":"2020-10-05T06:00:03-04:00","dateModified":"2020-10-05T20:09:34-04:00","publisher":{"@type":"Organization","name":"FiveThirtyEight","logo":{"url":"https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/images/fivethirtyeight-logo-rich-snippets.png","height":60,"width":546,"@type":"ImageObject"}},"author":{"@type":"Person","name":"Lee Drutman"},"articleSection":"Politics","image":{"@type":"ImageObject","url":"https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=1024","width":1024,"height":768}}
</script>
		<style type="text/css" id="wp-custom-css">
			section.viz {
background-color: #fff;
}
div.liveblog-entry-content>header.single-post-header{
display: none;
}		</style>
			<link rel="mask-icon" color="#ed713a" href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/images/logo-fox-head-black.svg?v=1.0.24">
	<link rel="shortcut icon" href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/images/favicon.ico?v=1.0.24">
	<link rel="apple-touch-icon" href="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/images/fivethirtyeight-logo-touch.png?v=1.0.24">
</head>
<body class="fte_features-template-default single single-fte_features postid-286546 vertical-politics slug-how-hatred-negative-partisanship-came-to-dominate-american-politics topic-slug-2020-election">
<div id="ad-OutStream" class="ad-outstream" data-defer="none"></div>
<a href="#content" class="skip-to-content-link visually-hidden">Skip to main content</a>
<div id="masterad" class="master-ad">
	<div id="ad-Banner" class="ad-banner" data-defer="none"></div></div><!-- #masterad -->
<i class="header-global-bground"></i>
<header class="header-global" id="header-global">
	<div class="site-wrapper header-global-top">
							<h2 class="header-global-logo">
							<a href="/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Home" class="header-global-logo-link">
					<span class="visually-hidden">FiveThirtyEight</span>
					<svg xmlns="http://www.w3.org/2000/svg" width="1280" height="163.451" viewBox="0 318.275 1280 163.451" class="site-logo"><path d="M0 318.275h76.009v24.323H27.363v30.403h45.606v24.323H27.363v51.687H0zm94.252 109.453h15.202v-54.727H94.252v-24.323h39.525v79.05h12.162v21.283H94.252v-21.283zm15.202-109.453h24.323v24.323h-24.323v-24.323zm434.774 109.453h15.202v-54.727h-15.202v-24.323h39.525v79.05h12.162v21.283h-51.686v-21.283zm15.202-109.453h24.323v24.323H559.43v-24.323zm401.33 109.453h15.202v-54.727H960.76v-24.323h39.525v79.05h12.161v21.283H960.76v-21.283zm15.202-109.453h24.323v24.323h-24.323v-24.323zm-811.781 82.09v-51.687h24.323v45.606l12.161 30.343h3.04l12.162-30.343v-45.606h24.323v51.687l-21.283 48.646h-33.444zm173.301 48.646h-41.288c-24.901 0-37.762-11.584-37.762-35.968v-27.88c0-23.016 13.074-39.525 39.525-39.525 28.367 0 39.525 15.415 39.525 42.565v21.283h-51.686v5.29c0 7.966 3.04 12.952 10.398 12.952h41.288v21.283zm-51.686-60.808h24.323v-4.713c0-7.966-3.223-16.57-12.557-16.57-8.483 0-11.766 6.689-11.766 16.57v4.713zm94.251-45.605h-30.403v-24.323h88.171v24.323h-30.404v106.413h-27.364zm234.11 106.413V348.678h24.323v12.161c3.466-7.449 11.401-12.161 21.952-12.161h8.452v24.323h-18.242c-8.635 0-12.161 2.858-12.161 11.857v64.152h-24.324zm130.736 0h-14.715c-21.617 0-30.89-11.219-30.89-33.9v-42.109h-18.242v-24.323h18.242v-21.283h24.323v21.283h21.283v24.323H723.61l-.213 42.353c0 6.75 2.828 12.374 11.128 12.374h10.368v21.282zm535.107 0h-14.715c-21.617 0-30.89-11.219-30.89-33.9v-42.109h-18.242v-24.323h18.242v-21.283h24.323v21.283H1280v24.323h-21.283l-.213 42.353c0 6.75 2.828 12.374 11.128 12.374H1280v21.282zm-506.953 32.714l14.016-28.883-23.928-52.477v-51.687h24.323v45.606l12.162 30.404h3.04l12.162-30.404v-45.606h24.323v51.687l-37.397 81.36zm90.421-163.45h76.009v24.323h-48.646v27.363h45.606v24.323h-45.606v30.404h48.646v24.323h-76.009zm161.14 145.938v-6.081h48.95c6.081 0 8.817-.547 8.817-3.861v-1.034c0-3.284-2.767-4.226-8.817-4.226h-39.829v-15.202l15.202-15.202c-16.084-4.5-24.323-16.509-24.323-33.444v-3.04c0-22.985 13.499-36.485 42.565-36.485a66.672 66.672 0 0 1 18.09 3.04l12.313-18.242 15.202 9.121-12.161 18.242c4.165 5.868 9.121 14.989 9.121 24.323v3.04c0 21.283-10.033 32.41-36.484 33.444l-9.121 12.161h18.242c17.999 0 27.363 7.966 27.363 23.35v.334c0 15.384-8.239 24.962-26.208 24.962h-39.525c-13.043.002-19.397-5.593-19.397-15.2zm57.767-76.01v-9.121c0-10.033-4.044-12.161-15.202-12.161-11.158 0-15.202 2.128-15.202 12.161v9.121c0 10.033 4.226 12.162 15.202 12.162s15.202-2.128 15.202-12.162zm72.969 60.808h-24.323V318.275h24.323v42.565c3.466-8.118 10.337-12.161 21.283-12.161 19.033 0 27.363 9.364 27.363 32.714v67.618h-24.323v-63.848c0-9.516-3.253-15.202-12.162-15.202-8.908 0-12.161 5.686-12.161 15.202v63.848zm-678.004 0h-24.323V318.275h24.323v42.565c3.466-8.118 11.888-12.161 22.772-12.161 19.033 0 25.874 9.516 25.874 32.867v67.466h-24.323v-66.888c0-9.516-3.253-13.499-12.161-13.499s-12.162 6.871-12.162 16.388v63.998z"/></svg>					<img src="https://fivethirtyeight.com/wp-content/themes/espn-fivethirtyeight/assets/images/logo-fox-head-color.svg" alt="FiveThirtyEight" width="57" height="55" class="site-logo-small" id="site-logo-small" />
				</a>
							</h2>
			
			<form action="https://fivethirtyeight.com/" method="get" id="searchform" class="search-form">
				<label for="search-field" class="search-form-label">Search</label>
				<div class="search-form-input-wrapper"><input type="search" name="s" id="search-field" class="search-form-input" placeholder="Search" tabindex="-1"></div>
				<input type="submit" value="Search" class="search-form-submit" tabindex="-1">
				<button aria-label="Search" class="search-button" id="search-button">
					<span class="visually-hidden">Search</span>
				</button>
			</form>

			<a href="https://abcnews.go.com/" rel="noopener" title="ABC News" target="_blank" class="header-espn-link" name="&amp;lpos=fivethirtyeightHeader&amp;lid=Header ABC News">
				<svg width="65" height="23" xmlns="http://www.w3.org/2000/svg"><path d="M25.089 6.709c-.47-.496-.974-.798-1.322-.798h-.313v-.275h.261c.121 0 1.548.058 1.687.058.227 0 .886-.058 1.026-.058h.278l6.618 7.345V7.187c0-.921-.4-1.276-1.407-1.276h-.296v-.275h.313c.035 0 1.529.058 1.65.058.173 0 1.164-.058 1.355-.058h.192l.017.275c-.922.071-1.165.32-1.165 1.135v9.16h-.312l-7.904-8.77v6.6c0 1.384.314 1.756 1.46 1.756h.295v.296h-.331c-.243 0-1.441-.06-1.72-.06-.156 0-1.269.06-1.512.06h-.279v-.296c1.166-.107 1.41-.302 1.41-1.153v-7.93h-.001zm11.98.106c0-.691-.261-.904-1.079-.904h-.26v-.275h.678c.47 0 3.008.058 3.026.058.364 0 2.777-.058 3.296-.058h.695l.035 2.277h-.27c-.053-1.188-.58-1.667-1.795-1.667h-2.43v4.026h2.1c.816 0 1.268-.39 1.389-1.225l.31.018v3.178h-.293c-.138-.993-.642-1.383-1.857-1.383h-1.666v3.672c0 .603.296.905.885.905h1.736c1.126 0 1.944-.515 2.43-1.58h.314l-.731 2.23c-.505 0-2.898-.058-3.696-.058-.539 0-3.13.04-3.722.058h-.452v-.295h.278c.818-.017 1.08-.23 1.08-.923V6.815zm16.701 9.41h-.487l-1.984-5.511-2.035 5.512h-.47L45.4 6.975c-.26-.71-.505-.993-.957-1.08v-.26h.296c.191 0 1.149.059 1.375.059.191 0 1.182-.058 1.391-.058h.314v.275c-.505.019-.714.16-.714.443 0 .16.052.39.14.639l2.383 6.557 1.357-3.74-.887-2.516c-.383-1.081-.714-1.364-1.55-1.383v-.275h.28c.243 0 1.496.058 1.793.058.242 0 1.495-.058 1.773-.058h.417v.275h-.417c-.574 0-.852.142-.852.443 0 .16.07.444.174.727l2.314 6.522 1.827-5.53c.226-.709.33-1.17.33-1.453 0-.496-.243-.71-.782-.71h-.313v-.274h.087c.243 0 .851.058 1.217.058.173 0 .851-.058 1.18-.058h.123v.275c-.436.125-.66.443-1.007 1.525l-2.923 8.79zm4.01-2.563c.278.688.52 1.008.988 1.361.59.46 1.37.69 2.237.69 1.491 0 2.497-.796 2.497-1.946 0-.85-.486-1.31-2.282-2.175-1.74-.85-2.174-1.274-2.538-1.628-.537-.584-.762-1.114-.762-1.822 0-1.627 1.3-2.704 3.265-2.704.592 0 1.236.088 1.933.264.278.07.557.106.714.106.138 0 .209-.035.26-.153h.3l.034 2.229h-.247c-.156-.531-.26-.76-.487-1.05-.488-.585-1.254-.903-2.237-.903-1.248 0-2.064.601-2.064 1.504 0 .778.47 1.22 2.134 1.998 2.134 1.008 3.426 1.911 3.426 3.573 0 1.91-1.537 3.2-3.807 3.2a8.04 8.04 0 0 1-1.838-.229 3.676 3.676 0 0 0-.624-.089c-.209 0-.277.036-.415.2h-.295l-.035-.248c-.118-.7-.258-1.398-.418-2.09l.261-.089zM3.97 9.732c-.262 0-.51.06-.73.168-.587.291-.957.89-.955 1.546 0 .946.755 1.714 1.684 1.714.931 0 1.684-.768 1.684-1.714 0-.947-.753-1.715-1.684-1.715zm7.259 0c-.93 0-1.685.767-1.685 1.714 0 .946.754 1.714 1.685 1.714.93 0 1.684-.768 1.684-1.714 0-.947-.755-1.715-1.684-1.715z"/><path d="M18.47 14.875c-1.862 0-3.37-1.535-3.37-3.43 0-1.893 1.508-3.428 3.37-3.428 1.596 0 2.932 1.132 3.28 2.65h-1.78a1.68 1.68 0 0 0-1.5-.936c-.932 0-1.686.768-1.686 1.715 0 .946.754 1.714 1.685 1.714a1.68 1.68 0 0 0 1.502-.94l1.783-.017c-.339 1.53-1.68 2.672-3.285 2.672zm-7.241 0c-1.853 0-3.356-1.522-3.369-3.405l-.04-6.016h1.704l.01 3.228c.499-.396 1.077-.665 1.695-.665 1.86 0 3.368 1.535 3.368 3.429s-1.509 3.429-3.368 3.429zm-5.546 0l-.007-.859c-.382.389-1.043.859-1.824.859-1.86 0-3.251-1.535-3.251-3.43 0-1.893 1.508-3.428 3.368-3.428.29 0 .573.037.843.108 1.453.38 2.526 1.723 2.526 3.32v.01l.02 3.42H5.682zM11.229.017C5.027.017 0 5.134 0 11.446s5.027 11.43 11.229 11.43c6.2 0 11.228-5.118 11.228-11.43 0-6.312-5.028-11.429-11.228-11.429z"/></svg>			</a>

			<span class="nav-global-toggle" id="nav-global-toggle">Menu</span>

	</div>
			<div class="single-sticky">
									<div class="single-sticky-vertical"></div>
				<div class="single-sticky-title">
											How Hatred Came To Dominate American Politics									</div>
				<a href="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/?share=facebook" class="button share-sticky sticky-facebook">Share on Facebook</a>
				<a href="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/?share=twitter"  class="button share-sticky sticky-twitter">Share on Twitter</a>
						</div>
			<div class="site-wrapper header-global-bottom">
		<nav class="nav-global" id="nav-global">
			<ul class="nav-global-menu">
				<li class="nav-global-menu-item menu-politics -current-vertical">
					<a href="https://fivethirtyeight.com/politics/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Politics">
						Politics					</a>
				</li>
				<li class="nav-global-menu-item menu-sports">
					<a href="https://fivethirtyeight.com/sports/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Sports">
						Sports					</a>
				</li>
				<li class="nav-global-menu-item menu-science">
					<a href="https://fivethirtyeight.com/science/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Science">
						Science					</a>
				</li>
				<li class="nav-global-menu-item menu-podcast">
					<a href="https://fivethirtyeight.com/podcasts/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Podcasts">
						Podcasts					</a>
				</li>
				<li class="nav-global-menu-item menu-video">
					<a href="https://fivethirtyeight.com/videos/" name="&amp;lpos=fivethirtyeight&amp;lid=Header Video">
						Video					</a>
				</li>
				<li class="nav-global-menu-item menu-abcn -mobile-only">
					<a href="https://abcnews.go.com/" rel="noopener" name="&amp;lpos=fivethirtyeightHeader&amp;lid=Header ABC News">
						ABC News					</a>
				</li>
			</ul>

			
	
		</nav><!-- #nav-global -->
		</div><!-- .site-wrapper -->
</header><!-- #header-global -->


<div class="site-main">
	<div id="wrapper" class="site-wrapper">

		
	<div id="content" class="single single-feature" data-col="2">

		
		<div class="single-feature__row">
			<div id="primary" class="single-feature__col">
				<div id="article-main">
					<article id="post-286546" class="post-286546 fte_features type-fte_features status-publish has-post-thumbnail hentry tag-2020-election tag-authoritarianism tag-democracy tag-democrats tag-donald-trump tag-joe-biden tag-negative-partisanship tag-partisanship tag-political-science tag-republicans espn_verticals-politics vertical-politics topic-slug-2020-election">

						
												<header class="post-info single-post-header">
														<p class="topic single-topic">
								<time class="datetime">Oct. 5, 2020</time>,
								at
								<time class="datetime updated" title="2020-10-05T10:00:03+00:00">6:00 AM</time>

							</p>
							
							<div class="single-header">
								<h1 class="article-title article-title-single entry-title">
									How Hatred Came To Dominate American Politics								</h1>

															</div>

							<div class="single-header-metadata-and-share-wrap">
								<div class="single-header-metadata-wrap">
																			<p class="single-metadata single-byline vcard">By <a href="https://fivethirtyeight.com/contributors/lee-drutman/" title="" class="author url fn" rel="author">Lee Drutman</a></p>
										
																		<p class="single-metadata single-topic">Filed under <a href="https://fivethirtyeight.com/tag/2020-election/" class="term " name="">2020 Election</a></p>
										
										
																	</div>
								<div class="share">
									<div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><div class="sd-content"><ul><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-286546" class="share-facebook sd-button share-icon" href="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/?share=facebook" target="_blank" title="Click to share on Facebook"><span>Facebook</span></a></li><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-286546" class="share-twitter sd-button share-icon" href="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/?share=twitter" target="_blank" title="Click to share on Twitter"><span>Twitter</span></a></li><li class="share-email"><a rel="nofollow noopener noreferrer" data-shared="" class="fte-email-share sd-button share-icon" href="mailto:?subject=I thought you’d like this article from FiveThirtyEight&body=https%3A%2F%2Ffivethirtyeight.com%2Ffeatures%2Fhow-hatred-negative-partisanship-came-to-dominate-american-politics%2F?ex_cid=538email" target="_blank" title="Click to email this to a friend"><span>Email</span></a></li><li class="share-end"></li></ul></div></div></div>								</div> <!-- .share -->
							</div>

						</header><!-- .post-info -->


							
<figure id="single-featured-image" class="single-featured-image">
	<span class="has-bugs post-thumbnail">
					<div class="bug-container">
				<picture class="featured-picture">
											<source media="(min-width: 768px)" srcset="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=575 1x, https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=1150 2x">
					
											<source srcset="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=575 1x, https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=1150 2x">
						<img alt="NEGATIVE-PARTISANSHIP-4&#215;3" src="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=575" srcset="https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=575 1x, https://fivethirtyeight.com/wp-content/uploads/2020/10/NEGATIVE-PARTISANSHIP-4x3-1.png?w=1150 2x" class="" sizes="(max-width: 768px) 100vw, (max-width: 1080px) 66vw, 684px" />
									</picture>

				
			</div>

		
		
	</span><!-- .has-bugs -->

	
				<figcaption class="caption featured-image-caption">
													<p class="credits">PHOTO ILLUSTRATION BY EMILY SCHERER / GETTY IMAGES</p>
							</figcaption>
			
</figure><!-- .single-featured-image -->
						
						<div class="entry-content single-post-content">
							<p>To anyone following American politics, it’s not exactly news that Democrats and Republicans don’t like each other. Take what happened in the presidential debate last week. President Trump and former Vice President Joe Biden did little to conceal their disdain of one another. And although the debate marked a low point in <a href="https://www.politico.com/news/magazine/2020/09/30/presidential-debate-national-shame-423521">our national discourse</a>, it was a crystallization of a long-developing trend: loathing the opposing party.</p>
<p>This is hardly a new trend; in fact, it’s <a href="https://www.politico.com/magazine/story/2017/09/05/negative-partisanship-explains-everything-215534">increasingly common</a> among American voters. However, this level of hatred &#8212; which political scientists call “<a href="https://www.vox.com/mischiefs-of-faction/2017/6/2/15730524/negative-partisanship-toxic-polarization">negative partisanship</a>” &#8212; has <a href="https://www.dannyhayes.org/uploads/6/9/8/5/69858539/kalmoe___mason_ncapsa_2019_-_lethal_partisanship_-_final_lmedit.pdf">reached levels</a> that are not just bad for democracy, but are potentially destructive. And extreme partisan animosity is <a href="http://journals.sagepub.com/doi/10.1177/0002716218818782">a prelude</a> to <a href="https://www.penguinrandomhouse.com/books/562246/how-democracies-die-by-steven-levitsky-and-daniel-ziblatt/">democratic collapse</a>.</p>
<p>It wasn’t always this bad, though. Forty years ago, when asked to rate how “favorable and warm” their opinion of each party was, the average Democrat and Republican said they felt OK-ish about the opposite party. But for four decades now, partisans have <a href="https://conferences.wcfia.harvard.edu/piep/publications/demonization">increasingly turned against each other</a> in an escalating cycle of dislike and distrust — views of the other party are currently at an all-time low.</p>
<figure id="attachment_286676" class="wp-caption aligncenter" style="">
					<img loading="lazy" class="size-full wp-image-286676" src="https://fivethirtyeight.com/wp-content/uploads/2020/10/drutman.NEGATIVE-PARTISANSHIP.0915.png" alt="" width="575" height="559" srcset="https://fivethirtyeight.com/wp-content/uploads/2020/10/drutman.NEGATIVE-PARTISANSHIP.0915.png?w=575 1x, https://fivethirtyeight.com/wp-content/uploads/2020/10/drutman.NEGATIVE-PARTISANSHIP.0915.png?w=1150 2x" /></figure>
		
<p>So how did we get to this point?</p>
<p>Broadly speaking, there are three trends that we can point to. The first is the <a href="https://press.uchicago.edu/ucp/books/book/chicago/I/bo27596045.html">steady nationalization</a> of American politics. The second is the <a href="https://www.amazon.com/Partisan-Sort-Democrats-Conservatives-Republicans-ebook/dp/B003C31OHK">sorting of Democrats and Republicans</a> along <a href="https://www.niskanencenter.org/the-density-divide-urbanization-polarization-and-populist-backlash/">urban/rural</a> and culturally liberal/culturally conservative lines, and the third is the <a href="https://fivethirtyeight.com/features/are-blowout-presidential-elections-a-thing-of-the-past/">increasingly narrow margins in national elections</a>.</p>
<p>The combination of these three trends has turned Washington, D.C., into a high-stakes battle where cross-party compromise is difficult, and both sides are increasingly holding out for complete control.</p>
<p>Sixty years ago, state and local politics loomed larger than they do now, which meant national parties operated more like loose labels whose main function was to come together every four years to argue over who should run for president under that party. As President Eisenhower reportedly quipped as late as 1950, “There is not one Republican Party, there are 48 state Republican parties.” The same was true of the Democratic Party at the time. By the 1970s, in fact, many political observers declared that <a href="https://www.theatlantic.com/magazine/archive/1972/03/the-partys-over/307016/">partisan politics had reached their end</a>, with <a href="https://www.jstor.org/stable/440412">split-ticket voting hitting</a> record-high levels as candidates successfully ran on <a href="https://www.hup.harvard.edu/catalog.php?isbn=9780674493285">local issues and pledges to better serve their constituents</a>.</p>
<p>But beneath the surface, the parties were realigning. The civil rights movement of the 1960s and the culture wars of the 1970s and 1980s not only <a href="https://www.amazon.com/Rise-Southern-Republicans-Earl-Black/dp/0674012488">turned conservative Democrats into Republicans</a> and <a href="https://www.amazon.com/Changing-Patterns-Voting-Northern-United/dp/0271017848/ref=sr_1_1?dchild=1&amp;keywords=Changing+Patterns+of+Voting+in+the+Northern+United+States&amp;qid=1601658254&amp;s=books&amp;sr=1-1">liberal northeastern Republicans into Democrats</a>, it also shifted the focus of politics such that Washington became the arbiter of national values. National parties <a href="https://global.oup.com/academic/product/building-a-business-of-politics-9780190217198?cc=us&amp;lang=en&amp;">began building up</a> major fundraising and campaign consultant-driven operations, helping to standardize their messaging so that it actually meant something to vote for a Democrat or a Republican.</p>
<p>Coupled with the steady <a href="https://www.poynter.org/business-work/2018/about-1300-u-s-communities-have-totally-lost-news-coverage-unc-news-desert-study-finds/">decline of local media,</a> this has resulted in a greater emphasis on national politics and less attention paid to local and state politics. Practically speaking, elections are increasingly viewed as referendums on the president and the party that controls the White House, leaving little room for individual members of Congress to <a href="https://fivethirtyeight.com/features/why-gop-senators-are-sticking-with-trump-even-though-it-might-hurt-them-in-november/">distinguish themselves from their national parties</a>.</p>
<p>This brings us to the second trend that has contributed to the rise of negative partisanship: sorting. The ideologies of the party were less hard and fast 40 years ago. The Republican Party had a significant share of moderates and liberals, the inheritors of a tradition of <a href="https://www.amazon.com/Rule-Ruin-Moderation-Destruction-Development-ebook/dp/B005UFCPHG">moderate good-government Yankee republicanism</a> that dated back to President Lincoln, and the Democratic Party once had a significant share of <a href="https://www.amazon.com/Southern-Democrats-Nicol-C-Rae/dp/0195087097">conservative populists from the South</a> and <a href="http://www.jstor.org/stable/1890413">the Great Plains</a>.</p>
<p>In this sense, American politics operated more like a four-party system, with jumbled liberal and conservative coalitions within and across the two parties. Senators and representatives’ distinct geographic outlooks mattered more than their parties, with complex coalitions of urban liberals and rural conservatives in both parties. However, as our politics became increasingly nationalized, the political sorting of the parties accelerated. The civil rights movement is the most obvious example of this: <a href="https://press.princeton.edu/books/hardcover/9780691153872/racial-realignment">Many in</a> <a href="https://www.amazon.com/Issue-Evolution-Transformation-American-Politics/dp/069102331X">political</a> <a href="http://www.jstor.org/stable/3647739">science</a> consider it the <a href="https://www.journals.uchicago.edu/doi/abs/10.2307/2131305">most significant issue</a> (though far from the only issue) <a href="https://www.amazon.com/Race-Campaign-Politics-Realignment-South/dp/0300077238">driving political sorting</a>, as it changed the center of gravity in both parties.</p>
<p>Today, it&#8217;s simply harder for voters to hold a viewpoint that doesn&#8217;t align with their party. For instance, there are far <a href="http://www.jstor.org/stable/2111673">fewer anti-abortion Democrats</a> or abortion-rights Republicans now than 30 years ago because these kinds of stances are unwelcome in the party. Some voters changed their party to match their beliefs; others changed their beliefs to match their party. But ultimately, both shifts contributed to the parties taking clearer and more distinct stances on a growing number of social issues, which led to more and more voters adjusting their views to match their partisanship.</p>
<p>Political scientists have called this process “<a href="http://journals.cambridge.org/article_S000305541000016X">conflict extension</a>.” The basic idea is that as more issues have become nationalized, partisan conflicts have broadened to absorb these issues. And as the parties have taken clearer national stances, particularly around cultural and identity-based issues, voters sort more clearly into parties based on these stances.</p>
<p>Cultural values are much more connected to geography than economic values. Both the rich and poor live in cities, suburbs and exurbs. But those who are socially liberal <a href="https://projects.fivethirtyeight.com/republicans-democrats-cities/">tend to live in cities</a>, whereas those who are socially conservative <a href="https://fivethirtyeight.com/features/purple-america-has-all-but-disappeared/">tend to inhabit small towns</a>. This partisan sorting on cultural issues has thus generated a significant <a href="https://www.niskanencenter.org/the-density-divide-urbanization-polarization-and-populist-backlash/">partisan density divide</a>. And because <a href="http://racialdotmap.demographics.coopercenter.org/">geography also corresponds to racial and ethnic diversity</a> (basically, cities are multicultural and exurbs are mostly white), this adds another division onto the partisan divide: race.</p>
<p>With all these identities accumulating on top of each other, partisanship has become a kind of “<a href="https://www.amazon.com/Uncivil-Agreement-Politics-Became-Identity/dp/022652454X/ref=sr_1_1?crid=3NOQLIOXSNR2&amp;dchild=1&amp;keywords=uncivil+agreement&amp;qid=1601559555&amp;s=books&amp;sprefix=uncivil+agre%2Cstripbooks%2C135&amp;sr=1-1">mega-identity</a>,” as political scientist Lilliana Mason argues, with party identification standing for much, much more. In fact, it’s reached the point that when you meet somebody, you can immediately size them up as a “Trump voter” or a “Biden voter.” That kind of easy stereotyping <a href="https://fivethirtyeight.com/features/democrats-are-wrong-about-republicans-republicans-are-wrong-about-democrats/">leads us to see the other party</a> as distant and different. And typically, things that are distant and different are also more threatening.</p>
<p>But neither side has come to dominate. Instead, America has experienced an extended period of national parity between the two parties. Elections have swung back and forth in an almost predictable pendulum fashion since 1992 — unified control of one party, divided government, unified control of the other party, and so forth, over and over.</p>
<p>This back and forth has defied predictions of permanent Republican and Democratic majorities, but the closeness of elections has kept such elusive predictions of total domination both tantalizingly within reach (for one side) and dangerously close (for the other side). Simultaneously, the swings in power have imparted the lesson that when you’re down, the best thing to do is demonize the other side, refuse to compromise, wait for public opinion to tack against the party in power and ride the pendulum back to a majority.</p>
<p>These contradictory impulses lead to a few <a href="https://www.washingtonpost.com/powerpost/congressional-course-corrections-create-washington-political-whiplash/2018/11/05/919116c8-e132-11e8-ab2c-b31dcd53ca6b_story.html">big policy swings</a> (consider the changes on health care and tax policy under the Trump administration) during periods of unified government, and increasingly, in executive branch activities. They also create gridlock elsewhere and lead to <a href="https://press.uchicago.edu/ucp/books/book/chicago/I/bo24732099.html">a politics of zero-sum messaging</a>, in which the party trying to win back the White House never has any incentive to compromise because it just blurs the message and helps the party in power seem more successful and legitimate. Thus, frustration — and the stakes of elections — keep rising.</p>
<p>Yet beneath the surface of hyper-partisan politics, the parties themselves actually have a lot of internal division, which means they share a version of the same dilemma: Republicans and Democrats can’t please <i>all </i>the different voters and groups who fall into their party and want <i>their</i> issue to be prioritized. But in a polarized two-party system, they can make it clear <a href="https://conferences.wcfia.harvard.edu/piep/publications/demonization">why the <i>other</i> party is bad</a>.</p>
<p>Coming into their convention, for instance, Democrats had to repair splits between the progressives and the moderates that were <a href="https://fivethirtyeight.com/features/the-six-wings-of-the-democratic-party/">visible during the presidential primary</a>. But the convention focused less on policy and <a href="https://www.nytimes.com/2020/08/21/us/politics/dnc-takeaways-biden-obama.html">more on the existential risk</a> presented by a second Trump term. The party reminded people that, whatever concerns they have about Biden, a vote for Biden is also a vote against Trump.</p>
<p>Republicans similarly focused on messaging against the Democrats (even if one of the reasons Trump emerged victorious in the 2016 primary was because the party <a href="https://gvpt.umd.edu/sites/gvpt.umd.edu/files/pubs/party-versus-faction-in-the-reformed-presidential-nominating-system.pdf">was so divided that it <i>couldn’t </i>decide</a>). Trump has <a href="https://fivethirtyeight.com/features/why-there-are-so-few-moderate-republicans-left/">remade the party in his image</a>, but even for the few remaining Trump-skeptic Republicans, nothing unites like a common enemy. And in a two-party system, being anti-anti-Trump counts the same as being pro-Trump.</p>
<p>If all of this seems unsustainable, it should. The current levels of hyper-partisanship are clearly dangerous. It’s bad news for a democracy when <a href="https://www.dannyhayes.org/uploads/6/9/8/5/69858539/kalmoe___mason_ncapsa_2019_-_lethal_partisanship_-_final_lmedit.pdf">60 to 70 percent of people</a> view fellow citizens of the other party as a serious threat. And the more the parties continue to unify their supporters by casting the other party as the enemy, the higher this number will rise.</p>
<p>There are two possible ways this ends. The first is the one we all fear — the unwinding of our democracy, because one or both sides hate each other so much that they are willing to support anti-democratic and authoritarian leadership in order to maintain power. (This is the threat <a href="https://www.politico.com/story/2016/03/democrats-donald-trump-alarm-220910">Democrats</a> have explicitly <a href="https://thehill.com/homenews/administration/512862-obama-casts-trump-as-threat-to-democracy">raised</a> in recent months.)</p>
<p>The other scenario is a major realignment and/or a collapse of one (or both) of the two major parties, which could reorient American political coalitions and resurrect some of the overlaps of an earlier era. The growing partisan hatreds and the forces driving them have been a long time in the making. It’s possible <a href="https://foreignpolicy.com/2020/09/22/two-party-collapse-republican-democrat-doom-loop/">they are coming to an end.</a> But more than any other time in the last century and a half, they are testing the very foundations of American democracy.</p>
						</div><!-- .entry-content -->
					</article>
				</div>
				<div id="article-additional">
					<div class="mini-bio">
		<p>Lee Drutman is a senior fellow in the Political Reform program at New America. He&#8217;s the author of the book, &#8220;Breaking the Two-Party Doom Loop: The Case for Multiparty Democracy in America.&#8221; <span class="mail"><a href="mailto:drutman@newamerica.org"><i class="icon icon-mail"></i></a></span> <span class="twitter"><a href="https://twitter.com/leedrutman" target="_blank"><i class="icon icon-twitter"></i> <span class="twitter-username">@leedrutman</span></a></span></p>
</div>
<!-- .post-author -->
<div id="entry-comments" class="fte-expandable">
	<h3 class="fte-expandable-title">Comments</h3>

	<div class="entry-comments-content fte-expandable-content">
		<div class="fb-comments" data-href="http://fivethirtyeight.com/?post_type=fte_features&#038;p=286546" data-numposts="5" data-colorscheme="light"
														></div>
	</div>
	<!-- .entry-comments-content -->
</div>
<!-- .entry-comments -->
<div id="taboola-286546" class="taboola-placeholder taboola-recommendations" data-src="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/" data-mode="thumbnails-a" data-placement="Below Article Thumbnails"></div><div class="tags">
	<p class="filed-under">Filed under</p>
	<p class="tag-links"><a class="tag" href="https://fivethirtyeight.com/tag/donald-trump/">Donald Trump <span class="count">(1400 posts)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/2020-election/">2020 Election <span class="count">(1013)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/joe-biden/">Joe Biden <span class="count">(430)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/republicans/">Republicans <span class="count">(167)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/political-science/">Political Science <span class="count">(125)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/democrats/">Democrats <span class="count">(92)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/partisanship/">Partisanship <span class="count">(54)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/democracy/">Democracy <span class="count">(5)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/authoritarianism/">Authoritarianism <span class="count">(2)</span></a>
<a class="tag" href="https://fivethirtyeight.com/tag/negative-partisanship/">Negative Partisanship <span class="count">(1)</span></a>
</p>
</div>
				</div>
			</div>
			<div class="single-feature__col">
				<div id="secondary" class="single-col vertical-col blog-col">

	<div class="sidebar-feature visually-hidden"><aside id="espn-taboola-3" class="widget espn-taboola-recommendation"><div id="taboola-286546-top-recommendation" class="taboola-placeholder taboola-recommendations" data-src="https://fivethirtyeight.com/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/" data-mode="organic-text-links-a" data-placement="Organic Right Rail Links"></div></aside><aside id="dtci-a9-ad-5" class="widget a9-sidebar-ad"><div id="ad-A9InContent-1" class="ad-a9incontent" data-defer="none"></div></aside><aside id="fivethirtyeight-embed-160" class="widget flexible interactives embed "><h2 class="widget-title">Interactives</h2>
					<iframe id="pym-fivethirtyeight_embed_160" title="How Popular Is Donald Trump?" src="https://projects.fivethirtyeight.com/trump-approval-ratings/promo.html" width="200" height="300" scrolling="no"></iframe>
			</aside>

		<aside id="fivethirtyeight-newsletter-84" class="widget flexible newsletter-subscription">
			<h2 class="widget-title">Newsletter</h2>
			<div class="newsletter-subscribe weekly">
	<div class="envelope"></div>

	<div class="outer-wrapper">
		<h4>Want more FiveThirtyEight? Get our weekly most popular stories newsletter.</h4>
		<div class="subscribed hidden">
	You are now subscribed!
</div>

<div class="newsletter-form-wrapper">
	<div class="newsletter-form">
		<div class="errors hidden"></div>
		<div class="inputs">
			<input type="hidden" name="nl" value="FiveThirtyEight_-_Top_Stories_N" data-newsletter="FiveThirtyEight Top Stories">
			<input class="newsletter-input email-address" aria-label="Email Address" placeholder="Email address" type="email" name="email">
			<button aria-label="Subscribe" class="subscribe-action button" type="submit" name="Sign me up">Sign me up</button>
		</div>
		<p class="all"><a href="https://fivethirtyeight.com/newsletters/">See all newsletters</a></p>
		<p class="newsletter-agreement"></p>
	</div>
</div>
	</div>
</div>
		</aside>
		<aside id="fivethirtyeight-embed-336" class="widget flexible interactives embed ">
					<iframe id="pym-fivethirtyeight_embed_336" title="How To Vote" src="https://projects.fivethirtyeight.com/how-to-vote-2020/promo.html" width="300" height="264" scrolling="no"></iframe>
			</aside>

<aside id="dtci-sidaebar-ad-23" class="widget gpt-sidebar-ad"><div id="ad-InContent" class="ad-incontent" data-defer="none"></div></aside><aside id="fivethirtyeight-embed-273" class="widget flexible interactives embed ">
					<iframe id="pym-fivethirtyeight_embed_273" title="2020 Election Forecast" src="https://projects.fivethirtyeight.com/2020-election-forecast/promo.html" width="300" height="280" scrolling="no"></iframe>
			</aside>

</div></div><!-- #secondary -->
			</div>
		</div>
	</div><!-- .single -->

	

	</div><!-- #wrapper .site-wrapper -->
	</div><!-- .site-main -->

<footer id="colophon" class="site-footer">

	<div class="site-wrapper footer-main-content">

		<div class="footer-section-get-more">
			Get more FiveThirtyEight		</div>

		<div class="footer-section-primary-links">
			<ul class="footer-menu">
				<li class="footer-menu-item">
					<a href="https://cottonbureau.com/stores/fivethirtyeight#/shop" name="&amp;lpos=fivethirtyeightFooter&amp;lid=store">Store</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://fivethirtyeight.com/newsletter/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=newsletter">Newsletter</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://twitter.com/fivethirtyeight" name="&amp;lpos=fivethirtyeightFooter&amp;lid=twitter">Twitter</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://www.facebook.com/fivethirtyeight" name="&amp;lpos=fivethirtyeightFooter&amp;lid=facebook">Facebook</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://data.fivethirtyeight.com/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=data">Data</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://fivethirtyeight.com/features/fear-not-readers-we-have-rss-feeds/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=rss">RSS</a>
				</li>
			</ul>
		</div><!-- .footer-primary-links -->

		<div class="footer-section-social-follow">
			<ul class="footer-menu">
				<li class="footer-menu-item social-share-item">
					<div class="fb-like" data-href="https://www.facebook.com/fivethirtyeight" data-layout="button_count"></div>
				</li>
				<li class="footer-menu-item social-share-item">
					<a href="https://twitter.com/FiveThirtyEight" class="twitter-follow-button" data-show-count="true">Follow @FiveThirtyEight</a>
				</li>
			</ul>
		</div>

		<div class="footer-section-secondary-links">
			<ul class="footer-menu">
				<li class="footer-menu-item">
					<a href="https://fivethirtyeight.com/contact/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=contact">Contact</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://fivethirtyeight.com/tag/fivethirtyeight-jobs/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=jobs">Jobs</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://fivethirtyeight.com/masthead/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=masthead">Masthead</a>
				</li>
				<li class="footer-menu-item">
					<a href="http://priv-policy.imrworldwide.com/priv/browser/us/en/optout.html" name="&amp;lpos=fivethirtyeightFooter&amp;lid=nielsen">About Nielsen Measurement</a>
				</li>
				<li class="footer-menu-item">
					<a href="https://disneyadsales.com/our-brands/abc-news/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=advertise">Advertise With Us</a>
				</li>
			</ul>
		</div><!-- .footer-secondary-links -->

		<div class="footer-section-powered-by">
			Powered by <a href="https://wpvip.com/?utm_source=vip_powered_wpcom&#038;utm_medium=web&#038;utm_campaign=VIP%20Footer%20Credit&#038;utm_term=fivethirtyeight.com" rel="generator nofollow" class="powered-by-wpcom">WordPress.com VIP</a>		</div><!-- .powered-by -->

		<div class="footer-section-tertiary-links">
			<ul class="footer-menu">
				<li class="menu-item">
					<a href="https://disneytermsofuse.com/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=disneyTOS" target="_blank" rel="noopener noreferrer">Terms of Use</a>
				</li>
				<li class="menu-item">
					<a href="https://disneyprivacycenter.com/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=disneyPrivacy" target="_blank" rel="noopener noreferrer">Privacy Policy</a>
				</li>
				<li class="menu-item">
					<a href="https://privacy.thewaltdisneycompany.com/en/dnsmi/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=doNotSell" target="_blank" rel="noopener noreferrer">Do Not Sell My Info</a>
				</li>
				<li class="menu-item">
					<a href="https://disneyprivacycenter.com/notice-to-california-residents/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=californiaPrivacyRights" target="_blank" rel="noopener noreferrer">Your California Privacy Rights</a>
				</li>
				<li class="menu-item">
					<a href="https://disneyprivacycenter.com/kids-privacy-policy/english/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=childrensPrivacy" target="_blank" rel="noopener noreferrer">Children's Online Privacy Policy</a>
				</li>
				<li class="menu-item">
					<a href="https://preferences-mgr.truste.com/?type=abcnews&affiliateId=11&cid=clicksource_4380645_footer_interestbasedads" name="&amp;lpos=fivethirtyeightFooter&amp;lid=adPreferences" target="_blank" rel="noopener noreferrer">Interest-Based Ads</a>
				</li>
			</ul>
			<p>
				&copy; 2020 ABC News Internet Ventures. All rights reserved.
			</p>
		</div>
		<!-- / .footer-section-tertiary-links -->
	</div><!-- .site-wrapper -->

	<div class="footer-section-additional-info" id="footer-additional-info">
		<div class="site-wrapper">
			<button class="close-additional-info" id="close-additional-info" aria-label="Close"><span class="visually-hidden">Close Additional Information</span></button>
			<a href="https://disneytermsofuse.com/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=disneyTOS">Terms of Use</a> and <a href="https://disneyprivacycenter.com/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=disneyPrivacy">Privacy Policy</a> and Safety Information/<a href="https://disneyprivacycenter.com/notice-to-california-residents/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=californiaPrivacyRights">Your California Privacy Rights</a>/<a href="https://disneyprivacycenter.com/kids-privacy-policy/english/" name="&amp;lpos=fivethirtyeightFooter&amp;lid=childrensPrivacy">Children's Online Privacy Policy</a> are applicable to you. © 2020 ABC News Internet Ventures. All rights reserved. <a href="https://preferences-mgr.truste.com/?type=abcnews&affiliateId=11&cid=clicksource_4380645_footer_interestbasedads" name="&amp;lpos=fivethirtyeightFooter&amp;lid=adPreferences">Interest-Based Ads</a>. <a href="https://disneyprivacycenter.com/cookies-policy-translations/cookies-policy/">Cookie Policy</a>.
		</div><!-- .site-wrapper -->
	</div><!-- .footer-section-additional-info -->
</footer><!-- .site-footer -->
	<div id="sharing_email" style="display: none;">
		<form action="/features/how-hatred-negative-partisanship-came-to-dominate-american-politics/?cid=social_twitter_abcn" method="post">
			<label for="target_email">Send to Email Address</label>
			<input type="email" name="target_email" id="target_email" value="" />

			
				<label for="source_name">Your Name</label>
				<input type="text" name="source_name" id="source_name" value="" />

				<label for="source_email">Your Email Address</label>
				<input type="email" name="source_email" id="source_email" value="" />

						<input type="text" id="jetpack-source_f_name" name="source_f_name" class="input" value="" size="25" autocomplete="off" title="This field is for validation and should not be changed" />
			
			<img style="float: right; display: none" class="loading" src="https://fivethirtyeight.com/wp-content/mu-plugins/jetpack-9.0/modules/sharedaddy/images/loading.gif" alt="loading" width="16" height="16" />
			<input type="submit" value="Send Email" class="sharing_send" />
			<a rel="nofollow" href="#cancel" class="sharing_cancel" role="button">Cancel</a>

			<div class="errors errors-1" style="display: none;">
				Post was not sent - check your email addresses!			</div>

			<div class="errors errors-2" style="display: none;">
				Email check failed, please try again			</div>

			<div class="errors errors-3" style="display: none;">
				Sorry, your blog cannot share posts by email.			</div>
		</form>
	</div>
<script id='wp-util-js-extra'>
var _wpUtilSettings = {"ajax":{"url":"\/wp-admin\/admin-ajax.php"}};
</script>
<script id='fte-main-js-extra'>
var ESPNSocial = {"fbVersion":"6.0","fbAppId":"797620670264818"};
</script>
<script id='dtci-ads-js-extra'>
var DTCIAdConfig = {"adSlotsToRefresh":["Banner","InContent","OutStream"],"adUnitPath":"\/21783347309\/abc-news\/fivethirtyeight.com\/web\/politics","placements":{"Banner":{"out-of-page":false,"sizes":[[970,250],[970,66],[728,90],[320,50],[300,50]],"defer":"none"},"InContent":{"out-of-page":false,"sizes":[[300,250],[300,600]],"defer":"none"},"A9InContent":{"out-of-page":false,"sizes":[[300,250],[300,600]],"defer":"none"},"OutStream":{"out-of-page":false,"sizes":[[1,3]],"defer":"none"}},"slots":{"Banner":[],"InContent":[],"A9InContent":[],"OutStream":[]},"mappings":{"Banner":[[[1280,100],[[970,250],[970,66],[728,90]]],[[1024,100],[[970,250],[970,66],[728,90]]],[[768,100],[[728,90]]],[[0,0],[[320,50],[300,50]]]],"InContent":[[[0,0],[]],[[768,50],[300,250]]]},"targeting":{"sp":"fivethirtyeight","objid":"286546","lang":"en","devType":"desktop","tag":["2020-election","authoritarianism","democracy","democrats","donald-trump","joe-biden","negative-partisanship","partisanship","political-science","republicans"]},"devType":"desktop","referringSite":null,"referralMap":{"facebook.com":"facebook","twitter.com":"twitter","t.co":"twitter","google.com":"google","bing.com":"bing","yahoo.com":"yahoo","www.espn.com":"espn","espn.com":"espn","instagram.com":"instagram","reddit.com":"reddit","bleacherreport.com":"bleacherreport","tumblr.com":"tumblr","t.umblr.com":"tumblr","pinterest.com":"pinterest","fivethirtyeight.com":"fivethirtyeight","grantland.com":"grantland","theundefeated.com":"theundefeated"},"useOverlay":"0","refreshSimulatenously":"1","disableInitialLoad":"1","a9id":"3899","a9Params":{"si_section":"politics","section":"story"}};
</script>
<script type='text/javascript' src='https://fivethirtyeight.com/_static/??-eJyVkN0OgjAMhV/IsRgDhgvjs4ytQHF/oZ2Gt3dRLxZEjZen53w5beUtCh08g2cZbRrQk1SdFioZDKIHxWmGPCICJjmR7GzQF6oc+mqindzADWsUz9g794EZsBfRqkV0iTn4gls5ZTF6bZOBRyzLxGi39uIRXA4BRS96vAKPOPMCOIxc9KycLz3gOjA/H6BMeX1W/xLtCzi7075u22PT7OvDdAexEqBK'></script>
<script id='sharing-js-js-extra'>
var sharing_js_options = {"lang":"en","counts":"","is_stats_active":"1"};
</script>
<script src='https://fivethirtyeight.com/wp-content/mu-plugins/jetpack-9.0/_inc/build/sharedaddy/sharing.min.js?ver=9.0.2' id='sharing-js-js'></script>
<script id='sharing-js-js-after'>
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-facebook', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomfacebook', 'menubar=1,resizable=1,width=600,height=400' );
				return false;
			});
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-twitter', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomtwitter', 'menubar=1,resizable=1,width=600,height=350' );
				return false;
			});
</script>
<script type='text/javascript' src='https://stats.wp.com/e-202042.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:9.0.2',blog:'144970551',post:'286546',tz:'-4',srv:'fivethirtyeight.com'} ]);
	_stq.push([ 'clickTrackerInit', '144970551', '286546' ]);
</script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","licenseKey":"f6169b8cc4","applicationID":"100041457","transactionName":"bwcDZBYEW0ZVVhEMXVZNIFMQDFpbG0YMC1VUB0xWEABqU1FUERBAXRE=","queueTime":0,"applicationTime":366,"atts":"Q0AUEl4eSBkWVEdfSUUf","errorBeacon":"bam-cell.nr-data.net","agent":""}</script></body>
</html>
