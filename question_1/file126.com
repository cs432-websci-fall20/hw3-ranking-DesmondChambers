<!DOCTYPE html>
<html lang="en-us" prefix="og: http://ogp.me/ns#"  lang="en-us" xml:lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
    <meta name="applicable-device" content="pc,mobile" />

    
<meta name="web-experience-app/config/environment" content="%7B%22appVersion%22%3A1%2C%22modulePrefix%22%3A%22web-experience-app%22%2C%22environment%22%3A%22production%22%2C%22rootURL%22%3A%22%2F%22%2C%22locationType%22%3A%22history-hash-router-scroll%22%2C%22historySupportMiddleware%22%3Atrue%2C%22contentSecurityPolicyMeta%22%3Atrue%2C%22contentSecurityPolicy%22%3A%7B%22default-src%22%3A%5B%22'none'%22%5D%2C%22img-src%22%3A%5B%22'self'%22%2C%22http%3A%2F%2F*.mzstatic.com%22%2C%22*.mzstatic.com%22%2C%22*.apple.com%22%2C%22*.googleusercontent.com%22%2C%22data%3A%22%5D%2C%22style-src%22%3A%5B%22'self'%22%2C%22'unsafe-inline'%22%2C%22*.apple.com%22%5D%2C%22font-src%22%3A%5B%22'self'%22%2C%22http%3A%2F%2F*.apple.com%22%2C%22https%3A%2F%2F*.apple.com%22%5D%2C%22media-src%22%3A%5B%22'self'%22%2C%22blob%3A%22%2C%22http%3A%2F%2F*%22%2C%22https%3A%2F%2F*%22%5D%2C%22connect-src%22%3A%5B%22'self'%22%2C%22*.apple.com%22%2C%22https%3A%2F%2F*.mzstatic.com%22%2C%22*.mzstatic.com%22%5D%2C%22script-src%22%3A%5B%22'self'%22%2C%22'unsafe-inline'%22%2C%22'unsafe-eval'%22%2C%22*.apple.com%22%5D%2C%22frame-src%22%3A%5B%22'self'%22%2C%22*.apple.com%22%2C%22itmss%3A%22%2C%22itms-appss%3A%22%2C%22itms-bookss%3A%22%2C%22itms-itunesus%3A%22%2C%22itms-messagess%3A%22%2C%22itms-podcasts%3A%22%2C%22itms-watchs%3A%22%2C%22macappstores%3A%22%2C%22musics%3A%22%2C%22apple-musics%3A%22%2C%22podcasts%3A%22%2C%22videos%3A%22%5D%7D%2C%22EmberENV%22%3A%7B%22FEATURES%22%3A%7B%7D%2C%22EXTEND_PROTOTYPES%22%3A%7B%22Date%22%3Afalse%7D%2C%22_APPLICATION_TEMPLATE_WRAPPER%22%3Afalse%2C%22_DEFAULT_ASYNC_OBSERVERS%22%3Afalse%2C%22_JQUERY_INTEGRATION%22%3Atrue%2C%22_TEMPLATE_ONLY_GLIMMER_COMPONENTS%22%3Atrue%7D%2C%22APP%22%3A%7B%22PROGRESS_BAR_DELAY%22%3A3000%2C%22DISPLAY_SILICON_BADGING%22%3Afalse%2C%22name%22%3A%22web-experience-app%22%2C%22version%22%3A%222042.6.0%2Bca755314%22%7D%2C%22MEDIA_API%22%3A%7B%22teamId%22%3A%228CU26MKLS4%22%2C%22keyId%22%3A%22CRF5HNBGPQ%22%2C%22privateKeyPath%22%3A%22ssl%2Fmedia_api_clientside_only.prod.key%22%2C%22ttl%22%3A3024000%2C%22token%22%3A%22eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkNSRjVITkJHUFEifQ.eyJpc3MiOiI4Q1UyNk1LTFM0IiwiaWF0IjoxNjAyODc2NjI1LCJleHAiOjE2MDU5MDA2MjV9.WZWQlA6mss18yXnlcdQYO-qCHOyMm94UcA_FLOG2rPf9VZFEWf4o9-WESJxZzWrjxecszCrQ7Zrv_t-K1r8WXA%22%7D%2C%22MEDIA_ARTWORK%22%3A%7B%22WEBP%22%3A%7B%22app.index%22%3A%7B%22requiresQueryParam%22%3Afalse%7D%2C%22app-bundle.index%22%3A%7B%22requiresQueryParam%22%3Afalse%7D%2C%22story.index%22%3A%7B%22requiresQueryParam%22%3Afalse%7D%2C%22audiobook.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22book.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22podcast.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22podcast-episode.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22episode.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22movie.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22music-movie.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22music-video.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22show.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22tv-season.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%2C%22video.index%22%3A%7B%22requiresQueryParam%22%3Atrue%7D%7D%7D%2C%22routerScroll%22%3A%7B%22targetElement%22%3A%22%23ember-app%22%7D%2C%22i18n%22%3A%7B%22defaultLocale%22%3A%22en-gb%22%2C%22useDevLoc%22%3Afalse%2C%22pathToLocales%22%3A%22dist%2Flocales%22%7D%2C%22moment%22%3A%7B%22includeLocales%22%3Atrue%2C%22includeTimezone%22%3A%22subset%22%7D%2C%22browserify%22%3A%7B%22transform%22%3A%5B%5B%22babelify%22%2C%7B%22presets%22%3A%5B%22env%22%5D%2C%22global%22%3Atrue%2C%22only%22%3A%7B%7D%7D%5D%5D%7D%2C%22API%22%3A%7B%22AppHost%22%3A%22https%3A%2F%2Famp-api.apps.apple.com%22%2C%22MZStore%22%3A%22https%3A%2F%2Fitunes.apple.com%22%2C%22PodcastHost%22%3A%22https%3A%2F%2Famp-api.podcasts.apple.com%22%2C%22StorePlatform%22%3A%22https%3A%2F%2Fuclient-api.itunes.apple.com%2FWebObjects%2FMZStorePlatform.woa%2Fwa%22%2C%22BookHost%22%3A%22https%3A%2F%2Famp-api.books.apple.com%22%2C%22globalElementsPath%22%3A%22%2Fglobal-elements%22%2C%22videoLocalizationPath%22%3A%22%2Fglobal%2Fac_media_player%2Fscripts%2Fac_media_languages%2F%22%2C%22appleAppsDomain%22%3A%22apps.apple.com%22%2C%22applePodcastsDomain%22%3A%22podcasts.apple.com%22%2C%22appleBooksDomain%22%3A%22books.apple.com%22%2C%22appleMusicDomain%22%3A%22music.apple.com%22%2C%22obcMetadataBaseUrl%22%3A%22%2Fapi%2Fbooks-metadata%22%7D%2C%22fastboot%22%3A%7B%22hostWhitelist%22%3A%5B%7B%7D%5D%7D%2C%22ember-a11y-testing%22%3A%7B%22componentOptions%22%3A%7B%22turnAuditOff%22%3Atrue%2C%22axeOptions%22%3A%7B%22rules%22%3A%7B%22color-contrast%22%3A%7B%22enabled%22%3Afalse%7D%7D%7D%7D%7D%2C%22ember-short-number%22%3A%7B%22locales%22%3A%5B%22ar-dz%22%2C%22ar-bh%22%2C%22ar-eg%22%2C%22ar-iq%22%2C%22ar-jo%22%2C%22ar-kw%22%2C%22ar-lb%22%2C%22ar-ly%22%2C%22ar-ma%22%2C%22ar-om%22%2C%22ar-qa%22%2C%22ar-sa%22%2C%22ar-sd%22%2C%22ar-sy%22%2C%22ar-tn%22%2C%22ar-ae%22%2C%22ar-ye%22%2C%22he-il%22%2C%22iw-il%22%2C%22ca-es%22%2C%22cs-cz%22%2C%22da-dk%22%2C%22de-ch%22%2C%22de-de%22%2C%22el-gr%22%2C%22en-au%22%2C%22en-ca%22%2C%22en-gb%22%2C%22en-us%22%2C%22es-419%22%2C%22es-es%22%2C%22es-mx%22%2C%22es-xl%22%2C%22et-ee%22%2C%22fi-fi%22%2C%22fr-ca%22%2C%22fr-fr%22%2C%22hi-in%22%2C%22hr-hr%22%2C%22hu-hu%22%2C%22id-id%22%2C%22is-is%22%2C%22it-it%22%2C%22iw-il%22%2C%22ja-jp%22%2C%22ko-kr%22%2C%22lt-lt%22%2C%22lv-lv%22%2C%22ms-my%22%2C%22nl-nl%22%2C%22no-no%22%2C%22no-nb%22%2C%22nb-no%22%2C%22pl-pl%22%2C%22pt-br%22%2C%22pt-pt%22%2C%22ro-ro%22%2C%22ru-ru%22%2C%22sk-sk%22%2C%22sv-se%22%2C%22th-th%22%2C%22tr-tr%22%2C%22uk-ua%22%2C%22vi-vi%22%2C%22vi-vn%22%2C%22zh-cn%22%2C%22zh-hans%22%2C%22zh-hant%22%2C%22zh-hk%22%2C%22zh-tw%22%2C%22ar%22%2C%22ca%22%2C%22cs%22%2C%22da%22%2C%22de%22%2C%22el%22%2C%22en%22%2C%22es%22%2C%22fi%22%2C%22fr%22%2C%22hi%22%2C%22hr%22%2C%22hu%22%2C%22id%22%2C%22is%22%2C%22it%22%2C%22ja%22%2C%22ko%22%2C%22lt%22%2C%22lv%22%2C%22ms%22%2C%22nb%22%2C%22nl%22%2C%22no%22%2C%22pl%22%2C%22pt%22%2C%22ro%22%2C%22ru%22%2C%22sk%22%2C%22sv%22%2C%22th%22%2C%22tr%22%2C%22uk%22%2C%22vi%22%2C%22zh%22%5D%7D%2C%22METRICS%22%3A%7B%22appName%22%3A%22web-experience-app%22%2C%22autoTrackingEnabled%22%3Atrue%2C%22constraintProfile%22%3A%22AMPWeb%22%2C%22delegate%22%3A%22web%22%2C%22isEnabled%22%3Atrue%2C%22topic%22%3A%22xp_amp_web_exp%22%2C%22url%22%3A%22https%3A%2F%2Fxp.apple.com%2Freport%22%7D%2C%22MEDIA_SHELF%22%3A%7B%22GRID_CONFIG%22%3A%7B%22books-brick-row%22%3A%7B%22small%22%3A1%2C%22medium%22%3A2%2C%22large%22%3A3%7D%7D%2C%22MEDIA_QUERIES%22%3A%7B%22small%22%3A%22(max-width%3A%20734px)%22%2C%22medium%22%3A%22(min-width%3A%20735px)%20and%20(max-width%3A%201068px)%22%2C%22large%22%3A%22(min-width%3A%201069px)%22%7D%7D%2C%22contentSecurityPolicyHeader%22%3A%22Content-Security-Policy-Report-Only%22%2C%22exportApplicationGlobal%22%3Afalse%7D" />
<meta http-equiv="Content-Security-Policy" content="default-src 'none'; img-src 'self' http://*.mzstatic.com *.mzstatic.com *.apple.com *.googleusercontent.com data:; style-src 'self' 'unsafe-inline' *.apple.com; font-src 'self' http://*.apple.com https://*.apple.com; media-src 'self' blob: http://* https://*; connect-src 'self' *.apple.com https://*.mzstatic.com *.mzstatic.com; script-src 'self' 'unsafe-inline' 'unsafe-eval' *.apple.com; frame-src 'self' *.apple.com itmss: itms-appss: itms-bookss: itms-itunesus: itms-messagess: itms-podcasts: itms-watchs: macappstores: musics: apple-musics: podcasts: videos:; ">
<!-- EMBER_CLI_FASTBOOT_TITLE --><link rel="stylesheet" name="fonts" href="//www.apple.com/wss/fonts?families=SF+Pro,v2|SF+Pro+Icons,v1|SF+Pro+Rounded,v1|New+York+Small,v1|New+York+Medium,v1" as="style" onload="undefined">  <meta name="ember-cli-head-start" content><title>‎Writr on the App Store</title>
<link rel="canonical" href="https://apps.apple.com/us/app/writr/id831996132">
  <meta name="description" content="‎Read reviews, compare customer ratings, see screenshots, and learn more about Writr. Download Writr and enjoy it on your iPhone, iPad, and iPod touch." id="ember3437096" class="ember-view">

  <meta name="keywords" content="Writr, Ikaroa, Music, Productivity, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes" id="ember3437098" class="ember-view">

  <meta property="og:title" content="‎Writr" id="ember3437100" class="ember-view">

  <meta property="og:description" content="‎Let's keep this simple, if you're a songwriter or poet, you need this app. It's free, try it, thank us later.

&quot;Love the app.. as a songwriter, this comes in handy for those days I get writer's block or need an extra bonus in vocabulary when writing my songs.&quot; - Christina

Also available for iPad." id="ember3437102" class="ember-view">

  <meta property="og:site_name" content="App Store" id="ember3437104" class="ember-view">

  <meta property="og:url" content="https://apps.apple.com/us/app/writr/id831996132" id="ember3437106" class="ember-view">

  <meta property="og:image" content="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/1200x630wa.png" id="ember3437108" class="ember-view">

  <meta property="og:image:alt" content="Writr on the App Store" id="ember3437110" class="ember-view">

  <meta property="og:image:secure_url" content="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/1200x630wa.png" id="ember3437112" class="ember-view">

  <meta property="og:image:type" content="image/png" id="ember3437114" class="ember-view">

  <meta property="og:image:width" content="1200" id="ember3437116" class="ember-view">

  <meta property="og:image:height" content="630" id="ember3437118" class="ember-view">

  <meta property="og:type" content="website" id="ember3437120" class="ember-view">

  <meta property="og:locale" content="en_US" id="ember3437122" class="ember-view">

  <meta property="fb:app_id" content="116556461780510" id="ember3437124" class="ember-view">

  <meta name="twitter:title" content="‎Writr" id="ember3437126" class="ember-view">

  <meta name="twitter:description" content="‎Let's keep this simple, if you're a songwriter or poet, you need this app. It's free, try it, thank us later.

&quot;Love the app.. as a songwriter, this comes in handy for those days I get writer's block or need an extra bonus in vocabulary when writing my songs.&quot; - Christina

Also available for iPad." id="ember3437128" class="ember-view">

  <meta name="twitter:site" content="@AppStore" id="ember3437130" class="ember-view">

  <meta name="twitter:domain" content="AppStore" id="ember3437132" class="ember-view">

  <meta name="twitter:image" content="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/600x600wa.png" id="ember3437134" class="ember-view">

  <meta name="twitter:image:alt" content="Writr on the App Store" id="ember3437136" class="ember-view">

  <meta name="twitter:card" content="summary_large_image" id="ember3437138" class="ember-view">

  <meta name="apple-itunes-app" content="app-id=375380948, app-argument=https://apps.apple.com/us/app/writr/id831996132" id="ember3437140" class="ember-view">

  <script name="schema:software-application" id="ember3437142" class="ember-view" type="application/ld+json">{"@context":"http://schema.org","@type":"SoftwareApplication","name":"Writr","description":"Let's keep this simple, if you're a songwriter or poet, you need this app. It's free, try it, thank us later.\n\n\"Love the app.. as a songwriter, this comes in handy for those days I get writer's block or need an extra bonus in vocabulary when writing my songs.\" - Christina\n\nAlso available for iPad.","screenshot":["https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/300x0w.jpg","https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/300x0w.jpg","https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/300x0w.jpg","https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/300x0w.jpg","https://is5-ssl.mzstatic.com/image/thumb/Purple118/v4/a2/70/8f/a2708f17-9cfc-51b1-af10-71df7e40dcb7/mzl.yrddybih.jpg/643x0w.jpg","https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/98/e7/1c/98e71c61-ee71-ee49-a7c5-3ec5b05aafc2/mzl.ikvpdtvg.jpg/643x0w.jpg","https://is2-ssl.mzstatic.com/image/thumb/Purple128/v4/d4/8f/43/d48f435a-c64b-1d23-cd17-ec22a62f4833/mzl.cewimbck.jpg/643x0w.jpg","https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/0c/b1/e4/0cb1e49c-090f-4dbc-2158-c7307a7f8b8d/mzl.wvfmmnyn.jpg/643x0w.jpg"],"image":"https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/1200x630wa.png","applicationCategory":"Music","datePublished":"Mar 11, 2014","operatingSystem":"Requires iOS 8.0 or later. Compatible with iPhone, iPad, and iPod touch.","author":{"@type":"Person","name":"Ikaroa","url":"https://apps.apple.com/us/developer/ikaroa/id1522274055"},"aggregateRating":{"@type":"AggregateRating","ratingValue":4.8,"reviewCount":377},"offers":{"@type":"Offer","price":0,"priceCurrency":"USD","category":"free"}}
</script>
  <meta name="apple:content_id" content="831996132" id="ember3437144" class="ember-view">


<meta name="ember-cli-head-end" content>
<link rel="stylesheet" type="text/css" href="/global-elements/2038.1.0/en_US/ac-global-nav.d915b46b2869cd416cbafe206ca74838.css" data-global-elements-nav-styles>
<link rel="stylesheet" type="text/css" href="/global-elements/2038.1.0/en_US/ac-global-footer.d713eba21fcb738bf79174829d8d8f93.css" data-global-elements-footer-styles>

    <meta name="version" content="2042.6.0">

    <link integrity="" rel="stylesheet" href="/assets/web-experience-app-684c08beb9f1c21df59599f9b0082ef9.css" data-rtl="/assets/web-experience-rtl-app-c9d03da5be93dbb4ddb1b5b57f2ba0c5.css">

    
  </head>
  <body class="no-js no-touch">
    <div id="ember-app">
      <script type="x/boundary" id="fastboot-body-start"></script><aside id="ac-gn-segmentbar" class="ac-gn-segmentbar" lang="en-US" dir="ltr" data-strings="{ &apos;exit&apos;: &apos;Exit&apos;, &apos;view&apos;: &apos;{%STOREFRONT%} Store Home&apos;, &apos;segments&apos;: { &apos;smb&apos;: &apos;Business Store Home&apos;, &apos;eduInd&apos;: &apos;Education Store Home&apos;, &apos;other&apos;: &apos;Store Home&apos; } }">
</aside>
<input type="checkbox" id="ac-gn-menustate" class="ac-gn-menustate">
<nav id="ac-globalnav" class="no-js" role="navigation" aria-label="Global" data-hires="false" data-analytics-region="global nav" lang="en-US" dir="ltr" data-www-domain="www.apple.com" data-store-locale="us" data-store-root-path="/us" data-store-api="https://www.apple.com/[storefront]/shop/bag/status" data-search-locale="en_US" data-search-suggestions-api="https://www.apple.com/search-services/suggestions/" data-search-defaultlinks-api="https://www.apple.com/search-services/suggestions/defaultlinks/">
	<div class="ac-gn-content">
		<ul class="ac-gn-header">
			<li class="ac-gn-item ac-gn-menuicon">
				<label class="ac-gn-menuicon-label" for="ac-gn-menustate" aria-hidden="true">
					<span class="ac-gn-menuicon-bread ac-gn-menuicon-bread-top">
						<span class="ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-top"></span>
					</span>
					<span class="ac-gn-menuicon-bread ac-gn-menuicon-bread-bottom">
						<span class="ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-bottom"></span>
					</span>
				</label>
				<a href="#ac-gn-menustate" role="button" class="ac-gn-menuanchor ac-gn-menuanchor-open" id="ac-gn-menuanchor-open">
					<span class="ac-gn-menuanchor-label">Global Nav Open Menu</span>
				</a>
				<a href="#" role="button" class="ac-gn-menuanchor ac-gn-menuanchor-close" id="ac-gn-menuanchor-close">
					<span class="ac-gn-menuanchor-label">Global Nav Close Menu</span>
				</a>
			</li>
			<li class="ac-gn-item ac-gn-apple">
				<a class="ac-gn-link ac-gn-link-apple" href="https://www.apple.com/" data-analytics-title="apple home" id="ac-gn-firstfocus-small">
					<span class="ac-gn-link-text">Apple</span>
				</a>
			</li>
			<li class="ac-gn-item ac-gn-bag ac-gn-bag-small" id="ac-gn-bag-small">
				<div class="ac-gn-bag-wrapper">
					<a class="ac-gn-link ac-gn-link-bag" href="https://www.apple.com/us/shop/goto/bag" data-analytics-title="bag" data-analytics-click="bag" aria-label="Shopping Bag" data-string-badge="Shopping Bag with item count :">
						<span class="ac-gn-link-text">Shopping Bag</span>
					</a>
					<span class="ac-gn-bag-badge">
						<span class="ac-gn-bag-badge-separator"></span>
					<span class="ac-gn-bag-badge-number"></span>
					<span class="ac-gn-bag-badge-unit">+</span>
					</span>
				</div>
				<span class="ac-gn-bagview-caret ac-gn-bagview-caret-large"></span>
			</li>
		</ul>
		<div class="ac-gn-search-placeholder-container" role="search">
			<div class="ac-gn-search ac-gn-search-small">
				<a id="ac-gn-link-search-small" class="ac-gn-link" href="https://www.apple.com/us/search" data-analytics-title="search" data-analytics-click="search" data-analytics-intrapage-link aria-label="Search apple.com">
					<div class="ac-gn-search-placeholder-bar">
						<div class="ac-gn-search-placeholder-input">
							<div class="ac-gn-search-placeholder-input-text" aria-hidden="true">
								<div class="ac-gn-link-search ac-gn-search-placeholder-input-icon"></div>
								<span class="ac-gn-search-placeholder">Search apple.com</span>
							</div>
						</div>
						<div class="ac-gn-searchview-close ac-gn-searchview-close-small ac-gn-search-placeholder-searchview-close">
							<span class="ac-gn-searchview-close-cancel" aria-hidden="true">Cancel</span>
						</div>
					</div>
				</a>
			</div>
		</div>
		<ul class="ac-gn-list">
			<li class="ac-gn-item ac-gn-apple">
				<a class="ac-gn-link ac-gn-link-apple" href="https://www.apple.com/" data-analytics-title="apple home" id="ac-gn-firstfocus">
						<span class="ac-gn-link-text">Apple</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-mac">
				<a class="ac-gn-link ac-gn-link-mac" href="https://www.apple.com/mac/" data-analytics-title="mac">
						<span class="ac-gn-link-text">Mac</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-ipad">
				<a class="ac-gn-link ac-gn-link-ipad" href="https://www.apple.com/ipad/" data-analytics-title="ipad">
						<span class="ac-gn-link-text">iPad</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-iphone">
				<a class="ac-gn-link ac-gn-link-iphone" href="https://www.apple.com/iphone/" data-analytics-title="iphone">
						<span class="ac-gn-link-text">iPhone</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-watch">
				<a class="ac-gn-link ac-gn-link-watch" href="https://www.apple.com/watch/" data-analytics-title="watch">
						<span class="ac-gn-link-text">Watch</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-tv">
				<a class="ac-gn-link ac-gn-link-tv" href="https://www.apple.com/tv/" data-analytics-title="tv">
						<span class="ac-gn-link-text">TV</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-music">
				<a class="ac-gn-link ac-gn-link-music" href="https://www.apple.com/music/" data-analytics-title="music">
						<span class="ac-gn-link-text">Music</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-support">
				<a class="ac-gn-link ac-gn-link-support" href="https://support.apple.com" data-analytics-title="support">
						<span class="ac-gn-link-text">Support</span>
					</a>
			</li>
			<li class="ac-gn-item ac-gn-item-menu ac-gn-search" role="search">
				<a id="ac-gn-link-search" class="ac-gn-link ac-gn-link-search" href="https://www.apple.com/us/search" data-analytics-title="search" data-analytics-click="search" data-analytics-intrapage-link aria-label="Search apple.com"></a>
			</li>
			<li class="ac-gn-item ac-gn-bag" id="ac-gn-bag">
				<div class="ac-gn-bag-wrapper">
					<a class="ac-gn-link ac-gn-link-bag" href="https://www.apple.com/us/shop/goto/bag" data-analytics-title="bag" data-analytics-click="bag" aria-label="Shopping Bag" data-string-badge="Shopping Bag with item count : {%BAGITEMCOUNT%}">
							<span class="ac-gn-link-text">Shopping Bag</span>
						</a>
					<span class="ac-gn-bag-badge" aria-hidden="true">
								<span class="ac-gn-bag-badge-separator"></span>
					<span class="ac-gn-bag-badge-number"></span>
					<span class="ac-gn-bag-badge-unit">+</span>
					</span>
				</div>
				<span class="ac-gn-bagview-caret ac-gn-bagview-caret-large"></span>
			</li>
		</ul>
		<aside id="ac-gn-searchview" class="ac-gn-searchview" role="search" data-analytics-region="search">
			<div class="ac-gn-searchview-content">
				<div class="ac-gn-searchview-bar">
					<div class="ac-gn-searchview-bar-wrapper">
						<form id="ac-gn-searchform" class="ac-gn-searchform" action="https://www.apple.com/us/search" method="get">
							<div class="ac-gn-searchform-wrapper">
								<input id="ac-gn-searchform-input" class="ac-gn-searchform-input" type="text" aria-label="Search apple.com" placeholder="Search apple.com" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="list" aria-expanded="true" aria-owns="quicklinks suggestions">
								<input id="ac-gn-searchform-src" type="hidden" name="src" value="itunes_serp">
								<button id="ac-gn-searchform-submit" class="ac-gn-searchform-submit" type="submit" disabled aria-label="Submit Search"></button>
								<button id="ac-gn-searchform-reset" class="ac-gn-searchform-reset" type="reset" disabled aria-label="Clear Search">
										<span class="ac-gn-searchform-reset-background"></span>
									</button>
							</div>
						</form>
						<button id="ac-gn-searchview-close-small" class="ac-gn-searchview-close ac-gn-searchview-close-small" aria-label="Cancel Search">
								<span class="ac-gn-searchview-close-cancel" aria-hidden="true">
									Cancel
								</span>
							</button>
					</div>
				</div>
				<aside id="ac-gn-searchresults" class="ac-gn-searchresults" data-string-quicklinks="Quick Links" data-string-suggestions="Suggested Searches" data-string-noresults></aside>
			</div>
			<button id="ac-gn-searchview-close" class="ac-gn-searchview-close" aria-label="Cancel Search">
					<span class="ac-gn-searchview-close-wrapper">
						<span class="ac-gn-searchview-close-left"></span>
						<span class="ac-gn-searchview-close-right"></span>
					</span>
				</button>
		</aside>
		<aside class="ac-gn-bagview" data-analytics-region="bag">
			<div class="ac-gn-bagview-scrim">
				<span class="ac-gn-bagview-caret ac-gn-bagview-caret-small"></span>
			</div>
			<div class="ac-gn-bagview-content" id="ac-gn-bagview-content">
			</div>
		</aside>
	</div>
</nav>
<div class="ac-gn-blur"></div>
<div id="ac-gn-curtain" class="ac-gn-curtain"></div>
<div id="ac-gn-placeholder" class="ac-nav-placeholder"></div>
<div class="ember-view">
  <!---->

  <!---->

  <!---->

  <main class="selfclear is-apps-theme">
    <style id="ember3437145" class="ember-view"><!----></style>

    <!---->

    <div id="ember3437146" class="focusing-outlet ember-view"><div id="ember3437148" class="focusing-outlet ember-view">
  <input id="localnav-menustate" class="localnav-menustate" type="checkbox">
<nav id="localnav" class="css-sticky we-localnav localnav we-localnav--app-store" role="navigation" data-sticky data-test-we-localnav="app-store">
  <div class="localnav-wrapper" data-test-we-localnav-wrapper>
    <div class="localnav-background we-localnav__background"></div>
    <div class="localnav-content we-localnav__content">
      <div class="localnav-title we-localnav__title" data-test-we-localnav-title>
        <a href="https://www.apple.com/ios/app-store/" data-we-link-to-exclude><span class="we-localnav__title__product" data-test-we-localnav-store-title>App Store</span></a> <span class="we-localnav__title__qualifier" data-test-we-localnav-preview-title>Preview</span>
      </div>
      <div data-test-localnav-menu class="localnav-menu we-localnav__menu we-localnav__menu--apps">
<!---->        <div class="localnav-actions we-localnav__actions" data-test-we-localnav-actions>
<!---->            
<!---->
        </div>
      </div>
    </div>
  </div>
</nav>
<span class="we-localnav__shim" aria-hidden="true"></span>
<label id="localnav-curtain" for="localnav-menustate"></label>



<div id="ember3437151" class="animation-wrapper is-visible ember-view">
<!---->
    <div id="ember3437152" style="display: none;" class="ember-view"><div class="l-content-width we-banner" role="alert">
    <p class="we-banner__copy" data-test-we-banner-message="availability">This app is available only on the App Store for iPhone and iPad.</p>
</div>
</div>

  <div id="ember3437153" class="ember-view"><section id="ember3437154" class="l-content-width section section--hero product-hero ember-view"><div class="l-row">
  <div class="product-hero__media l-column small-5 medium-4 large-3 small-valign-top">
      <picture id="ember3437155" class="we-artwork ember-view product-hero__artwork we-artwork--fullwidth we-artwork--ios-app-icon" data-test-product-hero-artwork>
          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/230x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/460x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/230x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/460x0w.png 2x" media="(min-width: 1069px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/217x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/434x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/217x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/434x0w.png 2x" media="(min-width: 735px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/246x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/492x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/246x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/62/6e/7b/626e7ba4-604e-c0cd-173e-8389cac8d039/AppIcon-1x_U007emarketing-85-220-4.png/492x0w.png 2x" type="image/png">

        <img class="we-artwork__image ember3437155" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="246" width="246">
    <style>
      .ember3437155, #ember3437155::before {
          width: 246px;
          height: 246px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
.ember3437155, #ember3437155::before {
          width: 246px;
          height: 246px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437155, #ember3437155::before {
          width: 217px;
          height: 217px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437155, #ember3437155::before {
          width: 217px;
          height: 217px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437155, #ember3437155::before {
          width: 230px;
          height: 230px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437155, #ember3437155::before {
          width: 230px;
          height: 230px;
        }
        .ember3437155::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>
  </div>

  <div class="l-column small-7 medium-8 large-9 small-valign-top">
    <header class="product-header app-header product-header--padded-start" role="banner">
<!---->
      <h1 class="product-header__title app-header__title" data-test-product-name>
        Writr
          <span class="badge badge--product-title" data-test-product-rating>4+</span>
      </h1>

        <h2 class="product-header__subtitle app-header__subtitle" data-test-product-subtitle>Kill writers block forever</h2>

      <h2 class="product-header__identity app-header__identity" data-test-developer-name>
        <a href="https://apps.apple.com/us/developer/ikaroa/id1522274055" class="link" data-metrics-click="{&quot;actionDetails&quot;:{&quot;type&quot;:&quot;developer&quot;},&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/developer/ikaroa/id1522274055&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;1522274055&quot;}" data-test-developer-link dir="auto">
          Ikaroa
        </a>
      </h2>

<!---->
        <ul class="product-header__list app-header__list">
<!---->
            <li class="product-header__list__item app-header__list__item--user-rating">
              <ul class="inline-list inline-list--mobile-compact">
                <li class="inline-list__item">
                  <figure aria-label="4.8 out of 5" id="ember3437162" class="we-star-rating ember-view"><span class="we-star-rating-stars-outlines">
  <span class="we-star-rating-stars we-star-rating-stars-5"></span>
</span>
  <figcaption data-test-rating-count class="we-rating-count star-rating__count">4.8 • 377 Ratings</figcaption>
</figure>
                </li>
              </ul>
            </li>
        </ul>

      <ul class="product-header__list app-header__list">
<!---->
        <li class="product-header__list__item">
          <ul class="inline-list inline-list--mobile-compact">
              <li class="inline-list__item inline-list__item--bulleted app-header__list__item--price" data-test-buy-price>Free</li>

<!---->          </ul>
        </li>

<!---->
<!---->      </ul>

<!---->
<!---->
<!---->
<!---->    </header>
  </div>
</div>
</section>

<!---->
    <section class="l-content-width section section--bordered">
      <div class="section__nav section__nav--align-start">
        <h2 class="section__headline" data-test-app-screenshots-title>Screenshots</h2>
        <nav class="gallery-nav">
          <ul class="gallery-nav__items">
              <li class="gallery-nav__item">
                <a href="/us/app/writr/id831996132#?platform=iphone" id="ember3437164" class="ember-view link link--no-decoration is-active" data-test-app-platform-link="iphone">
                  iPhone
                </a>
              </li>
              <li class="gallery-nav__item">
                <a href="/us/app/writr/id831996132#?platform=ipad" id="ember3437165" class="ember-view link link--no-decoration" data-test-app-platform-link="ipad">
                  iPad
                </a>
              </li>
          </ul>
        </nav>
      </div>
    <div id="ember3437166" class="we-screenshot-viewer ember-view"><div class="we-screenshot-viewer__screenshots">
  <ul class="l-row l-row--peek we-screenshot-viewer__screenshots-list">
        <li class="l-column small-2 medium-3 large-3" data-test-we-screenshot-viewer-row>
          <picture id="ember3437168" class="we-artwork ember-view we-artwork--fullwidth we-artwork--screenshot-platform-iphone we-artwork--screenshot-version-iphone6plus we-artwork--screenshot-orientation-portrait">
          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/230x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/460x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/230x0w.jpg 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/460x0w.jpg 2x" media="(min-width: 1069px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/157x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/157x0w.jpg 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/314x0w.jpg 2x" media="(min-width: 735px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/300x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/600x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/300x0w.jpg 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/c5/49/81/c54981e5-9690-4454-62ce-24caad801af3/mzl.zqqrtfuw.jpg/600x0w.jpg 2x" type="image/jpeg">

        <img class="we-artwork__image ember3437168" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style="background-color: #000000;" alt height="533" width="300">
    <style>
      .ember3437168, #ember3437168::before {
          width: 300px;
          height: 533px;
        }
        .ember3437168::before {
          padding-top: 177.66666666666666%;
        }
.ember3437168, #ember3437168::before {
          width: 300px;
          height: 533px;
        }
        .ember3437168::before {
          padding-top: 177.66666666666666%;
        }
@media (min-width: 735px) {
          .ember3437168, #ember3437168::before {
          width: 157px;
          height: 279px;
        }
        .ember3437168::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 735px) {
          .ember3437168, #ember3437168::before {
          width: 157px;
          height: 279px;
        }
        .ember3437168::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 1069px) {
          .ember3437168, #ember3437168::before {
          width: 230px;
          height: 408px;
        }
        .ember3437168::before {
          padding-top: 177.3913043478261%;
        }
        }
@media (min-width: 1069px) {
          .ember3437168, #ember3437168::before {
          width: 230px;
          height: 408px;
        }
        .ember3437168::before {
          padding-top: 177.3913043478261%;
        }
        }
    </style>

</picture>
        </li>
        <li class="l-column small-2 medium-3 large-3" data-test-we-screenshot-viewer-row>
          <picture id="ember3437176" class="we-artwork ember-view we-artwork--fullwidth we-artwork--screenshot-platform-iphone we-artwork--screenshot-version-iphone6plus we-artwork--screenshot-orientation-portrait">
          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/230x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/460x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/230x0w.jpg 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/460x0w.jpg 2x" media="(min-width: 1069px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/157x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/157x0w.jpg 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/314x0w.jpg 2x" media="(min-width: 735px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/300x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/600x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/300x0w.jpg 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple118/v4/be/90/27/be90271d-6691-8900-e06f-c82b3973d41e/mzl.zadrcadr.jpg/600x0w.jpg 2x" type="image/jpeg">

        <img class="we-artwork__image ember3437176" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style="background-color: #eaeaea;" alt height="533" width="300">
    <style>
      .ember3437176, #ember3437176::before {
          width: 300px;
          height: 533px;
        }
        .ember3437176::before {
          padding-top: 177.66666666666666%;
        }
.ember3437176, #ember3437176::before {
          width: 300px;
          height: 533px;
        }
        .ember3437176::before {
          padding-top: 177.66666666666666%;
        }
@media (min-width: 735px) {
          .ember3437176, #ember3437176::before {
          width: 157px;
          height: 279px;
        }
        .ember3437176::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 735px) {
          .ember3437176, #ember3437176::before {
          width: 157px;
          height: 279px;
        }
        .ember3437176::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 1069px) {
          .ember3437176, #ember3437176::before {
          width: 230px;
          height: 408px;
        }
        .ember3437176::before {
          padding-top: 177.3913043478261%;
        }
        }
@media (min-width: 1069px) {
          .ember3437176, #ember3437176::before {
          width: 230px;
          height: 408px;
        }
        .ember3437176::before {
          padding-top: 177.3913043478261%;
        }
        }
    </style>

</picture>
        </li>
        <li class="l-column small-2 medium-3 large-3" data-test-we-screenshot-viewer-row>
          <picture id="ember3437184" class="we-artwork ember-view we-artwork--fullwidth we-artwork--screenshot-platform-iphone we-artwork--screenshot-version-iphone6plus we-artwork--screenshot-orientation-portrait">
          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/230x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/460x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/230x0w.jpg 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/460x0w.jpg 2x" media="(min-width: 1069px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/157x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/157x0w.jpg 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/314x0w.jpg 2x" media="(min-width: 735px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/300x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/600x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/300x0w.jpg 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple118/v4/11/ea/43/11ea4314-f97b-cc8f-502d-f2609f62053a/mzl.sewchmvn.jpg/600x0w.jpg 2x" type="image/jpeg">

        <img class="we-artwork__image ember3437184" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style="background-color: #f5f5f5;" alt height="533" width="300">
    <style>
      .ember3437184, #ember3437184::before {
          width: 300px;
          height: 533px;
        }
        .ember3437184::before {
          padding-top: 177.66666666666666%;
        }
.ember3437184, #ember3437184::before {
          width: 300px;
          height: 533px;
        }
        .ember3437184::before {
          padding-top: 177.66666666666666%;
        }
@media (min-width: 735px) {
          .ember3437184, #ember3437184::before {
          width: 157px;
          height: 279px;
        }
        .ember3437184::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 735px) {
          .ember3437184, #ember3437184::before {
          width: 157px;
          height: 279px;
        }
        .ember3437184::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 1069px) {
          .ember3437184, #ember3437184::before {
          width: 230px;
          height: 408px;
        }
        .ember3437184::before {
          padding-top: 177.3913043478261%;
        }
        }
@media (min-width: 1069px) {
          .ember3437184, #ember3437184::before {
          width: 230px;
          height: 408px;
        }
        .ember3437184::before {
          padding-top: 177.3913043478261%;
        }
        }
    </style>

</picture>
        </li>
        <li class="l-column small-2 medium-3 large-3" data-test-we-screenshot-viewer-row>
          <picture id="ember3437192" class="we-artwork ember-view we-artwork--fullwidth we-artwork--screenshot-platform-iphone we-artwork--screenshot-version-iphone6plus we-artwork--screenshot-orientation-portrait">
          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/230x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/460x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/230x0w.jpg 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/460x0w.jpg 2x" media="(min-width: 1069px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/157x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/157x0w.jpg 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/314x0w.jpg 2x" media="(min-width: 735px)" type="image/jpeg">

          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/300x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/600x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/300x0w.jpg 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple118/v4/5f/14/42/5f14423a-5e9e-3438-0646-558febd6e866/mzl.ftbyatkm.jpg/600x0w.jpg 2x" type="image/jpeg">

        <img class="we-artwork__image ember3437192" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style="background-color: #f5f7f4;" alt height="533" width="300">
    <style>
      .ember3437192, #ember3437192::before {
          width: 300px;
          height: 533px;
        }
        .ember3437192::before {
          padding-top: 177.66666666666666%;
        }
.ember3437192, #ember3437192::before {
          width: 300px;
          height: 533px;
        }
        .ember3437192::before {
          padding-top: 177.66666666666666%;
        }
@media (min-width: 735px) {
          .ember3437192, #ember3437192::before {
          width: 157px;
          height: 279px;
        }
        .ember3437192::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 735px) {
          .ember3437192, #ember3437192::before {
          width: 157px;
          height: 279px;
        }
        .ember3437192::before {
          padding-top: 177.70700636942675%;
        }
        }
@media (min-width: 1069px) {
          .ember3437192, #ember3437192::before {
          width: 230px;
          height: 408px;
        }
        .ember3437192::before {
          padding-top: 177.3913043478261%;
        }
        }
@media (min-width: 1069px) {
          .ember3437192, #ember3437192::before {
          width: 230px;
          height: 408px;
        }
        .ember3437192::before {
          padding-top: 177.3913043478261%;
        }
        }
    </style>

</picture>
        </li>
  </ul>
<!----></div>
</div>
  </section>


    <section class="l-content-width section section--bordered">
      <div class="section__description">
        <h2 class="section__headline visuallyhidden">Description</h2>
        <div class="l-row">
          <div id="ember3437199" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view l-column small-12 medium-9 large-8" data-test-description>      

      <p dir=false data-test-bidi>Let&#39;s keep this simple, if you&#39;re a songwriter or poet, you need this app. It&#39;s free, try it, thank us later.<br /><br />&quot;Love the app.. as a songwriter, this comes in handy for those days I get writer&#39;s block or need an extra bonus in vocabulary when writing my songs.&quot; - Christina<br /><br />Also available for iPad.</p>
  


<!----></div>
        </div>
      </div>
    </section>

<!---->
  <section class="l-content-width section section--bordered whats-new" data-test-version-history>
    <div class="section__nav section__nav--small">
      <h2 class="whats-new__headline">What’s New</h2>
        <div data-test-we-modal="page-overlay" id="ember3437202" class="ember-view version-history">  <button class="we-modal__show link" id="modal-trigger-ember3437202" data-test-we-modal-trigger data-metrics-click="{&quot;actionType&quot;:&quot;open&quot;,&quot;targetType&quot;:&quot;button&quot;,&quot;targetId&quot;:&quot;ModalVersionHistory&quot;}" type="button">Version History</button>

<!----></div>
    </div>
    <div class="l-row whats-new__content">
        <div class="l-column small-12 medium-3 large-4 small-valign-top whats-new__latest" data-test-version-history>
          <div class="l-row">
            <time data-test-we-datetime datetime="2018-07-05T07:00:00.000Z" aria-label="July 5, 2018" class="" >Jul 5, 2018</time>
            <p class="l-column small-6 medium-12 whats-new__latest__version" data-test-version-number>Version 1.0.6</p>
          </div>
        </div>
      <div class="l-column small-12 medium-9 large-8 small-valign-top">
        <div id="ember3437204" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view" data-test-whats-new>      

      <p dir=false data-test-bidi>We topped up some nitro, app should be faster! Tell the world!</p>
  


<!----></div>
      </div>
    </div>
  </section>

      <section class="l-content-width section section--bordered" data-test-content-section="reviews">
      <div class="section__nav">
        <h2 class="section__headline" data-test-content-headline>
          Ratings and Reviews
        </h2>

        <a data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;button&quot;,&quot;targetId&quot;:&quot;SeeAllReviews&quot;}" rel="nofollow" data-we-link-to-exclude href="/us/app/writr/id831996132#see-all/reviews" id="ember3437208" style="display: none;" class="link section__nav__see-all-link ember-view">See All</a>
      </div>

        <div id="ember3437209" class="we-customer-ratings lockup ember-view"><div class="l-row">
  <div class="we-customer-ratings__stats l-column small-4 medium-6 large-4">
    <div class="we-customer-ratings__averages" data-test-average-rating><span class="we-customer-ratings__averages__display">4.8</span> out of 5</div>
      <div class="we-customer-ratings__count small-hide medium-show" data-test-rating-count>377 Ratings</div>
  </div>
  <div class=" l-column small-8 medium-6 large-4">
    <figure class="we-star-bar-graph">
        <div class="we-star-bar-graph__row">
          <span class="we-star-bar-graph__stars we-star-bar-graph__stars--5"></span>
          <div class="we-star-bar-graph__bar">
            <div class="we-star-bar-graph__bar__foreground-bar" style="width: 88%;"></div>
          </div>
        </div>
        <div class="we-star-bar-graph__row">
          <span class="we-star-bar-graph__stars we-star-bar-graph__stars--4"></span>
          <div class="we-star-bar-graph__bar">
            <div class="we-star-bar-graph__bar__foreground-bar" style="width: 7%;"></div>
          </div>
        </div>
        <div class="we-star-bar-graph__row">
          <span class="we-star-bar-graph__stars we-star-bar-graph__stars--3"></span>
          <div class="we-star-bar-graph__bar">
            <div class="we-star-bar-graph__bar__foreground-bar" style="width: 2%;"></div>
          </div>
        </div>
        <div class="we-star-bar-graph__row">
          <span class="we-star-bar-graph__stars we-star-bar-graph__stars--2"></span>
          <div class="we-star-bar-graph__bar">
            <div class="we-star-bar-graph__bar__foreground-bar" style="width: 1%;"></div>
          </div>
        </div>
        <div class="we-star-bar-graph__row">
          <span class="we-star-bar-graph__stars "></span>
          <div class="we-star-bar-graph__bar">
            <div class="we-star-bar-graph__bar__foreground-bar" style="width: 2%;"></div>
          </div>
        </div>
    </figure>
      <p class="we-customer-ratings__count medium-hide" data-test-rating-count>377 Ratings</p>
  </div>
</div>
</div>

      <div class="l-row l-row--peek" data-test-app-reviews-shelf>
              
              <div id="ember3437217" class="ember-view small-valign-top l-column--equal-height l-column small-4 medium-6 large-4" data-test-review-customer="3096887743"><div data-test-we-modal="page-overlay" id="ember3437218" class="ember-view"><!---->
<!----></div>


                <div aria-labelledby="we-customer-review-13616" id="ember3437219" class="we-customer-review lockup ember-view"><figure aria-label="5 out of 5" id="ember3437220" class="we-star-rating ember-view we-customer-review__rating we-star-rating--large"><span class="we-star-rating-stars-outlines">
  <span class="we-star-rating-stars we-star-rating-stars-5"></span>
</span>
<!----></figure>

<div class="we-customer-review__header we-customer-review__header--user">
  <span dir="ltr" id="ember3437221" class="we-truncate we-truncate--single-line ember-view we-customer-review__user" data-test-customer-review-name>  pigeonparker
</span>

  <span class="we-customer-review__separator">, </span>

  <time data-test-customer-review-date datetime="2018-08-21T23:41:25.000Z" aria-label="August 21, 2018" class="we-customer-review__date" >08/21/2018</time>
</div>

<h3 dir="ltr" id="we-customer-review-13616" class="we-truncate we-truncate--single-line ember-view we-customer-review__title" data-test-customer-review-title>  The best rhyming app
</h3>

  <blockquote id="ember3437222" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view we-customer-review__body" data-test-customer-review-body>      

      <p dir=false data-test-bidi>Clean, efficient, straightforward design makes this my go to rhyming app for 3-4 years now. Never found another one that comes close to the use-ability or functionality of Writr. Thanks.</p>
  


<!----></blockquote>

<!----></div>
              
</div>
          
    
              <div id="ember3437226" class="ember-view small-valign-top l-column--equal-height l-column small-4 medium-6 large-4" data-test-review-customer="2258605438"><div data-test-we-modal="page-overlay" id="ember3437227" class="ember-view"><!---->
<!----></div>


                <div aria-labelledby="we-customer-review-13617" id="ember3437228" class="we-customer-review lockup ember-view"><figure aria-label="4 out of 5" id="ember3437229" class="we-star-rating ember-view we-customer-review__rating we-star-rating--large"><span class="we-star-rating-stars-outlines">
  <span class="we-star-rating-stars we-star-rating-stars-4"></span>
</span>
<!----></figure>

<div class="we-customer-review__header we-customer-review__header--user">
  <span dir="ltr" id="ember3437230" class="we-truncate we-truncate--single-line ember-view we-customer-review__user" data-test-customer-review-name>  Parker holl
</span>

  <span class="we-customer-review__separator">, </span>

  <time data-test-customer-review-date datetime="2018-03-01T08:56:50.000Z" aria-label="March 1, 2018" class="we-customer-review__date" >03/01/2018</time>
</div>

<h3 dir="ltr" id="we-customer-review-13617" class="we-truncate we-truncate--single-line ember-view we-customer-review__title" data-test-customer-review-title>  Great app and definitely needs improvements
</h3>

  <blockquote id="ember3437231" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view we-customer-review__body" data-test-customer-review-body>      

      <p dir=false data-test-bidi>It has a lot of Rhymers in this dictionary which is more than most of the other rhyme dictionaries on the App Store. Please add word definitions to be able to see by pressing the word. Also be able to at least copy the word from within the app. It would be nice to have a favorite log/ ideas that will save whatever word you choose to keep to remember.</p>
  


<!----></blockquote>

    <h3 class="we-customer-review__header we-customer-review__header--response">
      <span dir="ltr" id="ember3437234" class="we-truncate we-truncate--single-line ember-view we-customer-review__title" data-test-customer-review-response-title>  Developer Response
</span>

      <span class="we-customer-review__separator">, </span>

      
    </h3>

    <blockquote id="ember3437235" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view we-customer-review__body" data-test-customer-review-response-body>      

      <p dir=false data-test-bidi>Hi Parker, we took your feedback heard you and added the ability to press on the words for more suggestions! A log / ideas is coming in a future version too! Thank you for your valued feedback! We appreciate it!</p>
  


<!----></blockquote>
</div>
              
</div>
          
    
              <div id="ember3437239" class="ember-view small-valign-top l-column--equal-height l-column small-4 medium-6 large-4" data-test-review-customer="6485189056"><div data-test-we-modal="page-overlay" id="ember3437240" class="ember-view"><!---->
<!----></div>


                <div aria-labelledby="we-customer-review-13618" id="ember3437241" class="we-customer-review lockup ember-view"><figure aria-label="5 out of 5" id="ember3437242" class="we-star-rating ember-view we-customer-review__rating we-star-rating--large"><span class="we-star-rating-stars-outlines">
  <span class="we-star-rating-stars we-star-rating-stars-5"></span>
</span>
<!----></figure>

<div class="we-customer-review__header we-customer-review__header--user">
  <span dir="ltr" id="ember3437243" class="we-truncate we-truncate--single-line ember-view we-customer-review__user" data-test-customer-review-name>  anomuids
</span>

  <span class="we-customer-review__separator">, </span>

  <time data-test-customer-review-date datetime="2020-09-30T16:00:35.000Z" aria-label="September 30, 2020" class="we-customer-review__date" >09/30/2020</time>
</div>

<h3 dir="ltr" id="we-customer-review-13618" class="we-truncate we-truncate--single-line ember-view we-customer-review__title" data-test-customer-review-title>  Awesome like wow!
</h3>

  <blockquote id="ember3437244" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view we-customer-review__body" data-test-customer-review-body>      

      <p dir=false data-test-bidi>It’s so good it’s very simple. But very good helps a lot for writers block. And I’m a kid writing this and I love music. So this is awesome and easy. Like wow! And it’s completely FREE! No in app purchases no nothing! FREE FREE FREE!!</p>
  


<!----></blockquote>

<!----></div>
              
</div>
          

      </div>

        <div class="l-row l-row--margin-top medium-hide">
              
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          
    
<!---->          

        </div>
    </section>


<!---->
<!---->
<section class="l-content-width section section--bordered">
  <div class="l-row">
    <div class="l-column small-12">
      <h2 class="section__headline">Information</h2>
      <dl class="information-list information-list--app medium-columns">
          <div class="information-list__item l-row">
            <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2" data-test-app-info-seller-label>Seller</dt>
            <dd class="information-list__item__definition l-column medium-9 large-6" data-test-app-info-seller>
              TSN Consultancy Services Ltd
            </dd>
          </div>
          <div class="information-list__item l-row">
            <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Size</dt>
            <dd class="information-list__item__definition l-column medium-9 large-6" aria-label="19.4 megabytes" data-test-app-info-size>19.4 MB</dd>
          </div>
          <div class="information-list__item l-row">
            <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Category</dt>
            <dd class="information-list__item__definition l-column medium-9 large-6" data-test-app-info-category>
                <a href="https://itunes.apple.com/us/genre/id6011" class="link" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://itunes.apple.com/us/genre/id6011&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;GenrePage&quot;}">
                  Music
                </a>
            </dd>
          </div>
        <div class="information-list__item l-row">
          <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Compatibility</dt>
          <dd id="ember3437255" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view information-list__item__definition l-column medium-9 large-6" data-test-app-info-compatibility>      

      <p dir=false data-test-bidi>Requires iOS 8.0 or later. Compatible with iPhone, iPad, and iPod touch.</p>
  


<!----></dd>
        </div>
<!---->        <div class="information-list__item l-row">
          <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Languages</dt>
          <dd id="ember3437258" class="information-list__item__definition l-column medium-9 large-6 we-truncate we-truncate--multi-line we-truncate--interactive ember-view">      

      <p dir=false data-test-bidi>English</p>
  


<!----></dd>
        </div>
        <div class="information-list__item l-row">
          <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Age Rating</dt>
          <dd class="information-list__item__definition l-column medium-9 large-6" data-test-app-info-rating>4+</dd>
        </div>
<!----><!---->        <div class="information-list__item l-row">
          <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Copyright</dt>
          <dd class="information-list__item__definition l-column medium-9 large-6 information-list__item__definition--copyright" data-test-app-info-copyright>© TSN 2014-2018</dd>
        </div>
          <div class="information-list__item l-row">
            <dt class="information-list__item__term medium-valign-top l-column medium-3 large-2">Price</dt>
            <dd class="information-list__item__definition l-column medium-9 large-6" data-test-app-info-price>Free</dd>
          </div>
<!---->
      </dl>
    </div>
    <div class="l-column small-hide medium-show medium-9 medium-offset-3 large-10 large-offset-2">
      <ul class="inline-list inline-list--app-extensions">
          <li class="inline-list__item inline-list__item--margin-inline-end-large">
            <a class="link icon icon-after icon-external" data-test-app-info-links-developer data-metrics-click="{&quot;actionDetails&quot;:{&quot;type&quot;:&quot;developer&quot;},&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;@@url@@&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;@@id@@&quot;}" href="https://www.youtube.com/watch?v=WAoWzY0EEmQ">
              Developer Website
            </a>
          </li>
          <li class="inline-list__item inline-list__item--margin-inline-end-large">
            <a class="link icon icon-after icon-external" data-test-app-info-links-support data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;LinkToAppSupport&quot;}" href="http://sivvr.com/contact">
              App Support
            </a>
          </li>
<!---->          <li class="inline-list__item inline-list__item--margin-inline-end-large">
            <a class="link icon icon-after icon-external" data-test-app-info-links-privacy data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;LinkToPrivacyPolicy&quot;}" href="https://ikaroa.com/privacy">
              Privacy Policy
            </a>
          </li>
      </ul>
    </div>
  </div>
</section>

<section class="section section--link-list l-content-width medium-hide">
  <ul class="link-list link-list--a">
      <li class="link-list__item link-list__item--a">
        <a class="link icon icon-after icon-external" data-metrics-click="{&quot;actionDetails&quot;:{&quot;type&quot;:&quot;developer&quot;},&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;@@url@@&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;@@id@@&quot;}" href="https://www.youtube.com/watch?v=WAoWzY0EEmQ">
          Developer Website
        </a>
      </li>
      <li class="link-list__item link-list__item--a">
        <a class="link icon icon-after icon-external" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;LinkToAppSupport&quot;}" href="http://sivvr.com/contact">
          App Support
        </a>
      </li>
<!---->      <li class="link-list__item link-list__item--a">
        <a class="link icon icon-after icon-external" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;link&quot;,&quot;targetId&quot;:&quot;LinkToPrivacyPolicy&quot;}" href="https://ikaroa.com/privacy">
          Privacy Policy
        </a>
      </li>
  </ul>
</section>

  <section class="l-content-width section section--bordered">
    <div class="section__nav">
      <h2 class="section__headline">Supports</h2>
    </div>
    <ul class="supports-list l-row">
        <li class="supports-list__item l-column l-column--grid small-12 medium-6 large-4" data-test-supports="family-sharing">
          <img src="/assets/images/supports/supports-FamilySharing@2x-f58f31bc78fe9fe7be3565abccbecb34.png" class="supports-list__item__artwork" alt>
          <div class="supports-list__item__copy">
            <h3 dir="ltr" id="ember3437261" class="we-truncate we-truncate--single-line ember-view supports-list__item__copy__heading">  Family Sharing
</h3>
            <h4 id="ember3437262" class="we-truncate we-truncate--multi-line we-truncate--interactive ember-view supports-list__item__copy__description">      

      <p dir=false data-test-bidi>With Family Sharing set up, up to six family members can use this app.</p>
  


<!----></h4>
          </div>
        </li>
    </ul>
  </section>

    <section class="l-content-width section section--bordered" data-test-content-section="developerOtherApps">
      <div class="section__nav">
        <h2 class="section__headline">
          More By This Developer
        </h2>
        <a data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;button&quot;,&quot;targetId&quot;:&quot;SeeAllDeveloperOtherApps&quot;}" rel="nofollow" data-we-link-to-exclude href="/us/app/writr/id831996132#see-all/developer-other-apps" id="ember3437265" style="display: none;" class="link section__nav__see-all-link ember-view">See All</a>
      </div>

      <div class="l-row l-row--peek" data-test-more-by-this-developer>
            
    
          <a aria-label="Islam App | #1 App for Muslims. Lifestyle." data-metrics-location="{&quot;locationType&quot;:&quot;shelfDeveloperOtherApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/islam-app-1-app-for-muslims/id667021108&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;667021108&quot;}" href="https://apps.apple.com/us/app/islam-app-1-app-for-muslims/id667021108" id="ember3437269" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437270" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/146x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/146x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/157x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/157x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/320x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/640x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/320x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/9b/cb/e4/9bcbe442-a522-af1f-4ba4-5cbba632f11f/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/640x0w.png 2x" type="image/png">

        <img class="we-artwork__image ember3437270" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437270, #ember3437270::before {
          width: 320px;
          height: 320px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
.ember3437270, #ember3437270::before {
          width: 320px;
          height: 320px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437270, #ember3437270::before {
          width: 157px;
          height: 157px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437270, #ember3437270::before {
          width: 157px;
          height: 157px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437270, #ember3437270::before {
          width: 146px;
          height: 146px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437270, #ember3437270::before {
          width: 146px;
          height: 146px;
        }
        .ember3437270::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437277" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Islam App | #1 App for Muslims
</div>
    </div>

    <div dir="ltr" id="ember3437278" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Lifestyle
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Happy Halo - The Adventures of Flappy. Games." data-metrics-location="{&quot;locationType&quot;:&quot;shelfDeveloperOtherApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/happy-halo-the-adventures-of-flappy/id823921243&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;823921243&quot;}" href="https://apps.apple.com/us/app/happy-halo-the-adventures-of-flappy/id823921243" id="ember3437280" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437281" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/146x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/146x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/157x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/157x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/320x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/640x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/320x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple6/v4/d4/75/59/d4755968-7266-dabf-c3b8-463afb517066/mzl.lxyrwcro.png/640x0w.png 2x" type="image/png">

        <img class="we-artwork__image ember3437281" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437281, #ember3437281::before {
          width: 320px;
          height: 320px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
.ember3437281, #ember3437281::before {
          width: 320px;
          height: 320px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437281, #ember3437281::before {
          width: 157px;
          height: 157px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437281, #ember3437281::before {
          width: 157px;
          height: 157px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437281, #ember3437281::before {
          width: 146px;
          height: 146px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437281, #ember3437281::before {
          width: 146px;
          height: 146px;
        }
        .ember3437281::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437288" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Happy Halo - The Adventures of Flappy
</div>
    </div>

    <div dir="ltr" id="ember3437289" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Games
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="BarScan - QR / Barcode Scanner. Utilities." data-metrics-location="{&quot;locationType&quot;:&quot;shelfDeveloperOtherApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/barscan-qr-barcode-scanner/id919247561&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;919247561&quot;}" href="https://apps.apple.com/us/app/barscan-qr-barcode-scanner/id919247561" id="ember3437291" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437292" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/146x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/146x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/157x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/157x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/320x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/640x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/320x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/03/68/5f/03685f4d-9ce4-58ca-812b-41cbd7958d41/mzl.myhtkspa.png/640x0w.png 2x" type="image/png">

        <img class="we-artwork__image ember3437292" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437292, #ember3437292::before {
          width: 320px;
          height: 320px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
.ember3437292, #ember3437292::before {
          width: 320px;
          height: 320px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437292, #ember3437292::before {
          width: 157px;
          height: 157px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437292, #ember3437292::before {
          width: 157px;
          height: 157px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437292, #ember3437292::before {
          width: 146px;
          height: 146px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437292, #ember3437292::before {
          width: 146px;
          height: 146px;
        }
        .ember3437292::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437299" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  BarScan - QR / Barcode Scanner
</div>
    </div>

    <div dir="ltr" id="ember3437300" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Utilities
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Get Stuff Done!. Productivity." data-metrics-location="{&quot;locationType&quot;:&quot;shelfDeveloperOtherApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/get-stuff-done/id1185631908&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;1185631908&quot;}" href="https://apps.apple.com/us/app/get-stuff-done/id1185631908" id="ember3437302" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437303" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/146x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/146x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/157x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/157x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/320x0w.webp 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/640x0w.webp 2x" type="image/webp">

          <source class="we-artwork__source" srcset="https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/320x0w.png 1x, https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/13/17/19/13171945-5ccf-1ba2-bd5b-314cf5552842/AppIcon-1x_U007emarketing-85-220-0-3.png/640x0w.png 2x" type="image/png">

        <img class="we-artwork__image ember3437303" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437303, #ember3437303::before {
          width: 320px;
          height: 320px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
.ember3437303, #ember3437303::before {
          width: 320px;
          height: 320px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437303, #ember3437303::before {
          width: 157px;
          height: 157px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437303, #ember3437303::before {
          width: 157px;
          height: 157px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437303, #ember3437303::before {
          width: 146px;
          height: 146px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437303, #ember3437303::before {
          width: 146px;
          height: 146px;
        }
        .ember3437303::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437310" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Get Stuff Done!
</div>
    </div>

    <div dir="ltr" id="ember3437311" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Productivity
</div>
<!----></div>
</a>
        



      </div>
    </section>

    <section class="l-content-width section section--bordered" data-test-content-section="customersAlsoBoughtApps">
      <div class="section__nav">
        <h2 class="section__headline">
          You May Also Like
        </h2>
        <a data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;targetType&quot;:&quot;button&quot;,&quot;targetId&quot;:&quot;SeeAllCustomersAlsoBoughtApps&quot;}" rel="nofollow" data-we-link-to-exclude href="/us/app/writr/id831996132#see-all/customers-also-bought-apps" id="ember3437312" style="display: none;" class="link section__nav__see-all-link ember-view">See All</a>
      </div>

      <div class="l-row l-row--peek" data-test-customers-also-bought-apps>
            
    
          <a aria-label="Simple Songwriter LE. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/simple-songwriter-le/id316218233&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;316218233&quot;}" href="https://apps.apple.com/us/app/simple-songwriter-le/id316218233" id="ember3437316" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437317" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/146x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/146x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/146x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/146x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/157x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/157x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/157x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/157x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/320x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/320x0w.webp 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/320x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/320x0w.png 1x, https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437317" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437317" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437317, #ember3437317::before {
          width: 320px;
          height: 320px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
.ember3437317, #ember3437317::before {
          width: 320px;
          height: 320px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437317, #ember3437317::before {
          width: 157px;
          height: 157px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437317, #ember3437317::before {
          width: 157px;
          height: 157px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437317, #ember3437317::before {
          width: 146px;
          height: 146px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437317, #ember3437317::before {
          width: 146px;
          height: 146px;
        }
        .ember3437317::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437324" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Simple Songwriter LE
</div>
    </div>

    <div dir="ltr" id="ember3437325" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Song-Writer Lite: Write Lyrics. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/song-writer-lite-write-lyrics/id447771549&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;447771549&quot;}" href="https://apps.apple.com/us/app/song-writer-lite-write-lyrics/id447771549" id="ember3437327" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437328" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/146x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/146x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/146x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/146x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/157x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/157x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/157x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/157x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/320x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/320x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/320x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/320x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437328" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437328" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437328, #ember3437328::before {
          width: 320px;
          height: 320px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
.ember3437328, #ember3437328::before {
          width: 320px;
          height: 320px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437328, #ember3437328::before {
          width: 157px;
          height: 157px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437328, #ember3437328::before {
          width: 157px;
          height: 157px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437328, #ember3437328::before {
          width: 146px;
          height: 146px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437328, #ember3437328::before {
          width: 146px;
          height: 146px;
        }
        .ember3437328::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437335" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Song-Writer Lite: Write Lyrics
</div>
    </div>

    <div dir="ltr" id="ember3437336" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Songwriter Pad LE Songwriting. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/songwriter-pad-le-songwriting/id502877188&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;502877188&quot;}" href="https://apps.apple.com/us/app/songwriter-pad-le-songwriting/id502877188" id="ember3437338" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437339" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/146x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/146x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/146x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/146x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/157x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/157x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/157x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/157x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/320x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/320x0w.webp 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/320x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/320x0w.png 1x, https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437339" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437339" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437339, #ember3437339::before {
          width: 320px;
          height: 320px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
.ember3437339, #ember3437339::before {
          width: 320px;
          height: 320px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437339, #ember3437339::before {
          width: 157px;
          height: 157px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437339, #ember3437339::before {
          width: 157px;
          height: 157px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437339, #ember3437339::before {
          width: 146px;
          height: 146px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437339, #ember3437339::before {
          width: 146px;
          height: 146px;
        }
        .ember3437339::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437346" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Songwriter Pad LE Songwriting
</div>
    </div>

    <div dir="ltr" id="ember3437347" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Suggester. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/suggester/id504740787&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;504740787&quot;}" href="https://apps.apple.com/us/app/suggester/id504740787" id="ember3437349" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437350" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.webp 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.png 1x, https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437350" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437350" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437350, #ember3437350::before {
          width: 320px;
          height: 320px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
.ember3437350, #ember3437350::before {
          width: 320px;
          height: 320px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437350, #ember3437350::before {
          width: 157px;
          height: 157px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437350, #ember3437350::before {
          width: 157px;
          height: 157px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437350, #ember3437350::before {
          width: 146px;
          height: 146px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437350, #ember3437350::before {
          width: 146px;
          height: 146px;
        }
        .ember3437350::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437357" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Suggester
</div>
    </div>

    <div dir="ltr" id="ember3437358" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Autochords. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/autochords/id788423364&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;788423364&quot;}" href="https://apps.apple.com/us/app/autochords/id788423364" id="ember3437360" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437361" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/146x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/146x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/146x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/146x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/157x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/157x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/157x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/157x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/320x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/320x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/320x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/320x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437361" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437361" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437361, #ember3437361::before {
          width: 320px;
          height: 320px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
.ember3437361, #ember3437361::before {
          width: 320px;
          height: 320px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437361, #ember3437361::before {
          width: 157px;
          height: 157px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437361, #ember3437361::before {
          width: 157px;
          height: 157px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437361, #ember3437361::before {
          width: 146px;
          height: 146px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437361, #ember3437361::before {
          width: 146px;
          height: 146px;
        }
        .ember3437361::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437368" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Autochords
</div>
    </div>

    <div dir="ltr" id="ember3437369" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        

    
    
          <a aria-label="Song Writer - Lyrics Memo Pad. Music." data-metrics-location="{&quot;locationType&quot;:&quot;shelfCustomersAlsoBoughtApps&quot;}" data-metrics-click="{&quot;actionType&quot;:&quot;navigate&quot;,&quot;actionUrl&quot;:&quot;https://apps.apple.com/us/app/song-writer-lyrics-memo-pad/id1017617320&quot;,&quot;targetType&quot;:&quot;card&quot;,&quot;targetId&quot;:&quot;1017617320&quot;}" href="https://apps.apple.com/us/app/song-writer-lyrics-memo-pad/id1017617320" id="ember3437371" class="we-lockup targeted-link l-column small-2 medium-3 large-2 we-lockup--shelf-align-top ember-view">    <picture dir="ltr" id="ember3437372" class="we-lockup__artwork we-artwork--lockup we-artwork--fullwidth we-artwork--ios-app-icon we-artwork ember-view">
          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.webp 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.webp 2x" media="(min-width: 1069px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.png 2x" media="(min-width: 1069px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/146x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/292x0w.png 2x" media="(min-width: 1069px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.webp 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.webp 2x" media="(min-width: 735px)" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.png 2x" media="(min-width: 735px)">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/157x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/314x0w.png 2x" media="(min-width: 735px)" type="image/png">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.webp 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.webp 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.webp 2x" type="image/webp">


          <noscript>
              <source class="we-artwork__source" srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.png 2x">
            <style>
              .we-artwork__source--lazyload,
              .we-artwork__image--lazyload {
                display: none;
              }
            </style>
          </noscript>

          <source class="we-artwork__source we-artwork__source--lazyload" srcset data-srcset="https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/320x0w.png 1x, https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/640x0w.png 2x" type="image/png">


          <noscript>
            <img class="we-artwork__image ember3437372" src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt>
          </noscript>

        <img class="we-artwork__image we-artwork__image--lazyload ember3437372" src="data:image/svg+xml;utf8,%3Csvg xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 viewBox%3D%220 0 320 320%22 %2F%3E" data-src="/assets/artwork/1x1-42817eea7ade52607a760cbee00d1495.gif" style alt height="320" width="320">
    <style>
      .ember3437372, #ember3437372::before {
          width: 320px;
          height: 320px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
.ember3437372, #ember3437372::before {
          width: 320px;
          height: 320px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
@media (min-width: 735px) {
          .ember3437372, #ember3437372::before {
          width: 157px;
          height: 157px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
        }
@media (min-width: 735px) {
          .ember3437372, #ember3437372::before {
          width: 157px;
          height: 157px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437372, #ember3437372::before {
          width: 146px;
          height: 146px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
        }
@media (min-width: 1069px) {
          .ember3437372, #ember3437372::before {
          width: 146px;
          height: 146px;
        }
        .ember3437372::before {
          padding-top: 100%;
        }
        }
    </style>

</picture>

<!---->
<div class="we-lockup__copy">
<!---->    <div class="we-lockup__title " data-test-we-lockup-title>
        <div dir="ltr" id="ember3437379" class="we-truncate we-truncate--single-line ember-view targeted-link__target" data-test-we-lockup-title-text>  Song Writer - Lyrics Memo Pad
</div>
    </div>

    <div dir="ltr" id="ember3437380" class="we-truncate we-truncate--single-line ember-view we-lockup__subtitle targeted-link__target" data-test-we-lockup-subtitle>  Music
</div>
<!----></div>
</a>
        



      </div>
    </section>
</div>

<!---->

<!----></div>
</div>
</div>

    <!---->

    <!---->

    <!---->

  </main>
</div>
<footer id="ac-globalfooter" class="no-js" role="contentinfo" lang="en-US" dir="ltr"><div class="ac-gf-content"><section class="ac-gf-footer">
	<div class="ac-gf-footer-shop" x-ms-format-detection="none">
		More ways to shop: <a href="https://www.apple.com/retail/" data-analytics-title="find an apple store">Find an Apple Store</a> or <a href="https://locate.apple.com/" data-analytics-title="other retailers or resellers" data-analytics-exit-link>other retailer</a> near you. <span class="nowrap">Or call 1-800-MY-APPLE.</span>
	</div>
	<div class="ac-gf-footer-locale">
		<a class="ac-gf-footer-locale-link" href="https://www.apple.com/choose-country-region/" title="Choose your country or region" aria-label="Choose your country or region" data-analytics-title="choose your country">Choose your country or region</a>
	</div>
	<div class="ac-gf-footer-legal">
		<div class="ac-gf-footer-legal-copyright">Copyright &#xA9; 2020 Apple Inc. All rights reserved.</div>
		<div class="ac-gf-footer-legal-links">
			<a class="ac-gf-footer-legal-link" href="https://www.apple.com/legal/privacy/" data-analytics-title="privacy policy">Privacy Policy</a>
			<a class="ac-gf-footer-legal-link" href="https://www.apple.com/legal/internet-services/terms/site.html" data-analytics-title="terms of use">Terms of Use</a>
			<a class="ac-gf-footer-legal-link" href="https://www.apple.com/us/shop/goto/help/sales_refunds" data-analytics-title="sales and refunds">Sales and Refunds</a>
			<a class="ac-gf-footer-legal-link" href="https://www.apple.com/legal/" data-analytics-title="legal">Legal</a>
			<a class="ac-gf-footer-legal-link" href="https://www.apple.com/sitemap/" data-analytics-title="site map">Site Map</a>
		</div>
	</div>
</section>
</div></footer><script type="text/javascript" src="/global-elements/2038.1.0/en_US/ac-global-nav.40fb014033a1dce2eb83a26e023ba3e9.js" data-global-elements-nav-script async></script>
<script type="text/javascript" src="/global-elements/2038.1.0/en_US/ac-global-footer.87d5225f626f0b9df05fe81d34684040.js" data-global-elements-footer-script async></script>
<script type="fastboot/shoebox" id="shoebox-language-code">"en-us"</script><script type="fastboot/shoebox" id="shoebox-localizations">{"WEA.AppBundlePages.AppBundle":"App Bundle @@appPrice@@","WEA.AppBundlePages.NumberAppsInBundle.Many":"@@count@@ Apps in This Bundle","WEA.AppBundlePages.PurchasedSeparately":"Purchased Separately: @@price@@","WEA.AppPages.AX.ViewIn":"View On","WEA.AppPages.AdditionalScreenshots":"Additional Screenshots","WEA.AppPages.AgeRating":"Age Rating","WEA.AppPages.AppStore.Header":"App Store","WEA.AppPages.AppSupport":"App Support","WEA.AppPages.AppleTV":"Apple TV","WEA.AppPages.AppleWatch":"Apple Watch","WEA.AppPages.Arcade.Branding.Title":"Apple Arcade","WEA.AppPages.Arcade.Disclaimer":"*New subscribers only. Sign-up required. Subscription automatically renews for a monthly fee after trial.","WEA.AppPages.Arcade.Editorial.Author":"App Store Editors","WEA.AppPages.Arcade.Link.URL":"https://www.apple.com/apple-arcade/","WEA.AppPages.Arcade.UpsellBanner.CTA.Text":"Try It Free*","WEA.AppPages.Arcade.UpsellBanner.Text":"One subscription.","WEA.AppPages.Arcade.UpsellBanner.Title":"All you can play.","WEA.AppPages.Arcade.UpsellFooter.CTA.Text":"Try It Free*","WEA.AppPages.Arcade.UpsellFooter.Text":"One subscription.","WEA.AppPages.Arcade.UpsellFooter.Title":"All you can play.","WEA.AppPages.Availability.iOS":"This app is available only on the App Store for iPhone and iPad.","WEA.AppPages.Availability.iOS.Bundle":"This app bundle is available only on the App Store for iPhone and iPad.","WEA.AppPages.Availability.iOS.iPad":"This app is available only on the App Store for iPad.","WEA.AppPages.Availability.iOS.iPhone":"This app is available only on the App Store for iPhone.","WEA.AppPages.Availability.iOS.isiOS":"Open the App Store to buy and download apps.","WEA.AppPages.Availability.iOSmacOS":"This app is available only on the App Store for iPhone, iPad, and Mac.","WEA.AppPages.Availability.iOSmacOSwatchOS":"This app is available only on the App Store for iPhone, iPad, Mac, and Apple Watch.","WEA.AppPages.Availability.iOStvOS":"This app is available only on the App Store for iPhone, iPad, and Apple TV.","WEA.AppPages.Availability.iOStvOSmacOS":"This app is available only on the App Store for iPhone, iPad, Mac, and Apple TV.","WEA.AppPages.Availability.iOStvOSmacOSwatchOS":"This app is available only on the App Store for iPhone, iPad, Mac, Apple Watch, and Apple TV.","WEA.AppPages.Availability.iOStvOSwatchOS":"This app is available only on the App Store for iPhone, iPad, Apple Watch, and Apple TV.","WEA.AppPages.Availability.iOSwatchOS":"This app is available only on the App Store for iPhone, iPad, and Apple Watch.","WEA.AppPages.Availability.macOS":"Open the Mac App Store to buy and download apps.","WEA.AppPages.Availability.macOS.Bundle":"This app bundle is available only on the Mac App Store.","WEA.AppPages.Availability.tvOS":"This app is available only on the App Store for Apple TV.","WEA.AppPages.Availability.watchOS":"This app is available only on the App Store for Apple Watch.","WEA.AppPages.CTA.AppStore.AX":"View in App Store","WEA.AppPages.CTA.AppStore.Action":"View in","WEA.AppPages.CTA.AppStore.App":"App Store","WEA.AppPages.CTA.AppleSchool.AX":"View in Apple School","WEA.AppPages.CTA.AppleSchool.Action":"View in","WEA.AppPages.CTA.AppleSchool.App":"Apple School","WEA.AppPages.CTA.MacAppStore.AX":"View in Mac App Store","WEA.AppPages.CTA.MacAppStore.Action":"View in","WEA.AppPages.CTA.MacAppStore.App":"Mac App Store","WEA.AppPages.Category":"Category","WEA.AppPages.Compatibility":"Compatibility","WEA.AppPages.Copyright":"Copyright","WEA.AppPages.CustomerReviews.Title":"Ratings and Reviews","WEA.AppPages.CustomersAlsoBought.Title":"You May Also Like","WEA.AppPages.Description.Header":"Description","WEA.AppPages.DesignedFor":"Designed for @@platform@@","WEA.AppPages.DeveloperResponse":"Developer Response","WEA.AppPages.DeveloperWebsite":"Developer Website","WEA.AppPages.EditReview":"To edit your review of this app, use an iPhone or iPad to view the app on the App Store.","WEA.AppPages.EditReview.macOS.OldmacOS":"To edit your review, view this app in the Mac App Store.","WEA.AppPages.EditorsChoice":"Editors’ Choice","WEA.AppPages.EditorsNotes.Header":"Editors’ Notes","WEA.AppPages.Eula.Error":"Something went wrong. Try again.","WEA.AppPages.Eula.Title":"@@appName@@ @@version@@ License Agreement","WEA.AppPages.ExpectedReleaseDate":"Expected @@expectedReleaseDate@@","WEA.AppPages.FB.siteName.desktopApp":"Mac App Store","WEA.AppPages.FB.siteName.iosSoftware":"App Store","WEA.AppPages.FB.siteName.mobileSoftwareBundle":"App Store","WEA.AppPages.FamilySharing":"Family Sharing","WEA.AppPages.GameController":"Game Controller","WEA.AppPages.InAppPurchase.Title":"In-App Purchases","WEA.AppPages.InAppPurchases.Title":"In-App Purchases","WEA.AppPages.Information.Title":"Information","WEA.AppPages.Languages":"Languages","WEA.AppPages.LicenseAgreement":"License Agreement","WEA.AppPages.Location.Description":"This app may use your location even when it isn't open, which can decrease battery life.","WEA.AppPages.Location.Title":"Location","WEA.AppPages.MacAppStore.Header":"Mac App Store","WEA.AppPages.Meta.MacAppPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ for macOS @@minimumOSVersion@@ or later and enjoy it on your Mac.","WEA.AppPages.Meta.MacAppPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, mac apps, app store, appstore, applications, itunes","WEA.AppPages.Meta.MacAppStorePageTitle":"@@softwareName@@ on the Mac App Store","WEA.AppPages.Meta.PageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your iPhone, iPad, and iPod touch.","WEA.AppPages.Meta.PageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.AppPages.Meta.iOSmacOSPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your iPhone, iPad, iPod touch, or Mac OS X @@minimumOSVersion@@ or later.","WEA.AppPages.Meta.iOSmacOSPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, ios apps, mac apps, app, appstore, app store, applications, iphone, ipad, ipod touch, itouch, itunes","WEA.AppPages.Meta.iOSmacOSwatchOSPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your iPhone, iPad, iPod touch, Mac OS X @@minimumOSVersion@@ or later, or Apple Watch.","WEA.AppPages.Meta.iOSmacOSwatchOSPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, ios apps, mac apps, watchos apps, app, appstore, app store, applications, iphone, ipad, ipod touch, itouch, itunes, apple watch","WEA.AppPages.Meta.iOStvOSmacOSPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your iPhone, iPad, iPod touch, Mac OS X @@minimumOSVersion@@ or later, or Apple TV.","WEA.AppPages.Meta.iOStvOSmacOSPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, ios apps, tvos apps, mac apps, app, appstore, app store, applications, iphone, ipad, ipod touch, itouch, itunes, appletv, apple tv","WEA.AppPages.Meta.iOStvOSmacOSwatchOSPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your iPhone, iPad, iPod touch, Mac OS X @@minimumOSVersion@@ or later, Apple TV, or Apple Watch.","WEA.AppPages.Meta.iOStvOSmacOSwatchOSPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, ios apps, tvos apps, mac apps, watchos apps, app, appstore, app store, applications, iphone, ipad, ipod touch, itouch, itunes, appletv, apple tv, apple watch","WEA.AppPages.Meta.title":"@@softwareName@@ on the App Store","WEA.AppPages.Meta.tvOSAppPageMetaDescriptionLine":"Read reviews, compare customer ratings, see screenshots, and learn more about @@softwareName@@. Download @@softwareName@@ and enjoy it on your Apple TV.","WEA.AppPages.Meta.tvOSAppPageMetaKeywords":"@@softwareName@@, @@developerName@@, @@categoryNames@@, tvos apps, app, appstore, app store, appletv, apple tv","WEA.AppPages.Meta.tvOSAppPagetitle":"@@softwareName@@ on the App Store","WEA.AppPages.MoreAppsByDeveloperName":"More Apps by @@developerName@@","WEA.AppPages.MoreByThisDeveloper.Title":"More By This Developer","WEA.AppPages.OffersAppleWatchApp":"Offers Apple Watch App","WEA.AppPages.OffersAppleWatchAppForiPhone":"Offers Apple Watch App for iPhone","WEA.AppPages.OffersInAppPurchases":"Offers In-App Purchases","WEA.AppPages.OffersiMessageApp":"Offers iMessage App","WEA.AppPages.OffersiMessageAppForiOS":"Offers iMessage App for iOS","WEA.AppPages.OnlyForAppleTV":"Only for Apple TV","WEA.AppPages.OnlyForiMessage":"Only for iMessage","WEA.AppPages.Optional":"Optional","WEA.AppPages.PreOrder":"Pre-Order","WEA.AppPages.PreOrder.DateFormat":"MMM DD, YYYY","WEA.AppPages.PreOrderDisclaimer":"This content may change without notice, and the final product may be different.","WEA.AppPages.Price.Title":"Price","WEA.AppPages.PrivacyPolicy":"Privacy Policy","WEA.AppPages.RankInGenre":"#@@rank@@ in @@genreName@@","WEA.AppPages.Rating":"Rating","WEA.AppPages.Ratings.Title":"Ratings","WEA.AppPages.RatingsReviews.Title":"Ratings and Reviews","WEA.AppPages.Required":"Required","WEA.AppPages.Reviews.DateFormat":"MM/DD/YYYY","WEA.AppPages.Screenshots":"Screenshots","WEA.AppPages.Screenshots.appleTV":"Apple TV","WEA.AppPages.Screenshots.appleTVScreenshots":"Apple TV Screenshots","WEA.AppPages.Screenshots.appleWatch":"Apple Watch","WEA.AppPages.Screenshots.appleWatchScreenshots":"Apple Watch Screenshots","WEA.AppPages.Screenshots.ipad":"iPad","WEA.AppPages.Screenshots.ipadScreenshots":"iPad Screenshots","WEA.AppPages.Screenshots.iphone":"iPhone","WEA.AppPages.Screenshots.iphoneScreenshots":"iPhone Screenshots","WEA.AppPages.Screenshots.mac":"Mac","WEA.AppPages.Screenshots.messages":"iMessage","WEA.AppPages.Screenshots.messagesScreenshots":"iMessage Screenshots","WEA.AppPages.Seller":"Seller","WEA.AppPages.Size":"Size","WEA.AppPages.StandAloneForWatch":"Only on Apple Watch","WEA.AppPages.Subscriptions.FreeTrial":"Free Trial","WEA.AppPages.Subscriptions.PayAsYouGo":"@@price@@ Trial","WEA.AppPages.Subscriptions.PayUpFront":"@@price@@ Trial","WEA.AppPages.Subscriptions.Title":"Subscriptions","WEA.AppPages.Supports.FamilySharing.Description":"With Family Sharing set up, up to six family members can use this app.","WEA.AppPages.Supports.FamilySharing.Title":"Family Sharing","WEA.AppPages.Supports.GameCenter.Description":"Challenge friends and check leaderboards and achievements.","WEA.AppPages.Supports.GameCenter.Title":"Game Center","WEA.AppPages.Supports.GameController.Description":"Play this game with your favorite compatible controller.","WEA.AppPages.Supports.GameController.Title":"Game Controllers","WEA.AppPages.Supports.Siri.Description":"Get things done within this app using just your voice.","WEA.AppPages.Supports.Siri.Title":"Siri","WEA.AppPages.Supports.Title":"Supports","WEA.AppPages.Supports.Wallet.Description":"Get all of your passes, tickets, cards, and more in one place.","WEA.AppPages.Supports.Wallet.Title":"Wallet","WEA.AppPages.TopInAppPurchases.Title":"In-App Purchases","WEA.AppPages.TopInCategory.Title":"Top Apps In @@categoryName@@","WEA.AppPages.Twitter.domain.desktopApp":"MacAppStore","WEA.AppPages.Twitter.domain.iosSoftware":"AppStore","WEA.AppPages.Twitter.domain.mobileSoftwareBundle":"AppStore","WEA.AppPages.Twitter.site.desktopApp":"@MacAppStore","WEA.AppPages.Twitter.site.iosSoftware":"@AppStore","WEA.AppPages.Twitter.site.mobileSoftwareBundle":"@AppStore","WEA.AppPages.Updated":"Updated","WEA.AppPages.Version":"Version","WEA.AppPages.VersionHistory.Title":"Version History","WEA.AppPages.ViewIn":"View On:","WEA.AppPages.WhatsNew.Header":"What’s New","WEA.ArtistPages.Album.Songs.one":"1 song","WEA.ArtistPages.Album.Songs.other":"@@count@@ songs","WEA.ArtistPages.Albums":"Albums","WEA.ArtistPages.AppleMusic.Artist.PageDescription.Subscription":"Free with Apple Music","WEA.ArtistPages.AppleMusic.Artist.PageDescription.TopListings.ManyMore":"Listen to songs and albums by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" \"@@listing3@@,\" and many more.","WEA.ArtistPages.AppleMusic.Artist.PageDescription.TopListings.One":"Listen to songs and albums by @@artistName@@, including \"@@listing1@@.\"","WEA.ArtistPages.AppleMusic.Artist.PageDescription.TopListings.Three":"Listen to songs and albums by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" and \"@@listing3@@.\"","WEA.ArtistPages.AppleMusic.Artist.PageDescription.TopListings.Two":"Listen to songs and albums by @@artistName@@, including \"@@listing1@@,\" and \"@@listing2@@.\"","WEA.ArtistPages.AppleMusic.Artist.PageDescription.TrackPrice":"Buy songs starting at @@cheapestTrackPrice@@.","WEA.ArtistPages.AppleMusic.Artist.PageKeywords":"listen, @@artistName@@, music, songs, @@genreName@@, apple music","WEA.ArtistPages.AppleMusic.Artist.PageKeywords.WithoutGenre":"listen, @@artistName@@, music, songs, apple music","WEA.ArtistPages.AppleMusic.Artist.pageTitle":"@@artistName@@ on Apple Music","WEA.ArtistPages.Artist.PageDescription.TopListings.ManyMore":"Preview and download songs and albums by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" \"@@listing3@@,\" and many more.","WEA.ArtistPages.Artist.PageDescription.TopListings.One":"Preview and download songs and albums by @@artistName@@, including \"@@listing1@@.\"","WEA.ArtistPages.Artist.PageDescription.TopListings.Three":"Preview and download songs and albums by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" and \"@@listing3@@.\"","WEA.ArtistPages.Artist.PageDescription.TopListings.Two":"Preview and download songs and albums by @@artistName@@, including \"@@listing1@@,\" and \"@@listing2@@.\"","WEA.ArtistPages.Artist.PageDescription.TrackPrice":"Songs by @@artistName@@ start at @@cheapestTrackPrice@@.","WEA.ArtistPages.Artist.PageKeywords":"download, @@artistName@@, music, songs, @@genreName@@, itunes","WEA.ArtistPages.Artist.PageKeywords.WithoutGenre":"download, @@artistName@@, music, songs, itunes","WEA.ArtistPages.Artist.pageTitle":"@@artistName@@ on iTunes","WEA.ArtistPages.AudioBooks":"Audiobooks","WEA.ArtistPages.Author.PageDescription.TopListings.ManyMore":"Preview and download books by @@artistName@@, including @@listing1@@, @@listing2@@, @@listing3@@, and many more.","WEA.ArtistPages.Author.PageDescription.TopListings.One":"Preview and download books by @@artistName@@, including @@listing1@@.","WEA.ArtistPages.Author.PageDescription.TopListings.Three":"Preview and download books by @@artistName@@, including @@listing1@@, @@listing2@@, and @@listing3@@.","WEA.ArtistPages.Author.PageDescription.TopListings.Two":"Preview and download books by @@artistName@@, including @@listing1@@, and @@listing2@@.","WEA.ArtistPages.Author.PageKeywords":"download, @@artistName@@, books, @@genreName@@, ebooks, audiobooks, ibooks","WEA.ArtistPages.Author.PageKeywords.WithoutGenre":"download, @@artistName@@, books, ebooks, audiobooks, ibooks","WEA.ArtistPages.Author.pageTitle":"@@artistName@@ on Apple Books","WEA.ArtistPages.Books":"Books","WEA.ArtistPages.CTA.AM":"View On","WEA.ArtistPages.CTA.AM.AX":"View on Apple Music","WEA.ArtistPages.CTA.AM.Action":"View on","WEA.ArtistPages.CTA.AM.App":"Apple Music","WEA.ArtistPages.CTA.iTunes.Action":"View in","WEA.ArtistPages.Contemporaries":"Contemporaries","WEA.ArtistPages.FB.siteName.artist":"iTunes","WEA.ArtistPages.FB.siteName.artist.AM":"Apple Music","WEA.ArtistPages.FB.siteName.artist.iTunes":"iTunes","WEA.ArtistPages.Featured.RadioStation.AirTime":"AIRED @@timeTag@@","WEA.ArtistPages.FeaturedAlbum":"FEATURED ALBUM","WEA.ArtistPages.InfluencedBy":"Influenced By This Artist","WEA.ArtistPages.Influencers":"Influencers","WEA.ArtistPages.LatestRelease":"Latest Release","WEA.ArtistPages.Meta.Artist.Title.AM":"@@artistName@@ on Apple Music","WEA.ArtistPages.Meta.Artist.Title.iTunes":"@@artistName@@ on iTunes","WEA.ArtistPages.Meta.Author.Title.iTunes":"@@artistName@@ Books on Apple Books","WEA.ArtistPages.Meta.Movie_Artist.Title.iTunes":"@@artistName@@ Movies on iTunes","WEA.ArtistPages.Meta.Podcast_Artist.Title.iTunes":"@@artistName@@ Podcasts on iTunes","WEA.ArtistPages.Meta.Software_Artist.Title.iTunes":"@@artistName@@ Apps on the App Store","WEA.ArtistPages.Meta.Title.Artist.AM":"@@artistName@@ on Apple Music","WEA.ArtistPages.Meta.iTunes_U_Artist.Title.iTunes":"@@artistName@@ Courses on iTunes","WEA.ArtistPages.Movie_Artist.PageDescription.TopListings.ManyMore":"Preview and download movies by @@artistName@@, including @@listing1@@, @@listing2@@, @@listing3@@, and many more.","WEA.ArtistPages.Movie_Artist.PageDescription.TopListings.One":"Preview and download movies by @@artistName@@, including @@listing1@@.","WEA.ArtistPages.Movie_Artist.PageDescription.TopListings.Three":"Preview and download movies by @@artistName@@, including @@listing1@@, @@listing2@@, and @@listing3@@.","WEA.ArtistPages.Movie_Artist.PageDescription.TopListings.Two":"Preview and download movies by @@artistName@@, including @@listing1@@, and @@listing2@@.","WEA.ArtistPages.Movie_Artist.PageKeywords":"download, @@artistName@@, movies, itunes","WEA.ArtistPages.Movie_Artist.PageKeywords.WithoutGenre":"download, @@artistName@@, movies, itunes","WEA.ArtistPages.Movie_Artist.pageTitle":"@@artistName@@ Movies on iTunes","WEA.ArtistPages.Movies":"Movies","WEA.ArtistPages.MusicVideos":"Music Videos","WEA.ArtistPages.PeopleAlsoSearchedFor":"People Also Searched For","WEA.ArtistPages.Podcast_Artist.PageDescription.TopListings.ManyMore":"Preview and download podcasts by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" \"@@listing3@@,\" and many more.","WEA.ArtistPages.Podcast_Artist.PageDescription.TopListings.One":"Preview and download podcasts by @@artistName@@, including \"@@listing1@@.\"","WEA.ArtistPages.Podcast_Artist.PageDescription.TopListings.Three":"Preview and download podcasts by @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" and \"@@listing3@@.\"","WEA.ArtistPages.Podcast_Artist.PageDescription.TopListings.Two":"Preview and download podcasts by @@artistName@@, including \"@@listing1@@,\" and \"@@listing2@@.\"","WEA.ArtistPages.Podcast_Artist.PageKeywords":"download, @@artistName@@, podcasts, itunes","WEA.ArtistPages.Podcast_Artist.PageKeywords.WithoutGenre":"download, @@artistName@@, podcasts, itunes","WEA.ArtistPages.Podcast_Artist.pageTitle":"@@artistName@@ Podcasts on iTunes","WEA.ArtistPages.Prerelease.Coming":"COMING @@releaseDate@@","WEA.ArtistPages.Prerelease.Title":"Upcoming Album","WEA.ArtistPages.Software_Artist.PageDescription.TopListings.ManyMore":"Download iPhone and iPad apps by @@artistName@@, including @@listing1@@, @@listing2@@, @@listing3@@, and many more.","WEA.ArtistPages.Software_Artist.PageDescription.TopListings.One":"Download iPhone and iPad apps by @@artistName@@, including @@listing1@@.","WEA.ArtistPages.Software_Artist.PageDescription.TopListings.Three":"Download iPhone and iPad apps by @@artistName@@, including @@listing1@@, @@listing2@@, and @@listing3@@.","WEA.ArtistPages.Software_Artist.PageDescription.TopListings.Two":"Download iPhone and iPad apps by @@artistName@@, including @@listing1@@, and @@listing2@@.","WEA.ArtistPages.Software_Artist.PageKeywords":"download, @@artistName@@, @@categoryNames@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.ArtistPages.Software_Artist.PageKeywords.WithoutGenre":"download, @@artistName@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.ArtistPages.Software_Artist.pageTitle":"@@artistName@@ Apps on the App Store","WEA.ArtistPages.Songs":"Songs","WEA.ArtistPages.Studio.PageDescription.TopListings.ManyMore":"Preview and download movies by @@studioName@@, including @@listing1@@, @@listing2@@, @@listing3@@, and many more.","WEA.ArtistPages.Studio.PageDescription.TopListings.One":"Preview and download movies by @@studioName@@, including @@listing1@@.","WEA.ArtistPages.Studio.PageDescription.TopListings.Three":"Preview and download movies by @@studioName@@, including @@listing1@@, @@listing2@@, and @@listing3@@.","WEA.ArtistPages.Studio.PageDescription.TopListings.Two":"Preview and download movies by @@studioName@@, including @@listing1@@, and @@listing2@@.","WEA.ArtistPages.Studio.PageKeywords":"@@studioName@@, studio, itunes","WEA.ArtistPages.Studio.PageKeywords.WithoutGenre":"@@studioName@@, studio, itunes","WEA.ArtistPages.Studio.pageTitle":"@@studioName@@ on iTunes","WEA.ArtistPages.TVSeasons":"TV Seasons","WEA.ArtistPages.TV_Show.PageDescriptionLine":"Preview and download @@ tvShowName@@ on iTunes.","WEA.ArtistPages.TV_Show.PageKeywords":"download, @@tvShowName@@, @@genreName@@, tv show, itunes","WEA.ArtistPages.TV_Show.PageKeywords.WithoutGenre":"download, @@tvShowName@@, tv show, itunes","WEA.ArtistPages.TV_Show.pageTitle":"@@tvShowName@@ on iTunes","WEA.ArtistPages.TopAlbums":"Albums","WEA.ArtistPages.TopAudioBooks":"Audiobooks","WEA.ArtistPages.TopBooks":"Books","WEA.ArtistPages.TopMovies":"Movies","WEA.ArtistPages.TopMusicVideos":"Music Videos","WEA.ArtistPages.TopSongs":"Songs","WEA.ArtistPages.TopTVSeasons":"TV Seasons","WEA.ArtistPages.Twitter.domain.artist":"iTunes","WEA.ArtistPages.Twitter.domain.artist.AM":"Apple Music","WEA.ArtistPages.Twitter.domain.artist.iTunes":"iTunes","WEA.ArtistPages.Twitter.site.artist":"@iTunes","WEA.ArtistPages.Twitter.site.artist.AM":"@AppleMusic","WEA.ArtistPages.Twitter.site.artist.iTunes":"@iTunes","WEA.ArtistPages.iTunes_U_Artist.PageDescription.TopListings.ManyMore":"Preview and download courses and lectures from @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" \"@@listing3@@,\" and many more.","WEA.ArtistPages.iTunes_U_Artist.PageDescription.TopListings.One":"Preview and download courses and lectures from @@artistName@@, including \"@@listing1@@.\"","WEA.ArtistPages.iTunes_U_Artist.PageDescription.TopListings.Three":"Preview and download courses and lectures from @@artistName@@, including \"@@listing1@@,\" \"@@listing2@@,\" and \"@@listing3@@.\"","WEA.ArtistPages.iTunes_U_Artist.PageDescription.TopListings.Two":"Preview and download courses and lectures from @@artistName@@, including \"@@listing1@@,\" and \"@@listing2@@.\"","WEA.ArtistPages.iTunes_U_Artist.PageKeywords":"download, @@artistName@@, courses, lectures, itunes","WEA.ArtistPages.iTunes_U_Artist.PageKeywords.WithoutGenre":"download, @@artistName@@, courses, lectures, itunes","WEA.ArtistPages.iTunes_U_Artist.pageTitle":"@@artistName@@ Courses on iTunes","WEA.AudiobookPages.Meta.Keywords":"listen, @@audiobookName@@, download, audiobooks, apple books","WEA.AudiobookPages.Meta.Title":"@@audiobookName@@ on Apple Books","WEA.AuthorPages.AudioBooks":"Audiobooks","WEA.AuthorPages.Books":"Books","WEA.AuthorPages.Meta.Description.one":"Preview and download books by @@authorName@@, including @@listing1@@.","WEA.AuthorPages.Meta.Description.several":"Preview and download books by @@authorName@@, including @@listing1@@, @@listing2@@ and many more.","WEA.AuthorPages.Meta.Description.zero":"Preview and download books by @@authorName@@.","WEA.AuthorPages.Meta.Keywords":"download, @@authorName@@, books on iphone, ipad, Mac, Apple Books","WEA.AuthorPages.Meta.Title":"@@authorName@@ on Apple Books","WEA.BookPages.AndOtherAuthorsSuffix":"and Others","WEA.BookPages.AppleBookReview.Title":"APPLE BOOKS REVIEW","WEA.BookPages.AudioBooks.CustomersAlsoBought":"Listeners Also Bought","WEA.BookPages.AuthorOtherBooks":"More Books by @@authorName@@","WEA.BookPages.AuthorsSeparator":"\u0026","WEA.BookPages.Availability.Windows":"This book can be downloaded and read in Apple Books on your Mac or iOS device.","WEA.BookPages.Badges.Audience.Title":"AUDIENCE","WEA.BookPages.Badges.AvailabilityDate.Title":"AVAILABLE","WEA.BookPages.Badges.Genres.Title":"GENRE","WEA.BookPages.Badges.Language.Title":"LANGUAGE","WEA.BookPages.Badges.Length.Format.Audiobooks":"@@hours@@:@@minutes@@","WEA.BookPages.Badges.Length.Pages.one":"Page","WEA.BookPages.Badges.Length.Pages.other":"Pages","WEA.BookPages.Badges.Length.Title.Audiobooks":"LENGTH","WEA.BookPages.Badges.Length.Title.Books":"LENGTH","WEA.BookPages.Badges.Narrator.Title":"NARRATOR","WEA.BookPages.Badges.Presenter.Title":"PRESENTED BY","WEA.BookPages.Badges.Publisher.Title":"PUBLISHER","WEA.BookPages.Badges.ReleaseDate.DateFormat":"MMMM D","WEA.BookPages.Badges.ReleaseDate.Title":"RELEASED","WEA.BookPages.Badges.Seller.Title":"SELLER","WEA.BookPages.Badges.Size.Title":"SIZE","WEA.BookPages.CTA.AppleBooks.AX":"View in Apple Books","WEA.BookPages.CTA.AppleBooks.Action":"View in","WEA.BookPages.CTA.AppleBooks.App":"Apple Books","WEA.BookPages.ExpectedReleaseDate":"Expected @@expectedReleaseDate@@","WEA.BookPages.FB.siteName.book":"Apple Books","WEA.BookPages.FB.siteName.epubBook":"Apple Books","WEA.BookPages.FB.siteName.ibook":"Apple Books","WEA.BookPages.FB.siteName.ibookTextbook":"Apple Books","WEA.BookPages.Meta.GenericDescription":"From mysteries to memoirs, enjoy books and audiobooks on your iPhone, iPad, iPod touch, or Apple Watch. Read free samples of ebooks and listen to free audiobook previews. Get recent bestsellers, all-time favorites, and more on Apple Books—all ready to instantly download.","WEA.BookPages.Meta.Keywords":"download, @@bookName@@, books on iphone, ipad, Mac, Apple Books","WEA.BookPages.Meta.PageMetaDescription":"Read a free sample or buy @@ebookName@@ by @@authorName@@. You can read this book with Apple Books on your iPhone, iPad, iPod touch, or Mac.","WEA.BookPages.Meta.PageMetaKeywords":"@@ebookName@@, @@authorName@@, @@categoryName@@, iBooks, iBook, books, ipad, itunes, iphone, ipod touch, itouch, synopsis, best sellers list, Apple Books","WEA.BookPages.Meta.Title":"@@bookName@@ on Apple Books","WEA.BookPages.Meta.title":"@@ebookName@@ by @@authorName@@ on Apple Books ","WEA.BookPages.Oprah.Meta.NonTwitter.Description":"Read with us—get Oprah’s latest book club picks on Apple Books as ebooks or audiobooks. You can also download free samples of Oprah’s ebook selections and listen to previews of the audiobooks. For every Oprah’s Book Club pick sold on Apple Books, Apple will make a contribution to the American Library Association to support local libraries.","WEA.BookPages.Oprah.Meta.NonTwitter.Title":"Oprah’s Book Club on Apple Books","WEA.BookPages.Oprah.Meta.Page.Description":"Read with us—get Oprah’s latest book club picks on Apple Books as ebooks or audiobooks. You can also download free samples of Oprah’s ebook selections and listen to previews of the audiobooks. For every Oprah’s Book Club pick sold on Apple Books, Apple will make a contribution to the American Library Association to support local libraries.","WEA.BookPages.Oprah.Meta.Page.Title":"Oprah’s Book Club on Apple Books","WEA.BookPages.Oprah.Meta.Twitter.Description":"Read with us—get Oprah’s latest book club picks on Apple Books as ebooks or audiobooks. You can also download free samples of Oprah’s ebook selections and listen to previews of the audiobooks. For every Oprah’s Book Club pick sold on Apple Books, Apple will make a contribution to the American Library Association to support local libraries.","WEA.BookPages.Oprah.Meta.Twitter.Title":"Oprah’s Book Club on Apple Books","WEA.BookPages.OtherBooksInBookSeries":"Other Books in This Series","WEA.BookPages.PreOrder":"Pre-Order","WEA.BookPages.PublisherDescription.Title":"Publisher Description","WEA.BookPages.Reviews":"Customer Reviews","WEA.BookPages.Signed.Oprah.Accessibility":"Signed, Oprah","WEA.BookPages.Twitter.domain.book.AppleBooks":"Apple Books","WEA.BookPages.Twitter.site.book.AppleBooks":"@AppleBooks","WEA.Charts.AudioBooks.Meta.Description":"Browse the list of most popular and best selling audiobooks on Apple Books. Find the top charts for best audiobooks to listen across all genres.","WEA.Charts.AudioBooks.Meta.GenreDescription":"Find the best @@genre@@ audiobooks to listen on Apple Books. View the list of top free audiobooks and the best selling titles including @@entity1@@, @@entity2@@ and more.","WEA.Charts.AudioBooks.Meta.GenreKeywords":"top @@genre@@ audiobooks, top @@genre@@ audiobooks on iphone, ipad, Mac, Apple Books","WEA.Charts.AudioBooks.Meta.GenreTitle":"Top @@genre@@ audiobooks - Apple Books (@@storefront@@)","WEA.Charts.AudioBooks.Meta.Keywords":"top audiobooks, top audiobooks on iphone, ipad, Mac, Apple Books","WEA.Charts.AudioBooks.Meta.Title":"Top audiobooks - Apple Books (@@storefront@@)","WEA.Charts.AudioBooks.Title":"Top Audiobooks","WEA.Charts.Books.Meta.ChartDescription":"Find the best @@genre@@ (@@chart@@) books to read on Apple Books. View the list of top titles including @@entity1@@, @@entity2@@ and more.","WEA.Charts.Books.Meta.ChartKeywords":"top @@chart@@ @@genre@@ books, top @@chart@@ @@genre@@ books on iphone, ipad, Mac, Apple Books","WEA.Charts.Books.Meta.ChartTitle":"Top @@genre@@ books (@@chart@@) - Apple Books (@@storefront@@)","WEA.Charts.Books.Meta.Description":"Browse the list of most popular and best selling books on Apple Books. Find the top charts for best books to read across all genres.","WEA.Charts.Books.Meta.GenreDescription":"Find the best @@genre@@ books to read on Apple Books. View the list of top free books and the best selling titles including @@entity1@@, @@entity2@@ and more.","WEA.Charts.Books.Meta.GenreKeywords":"top @@genre@@ books, top @@genre@@ books on iphone, ipad, Mac, Apple Books","WEA.Charts.Books.Meta.GenreTitle":"Top @@genre@@ books - Apple Books (@@storefront@@)","WEA.Charts.Books.Meta.Keywords":"top books, top books on iphone, ipad, Mac, Apple Books","WEA.Charts.Books.Meta.Title":"Top books - Apple Books (@@storefront@@)","WEA.Charts.Books.Title":"Top Books","WEA.Charts.GenreFilter.Button":"Genre Charts","WEA.Charts.LocalNav.Links.OBC":"Oprah’s Book Club","WEA.Charts.LocalNav.Links.TopAudiobooks":"Top Audiobooks","WEA.Charts.LocalNav.Links.TopBooks":"Top Books","WEA.Common.Accessibility.LocalNavClose":"Local Nav Close Menu","WEA.Common.Accessibility.LocalNavOpen":"Local Nav Open Menu","WEA.Common.Authentication.Login":"Sign In","WEA.Common.Authentication.Logout":"Sign Out","WEA.Common.AverageRating":"@@rating@@ out of @@ratingTotal@@","WEA.Common.Close":"Close","WEA.Common.Comma":", ","WEA.Common.DateFormat":"ll","WEA.Common.DateFormat.AX":"LL","WEA.Common.DotSeparator":"@@string1@@ · @@string2@@","WEA.Common.Duration":"Duration","WEA.Common.Ellipsis.Animated":"\u003cspan\u003e.\u003c/span\u003e\u003cspan\u003e.\u003c/span\u003e\u003cspan\u003e.\u003c/span\u003e","WEA.Common.Errors.404":"The content you’ve requested isn’t currently available.","WEA.Common.Errors.404.Title":"Content Not Available","WEA.Common.FileSize.GB":"@@count@@ GB","WEA.Common.FileSize.GB.AX.one":"1 gigabyte","WEA.Common.FileSize.GB.AX.other":"@@count@@ gigabytes","WEA.Common.FileSize.GB.Unit":"GB","WEA.Common.FileSize.KB":"@@count@@ KB","WEA.Common.FileSize.KB.AX.one":"1 kilobyte","WEA.Common.FileSize.KB.AX.other":"@@count@@ kilobytes","WEA.Common.FileSize.KB.Unit":"KB","WEA.Common.FileSize.MB":"@@count@@ MB","WEA.Common.FileSize.MB.AX.one":"1 megabyte","WEA.Common.FileSize.MB.AX.other":"@@count@@ megabytes","WEA.Common.FileSize.MB.Unit":"MB","WEA.Common.FileSize.byte.Unit":"byte","WEA.Common.FileSize.byte.one":"1 byte","WEA.Common.FileSize.byte.other":"@@count@@ bytes","WEA.Common.Free":"Free","WEA.Common.Get":"GET","WEA.Common.Hours.Unit.Short":"hr","WEA.Common.Hours.abbr.one":"1 hr","WEA.Common.Hours.abbr.other":"@@count@@ hr","WEA.Common.Hours.one":"1 Hour","WEA.Common.Hours.other":"@@count@@ Hours","WEA.Common.Languages.AD":"AD","WEA.Common.Languages.AudioTrack":"AudioTrack","WEA.Common.Languages.CC":"CC","WEA.Common.Languages.Dolby51":"Dolby Digital 5.1","WEA.Common.Languages.Dolby51Plus":"Dolby Digital Plus 5.1","WEA.Common.Languages.Dolby71Plus":"Dolby Digital Plus 7.1","WEA.Common.Languages.DolbyAtmos":"Dolby Atmos","WEA.Common.Languages.SDH":"SDH","WEA.Common.Languages.Subtitled":"Subtitled","WEA.Common.Languages.hasAudioDescription":"Audio Description","WEA.Common.Languages.hasDolby":"Dolby 5.1","WEA.Common.Languages.hasDolby71":"Dolby 7.1","WEA.Common.Languages.hasStereo":"Stereo","WEA.Common.Languages.hasSubtitles":"Subtitles","WEA.Common.Languages.languageDescriptor":"@@languageName@@ (@@languageMeta@@)","WEA.Common.LastUpdated.Friday":"Updated Friday","WEA.Common.LastUpdated.LastWeek":"Updated Last Week","WEA.Common.LastUpdated.Monday":"Updated Monday","WEA.Common.LastUpdated.Saturday":"Updated Saturday","WEA.Common.LastUpdated.Sunday":"Updated Sunday","WEA.Common.LastUpdated.Thursday":"Updated Thursday","WEA.Common.LastUpdated.Today":"Updated Today","WEA.Common.LastUpdated.Tuesday":"Updated Tuesday","WEA.Common.LastUpdated.TwoWeeksAgo":"Updated 2 Weeks Ago","WEA.Common.LastUpdated.Wednesday":"Updated Wednesday","WEA.Common.LastUpdated.Yesterday":"Updated Yesterday","WEA.Common.LearnMore":"Learn More","WEA.Common.Listen":"Listen","WEA.Common.Loading":"Loading","WEA.Common.Meta.Description.Subscription.AM":"Available with an Apple Music subscription. Try it free.","WEA.Common.Meta.FB.genericDescription.Books":"From mysteries to memoirs, enjoy books and audiobooks on your iPhone, iPad, iPod touch, or Apple Watch. Read free samples of ebooks and listen to free audiobook previews. Get recent bestsellers, all-time favorites, and more on Apple Books—all ready to instantly download.","WEA.Common.Meta.FB.siteName.AM":"Apple Music","WEA.Common.Meta.FB.siteName.AppleTV":"Apple TV","WEA.Common.Meta.FB.siteName.Apps":"App Store","WEA.Common.Meta.FB.siteName.Books":"Apple Books","WEA.Common.Meta.FB.siteName.MacApps":"Mac App Store","WEA.Common.Meta.FB.siteName.Podcasts":"Apple Podcasts","WEA.Common.Meta.FB.siteName.iTunes":"iTunes","WEA.Common.Meta.Twitter.domain.AM":"Apple Music","WEA.Common.Meta.Twitter.domain.AppleTV":"Apple TV","WEA.Common.Meta.Twitter.domain.Apps":"App Store","WEA.Common.Meta.Twitter.domain.Books":"Apple Books","WEA.Common.Meta.Twitter.domain.MacApps":"Mac App Store","WEA.Common.Meta.Twitter.domain.Podcasts":"Apple Podcasts","WEA.Common.Meta.Twitter.domain.iTunes":"iTunes","WEA.Common.Meta.Twitter.genericDescription.Books":"From mysteries to memoirs, enjoy books and audiobooks on your iPhone, iPad, iPod touch, or Apple Watch. Read free samples of ebooks and listen to free audiobook previews. Get recent bestsellers, all-time favorites, and more on Apple Books—all ready to instantly download.","WEA.Common.Meta.Twitter.site.AM":"@appleMusic","WEA.Common.Meta.Twitter.site.AppleTV":"**WEA.Common.Meta.Twitter.site.AppleTV**","WEA.Common.Meta.Twitter.site.Apps":"**WEA.Common.Meta.Twitter.site.Apps**","WEA.Common.Meta.Twitter.site.Books":"@AppleBooks","WEA.Common.Meta.Twitter.site.Podcasts":"**WEA.Common.Meta.Twitter.site.Podcasts**","WEA.Common.Meta.Twitter.site.iTunes":"@iTunes","WEA.Common.Minutes.Unit.Short":"min","WEA.Common.Minutes.abbr.one":"1 min","WEA.Common.Minutes.abbr.other":"@@count@@ min","WEA.Common.Minutes.one":"1 Minute","WEA.Common.Minutes.other":"@@count@@ Minutes","WEA.Common.More":"more","WEA.Common.NowPlaying":"NOW PLAYING","WEA.Common.Number":"@@count@@","WEA.Common.OG.SiteName.AppleBooks":"Apple Books","WEA.Common.OG.SiteName.TV":"Apple TV","WEA.Common.OG.SiteName.iTunes":"iTunes","WEA.Common.OpensIn.AppleBooks":"Opens In Apple Books","WEA.Common.Paid":"Paid","WEA.Common.Pause":"PAUSE","WEA.Common.Pause.Alternate":"PAUSE","WEA.Common.Percentage":"@@percentage@@%","WEA.Common.Platforms.AppleTv":"Apple TV","WEA.Common.Platforms.Bundles":"Bundles","WEA.Common.Platforms.Mac":"Mac","WEA.Common.Platforms.Watch":"Apple Watch","WEA.Common.Platforms.iMessage":"iMessage","WEA.Common.Platforms.iPad":"iPad","WEA.Common.Platforms.iPadiPhone":"iPad \u0026 iPhone","WEA.Common.Platforms.iPhone":"iPhone","WEA.Common.Play":"Play","WEA.Common.Play.Alternate":"PLAY","WEA.Common.Playback.Progress":"Playback Progress","WEA.Common.Playback.Skip.Ahead":"Skip Ahead","WEA.Common.Playback.Skip.Back":"Skip Back","WEA.Common.Preview":"PREVIEW","WEA.Common.Preview.VideoName":"Preview @@videoName@@","WEA.Common.Ratings.one":"1 Rating","WEA.Common.Ratings.other":"@@count@@ Ratings","WEA.Common.Ratings.zero":"No Ratings","WEA.Common.Related":"Related","WEA.Common.Released":"Released: @@releaseDate@@","WEA.Common.Roles.AsCharacter":"as @@characterName@@","WEA.Common.Roles.Type.Actor":"Actor","WEA.Common.Roles.Type.Advisor":"Advisor","WEA.Common.Roles.Type.Cast":"Cast","WEA.Common.Roles.Type.Creator":"Creator","WEA.Common.Roles.Type.Director":"Director","WEA.Common.Roles.Type.Guest":"Guest","WEA.Common.Roles.Type.GuestStar":"Guest Star","WEA.Common.Roles.Type.Host":"Host","WEA.Common.Roles.Type.Music":"Music","WEA.Common.Roles.Type.Performer":"Performer","WEA.Common.Roles.Type.Producer":"Producer","WEA.Common.Roles.Type.Voice":"Voice","WEA.Common.Roles.Type.Writer":"Writer","WEA.Common.Seconds.abbr.one":"1 sec","WEA.Common.Seconds.abbr.other":"@@count@@ sec","WEA.Common.Seconds.one":"1 Second","WEA.Common.Seconds.other":"@@count@@ Seconds","WEA.Common.SeeAll.Button":"See All","WEA.Common.SeeAll.Title.Generic":"@@parentName@@ - @@sectionTitle@@","WEA.Common.SeeAll.Title.Item":"@@itemName@@ - @@productName@@ - @@sectionTitle@@","WEA.Common.SeeAll.Title.Product":"@@artistName@@ — @@sectionTitle@@","WEA.Common.SentenceDelimiter":".","WEA.Common.SeparatorDuration":"@@hours@@ @@minutes@@","WEA.Common.SeparatorDuration.Short":"@@string1@@:@@string2@@","WEA.Common.SeparatorGeneric":"@@string1@@, @@string2@@","WEA.Common.Share.CloseMenu.AX":"Close sharing menu","WEA.Common.Share.Embed.AX":"Copy the embed code for the @@contentType@@ @@mediaTitle@@ by @@name@@","WEA.Common.Share.EmbedCopied":"Embed Code Copied","WEA.Common.Share.Link.AX":"Copy a link to the @@contentType@@ @@mediaTitle@@ by @@name@@","WEA.Common.Share.LinkCopied":"Link Copied","WEA.Common.Share.OpenMenu.AX":"Open sharing menu","WEA.Common.Share.Social.AX":"Share the @@contentType@@ @@mediaTitle@@ by @@name@@ on @@network@@","WEA.Common.Shuffle":"Shuffle","WEA.Common.TV.CTA.AM":"Watch on Mac, PC, or Android with Apple Music","WEA.Common.TV.CTA.AX":"Watch on Apple TV","WEA.Common.TimeFormat.HourOrMore":"h:mm:ss","WEA.Common.TimeFormat.UnderHour":"m:ss","WEA.Common.TogglePlay":"Play/Pause","WEA.Common.TrackList.Album":"ALBUM","WEA.Common.TrackList.Artist":"ARTIST","WEA.Common.TrackList.Price":"PRICE","WEA.Common.TrackList.Time":"TIME","WEA.Common.TrackList.TimeRemaining":"Time remaining","WEA.Common.TrackList.Track":"TITLE","WEA.Common.Twitter.Domain.TV":"Apple TV","WEA.Common.Twitter.Site.TV":"@AppleTV","WEA.Common.VideoSubType.concert":"CONCERT","WEA.Common.VideoSubType.episode":"EPISODE","WEA.Common.VideoSubType.episodebonus":"EPISODE BONUS","WEA.Common.VideoSubType.feature":"FEATURE","WEA.Common.VideoSubType.seasonbonus":"SEASON BONUS","WEA.Common.VideoSubType.short":"SHORT","WEA.Common.VideoSubType.specialty":"SPECIALTY","WEA.Common.VideoSubType.tvextra":"EXTRA","WEA.Common.VideoSubType.tvinterview":"INTERVIEW","WEA.Common.VideoSubType.tvtrailer":"TRAILER","WEA.Common.View":"VIEW","WEA.Common.YearFormat":"YYYY","WEA.Common.YearFormat.AX":"YYYY","WEA.Common.Yes":"Yes","WEA.CuratorPages.FB.siteName.curator":"Apple Music","WEA.CuratorPages.Meta.Description.Social.one":"1 Playlist","WEA.CuratorPages.Meta.Description.Social.other":"@@count@@ Playlists","WEA.CuratorPages.Meta.Title":"@@curatorName@@ on Apple Music","WEA.CuratorPages.PageKeywords":"listen, @@curatorName@@, music, playlist, songs, streaming music, apple music","WEA.CuratorPages.Playlists":"Playlists","WEA.CuratorPages.Twitter.domain.curator":"Apple Music","WEA.CuratorPages.Twitter.site.curator":"@appleMusic","WEA.DeepLinkPages.Social.Invite.Description.AM":"Discover music with friends","WEA.DeepLinkPages.Social.Invite.Title.AM":"Start Sharing on Apple Music","WEA.DeepLinkPages.Social.Subscribe.Description.AM":"Play and download all the music you want.","WEA.DeepLinkPages.Social.Subscribe.Title.AM":"Try Apple Music","WEA.DeveloperPages.FB.siteName.developer":"App Store","WEA.DeveloperPages.Meta.Description.ManyApps":"Download apps by @@developerName@@, including @@listing1@@, @@listing2@@, @@listing3@@, and many more.","WEA.DeveloperPages.Meta.Description.NoApps":"Download apps by @@developerName@@","WEA.DeveloperPages.Meta.Description.OneApp":"Download apps by @@developerName@@, including @@listing1@@.","WEA.DeveloperPages.Meta.Description.ThreeApps":"Download apps by @@developerName@@, including @@listing1@@, @@listing2@@, and @@listing3@@.","WEA.DeveloperPages.Meta.Description.TwoApps":"Download apps by @@developerName@@, including @@listing1@@ and @@listing2@@.","WEA.DeveloperPages.Meta.PageKeywords":"download, @@developerName@@, apps on iphone, ipad, iMessage, Apple Watch, Mac","WEA.DeveloperPages.Meta.Title":"@@developerName@@ Apps on the App Store","WEA.DeveloperPages.Twitter.domain.developer":"App Store","WEA.DeveloperPages.Twitter.site.developer":"@AppStore","WEA.EditorialItemProductPages.AppOfTheDay":"APP OF THE DAY","WEA.EditorialItemProductPages.Banner.Copy":"This story can only be viewed on the App Store in iOS 11 or later on your iPhone or iPad. @@link@@","WEA.EditorialItemProductPages.Banner.Copy.NewmacOS":"This story can be viewed only in the App Store. @@link@@","WEA.EditorialItemProductPages.Banner.Copy.NonmacOS":"This story can be viewed only in the App Store. @@link@@","WEA.EditorialItemProductPages.Banner.Copy.OldmacOS":"To view this story, @@link@@","WEA.EditorialItemProductPages.Banner.Headline":"Get the Full Experience","WEA.EditorialItemProductPages.Banner.Headline.NewmacOS":"Get the Full Experience","WEA.EditorialItemProductPages.Banner.Headline.NonmacOS":"Get the Full Experience","WEA.EditorialItemProductPages.Banner.Headline.OldmacOS":"Get the Full Experience","WEA.EditorialItemProductPages.Banner.Link.Text":"Learn more.","WEA.EditorialItemProductPages.Banner.Link.Text.NewmacOS":"Learn more.","WEA.EditorialItemProductPages.Banner.Link.Text.NonmacOS":"Learn more.","WEA.EditorialItemProductPages.Banner.Link.Text.OldmacOS":"upgrade to the latest macOS.","WEA.EditorialItemProductPages.Banner.Link.URL":"https://www.apple.com/ios/app-store/","WEA.EditorialItemProductPages.Banner.Link.URL.NewmacOS":"https://www.apple.com/macos/mojave-preview/#mac-app-store","WEA.EditorialItemProductPages.Banner.Link.URL.NonmacOS":"https://www.apple.com/macos/mojave-preview/#mac-app-store","WEA.EditorialItemProductPages.Banner.Link.URL.OldmacOS":"macappstore://itunes.apple.com/WebObjects/MZStore.woa/wa/storeFront","WEA.EditorialItemProductPages.CTA.Headline":"Get the Full Experience","WEA.EditorialItemProductPages.CTA.Link.Url":"https://www.apple.com/ios/app-store/","WEA.EditorialItemProductPages.CTA.Text":"This story can only be viewed on the App Store in iOS 11 or later on your iPhone or iPad.","WEA.EditorialItemProductPages.CTA.Text.AX":"VIEW @@appName@@","WEA.EditorialItemProductPages.FB.siteName.iosSoftware":"App Store","WEA.EditorialItemProductPages.FB.siteName.macOs":"Mac App Store","WEA.EditorialItemProductPages.GameOfTheDay":"GAME OF THE DAY","WEA.EditorialItemProductPages.InAppPurchase":"IN-APP PURCHASE","WEA.EditorialItemProductPages.InAppPurchase.Title":"@@purchaseName@@ for @@appName@@","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaDescription":"Learn about @@storyTitle@@ on Mac App Store. Download @@featuredAppName@@ and enjoy it on your Mac.","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaDescription.Collection.ManyMore":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, and many more on Mac App Store. Enjoy these apps on your Mac.","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaDescription.Collection.One":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@ and many more on Mac App Store. Enjoy these apps on your Mac.","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaDescription.Collection.Three":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, and many more on Mac App Store. Enjoy these apps on your Mac.","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaDescription.Collection.Two":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, and many more on Mac App Store. Enjoy these apps on your Mac.","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaKeywords":"@@storyTitle@@, @@featuredAppName@@, @@applicationCategory@@, app, appstore, app store, Mac","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaKeywords.Collection.One":"@@storyTitle@@, @@featuredAppName1@@, @@applicationCategory@@, app, appstore, app store, Mac","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaKeywords.Collection.Three":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, @@applicationCategory@@, app, appstore, app store, Mac","WEA.EditorialItemProductPages.MacAppStore.MacOS.Meta.PageMetaKeywords.Collection.Two":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@applicationCategory@@, app, appstore, app store, Mac","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaDescription":"Learn about @@storyTitle@@ on Mac App Store. Download @@featuredAppName@@ and enjoy it on your iPhone, iPad, and Mac.","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaDescription.Collection.ManyMore":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, and many more on Mac App Store. Enjoy these apps on your iPhone, iPad, and Mac.","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaDescription.Collection.One":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@ and many more on Mac App Store. Enjoy these apps on your iPhone, iPad, and Mac.","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaDescription.Collection.Three":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, and many more on Mac App Store. Enjoy these apps on your iPhone, iPad, and Mac.","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaDescription.Collection.Two":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, and many more on Mac App Store. Enjoy these apps on your iPhone, iPad, and Mac.","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaKeywords":"@@storyTitle@@, @@featuredAppName@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes, Mac","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaKeywords.Collection.One":"@@storyTitle@@, @@featuredAppName1@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes, Mac","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaKeywords.Collection.Three":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes, Mac","WEA.EditorialItemProductPages.MacAppStore.Meta.PageMetaKeywords.Collection.Two":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes, Mac","WEA.EditorialItemProductPages.MacAppStore.Meta.title":"@@storyTitle@@ : Mac App Store Story","WEA.EditorialItemProductPages.Meta.PageMetaDescription":"Learn about @@storyTitle@@ on App Store. ","WEA.EditorialItemProductPages.Meta.PageMetaDescription.Collection.ManyMore":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, and many more on App Store. Enjoy these apps on your iPhone, iPad, and iPod touch.","WEA.EditorialItemProductPages.Meta.PageMetaDescription.Collection.One":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@ and many more on App Store. Enjoy these apps on your iPhone, iPad, and iPod touch.","WEA.EditorialItemProductPages.Meta.PageMetaDescription.Collection.Three":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, and @@featuredAppName3@@ on App Store. Enjoy these apps on your iPhone, iPad, and iPod touch.","WEA.EditorialItemProductPages.Meta.PageMetaDescription.Collection.Two":"Learn about collection @@storyTitle@@ featuring @@featuredAppName1@@, @@featuredAppName2@@, and many more on App Store. Enjoy these apps on your iPhone, iPad, and iPod touch.","WEA.EditorialItemProductPages.Meta.PageMetaKeywords":"@@storyTitle@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.EditorialItemProductPages.Meta.PageMetaKeywords.Collection.One":"@@storyTitle@@, @@featuredAppName1@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.EditorialItemProductPages.Meta.PageMetaKeywords.Collection.Three":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@featuredAppName3@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.EditorialItemProductPages.Meta.PageMetaKeywords.Collection.Two":"@@storyTitle@@, @@featuredAppName1@@, @@featuredAppName2@@, @@applicationCategory@@, ios apps, app, appstore, app store, iphone, ipad, ipod touch, itouch, itunes","WEA.EditorialItemProductPages.Meta.title":"@@storyTitle@@ : App Store Story","WEA.EditorialItemProductPages.Social.title.AOTD":"App of the Day: @@appName@@","WEA.EditorialItemProductPages.Social.title.GOTD":"Game of the Day: @@appName@@","WEA.EditorialItemProductPages.Social.title.IAP":"In-App Purchase: @@appName@@","WEA.EditorialItemProductPages.Twitter.domain.iosSoftware":"AppStore","WEA.EditorialItemProductPages.Twitter.domain.macOs":"MacAppStore","WEA.EditorialItemProductPages.Twitter.site.iosSoftware":"@AppStore","WEA.EditorialItemProductPages.Twitter.site.macOs":"@MacAppStore","WEA.EpisodePages.CTA.iTunes.AX":"Watch on iTunes","WEA.EpisodePages.CTA.iTunes.Action":"Watch on","WEA.EpisodePages.Error.NativeMissing.iTunes.Subtitle":"Download iTunes below to start watching.","WEA.EpisodePages.FB.siteName.episode":"Apple Music","WEA.EpisodePages.Meta.Description":"@@releaseDate@@ · @@runtimeInMinutes@@ — @@description@@","WEA.EpisodePages.Meta.Description.Social":"@@releaseDate@@ · @@runtimeInMinutes@@","WEA.EpisodePages.Meta.PageMetaDescription":"Watch “@@episodeName@@” from @@showName@@ on Apple Music","WEA.EpisodePages.Meta.Title":"@@showName@@: @@episodeName@@","WEA.EpisodePages.PageKeywords":"Watch, “@@episodeName@@”, music, singles, songs, @@genreName@@, streaming music, apple music","WEA.EpisodePages.Twitter.domain.episode":"Apple Music","WEA.EpisodePages.Twitter.site.episode":"@appleMusic","WEA.EpisodePages.title":"@@episodeName@@ on Apple Music","WEA.Error.Carrier.Install.AM":"To Start listening, install Apple Music on your device","WEA.Error.Carrier.Installed":"Already have the app?","WEA.Error.Carrier.Open.Action":"Get it on @@appname@@","WEA.Error.Generic.AppleMusicLogo.Text":"Apple Music","WEA.Error.Generic.GooglePlay":"Google Play","WEA.Error.Generic.Install.AM":"If this link does not work, you might need to @@installLink@@.","WEA.Error.Generic.Install.AM.Link.Text":"install Apple Music","WEA.Error.Generic.Meta.PageKeywords":"Apple Music","WEA.Error.Generic.Meta.PageKeywords.AppleBooks":"Apple Books","WEA.Error.Generic.Meta.PageKeywords.iTunes":"iTunes Store","WEA.Error.Generic.Meta.PageTitle":"Connecting to Apple Music.","WEA.Error.Generic.Open.AM":"Open in Apple Music","WEA.Error.Generic.Open.Action.AM":"Open in","WEA.Error.Generic.Subtitle":"If you don’t have iTunes, @@downloadLink@@. If you have iTunes and it doesn’t open automatically, try opening it from your dock or Windows task bar.","WEA.Error.Generic.Subtitle.DownloadLink.Text":"download it for free","WEA.Error.Generic.Subtitle.DownloadLink.URL":"http://www.apple.com/itunes/download/","WEA.Error.Generic.Title":"Connecting to Apple Music","WEA.Error.Generic.Title.AppleBooks":"Connecting to Apple Books","WEA.Error.Generic.Title.Apps":"Connecting to App Store","WEA.Error.Generic.Title.Connecting":"Connecting","WEA.Error.Generic.Title.Podcasts":"Connecting to Apple Podcasts","WEA.Error.Generic.Title.iTunes":"Connecting to the iTunes Store.","WEA.Error.NativeMissing.AM.Subtitle":"You need iTunes to use Apple Music","WEA.Error.NativeMissing.Other.AM":"Get Apple Music on iOS, Android, Mac, and Windows","WEA.Error.NativeMissing.Other.LearnMore.link":"https://www.apple.com/itunes/download/","WEA.Error.NativeMissing.Other.iTunes":"Get iTunes on iOS, Android, Mac, and Windows","WEA.Error.NativeMissing.iTunes.Download.link":"https://www.apple.com/itunes/download/","WEA.Error.NativeMissing.iTunes.Download.text":"Download iTunes","WEA.Error.NativeMissing.iTunes.TV.Subtitle":"Download iTunes below to start watching.","WEA.Error.NativeMissing.iTunes.Title":"We could not find iTunes on your computer.","WEA.Error.NotFound.Meta.Title":"This content can’t be found.","WEA.Error.NotFound.general":"The page you're looking for cannot be found.","WEA.GroupingPages.CTA.GoToWebsite":"Go To","WEA.InvoicePages.Receipts.Instructions":"Try again on an iPhone, iPad, or Mac, or use iTunes on a PC","WEA.InvoicePages.Receipts.Meta.Description":"You can't turn off receipts on this device.","WEA.InvoicePages.Receipts.Meta.Title":"Receipts","WEA.InvoicePages.Receipts.Title":"You can't turn off receipts on this device.","WEA.LocalNav.CTA.AppName.TV":"Apple TV app","WEA.LocalNav.CTA.DownloadiTunes":"Download iTunes","WEA.LocalNav.CTA.DownloadiTunes.url":"https://www.apple.com/itunes/download/","WEA.LocalNav.CTA.FreeTrial":"Try It Now","WEA.LocalNav.CTA.FreeTrial.url":"https://itunes.apple.com/subscribe?app=music","WEA.LocalNav.CTA.iTunesStore.TV":"Learn More","WEA.LocalNav.Preview.AM":"Preview","WEA.LocalNav.Preview.AppStore":"Preview","WEA.LocalNav.Preview.Books":"Preview","WEA.LocalNav.Preview.MAS":"Preview","WEA.LocalNav.Preview.Podcasts":"Preview","WEA.LocalNav.Preview.TV":"Preview","WEA.LocalNav.Preview.iBooks":"Preview","WEA.LocalNav.Preview.iTunes":"Preview","WEA.LocalNav.Store.AM":"Apple Music","WEA.LocalNav.Store.AppStore":"App Store","WEA.LocalNav.Store.Books":"Apple Books","WEA.LocalNav.Store.MAS":"Mac App Store","WEA.LocalNav.Store.Podcasts":"Apple Podcasts","WEA.LocalNav.Store.TV":"Apple TV","WEA.LocalNav.Store.iBooks":"Apple Books","WEA.LocalNav.Store.iTunes":"iTunes","WEA.LocalNav.Title.Preview.AM":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.AppStore":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.Books":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.MAS":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.Podcasts":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.TV":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.iBooks":"@@product@@ @@qualifier@@","WEA.LocalNav.Title.Preview.iTunes":"@@product@@ @@qualifier@@","WEA.Locales.aa":"Afar","WEA.Locales.ab":"Abkhazian","WEA.Locales.ae":"Avestan","WEA.Locales.af":"Afrikaans","WEA.Locales.ak":"Akan","WEA.Locales.am":"Amharic","WEA.Locales.an":"Aragonese","WEA.Locales.ar":"Arabic","WEA.Locales.as":"Assamese","WEA.Locales.av":"Avaric","WEA.Locales.ay":"Aymara","WEA.Locales.az":"Azerbaijani","WEA.Locales.ba":"Bashkir","WEA.Locales.be":"Belarusian","WEA.Locales.bg":"Bulgarian","WEA.Locales.bh":"Bihari languages","WEA.Locales.bi":"Bislama","WEA.Locales.bm":"Bambara","WEA.Locales.bn":"Bengali","WEA.Locales.bo":"Tibetan","WEA.Locales.br":"Breton","WEA.Locales.bs":"Bosnian","WEA.Locales.ca":"Catalan","WEA.Locales.ce":"Chechen","WEA.Locales.ch":"Chamorro","WEA.Locales.co":"Corsican","WEA.Locales.cr":"Cree","WEA.Locales.cs":"Czech","WEA.Locales.cu":"Church Slavic","WEA.Locales.cv":"Chuvash","WEA.Locales.cy":"Welsh","WEA.Locales.da":"Danish","WEA.Locales.de":"German","WEA.Locales.dv":"Maldivian","WEA.Locales.dz":"Dzongkha","WEA.Locales.ee":"Ewe","WEA.Locales.el":"Greek (modern)","WEA.Locales.en":"English","WEA.Locales.eo":"Esperanto","WEA.Locales.es":"Spanish","WEA.Locales.et":"Estonian","WEA.Locales.eu":"Basque","WEA.Locales.fa":"Persian","WEA.Locales.ff":"Fulah","WEA.Locales.fi":"Finnish","WEA.Locales.fj":"Fijian","WEA.Locales.fo":"Faroese","WEA.Locales.fr":"French","WEA.Locales.fy":"Western Frisian","WEA.Locales.ga":"Irish","WEA.Locales.gd":"Gaelic","WEA.Locales.gl":"Galician","WEA.Locales.gn":"Guaraní","WEA.Locales.gu":"Gujarati","WEA.Locales.gv":"Manx","WEA.Locales.ha":"Hausa","WEA.Locales.he":"Hebrew (modern)","WEA.Locales.hi":"Hindi","WEA.Locales.ho":"Hiri Motu","WEA.Locales.hr":"Croatian","WEA.Locales.ht":"Haitian Creole","WEA.Locales.hu":"Hungarian","WEA.Locales.hy":"Armenian","WEA.Locales.hz":"Herero","WEA.Locales.ia":"Interlingua","WEA.Locales.id":"Indonesian","WEA.Locales.ie":"Interlingue","WEA.Locales.ig":"Igbo","WEA.Locales.ii":"Nuosu","WEA.Locales.ik":"Inupiaq","WEA.Locales.io":"Ido","WEA.Locales.is":"Icelandic","WEA.Locales.it":"Italian","WEA.Locales.iu":"Inuktitut","WEA.Locales.ja":"Japanese","WEA.Locales.jv":"Javanese","WEA.Locales.ka":"Georgian","WEA.Locales.kg":"Kongo","WEA.Locales.ki":"Kikuyu","WEA.Locales.kj":"Kwanyama","WEA.Locales.kk":"Kazakh","WEA.Locales.kl":"Greenlandic","WEA.Locales.km":"Central Khmer","WEA.Locales.kn":"Kannada","WEA.Locales.ko":"Korean","WEA.Locales.kr":"Kanuri","WEA.Locales.ks":"Kashmiri","WEA.Locales.ku":"Kurdish","WEA.Locales.kv":"Komi","WEA.Locales.kw":"Cornish","WEA.Locales.ky":"Kyrgyz","WEA.Locales.la":"Latin","WEA.Locales.lb":"Luxembourgish","WEA.Locales.lg":"Ganda","WEA.Locales.li":"Limburgish","WEA.Locales.ln":"Lingala","WEA.Locales.lo":"Lao","WEA.Locales.lt":"Lithuanian","WEA.Locales.lu":"Luba-Katanga","WEA.Locales.lv":"Latvian","WEA.Locales.mg":"Malagasy","WEA.Locales.mh":"Marshallese","WEA.Locales.mi":"Maori","WEA.Locales.mk":"Macedonian","WEA.Locales.ml":"Malayalam","WEA.Locales.mn":"Mongolian","WEA.Locales.mr":"Marathi","WEA.Locales.ms":"Malay","WEA.Locales.mt":"Maltese","WEA.Locales.my":"Burmese","WEA.Locales.na":"Nauru","WEA.Locales.nb":"Bokmål","WEA.Locales.nd":"North Ndebele","WEA.Locales.ne":"Nepali","WEA.Locales.ng":"Ndonga","WEA.Locales.nl":"Dutch","WEA.Locales.nn":"Norwegian Nynorsk","WEA.Locales.no":"Norwegian","WEA.Locales.nr":"South Ndebele","WEA.Locales.nv":"Navajo","WEA.Locales.ny":"Nyanja","WEA.Locales.oc":"Occitan","WEA.Locales.oj":"Ojibwa","WEA.Locales.om":"Oromo","WEA.Locales.or":"Oriya","WEA.Locales.os":"Ossetian","WEA.Locales.pa":"Punjabi","WEA.Locales.pi":"Pali","WEA.Locales.pl":"Polish","WEA.Locales.ps":"Pashto","WEA.Locales.pt":"Portuguese","WEA.Locales.qu":"Quechua","WEA.Locales.rm":"Romansh","WEA.Locales.rn":"Rundi","WEA.Locales.ro":"Romanian","WEA.Locales.ru":"Russian","WEA.Locales.rw":"Kinyarwanda","WEA.Locales.sa":"Sanskrit","WEA.Locales.sc":"Sardinian","WEA.Locales.sd":"Sindhi","WEA.Locales.se":"Northern Sami","WEA.Locales.sg":"Sango","WEA.Locales.si":"Sinhalese","WEA.Locales.sk":"Slovak","WEA.Locales.sl":"Slovenian","WEA.Locales.sm":"Samoan","WEA.Locales.sn":"Shona","WEA.Locales.so":"Somali","WEA.Locales.sq":"Albanian","WEA.Locales.sr":"Serbian","WEA.Locales.ss":"Swati","WEA.Locales.st":"Southern Sotho","WEA.Locales.su":"Sundanese","WEA.Locales.sv":"Swedish","WEA.Locales.sw":"Swahili","WEA.Locales.ta":"Tamil","WEA.Locales.te":"Telugu","WEA.Locales.tg":"Tajik","WEA.Locales.th":"Thai","WEA.Locales.ti":"Tigrinya","WEA.Locales.tk":"Turkmen","WEA.Locales.tl":"Tagalog","WEA.Locales.tn":"Tswana","WEA.Locales.to":"Tonga","WEA.Locales.tr":"Turkish","WEA.Locales.ts":"Tsonga","WEA.Locales.tt":"Tatar","WEA.Locales.tw":"Twi","WEA.Locales.ty":"Tahitian","WEA.Locales.ug":"Uyghur","WEA.Locales.uk":"Ukrainian","WEA.Locales.ur":"Urdu","WEA.Locales.uz":"Uzbek","WEA.Locales.ve":"Venda","WEA.Locales.vi":"Vietnamese","WEA.Locales.vo":"Volapük","WEA.Locales.wa":"Walloon","WEA.Locales.wo":"Wolof","WEA.Locales.xh":"Xhosa","WEA.Locales.yi":"Yiddish","WEA.Locales.yo":"Yoruba","WEA.Locales.za":"Zhuang","WEA.Locales.zh":"Chinese","WEA.Locales.zu":"Zulu","WEA.MoviePages.ArtistsInThisMovie":"Artists in This Movie","WEA.MoviePages.CTA.AM.Action":"Watch on","WEA.MoviePages.CTA.iTunes.Action":"View in","WEA.MoviePages.CommonSenseMedia.Label":"Common Sense Age","WEA.MoviePages.CommonSenseMedia.Title":"COMMON SENSE","WEA.MoviePages.ExpectedReleaseDate":"Expected @@expectedReleaseDate@@","WEA.MoviePages.FB.siteName.show":"Apple Music","WEA.MoviePages.FB.siteName.show.AM":"Apple Music","WEA.MoviePages.FB.siteName.show.iTunes":"iTunes","WEA.MoviePages.InGenre":"Movies in @@genreName@@","WEA.MoviePages.Information.Format":"Format","WEA.MoviePages.Information.Format.Square":"Square","WEA.MoviePages.Information.Format.Standard":"Standard","WEA.MoviePages.Information.Format.Widescreen":"Widescreen","WEA.MoviePages.Meta.Description.AM":"Movie · @@genre@@ · @@releaseYear@@ · @@runtimeInMinutes@@ — @@description@@","WEA.MoviePages.Meta.Description.Social.AM":"Movie · @@genre@@ · @@releaseYear@@ · @@runtimeInMinutes@@","WEA.MoviePages.Meta.PageKeywords":"Watch, @@movieName@@, music, singles, songs, @@genreName@@, streaming music, apple music","WEA.MoviePages.Meta.PageMetaDescription":"Watch @@movieName@@ on Apple Music","WEA.MoviePages.Meta.PageTitle":"@@movieName@@ on Apple Music","WEA.MoviePages.Meta.PageTitle.AM":"@@movieName@@ on Apple Music","WEA.MoviePages.Meta.PageTitle.iTunes":"@@movieName@@ on iTunes","WEA.MoviePages.MetaDescription.AM":"Movie · @@genre@@ · @@releaseYear@@ · @@runtimeInMinutes@@","WEA.MoviePages.MetaDescription.iTunes":"Watch trailers, read customer and critic reviews, and buy @@movieName@@ directed by @@directorName@@.","WEA.MoviePages.MetaDescription.iTunes.buy":"Watch trailers, read customer and critic reviews, and buy @@movieName@@ directed by @@directorName@@ for @@buyPrice@@.","WEA.MoviePages.MetaDescription.iTunes.buy.noDirector":"Watch trailers, read customer and critic reviews, and buy @@movieName@@ for @@buyPrice@@.","WEA.MoviePages.MetaDescription.iTunes.noDirector":"Watch trailers, read customer and critic reviews, and buy @@movieName@@.","WEA.MoviePages.MetaKeywords.AM":"watch, @@movieName@@, music video, @@genre@@, streaming music, apple music","WEA.MoviePages.MetaKeywords.TV":"@@movieName@@, @@genreName@@, @@directorName@@, movies, film, rent, buy, watch, download, itunes, apple tv","WEA.MoviePages.MetaKeywords.TV.noDirector":"@@movieName@@, @@genreName@@, movies, film, rent, buy, watch, download, itunes, apple tv","WEA.MoviePages.MetaKeywords.iTunes":"@@movieName@@, @@genreName@@, @@directorName@@, movies, film, rent, buy, itunes, apple tv","WEA.MoviePages.MetaKeywords.iTunes.noDirector":"@@movieName@@, @@genreName@@, movies, film, rent, buy, itunes, apple tv","WEA.MoviePages.MoreByActors":"More By These Actors","WEA.MoviePages.MoreByDirector":"More By This Director","WEA.MoviePages.MoreByDirectors":"More By These Directors","WEA.MoviePages.MoviesInBundle":"@@movieCount@@ Movies In This Bundle","WEA.MoviePages.RelatedMovies":"Related Movies","WEA.MoviePages.ReviewsAndRatings":"Ratings and Reviews","WEA.MoviePages.RottenTomatoes.AudienceScore ":"**WEA.MoviePages.RottenTomatoes.AudienceScore **","WEA.MoviePages.RottenTomatoes.Average":"Average","WEA.MoviePages.RottenTomatoes.Consensus":"Critics Consensus","WEA.MoviePages.RottenTomatoes.Critic.DateFormat":"(l)","WEA.MoviePages.RottenTomatoes.Fresh":"Fresh","WEA.MoviePages.RottenTomatoes.Rotten":"Rotten","WEA.MoviePages.RottenTomatoes.Summary.Average.Display":"@@rating@@/@@maxRating@@","WEA.MoviePages.RottenTomatoes.Summary.Reviews.Rotten.Title":"Rotten","WEA.MoviePages.RottenTomatoes.Summary.Reviews.Total.Title":"Reviews","WEA.MoviePages.RottenTomatoes.Tomatometer":"TOMATOMETER","WEA.MoviePages.SongsInThisMovie":"Songs in This Movie","WEA.MoviePages.TopInGenre":"Movies in @@genreName@@","WEA.MoviePages.Trailers":"Trailers","WEA.MoviePages.Trailers.Title":"Trailers","WEA.MoviePages.Twitter.domain.show":"Apple Music","WEA.MoviePages.Twitter.domain.show.AM":"Apple Music","WEA.MoviePages.Twitter.domain.show.iTunes":"iTunes","WEA.MoviePages.Twitter.site.show":"@appleMusic","WEA.MoviePages.Twitter.site.show.AM":"@AppleMusic","WEA.MoviePages.Twitter.site.show.iTunes":"@iTunes","WEA.MoviePages.ViewersAlsoBought":"Viewers Also Bought","WEA.MoviePages.iTunesExtras":"iTunes Extras","WEA.MusicPages.AboutArtist":"About @@artistName@@","WEA.MusicPages.Albums":"Albums","WEA.MusicPages.Albums.AlsoLike":"You May Also Like","WEA.MusicPages.AlbumsBy":"Albums by @@artistNames@@","WEA.MusicPages.AlbumsInGenre":"Albums in @@genreName@@","WEA.MusicPages.AlsoAvailable.AM":"Also Available on Apple Music","WEA.MusicPages.AlsoAvailable.AM.AX":"View @@albumName@@ in Apple Music","WEA.MusicPages.AlsoAvailable.iTunes":"Also Available in iTunes","WEA.MusicPages.AlsoAvailable.iTunes.AX":"View @@albumName@@ in iTunes","WEA.MusicPages.AppleDigitalMaster.AX":"Apple Digital Master","WEA.MusicPages.AppleMusic.PageDescriptionLine1.TopListings.ManyMore":"Listen to songs from the album @@albumName@@, including \"@@listing1@@\", \"@@listing2@@\", \"@@listing3@@\", and many more.","WEA.MusicPages.AppleMusic.PageDescriptionLine1.TopListings.One":"Listen to songs from the album @@albumName@@, including \"@@listing1@@\".","WEA.MusicPages.AppleMusic.PageDescriptionLine1.TopListings.Three":"Listen to songs from the album @@albumName@@, including \"@@listing1@@\", \"@@listing2@@\", and \"@@listing3@@\".","WEA.MusicPages.AppleMusic.PageDescriptionLine1.TopListings.Two":"Listen to songs from the album @@albumName@@, including \"@@listing1@@\", and \"@@listing2@@\".","WEA.MusicPages.AppleMusic.PageDescriptionLine2.AlbumPrice":"Buy the album for @@formattedPrice@@.","WEA.MusicPages.AppleMusic.PageDescriptionLine2.Subscription":"Free with Apple Music subscription.","WEA.MusicPages.AppleMusic.PageDescriptionLine2.TrackPrice":"Songs start at @@cheapestTrackPrice@@.","WEA.MusicPages.AppleMusic.PageKeywords":"listen, @@albumName@@, @@artistName@@, music, singles, songs, @@genreName@@, streaming music, apple music","WEA.MusicPages.AppleMusic.Track.Social.PageDescriptionLine2.Subscription":"Free with Apple Music subscription.","WEA.MusicPages.AppleMusic.title":"@@albumName@@ by @@artistName@@","WEA.MusicPages.ArtistLink.AX":"View page for artist @@artistName@@","WEA.MusicPages.Born":"BORN","WEA.MusicPages.CTA.AM":"Listen On","WEA.MusicPages.CTA.AM.AX":"Listen on Apple Music","WEA.MusicPages.CTA.AM.Action":"Listen on","WEA.MusicPages.CTA.AM.App":"Apple Music","WEA.MusicPages.CTA.AM.WatchOn":"Watch On","WEA.MusicPages.CTA.AM.WatchOn.AX":"Watch on Apple Music","WEA.MusicPages.CTA.iTunes":"View in","WEA.MusicPages.CTA.iTunes.AX":"View in iTunes","WEA.MusicPages.CTA.iTunes.Action":"View in","WEA.MusicPages.CTA.iTunes.App":"iTunes","WEA.MusicPages.CustomerReviews":"Ratings and Reviews","WEA.MusicPages.EditorsNotes":"EDITORS’ NOTES","WEA.MusicPages.ExpectedReleaseDate":"Expected @@expectedReleaseDate@@","WEA.MusicPages.FB.siteName.album":"iTunes","WEA.MusicPages.FB.siteName.album.AM":"Apple Music","WEA.MusicPages.FB.siteName.album.iTunes":"iTunes","WEA.MusicPages.FB.siteName.preorderAlbum":"iTunes","WEA.MusicPages.FB.siteName.preorderAlbum.AM":"Apple Music","WEA.MusicPages.FB.siteName.preorderAlbum.iTunes":"iTunes","WEA.MusicPages.FeaturedArtists":"Featured Artists","WEA.MusicPages.Formed":"FORMED","WEA.MusicPages.Genre":"GENRE","WEA.MusicPages.Hometown":"HOMETOWN","WEA.MusicPages.Instagram":"INSTAGRAM","WEA.MusicPages.Instagram.AX":"Go to instagram profile for user @@handle@@.","WEA.MusicPages.ListenersAlsoBought":"Listeners Also Bought","WEA.MusicPages.ListenersAlsoPlayed":"Listeners Also Played","WEA.MusicPages.MasteredForiTunes.AX":"Mastered for iTunes","WEA.MusicPages.Meta.Description.AM.one":"Album · @@year@@ · 1 Song.","WEA.MusicPages.Meta.Description.AM.other":"Album · @@year@@ · @@count@@ Songs.","WEA.MusicPages.Meta.Description.AlbumPrice.iTunes":"Buy the album for @@formattedPrice@@.","WEA.MusicPages.Meta.Description.Social.AM.one":"Album · @@year@@ · 1 Song","WEA.MusicPages.Meta.Description.Social.AM.other":"Album · @@year@@ · @@count@@ Songs","WEA.MusicPages.Meta.Description.TopListings.ManyMore.iTunes":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@,\" \"@@listing2@@,\" \"@@listing3@@,\" and many more.","WEA.MusicPages.Meta.Description.TopListings.One.iTunes":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@.\"","WEA.MusicPages.Meta.Description.TopListings.Three.iTunes":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@,\" \"@@listing2@@,\" and \"@@listing3@@.\"","WEA.MusicPages.Meta.Description.TopListings.Two.iTunes":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@,\" and \"@@listing2@@.\"","WEA.MusicPages.Meta.Description.Track.AM":"Song · @@duration@@ · @@year@@.","WEA.MusicPages.Meta.Description.Track.Social.AM":"Song · @@duration@@ · @@year@@","WEA.MusicPages.Meta.Description.TrackPrice.Social.iTunes":"for @@trackPrice@@.","WEA.MusicPages.Meta.Description.TrackPrice.iTunes":"Songs start at @@cheapestTrackPrice@@.","WEA.MusicPages.Meta.ExtraInfo":"Available with an Apple Music subscription.","WEA.MusicPages.Meta.Title.AM":"@@albumName@@ by @@artistName@@ on Apple Music","WEA.MusicPages.Meta.Title.Social.AM":"@@albumName@@ by @@artistName@@","WEA.MusicPages.Meta.Title.Social.iTunes":"@@albumName@@ by @@artistName@@ on iTunes","WEA.MusicPages.Meta.Title.Track.AM":"@@trackName@@ by @@artistName@@ on Apple Music","WEA.MusicPages.Meta.Title.Track.Social.AM":"@@trackName@@ by @@artistName@@","WEA.MusicPages.Meta.Title.Track.Social.iTunes":"\"@@trackName@@\" from @@albumName@@ by @@artistName@@ on iTunes","WEA.MusicPages.Meta.Title.Track.iTunes":"@@trackName@@ by @@artistName@@ on iTunes","WEA.MusicPages.Meta.Title.iTunes":"@@albumName@@ by @@artistName@@ on iTunes","WEA.MusicPages.MoreByArtist":"More By @@artistName@@","WEA.MusicPages.MusicVideos":"Music Videos","WEA.MusicPages.MusicVideosBy":"Music Videos by @@artistName@@","WEA.MusicPages.Origin":"ORIGIN","WEA.MusicPages.PageDescriptionLine1.TopListings.ManyMore":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@\", \"@@listing2@@\", \"@@listing3@@\", and many more.","WEA.MusicPages.PageDescriptionLine1.TopListings.One":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@\".","WEA.MusicPages.PageDescriptionLine1.TopListings.Three":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@\", \"@@listing2@@\", and \"@@listing3@@\".","WEA.MusicPages.PageDescriptionLine1.TopListings.Two":"Preview, buy, and download songs from the album @@albumName@@, including \"@@listing1@@\", and \"@@listing2@@\".","WEA.MusicPages.PageDescriptionLine2.AlbumPrice":"Buy the album for @@formattedPrice@@.","WEA.MusicPages.PageDescriptionLine2.TrackPrice":"Songs start at @@cheapestTrackPrice@@.","WEA.MusicPages.PageKeywords":"download, @@albumName@@, @@artistName@@, music, singles, songs, @@genreName@@, itunes music.","WEA.MusicPages.Play.Album.AX":"Play ‘@@albumName@@’ by @@artistName@@","WEA.MusicPages.Preview.All":"Preview","WEA.MusicPages.Preview.All.AX":"Preview available tracks from ‘@@albumName@@’ by @@artistName@@","WEA.MusicPages.Preview.Pause.AX":"Pause current preview","WEA.MusicPages.Preview.Resume.AX":"Continue playing current preview","WEA.MusicPages.Preview.Song.AX":"Preview \"@@songName@@\" by @@artistName@@","WEA.MusicPages.Preview.Video.AX":"Preview ‘@@videoName@@’ by @@artistName@@","WEA.MusicPages.Riaa.Clean.AX":"Clean Lyrics","WEA.MusicPages.Riaa.Explicit.AX":"Parental Advisory: Explicit Lyrics.","WEA.MusicPages.Shuffle.Album.AX":"Shuffle ‘@@albumName@@’ by @@artistName@@","WEA.MusicPages.SimilarArtists":"Similar Artists","WEA.MusicPages.Songs":"Songs","WEA.MusicPages.SongsBy":"Songs","WEA.MusicPages.TopAlbums":"Albums","WEA.MusicPages.TopAlbumsBy":"Albums","WEA.MusicPages.TopAlbumsInGenre":"Albums in @@genreName@@","WEA.MusicPages.TopMusicVideos":"Music Videos","WEA.MusicPages.TopMusicVideosBy":"Music Videos by @@artistName@@","WEA.MusicPages.TopSongs":"Songs","WEA.MusicPages.TopSongsBy":"Songs by @@artistName@@","WEA.MusicPages.TopVideos":"Videos","WEA.MusicPages.TotalSongs.one":"1 Song","WEA.MusicPages.TotalSongs.other":"@@count@@ Songs","WEA.MusicPages.Track.Social.PageDescriptionLine1":"Preview, buy, and download the song \"@@trackName@@.\" from the album @@albumName@@","WEA.MusicPages.Track.Social.PageDescriptionLine2.TrackPrice":"for @@trackPrice@@.","WEA.MusicPages.Track.Social.title":"\"@@trackName@@\" from @@albumName@@ by @@artistName@@ on iTunes","WEA.MusicPages.TrackList.ByComposer":"By @@composerName@@","WEA.MusicPages.TrackList.Separator":"@@string1@@ - @@string2@@","WEA.MusicPages.Twitter":"TWITTER","WEA.MusicPages.Twitter.AX":"Go to Twitter user @@handle@@.","WEA.MusicPages.Twitter.domain.album":"iTunes","WEA.MusicPages.Twitter.domain.album.AM":"Apple Music","WEA.MusicPages.Twitter.domain.album.iTunes":"iTunes","WEA.MusicPages.Twitter.domain.preorderAlbum":"iTunes","WEA.MusicPages.Twitter.domain.preorderAlbum.AM":"Apple Music","WEA.MusicPages.Twitter.domain.preorderAlbum.iTunes":"iTunes","WEA.MusicPages.Twitter.site.album":"@iTunes","WEA.MusicPages.Twitter.site.album.AM":"@AppleMusic","WEA.MusicPages.Twitter.site.album.iTunes":"@iTunes","WEA.MusicPages.Twitter.site.preorderAlbum":"@iTunes","WEA.MusicPages.Twitter.site.preorderAlbum.AM":"@AppleMusic","WEA.MusicPages.Twitter.site.preorderAlbum.iTunes":"@iTunes","WEA.MusicPages.Upsell.CTA":"Start your free trial","WEA.MusicPages.Upsell.CTA.Alternate":"Try it now","WEA.MusicPages.Upsell.Headline.Line1":"60 million songs.","WEA.MusicPages.Upsell.Headline.Line1.Alternate":"Millions of songs.","WEA.MusicPages.Upsell.Headline.Line2":"Three months on\u0026nbsp;us.","WEA.MusicPages.Upsell.Headline.Line2.Alternate":"Zero ads.","WEA.MusicPages.Upsell.Intro":"Listen to your favorite music ad-free on all your devices, online or off. Start streaming today with a\u0026nbsp;free trial, cancel\u0026nbsp;anytime.","WEA.MusicPages.Upsell.LearnMore":"Learn more","WEA.MusicPages.Upsell.Legal":"New subscribers only. Plan\u0026nbsp;automatically\u0026nbsp;renews\u0026nbsp;after\u0026nbsp;trial.","WEA.MusicPages.Videos":"Videos","WEA.MusicPages.Website":"OFFICIAL WEBSITE","WEA.MusicPages.Website.AX":"Go to official website for @@artistName@@.","WEA.MusicPages.title":"@@albumName@@ by @@artistName@@ on iTunes","WEA.MusicVideoPages.AboutArtist":"About @@artistName@@","WEA.MusicVideoPages.AlbumsBy":"Albums by @@artistNames@@","WEA.MusicVideoPages.AlsoAvailable.AM":"Also Available on Apple Music","WEA.MusicVideoPages.AlsoAvailable.AM.AX":"View @@albumName@@ in Apple Music","WEA.MusicVideoPages.AlsoAvailable.iTunes":"Also Available in iTunes","WEA.MusicVideoPages.AlsoAvailable.iTunes.AX":"View @@albumName@@ in iTunes","WEA.MusicVideoPages.AppleMusic.PageDescriptionLine1":"Music video · @@year@@ · @@duration@@","WEA.MusicVideoPages.AppleMusic.PageDescriptionLine2.Subscription":"Free with Apple Music subscription.","WEA.MusicVideoPages.AppleMusic.PageDescriptionLine2WithPrice":"Buy it for @@formattedPrice@@.","WEA.MusicVideoPages.AppleMusic.PageKeywords":"watch, @@songName@@, @@artistName@@, music video, songs, apple music","WEA.MusicVideoPages.AppleMusic.title":"@@songName@@ by @@artistName@@ on Apple Music","WEA.MusicVideoPages.AppleMusic.title.social":"@@songName@@ by @@artistName@@","WEA.MusicVideoPages.ArtistLink.AX":"View page for artist @@artistName@@","WEA.MusicVideoPages.CTA.AM":"View On","WEA.MusicVideoPages.CTA.AM.AX":"View on Apple Music","WEA.MusicVideoPages.CTA.AM.Action":"View on","WEA.MusicVideoPages.CTA.AM.App":"Apple Music","WEA.MusicVideoPages.CTA.iTunes":"View in","WEA.MusicVideoPages.CTA.iTunes.AX":"View in iTunes","WEA.MusicVideoPages.CTA.iTunes.Action":"View in","WEA.MusicVideoPages.CTA.iTunes.App":"iTunes","WEA.MusicVideoPages.Description":"Music video - @@year@@ - @@duration@@. Free with Apple Music subscription.","WEA.MusicVideoPages.ExpectedReleaseDate":"Expected @@expectedReleaseDate@@","WEA.MusicVideoPages.ListenersAlsoBought":"Listeners Also Bought","WEA.MusicVideoPages.ListenersAlsoPlayed":"Listeners Also Played","WEA.MusicVideoPages.MusicVideoInGenre":"Music Videos in @@genreName@@","WEA.MusicVideoPages.MusicVideosBy":"Music Videos by @@artistName@@","WEA.MusicVideoPages.PageDescriptionLine1":"Preview and buy the music video \"@@songName@@\" by @@artistName@@","WEA.MusicVideoPages.PageDescriptionLine2WithPrice":" for @@formattedPrice@@.","WEA.MusicVideoPages.PageKeywords":"buy, download, @@songName@@, @@artistName@@, music video, songs, itunes","WEA.MusicVideoPages.Preview.All":"Preview","WEA.MusicVideoPages.Preview.All.AX":"Preview available tracks from @@albumName@@ by @@artistName@@","WEA.MusicVideoPages.Preview.Pause.AX":"Pause current preview","WEA.MusicVideoPages.Preview.Resume.AX":"Continue playing current preview","WEA.MusicVideoPages.Preview.Song.AX":"Preview \"@@songName@@\" by @@artistName@@","WEA.MusicVideoPages.Social.Description":"Music video - @@year@@ - @@duration@@","WEA.MusicVideoPages.Social.Title":"@@songName@@ by @@artistName@@","WEA.MusicVideoPages.SongsBy":"Songs by @@artistName@@","WEA.MusicVideoPages.TopAlbumsBy":"Albums by @@artistNames@@","WEA.MusicVideoPages.TopMusicVideoInGenre":"Music Videos in @@genreName@@","WEA.MusicVideoPages.TopMusicVideosBy":"Music Videos by @@artistName@@","WEA.MusicVideoPages.TopSongsBy":"Songs by @@artistName@@","WEA.MusicVideoPages.title":"\"@@songName@@\" on iTunes","WEA.Oprah.OBC.WebsiteName":"Oprah’s Book Club Website","WEA.PaddleNav.Next.AX":"Next","WEA.PaddleNav.Previous.AX":"Previous","WEA.PlaylistPages.Meta.Description.NoUpdateTime":"@@SongCount@@ Songs. Free with Apple Music Subscription.","WEA.PlaylistPages.Meta.Description.None.one":"Playlist · 1 Song · ","WEA.PlaylistPages.Meta.Description.None.other":"Playlist · @@count@@ Songs · ","WEA.PlaylistPages.Meta.Description.Social.one":"Playlist · 1 Song","WEA.PlaylistPages.Meta.Description.Social.other":"Playlist · @@count@@ Songs","WEA.PlaylistPages.Meta.Description.UpdateTime":"@@updateTime@@, @@SongCount@@ Songs. Free with Apple Music Subscription.","WEA.PlaylistPages.Meta.Description.one":"Playlist · 1 Song — @@description@@","WEA.PlaylistPages.Meta.Description.other":"Playlist · @@count@@ Songs — @@description@@","WEA.PlaylistPages.Meta.Keywords.Genre":"listen, @@playlistName@@, @@artistName@@, music, playlist, songs, @@genreName@@, streaming music, apple music","WEA.PlaylistPages.Meta.Keywords.NoGenre":"listen, @@playlistName@@, @@artistName@@, music, playlist, songs, streaming music, apple music","WEA.PlaylistPages.Meta.Title":"@@playlistName@@ by @@artistName@@ on Apple Music","WEA.PlaylistPages.Meta.Title.Editorial":"@@playlistName@@ on Apple Music","WEA.PlaylistPages.Meta.Title.Editorial.Social":"@@playlistName@@","WEA.PlaylistPages.Meta.Title.Social":"@@playlistName@@ by @@artistName@@","WEA.PodcastEpisodePages.EpisodeNotes":"Episode Notes","WEA.PodcastEpisodePages.FB.siteName.podcast-episode":"Apple Podcasts","WEA.PodcastEpisodePages.Meta.Description":"Show @@podcastShowName@@, Ep @@episodeName@@ - @@publishedDate@@","WEA.PodcastEpisodePages.Meta.Title":"@@podcastShowName@@: @@episodeName@@ on Apple Podcasts","WEA.PodcastEpisodePages.More":"More Episodes","WEA.PodcastEpisodePages.PageKeywords":"Listen, @@episodeName@@, @@podcastShowName@@, download, apple podcasts","WEA.PodcastEpisodePages.Twitter.domain.podcast-episode":"Apple Podcasts","WEA.PodcastEpisodePages.Twitter.site.podcast-episode":"@ApplePodcasts","WEA.PodcastEpisodePages.Website":"Episode Website","WEA.PodcastPages.CTA.Podcasts.AX":"Listen on Apple Podcasts","WEA.PodcastPages.CTA.Podcasts.Action":"Listen on","WEA.PodcastPages.CTA.Podcasts.App":"Apple Podcasts","WEA.PodcastPages.CustomerReviews.Title":"Customer Reviews","WEA.PodcastPages.Episodes.one":"1 episode","WEA.PodcastPages.Episodes.other":"@@count@@ episodes","WEA.PodcastPages.Explicit.AX":"Explicit","WEA.PodcastPages.FB.siteName.show":"Apple Podcasts","WEA.PodcastPages.ListenersAlsoSubscribed":"Listeners Also Subscribed To","WEA.PodcastPages.Meta.Title":"@@podcastShowName@@ on Apple Podcasts","WEA.PodcastPages.MoreBy":"More by @@podcastArtist@@","WEA.PodcastPages.PageKeywords":"@@podcastShowName@@, @@artistName@@, podcast show, listen, download, apple podcasts","WEA.PodcastPages.Pause.Podcast.AX":"Pause current podcast","WEA.PodcastPages.Play.Podcast.AX":"Play ‘@@podcastName@@’ by @@podcastArtist@@","WEA.PodcastPages.ShowMoreEpisodes.one":"Show 1 More Episode","WEA.PodcastPages.ShowMoreEpisodes.other":"Show @@count@@ More Episodes","WEA.PodcastPages.TopInCategory.Title":"Top Podcasts In @@categoryName@@","WEA.PodcastPages.Twitter.domain.show":"Apple Podcasts","WEA.PodcastPages.Twitter.site.show":"@ApplePodcasts","WEA.SeasonPages.Description.Title":"Description","WEA.SeasonPages.Meta.Keywords":"@@showName@@, @@genreName@@, tv show, watch, download, itunes","WEA.SeasonPages.Meta.Title":"@@showName@@ on iTunes","WEA.SeasonPages.MoreInGenre.Title":"Top @@genre@@ Shows","WEA.SeasonPages.MoreSeasonsInSeries.Title":"More Seasons in Series","WEA.SeasonPages.ViewersAlsoBought.Title":"Viewers Also Bought","WEA.ShowPages.Accessibility.AD":"Audio descriptions (AD) refer to a narration track describing what is happening on screen, to provide context for those who are blind or have low vision.","WEA.ShowPages.Accessibility.CC":"Closed captions (CC) refer to subtitles in the available language with the addition of relevant non-dialogue information.","WEA.ShowPages.Accessibility.SDH":"Subtitles for the deaf and hard of hearing (SDH) refer to subtitles in the original language with the addition of relevant non-dialogue information.","WEA.ShowPages.Accessibility.Title":"Accessibility","WEA.ShowPages.Accessibility.has4k":"UHD","WEA.ShowPages.Accessibility.hasAD":"AD","WEA.ShowPages.Accessibility.hasCC":"CC","WEA.ShowPages.Accessibility.hasDolbyAtmos":"Dolby Atmos","WEA.ShowPages.Accessibility.hasDolbyVision":"Dolby Vision","WEA.ShowPages.Accessibility.hasHD":"HD","WEA.ShowPages.Accessibility.hasHDR":"HDR","WEA.ShowPages.Accessibility.hasSDH":"SDH","WEA.ShowPages.ArtistsOnThisEpisode":"Artists in This Episode","WEA.ShowPages.ArtistsOnThisShow":"Artists in This Show","WEA.ShowPages.CTA.AM.Action":"Watch on","WEA.ShowPages.CastAndCrew.Cast":"Cast","WEA.ShowPages.CastAndCrew.Director":"Director","WEA.ShowPages.CastAndCrew.Guest":"Guest","WEA.ShowPages.CastAndCrew.Host":"Hosts","WEA.ShowPages.CastAndCrew.Performers":"Performers","WEA.ShowPages.CastAndCrew.Producers":"Producers","WEA.ShowPages.CastAndCrew.Screenwriters":"Screenwriter","WEA.ShowPages.CastAndCrew.Title":"Cast \u0026 Crew","WEA.ShowPages.CommonSenseMedia.Title":"COMMON SENSE","WEA.ShowPages.Description":"DESCRIPTION","WEA.ShowPages.Episode":"Episode @@episodeNumber@@","WEA.ShowPages.Episode.abbr":"Ep @@episodeNumber@@","WEA.ShowPages.EpisodeNumber":"EPISODE @@episodeNumber@@","WEA.ShowPages.Episodes.one":"1 Episode","WEA.ShowPages.Episodes.other":"@@count@@ Episodes","WEA.ShowPages.FB.siteName.show":"Apple Music","WEA.ShowPages.Information.Copyright":"Copyright","WEA.ShowPages.Information.Genre":"Genre","WEA.ShowPages.Information.Rated":"Rated","WEA.ShowPages.Information.Rated.Description.WithAdvisories":"@@rating@@ @@advisories@@","WEA.ShowPages.Information.Rated.Description.WithoutAdvisories":"@@rating@@","WEA.ShowPages.Information.Released":"Released","WEA.ShowPages.Information.Studio":"Studio","WEA.ShowPages.Information.Title":"Information","WEA.ShowPages.Languages.Additional":"Additional","WEA.ShowPages.Languages.Primary":"Primary","WEA.ShowPages.Languages.Title":"Languages","WEA.ShowPages.Meta.PageMetaDescription":"Watch @@showName@@ on Apple Music","WEA.ShowPages.Meta.PageMetaDescription.other":"TV Show · @@genreName@@ · @@year@@ · @@count@@ episodes — @@description@@","WEA.ShowPages.Meta.SocialMetaDescription.one":"TV Show · @@genreName@@ · @@year@@ · 1 episode","WEA.ShowPages.Meta.SocialMetaDescription.other":"TV Show · @@genreName@@ · @@year@@ · @@count@@ episodes","WEA.ShowPages.Meta.SocialMetaDescription.zero":"TV Show · @@genreName@@ · @@year@@","WEA.ShowPages.MoreFromThisShow":"More from This Show","WEA.ShowPages.PageKeywords":"Watch, @@showName@@, music, singles, songs, @@genreName@@, streaming music, apple music","WEA.ShowPages.Playlists":"Playlists","WEA.ShowPages.Preview.Episode.AX":"Preview “@@episodeName@@” of @@showName@@","WEA.ShowPages.RelatedShows":"Related TV Shows","WEA.ShowPages.Season":"Season @@seasonNumber@@","WEA.ShowPages.SeasonCount.one":"1 Season","WEA.ShowPages.SeasonCount.other":"@@count@@ Seasons","WEA.ShowPages.SeasonNumber":"SEASON @@seasonNumber@@","WEA.ShowPages.SeasonPicker.SeasonDisplay":"Season @@seasonNumber@@","WEA.ShowPages.SongsInThisEpisode":"Songs in This Episode","WEA.ShowPages.TrailersBonusContent":"Trailers and Bonus Content","WEA.ShowPages.Twitter.domain.show":"Apple Music","WEA.ShowPages.Twitter.site.show":"@appleMusic","WEA.ShowPages.title":"@@showName@@ on Apple Music","WEA.SocialProfilePages.AppleMusicLogo.Text":"Apple Music","WEA.SocialProfilePages.AppleMusicLogo.URL":"https://www.apple.com/music/","WEA.SocialProfilePages.CTA":"Follow on","WEA.SocialProfilePages.CTA.AM.Action":"Follow on","WEA.SocialProfilePages.CTA.AX":"Follow @@fullName@@ on Apple Music","WEA.SocialProfilePages.CTA.App":"Apple Music","WEA.SocialProfilePages.CTA.Eyebrow":"Follow on","WEA.SocialProfilePages.Copyright":"© @@year@@ Apple Inc.","WEA.SocialProfilePages.Meta.Description.Social.Private":"Private Profile","WEA.SocialProfilePages.Meta.Description.Social.Public":"Follow on Apple Music","WEA.SocialProfilePages.Meta.PageDescription.one":"1 Playlist","WEA.SocialProfilePages.Meta.PageDescription.other":"@@count@@ Playlists","WEA.SocialProfilePages.Meta.PageDescription.zero":"No Playlists","WEA.SocialProfilePages.Meta.PageTitle":"@@fullName@@ on Apple Music","WEA.SocialProfilePages.PrivacyLink.Text":"Apple Music and Privacy","WEA.SocialProfilePages.PrivacyLink.URL":"https://support.apple.com/kb/HT204881","WEA.SocialProfilePages.PrivateProfile":"Private Profile","WEA.SocialProfilePages.User.ListensTo":"See what @@fullName@@ listens to","WEA.StarRating.Separator":" • "}</script><script type="fastboot/shoebox" id="shoebox-ember-data-store">{"data":[{"id":"504740787","type":"media/app","attributes":{"userRating":{"value":4.8,"ratingCount":1590,"ratingCountList":[19,10,26,142,1393],"ariaLabelForRatings":"4.8 stars"},"artistName":"Mathieu Routhier","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","firstVersionSupportingInAppPurchaseApi":"6.2","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":false,"isPreorder":false,"name":"Suggester","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/suggester/id504740787","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"504740787-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/504740787","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2012-03-12","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":837293600,"editorialArtwork":{},"requirementsString":"Requires iOS 11.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Chords that work together","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.mathieurouthier.Suggester","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© Mathieu Routhier 2012-2020","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"11.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Mathieu Routhier","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":true,"requiredCapabilities":"arm64 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=504740787\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=837293600","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":78518272}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=504740787\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=837293600","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":78518272}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437050"}}}}]},"genres":{"href":"/v1/catalog/us/apps/504740787/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6007","type":"media/genre","href":"/v1/catalog/us/genres/6007","attributes":{"url":"https://itunes.apple.com/us/genre/id6007","parentName":"Mobile Software Applications","name":"Productivity","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/504740787/developer","data":{"id":"369283978","type":"media/developer","href":"/v1/catalog/us/developers/369283978"}}}},{"id":"1172558973","type":"media/app","attributes":{"userRating":{"value":4.6,"ratingCount":1224,"ratingCountList":[44,27,58,137,958],"ariaLabelForRatings":"4.6 stars"},"artistName":"One In A Billion Ltd","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":true,"isPreorder":false,"name":"Writers Session","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/writers-session/id1172558973","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"1172558973-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/1172558973","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2017-03-12","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":837672771,"editorialArtwork":{},"requirementsString":"Requires iOS 13.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"A songwriter's companion","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.oneinabillion.WritersSession","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© 2015 One In A Billion Ltd","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"13.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Anthony Briscoe","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":true,"requiredCapabilities":"arm64 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1172558973\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=837672771","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":48950272}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1172558973\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=837672771","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":48950272}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437051"}}}}]},"genres":{"href":"/v1/catalog/us/apps/1172558973/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6007","type":"media/genre","href":"/v1/catalog/us/genres/6007","attributes":{"url":"https://itunes.apple.com/us/genre/id6007","parentName":"Mobile Software Applications","name":"Productivity","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/1172558973/developer","data":{"id":"479881389","type":"media/developer","href":"/v1/catalog/us/developers/479881389"}}}},{"id":"502877188","type":"media/app","attributes":{"userRating":{"value":2.1,"ratingCount":29,"ratingCountList":[17,3,2,3,4],"ariaLabelForRatings":"2.1 stars"},"artistName":"Dante Media, LLC","contentRatingsBySystem":{"appsApple":{"name":"9+","value":200,"rank":2,"advisories":["Infrequent/Mild Mature/Suggestive Themes","Infrequent/Mild Profanity or Crude Humor"]}},"deviceFamilies":["iphone","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":false,"isPreorder":false,"name":"Songwriter Pad LE Songwriting","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/songwriter-pad-le-songwriting/id502877188","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"502877188-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/502877188","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2012-03-08","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":824541292,"editorialArtwork":{},"requirementsString":"Requires iOS 8.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"The Songwriting App for iPhone","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.paragoni.SPiPhoneLE","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© Dante Varnado Moore","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"8.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Dante Media, LLC","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":true,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=502877188\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=824541292","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":25108480}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=502877188\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=824541292","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":25108480}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437052"}}}}]},"genres":{"href":"/v1/catalog/us/apps/502877188/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6016","type":"media/genre","href":"/v1/catalog/us/genres/6016","attributes":{"url":"https://itunes.apple.com/us/genre/id6016","parentName":"Mobile Software Applications","name":"Entertainment","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/502877188/developer","data":{"id":"378704864","type":"media/developer","href":"/v1/catalog/us/developers/378704864"}}}},{"id":"1342400532","type":"media/app","attributes":{"userRating":{"value":4.4,"ratingCount":356,"ratingCountList":[40,3,12,38,263],"ariaLabelForRatings":"4.4 stars"},"artistName":"HYDL","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","firstVersionSupportingInAppPurchaseApi":"1.0","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":true,"isPreorder":false,"name":"Furious Rhymes: Rap \u0026 Poetry","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/furious-rhymes-rap-poetry/id1342400532","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"1342400532-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/1342400532","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en-US"}],"supportsGameController":false,"releaseDate":"2018-02-18","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":836806063,"editorialArtwork":{},"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"The #1 Rhyme Dictionary","isDeliveredInIOSAppForWatchOS":false,"bundleId":"co.rhymes.furious","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© HYDL","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"10.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"HYDL LLC","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":true,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1342400532\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836806063","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":18053120}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1342400532\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836806063","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":18053120}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437053"}}}}]},"genres":{"href":"/v1/catalog/us/apps/1342400532/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6006","type":"media/genre","href":"/v1/catalog/us/genres/6006","attributes":{"url":"https://itunes.apple.com/us/genre/id6006","parentName":"Mobile Software Applications","name":"Reference","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/1342400532/developer","data":{"id":"1459757393","type":"media/developer","href":"/v1/catalog/us/developers/1459757393"}}}},{"id":"1197981487","type":"media/app","attributes":{"userRating":{"value":4.1,"ratingCount":19,"ratingCountList":[3,0,2,1,13],"ariaLabelForRatings":"4.1 stars"},"artistName":"Florian Hoenicke","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":true,"isPreorder":false,"name":"Doppelreim","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/doppelreim/id1197981487","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"1197981487-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/1197981487","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"},{"name":"Afrikaans","tag":"af"},{"name":"Albanian","tag":"sq"},{"name":"Arabic","tag":"ar"},{"name":"Armenian","tag":"hy"},{"name":"Azerbaijani","tag":"az"},{"name":"Basque","tag":"eu"},{"name":"Bosnian","tag":"bs"},{"name":"Bulgarian","tag":"bg"},{"name":"Catalan","tag":"ca"},{"name":"Croatian","tag":"hr"},{"name":"Czech","tag":"cs"},{"name":"Danish","tag":"da"},{"name":"Dutch","tag":"nl"},{"name":"Esperanto","tag":"eo"},{"name":"Estonian","tag":"et"},{"name":"Finnish","tag":"fi"},{"name":"French","tag":"fr"},{"name":"Georgian","tag":"ka"},{"name":"German","tag":"de"},{"name":"Greek","tag":"el"},{"name":"Hindi","tag":"hi"},{"name":"Hungarian","tag":"hu"},{"name":"Indonesian","tag":"id"},{"name":"Italian","tag":"it"},{"name":"Kannada","tag":"kn"},{"name":"Korean","tag":"ko"},{"name":"Latvian","tag":"lv"},{"name":"Lithuanian","tag":"lt"},{"name":"Macedonian","tag":"mk"},{"name":"Malay","tag":"ms"},{"name":"Malayalam","tag":"ml"},{"name":"Persian","tag":"fa"},{"name":"Polish","tag":"pl"},{"name":"Portuguese","tag":"pt"},{"name":"Romanian","tag":"ro"},{"name":"Russian","tag":"ru"},{"name":"Serbian","tag":"sr"},{"name":"Simplified Chinese","tag":"zh-Hans"},{"name":"Slovak","tag":"sk"},{"name":"Slovenian","tag":"sl"},{"name":"Spanish","tag":"es"},{"name":"Swedish","tag":"sv"},{"name":"Tamil","tag":"ta"},{"name":"Telugu","tag":"te"},{"name":"Turkish","tag":"tr"},{"name":"Urdu","tag":"ur"},{"name":"Vietnamese","tag":"vi"},{"name":"Welsh","tag":"cy"}],"supportsGameController":false,"releaseDate":"2017-01-30","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":828985665,"editorialArtwork":{},"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.rockstarflo.doppelreimapp","hasInAppPurchases":false,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© 2017 Florian Hönicke","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"10.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Florian Hoenicke","isSiriSupported":false,"requiresRosetta":false,"languageList":["English","Afrikaans","Albanian","Arabic","Armenian","Azerbaijani","Basque","Bosnian","Bulgarian","Catalan","Croatian","Czech","Danish","Dutch","Esperanto","Estonian","Finnish","French","Georgian","German","Greek","Hindi","Hungarian","Indonesian","Italian","Kannada","Korean","Latvian","Lithuanian","Macedonian","Malay","Malayalam","Persian","Polish","Portuguese","Romanian","Russian","Serbian","Simplified Chinese","Slovak","Slovenian","Spanish","Swedish","Tamil","Telugu","Turkish","Urdu","Vietnamese","Welsh"],"runsOnAppleSilicon":true,"requiredCapabilities":"armv7 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1197981487\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=828985665","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":29894656}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1197981487\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=828985665","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":29894656}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437054"}}}}]},"genres":{"href":"/v1/catalog/us/apps/1197981487/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6007","type":"media/genre","href":"/v1/catalog/us/genres/6007","attributes":{"url":"https://itunes.apple.com/us/genre/id6007","parentName":"Mobile Software Applications","name":"Productivity","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/1197981487/developer","data":{"id":"1197981486","type":"media/developer","href":"/v1/catalog/us/developers/1197981486"}}}},{"id":"447771549","type":"media/app","attributes":{"userRating":{"value":2.9,"ratingCount":66,"ratingCountList":[23,7,11,5,20],"ariaLabelForRatings":"2.9 stars"},"artistName":"App Holdings","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":false,"isPreorder":false,"name":"Song-Writer Lite: Write Lyrics","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/song-writer-lite-write-lyrics/id447771549","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"447771549-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/447771549","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2011-07-10","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":823763694,"editorialArtwork":{},"requirementsString":"Requires iOS 7.1 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Record melody ideas on the go","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.simonsapps.songwriterlite","hasInAppPurchases":false,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© SimonsApps.com","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"7.1","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"WL Online Marketing LLC","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=447771549\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=823763694","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":3865600}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=447771549\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=823763694","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":3865600}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437055"}}}}]},"genres":{"href":"/v1/catalog/us/apps/447771549/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6016","type":"media/genre","href":"/v1/catalog/us/genres/6016","attributes":{"url":"https://itunes.apple.com/us/genre/id6016","parentName":"Mobile Software Applications","name":"Entertainment","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/447771549/developer","data":{"id":"808581339","type":"media/developer","href":"/v1/catalog/us/developers/808581339"}}}},{"id":"316218233","type":"media/app","attributes":{"userRating":{"value":3.9,"ratingCount":27,"ratingCountList":[5,0,4,3,15],"ariaLabelForRatings":"3.9 stars"},"artistName":"Hopefully Useful Software","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":false,"isPreorder":false,"name":"Simple Songwriter LE","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/simple-songwriter-le/id316218233","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"316218233-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/316218233","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2009-08-21","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":824377146,"editorialArtwork":{},"requirementsString":"Requires iOS 9.1 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Song Writing Assistant","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.christian.simplesongwriterlite","hasInAppPurchases":false,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© 2017 Hopefully Useful Software","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"9.1","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Christian Inkster","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":false,"requiredCapabilities":"gamekit ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=316218233\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=824377146","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":16158720}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=316218233\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=824377146","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":16158720}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437056"}}}}]},"genres":{"href":"/v1/catalog/us/apps/316218233/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6006","type":"media/genre","href":"/v1/catalog/us/genres/6006","attributes":{"url":"https://itunes.apple.com/us/genre/id6006","parentName":"Mobile Software Applications","name":"Reference","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/316218233/developer","data":{"id":"310708737","type":"media/developer","href":"/v1/catalog/us/developers/310708737"}}}},{"id":"1435329761","type":"media/app","attributes":{"userRating":{"value":3.9,"ratingCount":159,"ratingCountList":[26,10,15,17,91],"ariaLabelForRatings":"3.9 stars"},"artistName":"Kenneth Mcilvaine","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":true,"isPreorder":false,"name":"Lyric Notepad","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/lyric-notepad/id1435329761","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"1435329761-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/1435329761","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"}],"supportsGameController":false,"releaseDate":"2018-09-06","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":831662146,"editorialArtwork":{},"requirementsString":"Requires iOS 9.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Make Song Lyrics, Poetry \u0026 Rap","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.kenny-mc.LyricNotepad","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© 2019 Kenny Mc","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"9.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Kenneth Mcilvaine","isSiriSupported":false,"requiresRosetta":false,"languageList":["English"],"runsOnAppleSilicon":true,"requiredCapabilities":"armv7 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1435329761\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=831662146","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":26701824}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1435329761\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=831662146","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":26701824}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437057"}}}}]},"genres":{"href":"/v1/catalog/us/apps/1435329761/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6016","type":"media/genre","href":"/v1/catalog/us/genres/6016","attributes":{"url":"https://itunes.apple.com/us/genre/id6016","parentName":"Mobile Software Applications","name":"Entertainment","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/1435329761/developer","data":{"id":"1435329580","type":"media/developer","href":"/v1/catalog/us/developers/1435329580"}}}},{"id":"788423364","type":"media/app","attributes":{"userRating":{"value":4.7,"ratingCount":1393,"ratingCountList":[29,16,51,154,1143],"ariaLabelForRatings":"4.7 stars"},"artistName":"Astrocode Pty Ltd","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","firstVersionSupportingInAppPurchaseApi":"3.2.1","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":false,"isPreorder":false,"name":"Autochords","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/autochords/id788423364","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"788423364-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/788423364","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"},{"name":"French","tag":"fr"},{"name":"German","tag":"de"},{"name":"Italian","tag":"it"},{"name":"Russian","tag":"ru"}],"supportsGameController":false,"releaseDate":"2014-01-13","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":836988884,"editorialArtwork":{},"requirementsString":"Requires iOS 13.1 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Chord Progression Generator","isDeliveredInIOSAppForWatchOS":false,"bundleId":"com.autochords.Autochords","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© 2020 Astrocode Pty Ltd","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"13.1","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Astrocode Pty Ltd","isSiriSupported":false,"requiresRosetta":false,"languageList":["English","French","German","Italian","Russian"],"runsOnAppleSilicon":true,"requiredCapabilities":"arm64 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=788423364\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836988884","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":30680064}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=788423364\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836988884","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":30680064}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437058"}}}}]},"genres":{"href":"/v1/catalog/us/apps/788423364/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6017","type":"media/genre","href":"/v1/catalog/us/genres/6017","attributes":{"url":"https://itunes.apple.com/us/genre/id6017","parentName":"Mobile Software Applications","name":"Education","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/788423364/developer","data":{"id":"1040321800","type":"media/developer","href":"/v1/catalog/us/developers/1040321800"}}}},{"id":"1017617320","type":"media/app","attributes":{"userRating":{"wasReset":true,"value":3.5,"ratingCount":2,"ratingCountList":[0,1,0,0,1],"ariaLabelForRatings":"3.5 stars"},"artistName":"Music Breath","contentRatingsBySystem":{"appsApple":{"name":"4+","value":100,"rank":1}},"deviceFamilies":["iphone","ipad","ipod"],"familyShareEnabledDate":"0001-04-23T00:00:00.000Z","firstVersionSupportingInAppPurchaseApi":"5.2.8","hasEula":false,"isFirstPartyHideableApp":false,"isIOSBinaryMacOSCompatible":true,"isPreorder":false,"name":"Song Writer - Lyrics Memo Pad","reviewsRestricted":false,"sellerLabel":"Seller","supportsArcade":false,"url":"https://apps.apple.com/us/app/song-writer-lyrics-memo-pad/id1017617320","usesLocationBackgroundMode":false},"relationships":{"platforms":{"data":[{"id":"1017617320-ios","type":"media/app-platform","href":"/v1/catalog/us/apps/1017617320","attributes":{"requires32bit":false,"hasMessagesExtension":false,"hasPrivacyPolicyText":false,"supportedLocales":[{"name":"English","tag":"en"},{"name":"French","tag":"fr"},{"name":"German","tag":"de"},{"name":"Italian","tag":"it"},{"name":"Japanese","tag":"ja"},{"name":"Korean","tag":"ko"},{"name":"Portuguese","tag":"pt"},{"name":"Russian","tag":"ru"},{"name":"Simplified Chinese","tag":"zh-Hans"},{"name":"Spanish","tag":"es"},{"name":"Traditional Chinese","tag":"zh-Hant"}],"supportsGameController":false,"releaseDate":"2015-07-16","hasSafariExtension":false,"minimumMacOSVersion":"10.16","externalVersionId":836137902,"editorialArtwork":{},"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","subtitle":"Notes for songs","isDeliveredInIOSAppForWatchOS":false,"bundleId":"mobi.musicparadise.SongWritermps","hasInAppPurchases":true,"isAppleWatchSupported":false,"isStandaloneForWatchOS":false,"supportsPassbook":false,"copyright":"© Music Breath","requiresGameController":false,"isHiddenFromSpringboard":false,"isGameCenterEnabled":false,"minimumOSVersion":"10.0","hasFamilyShareableInAppPurchases":false,"runsOnIntel":false,"is32bitOnly":false,"isStandaloneWithCompanionForWatchOS":false,"seller":"Music Breath, OOO","isSiriSupported":false,"requiresRosetta":false,"languageList":["English","French","German","Italian","Japanese","Korean","Portuguese","Russian","Simplified Chinese","Spanish","Traditional Chinese"],"runsOnAppleSilicon":true,"requiredCapabilities":"armv7 ","offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1017617320\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836137902","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":128557056}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1017617320\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836137902","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":128557056}]}]},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437059"}}}}]},"genres":{"href":"/v1/catalog/us/apps/1017617320/genres","data":[{"id":"6011","type":"media/genre","href":"/v1/catalog/us/genres/6011","attributes":{"url":"https://itunes.apple.com/us/genre/id6011","parentName":"Mobile Software Applications","name":"Music","parentId":"36"}},{"id":"6002","type":"media/genre","href":"/v1/catalog/us/genres/6002","attributes":{"url":"https://itunes.apple.com/us/genre/id6002","parentName":"Mobile Software Applications","name":"Utilities","parentId":"36"}}]},"developer":{"href":"/v1/catalog/us/apps/1017617320/developer","data":{"id":"1140008995","type":"media/developer","href":"/v1/catalog/us/developers/1140008995"}}}}],"included":[{"id":"504740787-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=504740787\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=837293600","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":78518272}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=504740787\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=837293600","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":78518272}]}],"bundleId":"com.mathieurouthier.Suggester","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2012-03-12T00:00:00.000Z","requiresGameController":false,"subtitle":"Chords that work together","copyright":"© Mathieu Routhier 2012-2020","languageList":["English"],"requirementsString":"Requires iOS 11.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Mathieu Routhier","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"11.0","requiredCapabilities":"arm64 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437050"}}}},{"id":"1172558973-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1172558973\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=837672771","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":48950272}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1172558973\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=837672771","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":48950272}]}],"bundleId":"com.oneinabillion.WritersSession","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2017-03-12T00:00:00.000Z","requiresGameController":false,"subtitle":"A songwriter's companion","copyright":"© 2015 One In A Billion Ltd","languageList":["English"],"requirementsString":"Requires iOS 13.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Anthony Briscoe","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"13.0","requiredCapabilities":"arm64 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437051"}}}},{"id":"502877188-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=502877188\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=824541292","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":25108480}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=502877188\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=824541292","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":25108480}]}],"bundleId":"com.paragoni.SPiPhoneLE","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2012-03-08T00:00:00.000Z","requiresGameController":false,"subtitle":"The Songwriting App for iPhone","copyright":"© Dante Varnado Moore","languageList":["English"],"requirementsString":"Requires iOS 8.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Dante Media, LLC","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"8.0"},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437052"}}}},{"id":"1342400532-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1342400532\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836806063","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":18053120}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1342400532\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836806063","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":18053120}]}],"bundleId":"co.rhymes.furious","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2018-02-18T00:00:00.000Z","requiresGameController":false,"subtitle":"The #1 Rhyme Dictionary","copyright":"© HYDL","languageList":["English"],"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"HYDL LLC","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"10.0"},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437053"}}}},{"id":"1197981487-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1197981487\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=828985665","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":29894656}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1197981487\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=828985665","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":29894656}]}],"bundleId":"com.rockstarflo.doppelreimapp","editorialArtwork":{},"hasInAppPurchases":false,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2017-01-30T00:00:00.000Z","requiresGameController":false,"copyright":"© 2017 Florian Hönicke","languageList":["English","Afrikaans","Albanian","Arabic","Armenian","Azerbaijani","Basque","Bosnian","Bulgarian","Catalan","Croatian","Czech","Danish","Dutch","Esperanto","Estonian","Finnish","French","Georgian","German","Greek","Hindi","Hungarian","Indonesian","Italian","Kannada","Korean","Latvian","Lithuanian","Macedonian","Malay","Malayalam","Persian","Polish","Portuguese","Romanian","Russian","Serbian","Simplified Chinese","Slovak","Slovenian","Spanish","Swedish","Tamil","Telugu","Turkish","Urdu","Vietnamese","Welsh"],"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Florian Hoenicke","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"10.0","requiredCapabilities":"armv7 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437054"}}}},{"id":"447771549-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=447771549\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=823763694","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":3865600}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=447771549\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=823763694","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":3865600}]}],"bundleId":"com.simonsapps.songwriterlite","editorialArtwork":{},"hasInAppPurchases":false,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2011-07-10T00:00:00.000Z","requiresGameController":false,"subtitle":"Record melody ideas on the go","copyright":"© SimonsApps.com","languageList":["English"],"requirementsString":"Requires iOS 7.1 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"WL Online Marketing LLC","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"7.1"},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437055"}}}},{"id":"316218233-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=316218233\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=824377146","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":16158720}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=316218233\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=824377146","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":16158720}]}],"bundleId":"com.christian.simplesongwriterlite","editorialArtwork":{},"hasInAppPurchases":false,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2009-08-21T00:00:00.000Z","requiresGameController":false,"subtitle":"Song Writing Assistant","copyright":"© 2017 Hopefully Useful Software","languageList":["English"],"requirementsString":"Requires iOS 9.1 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Christian Inkster","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"9.1","requiredCapabilities":"gamekit "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437056"}}}},{"id":"1435329761-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1435329761\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=831662146","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":26701824}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1435329761\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=831662146","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":26701824}]}],"bundleId":"com.kenny-mc.LyricNotepad","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2018-09-06T00:00:00.000Z","requiresGameController":false,"subtitle":"Make Song Lyrics, Poetry \u0026 Rap","copyright":"© 2019 Kenny Mc","languageList":["English"],"requirementsString":"Requires iOS 9.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Kenneth Mcilvaine","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"9.0","requiredCapabilities":"armv7 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437057"}}}},{"id":"788423364-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=788423364\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836988884","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":30680064}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=788423364\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836988884","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":30680064}]}],"bundleId":"com.autochords.Autochords","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2014-01-13T00:00:00.000Z","requiresGameController":false,"subtitle":"Chord Progression Generator","copyright":"© 2020 Astrocode Pty Ltd","languageList":["English","French","German","Italian","Russian"],"requirementsString":"Requires iOS 13.1 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Astrocode Pty Ltd","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"13.1","requiredCapabilities":"arm64 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437058"}}}},{"id":"1017617320-ios","type":"media/app-platform","attributes":{"hasMessagesExtension":false,"isHiddenFromSpringboard":false,"offers":[{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1017617320\u0026pricingParameters=STDQ\u0026pg=default\u0026appExtVrsId=836137902","type":"get","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":128557056}]},{"buyParams":"productType=C\u0026price=0\u0026salableAdamId=1017617320\u0026pricingParameters=SWUPD\u0026pg=default\u0026appExtVrsId=836137902","type":"update","priceFormatted":"$0.00","price":0,"currencyCode":"USD","assets":[{"flavor":"iosSoftware","size":128557056}]}],"bundleId":"mobi.musicparadise.SongWritermps","editorialArtwork":{},"hasInAppPurchases":true,"isAppleWatchSupported":false,"isGameCenterEnabled":false,"isSiriSupported":false,"supportsGameController":false,"supportsPassbook":false,"releaseDate":"2015-07-16T00:00:00.000Z","requiresGameController":false,"subtitle":"Notes for songs","copyright":"© Music Breath","languageList":["English","French","German","Italian","Japanese","Korean","Portuguese","Russian","Simplified Chinese","Spanish","Traditional Chinese"],"requirementsString":"Requires iOS 10.0 or later. Compatible with iPhone, iPad, and iPod touch.","seller":"Music Breath, OOO","isStandaloneForWatchOS":false,"is32bitOnly":false,"minimumOSVersion":"10.0","requiredCapabilities":"armv7 "},"relationships":{"artwork":{"data":{"type":"image","id":"ember3437059"}}}},{"id":"ember3437050","type":"image","attributes":{"bgColor":"efca3e","height":1024,"textColor1":"000000","textColor2":"2f2a18","textColor3":"2f280c","textColor4":"554a1f","url":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/de/79/ba/de79ba2d-b6ea-bd23-0ff0-e5073d2389d9/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437051","type":"image","attributes":{"bgColor":"ff9800","height":1024,"textColor1":"000000","textColor2":"1b1b1b","textColor3":"331e00","textColor4":"483416","url":"https://is1-ssl.mzstatic.com/image/thumb/Purple114/v4/d7/3d/f1/d73df133-0c01-b47d-2085-ca867aa64a84/AppIcon-1x_U007emarketing-0-10-0-85-220.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437052","type":"image","attributes":{"bgColor":"242424","height":1024,"textColor1":"f0f0f0","textColor2":"d1d0d0","textColor3":"c7c7c7","textColor4":"aeadad","url":"https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/07/ba/96/07ba9631-d01e-db98-c2c0-05448e657492/AppIcon-1x_U007emarketing-85-220-1.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437053","type":"image","attributes":{"bgColor":"ff15cd","height":1024,"textColor1":"000000","textColor2":"370424","textColor3":"330429","textColor4":"5f0746","url":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/35/87/dc/3587dc6a-e1fd-3c95-67f9-ec44e53ed231/AppIcon-1x_U007emarketing-0-10-0-0-sRGB-0-0-85-220.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437054","type":"image","attributes":{"bgColor":"ffffff","height":1024,"textColor1":"000000","textColor2":"202020","textColor3":"333333","textColor4":"4d4d4d","url":"https://is5-ssl.mzstatic.com/image/thumb/Purple118/v4/05/14/45/05144542-3c08-349f-6851-0f531eaafa92/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437055","type":"image","attributes":{"bgColor":"40676f","height":1024,"textColor1":"f8f0d2","textColor2":"fad455","textColor3":"d4d5be","textColor4":"d5be5a","url":"https://is3-ssl.mzstatic.com/image/thumb/Purple118/v4/64/26/eb/6426eb84-1195-1447-95ef-8a4618948b88/AppIcon-1x_U007emarketing-0-85-220-0-1.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437056","type":"image","attributes":{"bgColor":"465f79","height":1024,"textColor1":"ffffff","textColor2":"dee4eb","textColor3":"d9dee4","textColor4":"bfcad4","url":"https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/7c/60/29/7c6029a3-b1c8-32a3-a8aa-d710d44f4d0a/AppIconLE-1x_U007emarketing-85-220-0-4.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437057","type":"image","attributes":{"bgColor":"5f287f","height":1024,"textColor1":"f6f2f8","textColor2":"dbcae7","textColor3":"d8cae0","textColor4":"c2aad2","url":"https://is4-ssl.mzstatic.com/image/thumb/Purple113/v4/42/47/2e/42472eae-bf7a-fcac-dd34-38a94c3bbe88/AppIcon-0-1x_U007emarketing-0-85-220-0-7.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437058","type":"image","attributes":{"bgColor":"4532c4","height":1024,"textColor1":"f5f4fc","textColor2":"eceaf9","textColor3":"d2cdf0","textColor4":"cac5ee","url":"https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/78/e0/7a/78e07a8d-bbee-0816-d6f8-61806f4f55c1/AppIcon-0-1x_U007emarketing-0-6-0-85-220.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}},{"id":"ember3437059","type":"image","attributes":{"bgColor":"0b0815","height":1024,"textColor1":"f7f5f8","textColor2":"e99866","textColor3":"c8c5ca","textColor4":"bd7b56","url":"https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/5b/d8/38/5bd838cb-06af-1970-3917-536d56a88a9f/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/{w}x{h}{c}.{f}","width":1024},"relationships":{}}]}</script><script type="fastboot/shoebox" id="shoebox-global-elements">{"nav":"\u003caside id=\"ac-gn-segmentbar\" class=\"ac-gn-segmentbar\" lang=\"en-US\" dir=\"ltr\" data-strings=\"{ \u0026apos;exit\u0026apos;: \u0026apos;Exit\u0026apos;, \u0026apos;view\u0026apos;: \u0026apos;{%STOREFRONT%} Store Home\u0026apos;, \u0026apos;segments\u0026apos;: { \u0026apos;smb\u0026apos;: \u0026apos;Business Store Home\u0026apos;, \u0026apos;eduInd\u0026apos;: \u0026apos;Education Store Home\u0026apos;, \u0026apos;other\u0026apos;: \u0026apos;Store Home\u0026apos; } }\"\u003e\n\u003c/aside\u003e\n\u003cinput type=\"checkbox\" id=\"ac-gn-menustate\" class=\"ac-gn-menustate\"\u003e\n\u003cnav id=\"ac-globalnav\" class=\"no-js\" role=\"navigation\" aria-label=\"Global\" data-hires=\"false\" data-analytics-region=\"global nav\" lang=\"en-US\" dir=\"ltr\" data-www-domain=\"www.apple.com\" data-store-locale=\"us\" data-store-root-path=\"/us\" data-store-api=\"https://www.apple.com/[storefront]/shop/bag/status\" data-search-locale=\"en_US\" data-search-suggestions-api=\"https://www.apple.com/search-services/suggestions/\" data-search-defaultlinks-api=\"https://www.apple.com/search-services/suggestions/defaultlinks/\"\u003e\n\t\u003cdiv class=\"ac-gn-content\"\u003e\n\t\t\u003cul class=\"ac-gn-header\"\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-menuicon\"\u003e\n\t\t\t\t\u003clabel class=\"ac-gn-menuicon-label\" for=\"ac-gn-menustate\" aria-hidden=\"true\"\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-menuicon-bread ac-gn-menuicon-bread-top\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-top\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-menuicon-bread ac-gn-menuicon-bread-bottom\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-bottom\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\u003c/label\u003e\n\t\t\t\t\u003ca href=\"#ac-gn-menustate\" role=\"button\" class=\"ac-gn-menuanchor ac-gn-menuanchor-open\" id=\"ac-gn-menuanchor-open\"\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-menuanchor-label\"\u003eGlobal Nav Open Menu\u003c/span\u003e\n\t\t\t\t\u003c/a\u003e\n\t\t\t\t\u003ca href=\"#\" role=\"button\" class=\"ac-gn-menuanchor ac-gn-menuanchor-close\" id=\"ac-gn-menuanchor-close\"\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-menuanchor-label\"\u003eGlobal Nav Close Menu\u003c/span\u003e\n\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-apple\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-apple\" href=\"https://www.apple.com/\" data-analytics-title=\"apple home\" id=\"ac-gn-firstfocus-small\"\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eApple\u003c/span\u003e\n\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-bag ac-gn-bag-small\" id=\"ac-gn-bag-small\"\u003e\n\t\t\t\t\u003cdiv class=\"ac-gn-bag-wrapper\"\u003e\n\t\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-bag\" href=\"https://www.apple.com/us/shop/goto/bag\" data-analytics-title=\"bag\" data-analytics-click=\"bag\" aria-label=\"Shopping Bag\" data-string-badge=\"Shopping Bag with item count :\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eShopping Bag\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-separator\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-number\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-unit\"\u003e+\u003c/span\u003e\n\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\u003c/div\u003e\n\t\t\t\t\u003cspan class=\"ac-gn-bagview-caret ac-gn-bagview-caret-large\"\u003e\u003c/span\u003e\n\t\t\t\u003c/li\u003e\n\t\t\u003c/ul\u003e\n\t\t\u003cdiv class=\"ac-gn-search-placeholder-container\" role=\"search\"\u003e\n\t\t\t\u003cdiv class=\"ac-gn-search ac-gn-search-small\"\u003e\n\t\t\t\t\u003ca id=\"ac-gn-link-search-small\" class=\"ac-gn-link\" href=\"https://www.apple.com/us/search\" data-analytics-title=\"search\" data-analytics-click=\"search\" data-analytics-intrapage-link aria-label=\"Search apple.com\"\u003e\n\t\t\t\t\t\u003cdiv class=\"ac-gn-search-placeholder-bar\"\u003e\n\t\t\t\t\t\t\u003cdiv class=\"ac-gn-search-placeholder-input\"\u003e\n\t\t\t\t\t\t\t\u003cdiv class=\"ac-gn-search-placeholder-input-text\" aria-hidden=\"true\"\u003e\n\t\t\t\t\t\t\t\t\u003cdiv class=\"ac-gn-link-search ac-gn-search-placeholder-input-icon\"\u003e\u003c/div\u003e\n\t\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-search-placeholder\"\u003eSearch apple.com\u003c/span\u003e\n\t\t\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\t\t\u003cdiv class=\"ac-gn-searchview-close ac-gn-searchview-close-small ac-gn-search-placeholder-searchview-close\"\u003e\n\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-searchview-close-cancel\" aria-hidden=\"true\"\u003eCancel\u003c/span\u003e\n\t\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/div\u003e\n\t\t\u003c/div\u003e\n\t\t\u003cul class=\"ac-gn-list\"\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-apple\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-apple\" href=\"https://www.apple.com/\" data-analytics-title=\"apple home\" id=\"ac-gn-firstfocus\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eApple\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-mac\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-mac\" href=\"https://www.apple.com/mac/\" data-analytics-title=\"mac\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eMac\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-ipad\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-ipad\" href=\"https://www.apple.com/ipad/\" data-analytics-title=\"ipad\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eiPad\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-iphone\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-iphone\" href=\"https://www.apple.com/iphone/\" data-analytics-title=\"iphone\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eiPhone\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-watch\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-watch\" href=\"https://www.apple.com/watch/\" data-analytics-title=\"watch\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eWatch\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-tv\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-tv\" href=\"https://www.apple.com/tv/\" data-analytics-title=\"tv\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eTV\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-music\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-music\" href=\"https://www.apple.com/music/\" data-analytics-title=\"music\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eMusic\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-support\"\u003e\n\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-support\" href=\"https://support.apple.com\" data-analytics-title=\"support\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eSupport\u003c/span\u003e\n\t\t\t\t\t\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-item-menu ac-gn-search\" role=\"search\"\u003e\n\t\t\t\t\u003ca id=\"ac-gn-link-search\" class=\"ac-gn-link ac-gn-link-search\" href=\"https://www.apple.com/us/search\" data-analytics-title=\"search\" data-analytics-click=\"search\" data-analytics-intrapage-link aria-label=\"Search apple.com\"\u003e\u003c/a\u003e\n\t\t\t\u003c/li\u003e\n\t\t\t\u003cli class=\"ac-gn-item ac-gn-bag\" id=\"ac-gn-bag\"\u003e\n\t\t\t\t\u003cdiv class=\"ac-gn-bag-wrapper\"\u003e\n\t\t\t\t\t\u003ca class=\"ac-gn-link ac-gn-link-bag\" href=\"https://www.apple.com/us/shop/goto/bag\" data-analytics-title=\"bag\" data-analytics-click=\"bag\" aria-label=\"Shopping Bag\" data-string-badge=\"Shopping Bag with item count : {%BAGITEMCOUNT%}\"\u003e\n\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-link-text\"\u003eShopping Bag\u003c/span\u003e\n\t\t\t\t\t\t\u003c/a\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge\" aria-hidden=\"true\"\u003e\n\t\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-separator\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-number\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-bag-badge-unit\"\u003e+\u003c/span\u003e\n\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\u003c/div\u003e\n\t\t\t\t\u003cspan class=\"ac-gn-bagview-caret ac-gn-bagview-caret-large\"\u003e\u003c/span\u003e\n\t\t\t\u003c/li\u003e\n\t\t\u003c/ul\u003e\n\t\t\u003caside id=\"ac-gn-searchview\" class=\"ac-gn-searchview\" role=\"search\" data-analytics-region=\"search\"\u003e\n\t\t\t\u003cdiv class=\"ac-gn-searchview-content\"\u003e\n\t\t\t\t\u003cdiv class=\"ac-gn-searchview-bar\"\u003e\n\t\t\t\t\t\u003cdiv class=\"ac-gn-searchview-bar-wrapper\"\u003e\n\t\t\t\t\t\t\u003cform id=\"ac-gn-searchform\" class=\"ac-gn-searchform\" action=\"https://www.apple.com/us/search\" method=\"get\"\u003e\n\t\t\t\t\t\t\t\u003cdiv class=\"ac-gn-searchform-wrapper\"\u003e\n\t\t\t\t\t\t\t\t\u003cinput id=\"ac-gn-searchform-input\" class=\"ac-gn-searchform-input\" type=\"text\" aria-label=\"Search apple.com\" placeholder=\"Search apple.com\" autocorrect=\"off\" autocapitalize=\"off\" autocomplete=\"off\" spellcheck=\"false\" role=\"combobox\" aria-autocomplete=\"list\" aria-expanded=\"true\" aria-owns=\"quicklinks suggestions\"\u003e\n\t\t\t\t\t\t\t\t\u003cinput id=\"ac-gn-searchform-src\" type=\"hidden\" name=\"src\" value=\"itunes_serp\"\u003e\n\t\t\t\t\t\t\t\t\u003cbutton id=\"ac-gn-searchform-submit\" class=\"ac-gn-searchform-submit\" type=\"submit\" disabled aria-label=\"Submit Search\"\u003e\u003c/button\u003e\n\t\t\t\t\t\t\t\t\u003cbutton id=\"ac-gn-searchform-reset\" class=\"ac-gn-searchform-reset\" type=\"reset\" disabled aria-label=\"Clear Search\"\u003e\n\t\t\t\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-searchform-reset-background\"\u003e\u003c/span\u003e\n\t\t\t\t\t\t\t\t\t\u003c/button\u003e\n\t\t\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\t\t\u003c/form\u003e\n\t\t\t\t\t\t\u003cbutton id=\"ac-gn-searchview-close-small\" class=\"ac-gn-searchview-close ac-gn-searchview-close-small\" aria-label=\"Cancel Search\"\u003e\n\t\t\t\t\t\t\t\t\u003cspan class=\"ac-gn-searchview-close-cancel\" aria-hidden=\"true\"\u003e\n\t\t\t\t\t\t\t\t\tCancel\n\t\t\t\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\t\t\t\u003c/button\u003e\n\t\t\t\t\t\u003c/div\u003e\n\t\t\t\t\u003c/div\u003e\n\t\t\t\t\u003caside id=\"ac-gn-searchresults\" class=\"ac-gn-searchresults\" data-string-quicklinks=\"Quick Links\" data-string-suggestions=\"Suggested Searches\" data-string-noresults\u003e\u003c/aside\u003e\n\t\t\t\u003c/div\u003e\n\t\t\t\u003cbutton id=\"ac-gn-searchview-close\" class=\"ac-gn-searchview-close\" aria-label=\"Cancel Search\"\u003e\n\t\t\t\t\t\u003cspan class=\"ac-gn-searchview-close-wrapper\"\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-searchview-close-left\"\u003e\u003c/span\u003e\n\t\t\t\t\t\t\u003cspan class=\"ac-gn-searchview-close-right\"\u003e\u003c/span\u003e\n\t\t\t\t\t\u003c/span\u003e\n\t\t\t\t\u003c/button\u003e\n\t\t\u003c/aside\u003e\n\t\t\u003caside class=\"ac-gn-bagview\" data-analytics-region=\"bag\"\u003e\n\t\t\t\u003cdiv class=\"ac-gn-bagview-scrim\"\u003e\n\t\t\t\t\u003cspan class=\"ac-gn-bagview-caret ac-gn-bagview-caret-small\"\u003e\u003c/span\u003e\n\t\t\t\u003c/div\u003e\n\t\t\t\u003cdiv class=\"ac-gn-bagview-content\" id=\"ac-gn-bagview-content\"\u003e\n\t\t\t\u003c/div\u003e\n\t\t\u003c/aside\u003e\n\t\u003c/div\u003e\n\u003c/nav\u003e\n\u003cdiv class=\"ac-gn-blur\"\u003e\u003c/div\u003e\n\u003cdiv id=\"ac-gn-curtain\" class=\"ac-gn-curtain\"\u003e\u003c/div\u003e\n\u003cdiv id=\"ac-gn-placeholder\" class=\"ac-nav-placeholder\"\u003e\u003c/div\u003e\n","footer":"\u003cfooter id=\"ac-globalfooter\" class=\"no-js\" role=\"contentinfo\" lang=\"en-US\" dir=\"ltr\"\u003e\u003cdiv class=\"ac-gf-content\"\u003e\u003csection class=\"ac-gf-footer\"\u003e\n\t\u003cdiv class=\"ac-gf-footer-shop\" x-ms-format-detection=\"none\"\u003e\n\t\tMore ways to shop: \u003ca href=\"https://www.apple.com/retail/\" data-analytics-title=\"find an apple store\"\u003eFind an Apple Store\u003c/a\u003e or \u003ca href=\"https://locate.apple.com/\" data-analytics-title=\"other retailers or resellers\" data-analytics-exit-link\u003eother retailer\u003c/a\u003e near you. \u003cspan class=\"nowrap\"\u003eOr call 1-800-MY-APPLE.\u003c/span\u003e\n\t\u003c/div\u003e\n\t\u003cdiv class=\"ac-gf-footer-locale\"\u003e\n\t\t\u003ca class=\"ac-gf-footer-locale-link\" href=\"https://www.apple.com/choose-country-region/\" title=\"Choose your country or region\" aria-label=\"Choose your country or region\" data-analytics-title=\"choose your country\"\u003eChoose your country or region\u003c/a\u003e\n\t\u003c/div\u003e\n\t\u003cdiv class=\"ac-gf-footer-legal\"\u003e\n\t\t\u003cdiv class=\"ac-gf-footer-legal-copyright\"\u003eCopyright \u0026#xA9; 2020 Apple Inc. All rights reserved.\u003c/div\u003e\n\t\t\u003cdiv class=\"ac-gf-footer-legal-links\"\u003e\n\t\t\t\u003ca class=\"ac-gf-footer-legal-link\" href=\"https://www.apple.com/legal/privacy/\" data-analytics-title=\"privacy policy\"\u003ePrivacy Policy\u003c/a\u003e\n\t\t\t\u003ca class=\"ac-gf-footer-legal-link\" href=\"https://www.apple.com/legal/internet-services/terms/site.html\" data-analytics-title=\"terms of use\"\u003eTerms of Use\u003c/a\u003e\n\t\t\t\u003ca class=\"ac-gf-footer-legal-link\" href=\"https://www.apple.com/us/shop/goto/help/sales_refunds\" data-analytics-title=\"sales and refunds\"\u003eSales and Refunds\u003c/a\u003e\n\t\t\t\u003ca class=\"ac-gf-footer-legal-link\" href=\"https://www.apple.com/legal/\" data-analytics-title=\"legal\"\u003eLegal\u003c/a\u003e\n\t\t\t\u003ca class=\"ac-gf-footer-legal-link\" href=\"https://www.apple.com/sitemap/\" data-analytics-title=\"site map\"\u003eSite Map\u003c/a\u003e\n\t\t\u003c/div\u003e\n\t\u003c/div\u003e\n\u003c/section\u003e\n\u003c/div\u003e\u003c/footer\u003e","styles":{"nav":"2038.1.0/en_US/ac-global-nav.d915b46b2869cd416cbafe206ca74838.css","footer":"2038.1.0/en_US/ac-global-footer.d713eba21fcb738bf79174829d8d8f93.css"},"scripts":{"nav":"2038.1.0/en_US/ac-global-nav.40fb014033a1dce2eb83a26e023ba3e9.js","footer":"2038.1.0/en_US/ac-global-footer.87d5225f626f0b9df05fe81d34684040.js"},"isLoaded":true}</script><script type="x/boundary" id="fastboot-body-end"></script>
    </div>
    <div id="modal-container"></div>
    <script integrity="" src="/assets/vendor-3289470944826c7ff24f4d3ec17a42e8.js"></script>
    <script integrity="" src="/assets/web-experience-app-6f546bf1b4a1d6ee7d60e51b6b85a42e.js"></script>
    <script src="https://js-cdn.music.apple.com/-amp/v2/musickit.js"></script>

    
  </body>
</html>
