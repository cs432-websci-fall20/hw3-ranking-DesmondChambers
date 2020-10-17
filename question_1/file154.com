<!DOCTYPE html><html lang="en" class="enhanced-ux"><head><meta charSet="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/><link rel="preconnect" href="https://polyfill.io/"/><link rel="preconnect" href="//quantcast.mgr.consensu.org"/><link rel="preconnect" href="https://img.buzzfeed.com/buzzfeed-static"/><link rel="preconnect" crossorigin="true" href="https://recsys-api.buzzfeed.com/web"/><link rel="preconnect" href="https://pixiedust.buzzfeed.com"/><link rel="preconnect" crossorigin="true" href="https://abeagle-public.buzzfeed.com"/><link rel="dns-prefetch" href="https://cdn.permutive.com"/><link rel="dns-prefetch" href="https://tagan.adlightning.com"/><script>(function (buzz) {var d = document,w = window,n = navigator,wp = w.performance,os,osMap,getCookie;if (w.__trackAbandons || !n || !n.sendBeacon || !wp || !wp.now) return;osMap = {'Win':'Windows','Mac':'MacOs','X11':'Unix','Linux':'Linux' };os = navigator.appVersion.match(/Win|Mac|X11|Linux/);getCookie = function (cookie) {var re = new RegExp('(?:(?:^|.*;\\s*)' + cookie + '\\s*\\=\\s*([^;]*).*$)|^.*$');return d.cookie.replace(re,'$1');};w.__trackAbandons = function () {d.removeEventListener('visibilitychange',w.__trackAbandons);n.sendBeacon('https://pixiedust.buzzfeed.com/events',w.JSON.stringify([{client_session_id:getCookie('bf-xdomain-session-uuid') || '00000000-0000-0000-0000-000000000000',client_uuid:getCookie('bf_visit') || '00000000-0000-0000-0000-000000000000',context_page_id:buzz.id,context_page_type:'buzz',destination:'buzzfeed',event_ts:Math.round(w.Date.now() / 1000),event_uri:w.location.href,event_uuid:'00000000-0000-0000-0000-000000000000',metric_name:'load-abandonment',metric_type:'custom',metric_value:wp.now(),mode:w.matchMedia && w.matchMedia('screen and (max-width:51.9rem)').matches ? 'mobile' :'desktop',os:os ? osMap[os[0]] :'Unknown',page_edition:buzz.country_code,page_session_id:'00000000-0000-0000-0000-000000000000',referrer_uri:d.referrer,source:'web_bf',type:'web_performance_metric',viewport_size:{width:w.screen.width,height:w.screen.height }}]));};d.addEventListener('visibilitychange',w.__trackAbandons);})({"id":"5708762","country_code":"en-us"});</script><script>
  window.BZFD = {
    Config: {
      bfwInfoCookie: 'bf2-b_info'
    },
    Context: { page: {} }
  };
</script><script>
  window.bfa = function() { };
</script><script>(function () {
    var uspTries = 0;
    var uspTriesLimit = 3;

    function makeStub() {
      var TCF_LOCATOR_NAME = '__tcfapiLocator';
      var queue = [];
      var win = window;
      var cmpFrame;

      function addFrame() {
        var doc = win.document;
        var otherCMP = !!win.frames[TCF_LOCATOR_NAME];

        if (!otherCMP) {
          if (doc.body) {
            var iframe = doc.createElement('iframe');
            iframe.style.cssText = 'display:none';
            iframe.name = TCF_LOCATOR_NAME;
            doc.body.appendChild(iframe);
          } else {
            setTimeout(addFrame, 5);
          }
        }

        return !otherCMP;
      }

      function tcfAPIHandler() {
        var gdprApplies;
        var args = arguments;

        if (!args.length) {
          return queue;
        } else if (args[0] === 'setGdprApplies') {
          if (args.length > 3 && args[2] === 2 && typeof args[3] === 'boolean') {
            gdprApplies = args[3];

            if (typeof args[2] === 'function') {
              args[2]('set', true);
            }
          }
        } else if (args[0] === 'ping') {
          var retr = {
            gdprApplies: gdprApplies,
            cmpLoaded: false,
            cmpStatus: 'stub'
          };

          if (typeof args[2] === 'function') {
            args[2](retr);
          }
        } else {
          queue.push(args);
        }
      }

      function postMessageEventHandler(event) {
        var msgIsString = typeof event.data === 'string';
        var json = {};

        try {
          if (msgIsString) {
            json = JSON.parse(event.data);
          } else {
            json = event.data;
          }
        } catch (ignore) {}

        var payload = json.__tcfapiCall;

        if (payload) {
          window.__tcfapi(payload.command, payload.version, function (retValue, success) {
            var returnMsg = {
              __tcfapiReturn: {
                returnValue: retValue,
                success: success,
                callId: payload.callId
              }
            };

            if (msgIsString) {
              returnMsg = JSON.stringify(returnMsg);
            }

            event.source.postMessage(returnMsg, '*');
          }, payload.parameter);
        }
      }

      while (win) {
        try {
          if (win.frames[TCF_LOCATOR_NAME]) {
            cmpFrame = win;
            break;
          }
        } catch (ignore) {}

        if (win === window.top) {
          break;
        }

        win = win.parent;
      }

      if (!cmpFrame) {
        addFrame();
        win.__tcfapi = tcfAPIHandler;
        win.addEventListener('message', postMessageEventHandler, false);
      }
    }

    ; // if (typeof module !== 'undefined') {
    //   module.exports = makeStub;
    // } else {

    makeStub(); // }

    var uspStubFunction = function () {
      var arg = arguments;

      if (typeof window.__uspapi !== uspStubFunction) {
        setTimeout(function () {
          if (typeof window.__uspapi !== 'undefined') {
            window.__uspapi.apply(window.__uspapi, arg);
          }
        }, 500);
      }
    };

    var checkIfUspIsReady = function () {
      uspTries++;

      if (window.__uspapi === uspStubFunction && uspTries < uspTriesLimit) {
        console.warn('USP is not accessible');
      } else {
        clearInterval(uspInterval);
      }
    };

    if (typeof window.__uspapi === 'undefined') {
      window.__uspapi = uspStubFunction;
      var uspInterval = setInterval(checkIfUspIsReady, 6000);
    }
  })();</script><script src="https://polyfill.io/v3/polyfill.min.js?flags=gated&amp;features=default,es2015,es2016,es2017,fetch,NodeList.prototype.forEach,Element.prototype.remove,Element.prototype.classList,Object.values,Object.getOwnPropertyDescriptors,IntersectionObserver,ResizeObserver,MutationObserver,Intl"></script><link rel="preload" as="script" href="https://polyfill.io/v3/polyfill.min.js?flags=gated&amp;features=default,es2015,es2016,es2017,fetch,NodeList.prototype.forEach,Element.prototype.remove,Element.prototype.classList,Object.values,Object.getOwnPropertyDescriptors,IntersectionObserver,ResizeObserver,MutationObserver,Intl"/><link rel="preload" href="/static-assets/js/vendor.152ed2ba91382c4dce0a.js?brotli=allow" as="script"/><link rel="preload" href="/static-assets/js/subbuzzes.40b2c15caf92148f3f1e.js?brotli=allow" as="script"/><link rel="preload" href="https://run.adrizer.com/track.min.js" as="script"/><link rel="preload" href="https://securepubads.g.doubleclick.net/tag/js/gpt.js" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-header-ui/app.4a6264fdfbe98b852e37.js?brotli=allow" as="script"/><script src="/static-assets/js/vendor.152ed2ba91382c4dce0a.js?brotli=allow" async=""></script><script src="/static-assets/js/subbuzzes.40b2c15caf92148f3f1e.js?brotli=allow" async=""></script><meta name="copyright" content="Copyright BuzzFeed, Inc. All rights reserved."/><meta name="apple-mobile-web-app-capable" content="yes"/><meta name="apple-mobile-web-app-title" content="BuzzFeed"/><meta name="theme-color" content="#ee3322"/><link rel="shortcut icon" crossorigin="" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/favicon.5a0c77a8815cfcc67c710199054a55c6.ico" type="image/x-icon"/><link rel="manifest" crossorigin="use-credentials" href="/manifest.json"/><title>24 Home Products From Amazon That TikTok Users Love</title><meta name="title" content="24 Home Products From Amazon That TikTok Users Love"/><meta name="description" content="If you don&#x27;t have a toothpaste dispenser and a cloud-shaped key holder in your house, then let me tell you, you&#x27;re missing out."/><meta property="bf:buzzid" content="5708762"/><meta property="bf:userid" content="8294615"/><link rel="canonical" href="https://www.buzzfeed.com/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><link rel="image_src" href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/23/tmp/52c11188ae60/tmp-name-2-4608-1601682851-6_dblbig.jpg"/><meta name="robots" content="all"/><meta property="author" content="Kayla Boyd"/><meta property="pin:media" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/23/tmp/52c11188ae60/tmp-name-2-4608-1601682851-6_dblbig.jpg"/><meta property="pin:description" content="24 Home Products From Amazon That TikTok Users Love"/><meta property="fb:smart_publish:robots" content="noauto"/><meta property="fb:app_id" content="862012947269736"/><meta property="article:section" content="Shopping"/><meta property="article:publisher" content="https://www.facebook.com/BuzzFeed"/><meta property="article:content_tier" content="free"/><meta property="article:opinion" content="false"/><meta property="article:tag" content="commerce-amazon-home"/><meta property="article:tag" content="comtent"/><meta property="article:tag" content="shopping-amazon"/><meta property="article:tag" content="shopping-home"/><meta property="og:url" content="https://www.buzzfeed.com/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><meta property="og:site_name" content="BuzzFeed"/><meta property="og:image" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/23/enhanced/8cc393f40df6/original-4448-1601682326-3.jpg?crop=1243:650;0,89%26downsize=1250:*"/><meta property="og:image:alt" content=""/><meta property="og:title" content="24 Home Products From Amazon That TikTok Users Love"/><meta property="og:description" content="If you don&#x27;t have a toothpaste dispenser and a cloud-shaped key holder in your house, then let me tell you, you&#x27;re missing out."/><meta property="og:type" content="article"/><meta name="twitter:app:id:iphone" content="352969997"/><meta name="twitter:app:url:iphone" content="buzzfeed://buzz/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><meta name="twitter:app:id:ipad" content="352969997"/><meta name="twitter:app:url:ipad" content="buzzfeed://buzz/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><meta name="twitter:site" content="@buzzfeed"/><meta name="twitter:creator" content="@{twitterAuthorHandle}"/><meta name="twitter:url" content="https://www.buzzfeed.com/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><meta name="twitter:title" content="24 Home Products From Amazon That TikTok Users Love"/><meta name="twitter:description" content="If you don&#x27;t have a toothpaste dispenser and a cloud-shaped key holder in your house, then let me tell you, you&#x27;re missing out."/><meta name="twitter:app:id:googleplay" content="com.buzzfeed.android"/><meta name="twitter:app:url:googleplay" content="https://www.buzzfeed.com/kaylaboyd/home-products-from-amazon-that-tiktok-users-love"/><meta name="twitter:card" content="summary_large_image"/><meta name="twitter:image" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/23/enhanced/8cc393f40df6/original-4448-1601682326-3.jpg?crop=1243:621;0,104%26downsize=1250:*"/><meta itemProp="articleSection" content="US"/><script type="application/ld+json">{"@context":"http://schema.org","@type":"Article","isAccessibleForFree":true,"mainEntityOfPage":"https://www.buzzfeed.com/kaylaboyd/home-products-from-amazon-that-tiktok-users-love","description":"If you don't have a toothpaste dispenser and a cloud-shaped key holder in your house, then let me tell you, you're missing out.","headline":"24 Home Products From Amazon That TikTok Users Love","datePublished":"2020-10-11T02:01:09.000Z","dateModified":"2020-10-17T01:25:30.000Z","author":"[{\"@type\":\"Person\",\"name\":\"Kayla Boyd\",\"url\":\"https://www.buzzfeed.com/kaylaboyd\",\"jobTitle\":\"BuzzFeed Staff\"}]","publisher":{"@type":"Organization","name":"BuzzFeed","url":"https://www.buzzfeed.com","sameAs":["https://www.twitter.com/buzzfeed","https://www.facebook.com/BuzzFeed","https://www.pinterest.com/buzzfeed","https://www.youtube.com/user/buzzfeedvideo"],"logo":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/images/amp/buzzfeed-60px-high.png","width":341,"height":60}},"image":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/23/tmp/52c11188ae60/tmp-name-2-4608-1601682851-6_dblbig.jpg?resize=1200:*","representativeOfPage":true}}</script><script type="application/ld+json" data-schema="Organization">{"@context":"http://schema.org","@type":"Organization","name":"BuzzFeed","url":"https://www.buzzfeed.com","sameAs":["https://www.twitter.com/buzzfeed","https://www.facebook.com/BuzzFeed","https://www.pinterest.com/buzzfeed","https://www.youtube.com/user/buzzfeedvideo"],"logo":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/images/amp/buzzfeed-60px-high.png","width":341,"height":60}}</script><meta name="next-head-count" content="73"/><style data-href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/css/styles.5f23a5f5.chunk.css">.promoPopup__12-zqUJhLS{background-color:#fff;box-shadow:0 -2px 4px #d7d7d7;display:block;user-select:none;pointer-events:none;width:100%;max-height:0;overflow:hidden;position:fixed;bottom:0;left:0;right:0;transition:max-height .5s ease;z-index:400}.promoPopup__12-zqUJhLS:focus{outline:none}.visible__3GcAYa1I19{user-select:inherit;pointer-events:inherit;max-height:100%}.closeButton___UCY4Iofor{cursor:pointer;appearance:none;border:none;background:none;color:#fff;opacity:.75;padding:0;position:absolute;right:10px;top:10px;z-index:10}.closeButton___UCY4Iofor:focus,.closeButton___UCY4Iofor:hover{opacity:1}.closeButton___UCY4Iofor svg{height:25px;width:25px}.promoPopup__2a9IRYxpA4{background-color:#fff;box-shadow:0 -2px 4px #d7d7d7;display:block;user-select:none;pointer-events:none;width:100%;max-height:0;overflow:hidden;position:fixed;bottom:0;left:0;right:0;transition:max-height .5s ease;z-index:400}.promoPopup__2a9IRYxpA4:before{border-top:9px solid #fff;border-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/svg/airmail.4debf21d89d1ff1ef21b71ccdd2de2dd.svg) 100% 5 0 0 repeat;content:"";display:block}.promoPopup__2a9IRYxpA4:focus{outline:none}.visible__31Tz74t0OI{user-select:inherit;pointer-events:inherit;max-height:100%}.closeButton__3k6-Lil_J-{cursor:pointer;appearance:none;border:none;background:none;color:#fff;opacity:.75;padding:0;position:absolute;right:10px;top:20px;z-index:10}.closeButton__3k6-Lil_J-:focus,.closeButton__3k6-Lil_J-:hover{opacity:1}.closeButton__3k6-Lil_J- svg{height:25px;width:25px;fill:#6645dd}.container__1nc6gRuh9g{padding:1rem 1rem 2rem}.form__3IyMu8oRJa button{background-color:#0f65ef}@media (min-width:52rem){.form__3IyMu8oRJa button{margin-left:.5rem}}.form__3IyMu8oRJa button:hover{background-color:#093c8f}.form__3IyMu8oRJa p[role=alert]{font-weight:400;font-size:.875rem}.form__3IyMu8oRJa p[class^=success]{color:#68af15}.form__3IyMu8oRJa p[class^=error]{color:#e32}@media (min-width:52rem){.container__1nc6gRuh9g{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.container__1nc6gRuh9g:before{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/three_gifts.ff4abf8e188ab1df8bf1ae97945f2ae3.png);background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";margin-right:30px;opacity:1;position:relative;min-width:140px}.copy__3CpdxxvAOX{margin-right:30px;width:50%}.form__3IyMu8oRJa{min-width:260px;width:50%}.form__3IyMu8oRJa div[class^=submitBox]{flex-direction:column}.form__3IyMu8oRJa button{margin-left:0}}@media (min-width:64rem){.container__1nc6gRuh9g{max-width:1000px;padding:1rem 0!important}.form__3IyMu8oRJa div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__3IyMu8oRJa input[id^=newsletter-email-signup]{flex-grow:5}.form__3IyMu8oRJa button{margin-left:.5rem}}.wrapper__2Bz22x4Zzx:before{content:" ";top:0;left:0;right:0;bottom:0;position:absolute;background-color:#f8e4ca;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/pets-newsletter-pattern.54ce1f842e8d9a51ddd9222fdc831897.png);opacity:.5;z-index:-1}.container__1jHKqkFcR5{padding:1rem 1rem 2rem}.copy__21_j_uXYaN{display:flex;flex-direction:column;justify-content:center}.copy__21_j_uXYaN h2{color:#e74a4a}.form__W_rM5a0Uis button{background-color:#e74a4a;border:0}@media (min-width:52rem){.form__W_rM5a0Uis button{margin-left:.5rem}}.form__W_rM5a0Uis button:hover{background-color:#fff;color:#222}.form__W_rM5a0Uis button:hover svg{fill:#222}.form__W_rM5a0Uis p[role=alert]{font-weight:400;font-size:.875rem}.form__W_rM5a0Uis p[class^=success]{color:#e74a4a}.form__W_rM5a0Uis p[class^=error]{color:#000}@media (min-width:52rem){.container__1jHKqkFcR5{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.copy__21_j_uXYaN{margin-right:30px;width:50%}.form__W_rM5a0Uis{min-width:260px;width:50%}.form__W_rM5a0Uis div[class^=submitBox]{flex-direction:column}.form__W_rM5a0Uis button{margin-left:0}}@media (min-width:64rem){.container__1jHKqkFcR5{max-width:1000px;padding:1rem 0!important}.form__W_rM5a0Uis div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__W_rM5a0Uis input[id^=newsletter-email-signup]{flex-grow:5}.form__W_rM5a0Uis button{margin-left:.5rem}}.container__27q6pMABty{color:#e40c78;padding:1rem 1rem 2rem}.form__386zevMJ2t button{background-color:#e40c78}@media (min-width:52rem){.form__386zevMJ2t button{margin-left:.5rem}}.form__386zevMJ2t button:hover{background-color:#830745}.form__386zevMJ2t p[role=alert]{font-weight:400;font-size:.875rem}.form__386zevMJ2t p[class^=success]{color:#222}.form__386zevMJ2t p[class^=error]{color:#e32}@media (min-width:52rem){.container__27q6pMABty{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.container__27q6pMABty:before{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/prime-day-stamp2020.76b0a32a616e7e50d8374bb6d011daa4.png);background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";margin-right:40px;opacity:1;position:relative;min-width:140px}.copy__2RU5XPdeO9{margin-right:30px;width:50%}.form__386zevMJ2t{min-width:260px;width:50%}.form__386zevMJ2t div[class^=submitBox]{flex-direction:column}.form__386zevMJ2t button{margin-left:0}}@media (min-width:64rem){.container__27q6pMABty{max-width:1000px;padding:1rem 0!important}.form__386zevMJ2t div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__386zevMJ2t input[id^=newsletter-email-signup]{flex-grow:5}.form__386zevMJ2t button{margin-left:.5rem}}.hidden__2kYVyNCw0T{display:none}.cookieBanner__ApRj6ChJqE{-webkit-box-align:center;-ms-flex-align:center;align-items:center;background-color:#fff;border-top:1px solid rgba(0,0,0,.2);bottom:0;padding:1rem;position:fixed;z-index:300;display:block}@media (min-width:52rem){.cookieBanner__ApRj6ChJqE{display:flex;padding:1rem 1rem 0}}.textContainer__2co_PthkOC{display:block}@media (min-width:52rem){.textContainer__2co_PthkOC{margin-right:1rem}}.text__1MtibY7nyi{font-size:16px;line-height:24px;padding-bottom:1rem}.buttonBox__1doNxhWRyn{-webkit-box-align:center;ms-flex-align:center;align-items:center}.button__3K1VMzBg6D{background-color:#0f65ef;border:1px solid #0f65ef;border-radius:3px;color:#fff;cursor:pointer;display:inline-block;font-size:.875rem;font-family:inherit;line-height:1.25rem;padding:.3125rem .625rem;text-align:center;text-decoration:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-o-user-select:none;user-select:none;-webkit-transition:background-color .1s ease 0s;-o-transition:background-color .1s ease 0s;transition:background-color .1s ease 0s}.Ad .ad-awareness.ad-fadedown{background:#f4f4f4;opacity:1}.alt-text-display{display:block;background:#fff;border:2px solid #e40c78;color:#000;padding:5px;text-align:center;font-weight:400;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;position:relative;z-index:9999999}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Reg-webfont.5d5b6593c3948d364e163d9d1ab28b8b.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Reg-webfont.4821b151c61817c43ae72d96e1b42c89.woff) format("woff");font-weight:400;font-style:normal;font-display:swap}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Bold-webfont.e158c358d666d6ce173707c7dfa9fa1b.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Bold-webfont.2e96ee83f9a26845a46a414f3c2c9907.woff) format("woff");font-weight:700;font-style:normal;font-display:swap}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Xbold-webfont.71b0bae0dd01bdf9ef8f3c71863be8ed.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Xbold-webfont.7042087a2bbabf6eed2deb7cd5731cb3.woff) format("woff");font-weight:800;font-style:normal;font-display:swap}a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,textarea,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}b,strong{font-weight:700}u{text-decoration:underline}em,i{font-style:italic}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:"";content:none}table{border-collapse:collapse;border-spacing:0}small,sub{font-size:smaller}sub{vertical-align:sub}sup{vertical-align:super;font-size:smaller}.col{float:left}.xs-col-2{width:16.66667%}.xs-col-3{width:25%}.xs-col-8{width:66.66667%}.xs-col-9{width:75%}.xs-col-10{width:83.33333%}.xs-col-11{width:91.66667%}.xs-col-12{width:100%}@media (min-width:40rem){.sm-col-3{width:25%}}@media (min-width:40rem){.sm-col-4{width:33.33333%}}@media (min-width:40rem){.sm-col-8{width:66.66667%}}@media (min-width:40rem){.sm-col-9{width:75%}}@media (min-width:52rem){.md-col-5{width:41.66667%}}@media (min-width:52rem){.md-col-8{width:66.66667%}}@media (min-width:64rem){.lg-col-4{width:33.33333%}}@media (min-width:64rem){.lg-col-8{width:66.66667%}}.block-grid__item{display:inline-block;margin:.5rem;font-size:16px;vertical-align:top}.xs-block-grid-1{font-size:0;margin:-.5rem;padding:0}.xs-block-grid-1 .block-grid__item{width:100%}@media (min-width:40rem){.sm-block-grid-3{font-size:0!important;margin:-.5rem!important;padding:0!important}}.sm-block-grid-3 .block-grid__item{width:calc(33.33333% - 1rem)}.flex{display:flex}.xs-flex-align-center{align-items:center}.xs-flex-column{flex-direction:column}.xs-flex-grow-1{flex-grow:1}.xs-flex-justify-center{justify-content:center}.xs-flex-justify-space-between{justify-content:space-between}.xs-flex-shrink-0{flex-shrink:0}@media (min-width:40rem){.sm-flex-justify-space-between{justify-content:space-between}}.xs-m0{margin:0}.xs-mb0{margin-bottom:0}.xs-mb05{margin-bottom:.25rem}.xs-mb1{margin-bottom:.5rem}.xs-mb2{margin-bottom:1rem}.xs-mb3{margin-bottom:1.5rem}.xs-mb4{margin-bottom:2rem}.xs-ml0{margin-left:0}.xs-ml05{margin-left:.25rem}.xs-ml1{margin-left:.5rem}.xs-mr1{margin-right:.5rem}.xs-mr2{margin-right:1rem}.xs-mt0{margin-top:0}.xs-mt1{margin-top:.5rem}.xs-mt2{margin-top:1rem}.xs-mt3{margin-top:1.5rem}.xs-mx05{margin-left:.25rem;margin-right:.25rem}.xs-mx2{margin-left:1rem;margin-right:1rem}.xs-mx-auto{margin-left:auto;margin-right:auto}@media (min-width:40rem){.sm-mb0{margin-bottom:0}}@media (min-width:40rem){.sm-mb2{margin-bottom:1rem}}@media (min-width:40rem){.sm-mb3{margin-bottom:1.5rem}}@media (min-width:40rem){.sm-mr3{margin-right:1.5rem}}@media (min-width:40rem){.sm-mt0{margin-top:0}}@media (min-width:40rem){.sm-mt05{margin-top:.25rem}}@media (min-width:52rem){.md-m4{margin:2rem}}@media (min-width:52rem){.md-mb4{margin-bottom:2rem}}.xs-p0{padding:0}.xs-p2{padding:1rem}.xs-pb1{padding-bottom:.5rem}.xs-pl2{padding-left:1rem}.xs-pr0{padding-right:0}.xs-pr1{padding-right:.5rem}.xs-pt0{padding-top:0}.xs-px2{padding-left:1rem;padding-right:1rem}.xs-px4{padding-left:2rem;padding-right:2rem}.xs-py1{padding-top:.5rem;padding-bottom:.5rem}.xs-py3{padding-top:1.5rem;padding-bottom:1.5rem}@media (min-width:40rem){.sm-pl1{padding-left:.5rem}}@media (min-width:40rem){.sm-pl2{padding-left:1rem}}@media (min-width:40rem){.sm-pr0{padding-right:0}}@media (min-width:40rem){.sm-pr3{padding-right:1.5rem}}@media (min-width:52rem){.md-p4{padding:2rem}}@media (min-width:52rem){.md-pl4{padding-left:2rem}}.xs-b0{bottom:0}.xs-r0{right:0}.xs-t0{top:0}.xs-absolute{position:absolute}.xs-relative{position:relative}.xs-z1{z-index:100}.xs-z2{z-index:200}.xs-z3{z-index:300}.xs-float-left{float:left}.xs-float-right{float:right}@media (min-width:52rem){.md-float-right{float:right}}.xs-block{display:block}.xs-hide{display:none}.xs-inline-block{display:inline-block}.xs-flex{display:flex}@media (min-width:40rem){.sm-flex{display:flex}}@media (min-width:40rem){.sm-block{display:block}}@media (min-width:40rem){.sm-hide{display:none}}@media (min-width:40rem){.sm-inline-block{display:inline-block}}@media (min-width:52rem){.md-block{display:block}}@media (min-width:52rem){.md-hide{display:none}}@media (min-width:40rem){.sm-align-middle{vertical-align:middle}}.italic{font-style:italic}.caps{text-transform:uppercase}.xs-text-2{font-size:1.625rem;line-height:1.2}html[lang=ja] main .xs-text-2{font-size:1.5rem;line-height:1.2}.xs-text-3{font-size:1.375rem;line-height:1.27}html[lang=ja] main .xs-text-3{font-size:1.25rem;line-height:1.27}.xs-text-4{font-size:1.125rem;line-height:1.2}html[lang=ja] main .xs-text-4{font-size:1rem;line-height:1.2}.xs-text-5,html[lang=ja] main .xs-text-5{font-size:.875rem;line-height:1.21}.xs-text-6{font-size:.75rem;line-height:1.25}.xs-text-center{text-align:center}@media (min-width:40rem){.sm-text-left{text-align:left}}@media (min-width:52rem){.md-text-1{font-size:2rem;line-height:1.28}html[lang=ja] main .md-text-1{font-size:1.5rem;line-height:1.28}}@media (min-width:52rem){.md-text-3{font-size:1.625rem;line-height:1.2}html[lang=ja] main .md-text-3{font-size:1.5rem;line-height:1.2}}@media (min-width:52rem){.md-text-center{text-align:center}}.nowrap{white-space:nowrap}.xs-full-height{height:100%}.xs-overflow-hidden{overflow:hidden}.link-gray{color:#222}.link-gray path{fill:#222}.link-gray:hover{color:#0f65ef}.link-gray:hover path{transition:fill .15s ease 0s;fill:#0f65ef;cursor:pointer}.svg-white{fill:#fff}.text-gray{color:#222}.text-gray-lighter,.text-gray-lightest{color:#757575}.text-white{color:#fff}.fill-gray-lighter{background-color:#f4f4f4}.fill-white{background-color:#fff}.svg-2{width:1.625rem;height:1.625rem}.svg-2,.svg-4{vertical-align:middle}.svg-4{width:1.125rem;height:1.125rem}.xs-border{border:1px solid rgba(0,0,0,.2)}.xs-border-none{border:none}.button,.button--small,.button--transparent{cursor:pointer;background-color:rgba(0,0,0,0);background-image:none;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:.5rem .875rem;font-size:1rem;line-height:1.5rem;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;background-color:#0f65ef;color:#fff;border:1px solid #0f65ef;transition:background-color .1s ease 0s}.button--small:focus,.button--small:hover,.button--transparent:focus,.button--transparent:hover,.button:focus,.button:hover{background-color:#093c8f}.button--small:active,.button--transparent:active,.button:active{background-color:#041e47}.button--icon>svg{width:1rem;height:1rem;fill:#fff;position:relative;top:.125rem;margin-right:.5rem}.button--icon.button--small>svg{width:.875rem;height:.875rem;position:relative;margin-right:.3125rem}.button--small{padding:.3125rem .625rem;font-size:.875rem;line-height:1.25rem}.button--transparent{background-color:rgba(0,0,0,0);color:#0f65ef;border:1px solid rgba(0,0,0,0)}.button--transparent:not(.button--disabled):not(:disabled):hover{background-color:rgba(0,0,0,0);color:#093c8f}.button--copy.js-sharing-btn{background-color:#0f65ef;border:1px solid #0f65ef}.button--copy.js-sharing-btn:hover{background-color:#0c51bf;border:1px solid #0c51bf}.button--facebook.js-sharing-btn{background-color:#3b5998;border:1px solid #3b5998}.button--facebook.js-sharing-btn:hover{background-color:#2d4373;border:1px solid #2d4373}.button--pinterest.js-sharing-btn{background-color:#e60019;border:1px solid #e60019}.button--pinterest.js-sharing-btn:hover{background-color:#b30013;border:1px solid #b30013}.button--twitter.js-sharing-btn{background-color:#55acee;border:1px solid #55acee}.button--twitter.js-sharing-btn:hover{background-color:#2795e9;border:1px solid #2795e9}.button--whatsapp.js-sharing-btn{background-color:#075e54!important;border:1px solid #075e54}.button--whatsapp.js-sharing-btn:not(.button--disabled):not(:disabled):hover{background-color:#032f2a!important;border:1px solid #032f2a}.button--lineapp.js-sharing-btn{background-color:#0f65ef!important;border:1px solid #0f65ef}.button--lineapp.js-sharing-btn:not(.button--disabled):not(:disabled):hover{background-color:#0c51bf!important;border:1px solid #0c51bf}.text-input{font-family:inherit;background:#fff;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid #d7d7d7;border-radius:3px}.text-input--small:disabled,.text-input:disabled{opacity:.3}.card{box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border:1px solid rgba(0,0,0,.1);background-color:#fff;border-radius:3px}.circle{border-radius:50%}.rounded{border-radius:3px}.clearfix:after,.clearfix:before{content:" ";display:table}.clearfix:after{clear:both}.enhanced-ux .js-unsupported-fallback{display:none}.js-hidden{display:none!important}.qc-cmp2-footer.qc-cmp2-footer-overlay.qc-cmp2-footer-scrolled{margin:auto}.subHeading__2z9yXeHyaC{margin-bottom:1rem}.container__2DUPXFf5iH{margin-bottom:3rem}.container__2DUPXFf5iH p{margin-bottom:.5rem}.container__2DUPXFf5iH .note__3mT5aX9hRh{font-size:1.125rem;margin-bottom:1.5rem}.subHeading__3C1KoSm1nD{margin-bottom:1rem}.container__28lULuBnu8{margin-bottom:2rem}.container__28lULuBnu8 p{margin-bottom:.5rem}.fontList__1CO9rEO3Wc{display:flex;justify-content:space-between;width:300px;padding:0}.fontListItem__3SQJ1zKXwK{list-style:none}.fontListItem__3SQJ1zKXwK span{font-size:2.5rem}.fontListItem__3SQJ1zKXwK p{font-size:1.125rem}.subHeading__lpWbt9Jicd{margin-bottom:1rem}.container__13-K50kiCR{margin-bottom:3rem}.container__13-K50kiCR p{margin-bottom:.5rem}.colorsContainer__tqjN5bE7Ng ul{display:flex;justify-content:space-between;width:100%;padding:0}@media (min-width:40rem){.colorsContainer__tqjN5bE7Ng ul{width:500px}}.colorsContainer__tqjN5bE7Ng li{flex:0 0 33.333333%;list-style:none}.colorsContainer__tqjN5bE7Ng li span{font-size:2.5rem}.colorsContainer__tqjN5bE7Ng li p{font-size:1.125rem}.colorsContainer__tqjN5bE7Ng .colorName__2UmBMYIkJ3{margin-bottom:0;font-weight:700}.colorsContainer__tqjN5bE7Ng .colorBlock__1Nf3G5jPMT{margin-bottom:.5rem;width:150px;height:150px}.colorsContainer__tqjN5bE7Ng .colorHexCode__1Sg7l-_Cir{margin-top:0}.container__2HDnWa848o{margin-bottom:3rem}.container__2HDnWa848o p{margin-bottom:.5rem}.note__1uJmWhnYxN{font-size:1.125rem;margin-bottom:1.5rem}.textContainer__2wgz9zdl0e{margin-bottom:1.5rem;background-color:#f4f4f4;display:flex;align-items:center;min-height:25px;padding:1rem}@media (min-width:40rem){.textContainer__2wgz9zdl0e{width:600px}}*{box-sizing:border-box}body{font-size:1.125rem;line-height:1.2;font-family:Proxima Nova,Helvetica,Arial,sans-serif;color:#222;line-height:1.25}html[lang=ja] main body{font-size:1rem;line-height:1.2}h1{font-size:1.625rem;line-height:1.2;font-weight:700}html[lang=ja] main h1{font-size:1.5rem;line-height:1.2}@media (min-width:40rem){h1{font-size:2.5rem;line-height:1.025;line-height:1.05}html[lang=ja] main h1{font-size:1.5rem;line-height:1.025}}h2{font-size:1.375rem;line-height:1.27;font-weight:700}html[lang=ja] main h2{font-size:1.25rem;line-height:1.27}@media (min-width:40rem){h2{font-size:1.625rem;line-height:1.2}html[lang=ja] main h2{font-size:1.5rem;line-height:1.2}}.regular{font-weight:400}.bold{font-weight:700}.metadata-link{font-weight:700;color:#222;text-decoration:underline}.metadata-link,html[lang=ja] main .metadata-link{font-size:.875rem;line-height:1.21}.metadata-link:hover{color:#0f65ef;cursor:pointer}.image-credit{font-style:italic}.image-credit,html[lang=ja] main .image-credit{font-size:.75rem;line-height:1.25}.blue-link{color:#0f65ef;text-decoration:none}.blue-link:hover{color:#093c8f;transition:color .15s ease 0s}main{padding:1em}.heading__3c0_UyxPqO{margin-bottom:3rem}.scrollActions__2I050LJbIs{background:#fff;display:flex;justify-content:space-between;opacity:0;position:fixed;height:0;z-index:398;top:0;left:0;right:0;transform:translate3d(0,-100%,300px)}@media (min-width:500px){.scrollActions__2I050LJbIs{display:none}}.scrollActions__2I050LJbIs.hidden__Gm-u2fdgQu,.scrollActions__2I050LJbIs.visible__HzdSuuPiUH{height:44px;border-bottom:1px solid #f4f4f4;min-height:44px}.scrollActions__2I050LJbIs.visible__HzdSuuPiUH{transform:translateZ(300px);transition:transform .5s ease 10ms;opacity:1}.scrollActions__2I050LJbIs.hidden__Gm-u2fdgQu{transform:translate3d(0,-100%,300px);transition:transform .5s ease 10ms,opacity 0ms ease .5s;opacity:0}.scrollActions__2I050LJbIs .shareBar__iBmPqMVnmz{display:flex;margin:10px 12px}.scrollActions__2I050LJbIs .shareBar__iBmPqMVnmz li:not(:last-child){margin-right:20px}.home__aXLUdij-BH{padding:13px 16px;height:44px}.home__aXLUdij-BH svg{fill:#e32;width:90px;height:16px}.drawerShareBar__1NRYWryu2T li,.drawerShareBar__1NRYWryu2T li>div{display:block}.drawerShareBar__1NRYWryu2T li a{padding:.8rem 0}.drawerShareBar__1NRYWryu2T li [class^=shareText]{margin-left:.75rem}.drawerTitle__14pWrfvudo{margin-bottom:.8rem}.drawerClose__p8Cm-yEhej{-webkit-appearance:none;background:none;border:0;margin:0;padding:5px;position:absolute;right:15px;top:15px}.drawerClose__p8Cm-yEhej svg{height:1.5rem;width:1.5rem;fill:#aaa}.drawerClose__p8Cm-yEhej:focus svg,.drawerClose__p8Cm-yEhej:hover svg{fill:#757575}.drawerContent__1eHz4I8iRb{transition-property:all;transition-duration:.3s;transition-timing-function:cubic-bezier(0,1,.5,1);transform:translateY(100%)}.drawerContent__1eHz4I8iRb.ReactModal__Content--after-open{transform:translateY(0);transition-delay:.3s}.drawerContent__1eHz4I8iRb.ReactModal__Content--before-close{transform:translateY(100%);transition-delay:0ms}.ReactModal__Overlay{opacity:0;transition:opacity .1s ease}.ReactModal__Overlay--after-open{opacity:1}.ReactModal__Overlay--before-close{opacity:0}.reaction__3UIWmmjH6i{display:flex;flex-direction:column;flex-grow:1;margin:0 1rem 0 0}.bar__1EUh5MAL5B{background-color:#fff78d;margin-bottom:.25rem;transition:height .2s ease}.button__2KR2HFhtGd{background-color:#fe0;display:flex;align-items:center;justify-content:center;padding:.5rem;border-radius:3px;border:none;font-weight:700}.button__2KR2HFhtGd.disabled__2sxcAkjguY{opacity:.5}.button__2KR2HFhtGd:hover:not(.disabled__2sxcAkjguY){background-color:#f5e400;cursor:pointer}.count__3wZo7oEMVq{text-align:center;font-weight:600;margin-bottom:.25rem;font-size:.875rem}.label__TzBvZAAyDP{min-width:38px;display:flex;justify-content:center;white-space:nowrap}.label__TzBvZAAyDP img{fill:#e32;height:14px}.section__3LnZPm01lv{margin:3rem auto;max-width:1100px}@media (min-width:500px){.section__3LnZPm01lv{margin:4rem auto}}.list__2eOE_a4AqA{max-height:200px;display:flex;align-items:flex-end;list-style:none;width:100%;overflow-x:auto}.error__GGTc4PutC8{color:#e32;margin-bottom:.5rem;font-weight:600}.recircList__2RSSznd__V{margin:0 auto;max-width:1100px;padding-top:1rem}@media (min-width:40rem){.recircList__2RSSznd__V{padding-top:2rem}}.recircList__2RSSznd__V ul{list-style:none}.grid__3XmGcmlEGh,.gridNarrow__2cthJytrZK{display:flex;flex-flow:row wrap;justify-content:space-between}.grid__3XmGcmlEGh li,.gridNarrow__2cthJytrZK li{margin-bottom:1rem;width:calc(50% - .75rem)}.grid__3XmGcmlEGh li.fullWidth__qcC23zcaGz,.gridNarrow__2cthJytrZK li.fullWidth__qcC23zcaGz{width:100%}.grid__3XmGcmlEGh li.collapsed__NTp0UopbhO,.gridNarrow__2cthJytrZK li.collapsed__NTp0UopbhO{display:none}@supports (display:grid){.grid__3XmGcmlEGh,.gridNarrow__2cthJytrZK{display:grid;grid-template-columns:1fr 1fr [right-edge];grid-auto-flow:dense;grid-column-gap:1.5rem;grid-row-gap:1rem;margin-bottom:2rem}.grid__3XmGcmlEGh li,.gridNarrow__2cthJytrZK li{margin:0;width:100%}.grid__3XmGcmlEGh li.fullWidth__qcC23zcaGz,.gridNarrow__2cthJytrZK li.fullWidth__qcC23zcaGz{grid-column:1/span right-edge}}@media (min-width:40rem){.grid__3XmGcmlEGh{grid-template-columns:1fr 1fr 1fr [right-edge];grid-column-gap:1rem}.grid__3XmGcmlEGh li{width:calc(33.33333% - .625rem)}}@supports (display:grid){@media (min-width:40rem){.grid__3XmGcmlEGh{grid-template-columns:1fr 1fr 1fr [right-edge];grid-column-gap:1rem;grid-row-gap:1.5rem}.grid__3XmGcmlEGh li{margin:0;width:100%}}}.list__l2C0ChLAgI,.list__l2C0ChLAgI li{margin-bottom:1rem}@media (min-width:40rem){.list__l2C0ChLAgI li{margin-bottom:1.5rem}}.nextButton__1j59Ru3avF{-webkit-appearance:none;background:#0f65ef;border:0;border-radius:3px;box-sizing:border-box;color:#fff;cursor:pointer;display:block;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;line-height:1.5;margin:0 auto 2rem;padding:.5rem 1rem;transition:background-color .1s ease 0s;width:100%}@media (min-width:40rem){.nextButton__1j59Ru3avF{width:auto}}.nextButton__1j59Ru3avF:focus,.nextButton__1j59Ru3avF:hover{background:#093c8f}.nextButton__1j59Ru3avF:active{background:#041e47}.recircItemLink__3DkqDpHOOg{color:#222;text-decoration:none}.recircItemLink__3DkqDpHOOg:focus,.recircItemLink__3DkqDpHOOg:hover{color:#0f65ef}.recircItemLink__3DkqDpHOOg:focus .watchCta__1N5_TQCuJf,.recircItemLink__3DkqDpHOOg:hover .watchCta__1N5_TQCuJf{transform:rotateX(90deg)}.imageWrap__AydCvX7UZ-{background:#f4f4f4;overflow:hidden;position:relative;flex:0 0 auto}.imageWrap__AydCvX7UZ- img{display:block;position:absolute;top:0;left:0;height:100%;width:100%;object-fit:cover}.imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx:before,.imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi:before{content:"";display:block;width:100%;height:0}.imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx:before{padding-bottom:66.4%}.imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi:before{padding-bottom:35.2%}.text__2Qa_tI4Mbz{display:block;font-weight:700}.text__2Qa_tI4Mbz,html[lang=ja] main .text__2Qa_tI4Mbz{font-size:.875rem;line-height:1.21}@media (min-width:52rem){.text__2Qa_tI4Mbz{font-size:1.125rem;line-height:1.2}html[lang=ja] main .text__2Qa_tI4Mbz{font-size:1rem;line-height:1.2}}.stacked__2HXQGZ37eK .imageWrap__AydCvX7UZ-{border-radius:4px;margin-bottom:.5rem}@media (min-width:40rem){.stacked__2HXQGZ37eK .imageWrap__AydCvX7UZ-{border-radius:8px}}.inline__9vn9C56M2H{display:flex}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-{border-radius:4px;margin-right:.5rem;width:115px}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx{height:75px}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi{height:40px}@media (min-width:52rem){.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-{margin-right:1rem}}.playButton__1vaYFayxSj{border-radius:100%;position:absolute;top:50%;left:50%;width:27%;transform:translate(-50%,-50%);background-color:rgba(228,12,120,.9);z-index:2}.playButton__1vaYFayxSj:before{content:"";display:block;height:0;padding-bottom:100%;width:100%}.playButton__1vaYFayxSj svg{fill:#fff;height:auto;width:40%;position:absolute;left:50%;top:50%;transform:translate(-40%,-50%)}.watchCta__1N5_TQCuJf{position:absolute;bottom:8px;right:8px;height:22px;transition:transform .2s;transform-style:preserve-3d;font-size:.8rem;line-height:1.5;text-align:center;cursor:pointer;z-index:2}.watchCta__1N5_TQCuJf .watchCtaActive__1DAEw30fNm,.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT{box-sizing:border-box;height:22px;padding:2px 8px;color:#fff;border-radius:3px}.watchCta__1N5_TQCuJf .watchCtaActive__1DAEw30fNm{transform:rotateX(-90deg) translateZ(-11px);background-color:#0f65ef}.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT{transform:translateZ(11px);background-color:rgba(0,0,0,.6)}.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT svg{fill:#fff;height:.75rem;transform:translate(-1px,-1px);width:.75rem;vertical-align:middle}.watchCta__1N5_TQCuJf .watchCtaDuration__2ZcaE9TdjD{padding-left:2px}.watchCta__1N5_TQCuJf .watchCtaHelper__3ANeO5OCoA{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.index__1MpR3iMGVy{display:block;padding:4px 10px;position:absolute;text-align:center;bottom:0;left:0;color:#fff;background:#e40c78;border-radius:0 8px 0 0;min-width:2rem}.trendingShoppingCarousel__3xzlMOP3Yu{margin-bottom:1.5rem}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu{max-width:1132px;padding:0 16px}}@media (min-width:64rem){.trendingShoppingCarousel__3xzlMOP3Yu{display:none}}.trendingShoppingCarousel__3xzlMOP3Yu .listWrapper__111C44xSTb{overflow-x:auto;overflow-y:hidden;-webkit-overflow-scrolling:touch}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu .listWrapper__111C44xSTb{margin:0 -16px;padding:0 16px}}.trendingShoppingCarousel__3xzlMOP3Yu .list__31b-fXTFwR{display:flex;padding-bottom:.5rem}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu .list__31b-fXTFwR:after{content:"";display:block;width:16px;height:1px;flex:0 0 auto}}.trendingShoppingCarousel__3xzlMOP3Yu .item__1k8gSnWlgl{width:270px;flex:0 0 auto}.trendingShoppingCarousel__3xzlMOP3Yu .item__1k8gSnWlgl:not(:last-child){margin-right:.5rem}@media (min-width:40rem){.bottomRecircList__1e6Bk1T9uH{max-width:1132px;padding:0 16px}}.internetPoints__3tGtXF2v1K{display:flex;align-items:center;justify-content:center;-webkit-appearance:none;margin-left:.5rem;border-radius:1rem;border:0;position:relative;padding:0 .5rem;background-image:linear-gradient(90deg,#e40c78,#6645dd);font-size:10px;font-family:Proxima Nova,Helvetica,Arial,sans-serif;color:#fff;z-index:2}@media (min-width:40rem){.internetPoints__3tGtXF2v1K{font-size:.75rem}}.internetPoints__3tGtXF2v1K span{line-height:1.8}.internetPoints__3tGtXF2v1K:focus+.tooltipContainer__3GHzqtXb2w,.internetPoints__3tGtXF2v1K:focus-within+.tooltipContainer__3GHzqtXb2w,.internetPoints__3tGtXF2v1K:hover+.tooltipContainer__3GHzqtXb2w{outline:none;visibility:visible}.sparklesIcon__3nUrQxEhJI{width:1rem;height:1rem;margin-right:.25rem}.tooltipContainer__3GHzqtXb2w{padding-top:30px;position:absolute;top:calc(100% - 20px);left:50%;transform:translateX(-50%);transition:all 10ms ease 0s;margin-left:-.5rem;z-index:1;visibility:hidden}.tooltipContainer__3GHzqtXb2w:after,.tooltipContainer__3GHzqtXb2w:before{content:" ";pointer-events:none;position:absolute;height:0;width:0;right:100%;left:50%;bottom:calc(100% - 30px);border-left:7px solid rgba(0,0,0,0);border-right:7px solid rgba(0,0,0,0);border-bottom:10px solid #222}.tooltipContainer__3GHzqtXb2w:focus-within,.tooltipContainer__3GHzqtXb2w:hover{visibility:visible}.tooltip__2lzgNtElq_{text-align:center;background-color:#222;border:none;color:#fff;display:inline-block;width:220px;position:relative;padding:.5rem;font-size:.875rem;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border-radius:3px;margin-bottom:1rem!important;z-index:2}.tooltip__2lzgNtElq_ a{color:#fff;margin-left:.25rem}.video__playing__11I2bO5PCX .bg__38hP-qpDRD,.video__playing__11I2bO5PCX .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX .cta___yh8ge03Eo,.video__playing__11I2bO5PCX .pauseCta__3MF11M1psI{opacity:0}.video__playing__11I2bO5PCX:focus .bg__38hP-qpDRD,.video__playing__11I2bO5PCX:focus .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX:focus .pauseCta__3MF11M1psI,.video__playing__11I2bO5PCX:hover .bg__38hP-qpDRD,.video__playing__11I2bO5PCX:hover .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX:hover .pauseCta__3MF11M1psI{opacity:1;animation:fadeout-pause__3Fdr3Gl9Mj .3s 2s;animation-fill-mode:forwards}.bg__38hP-qpDRD,.circle__1yvC-QqE7g,.cta___yh8ge03Eo{opacity:1;transition:opacity .1s ease-out}.pauseCta__3MF11M1psI{opacity:0;margin-top:2px;transition:opacity .1s ease-out}.videoPlayButton__2nEO1XfKSJ{appearance:none;background:none;border:0;display:block;width:100%;height:100%;padding:0;position:absolute;left:0;top:0;z-index:10}.icon__1NAgKqH9X7{display:block;height:48px;width:48px;position:absolute;top:50%;left:50%;margin:-1.5rem 0 0 -1.5rem}.cta___yh8ge03Eo{position:absolute;z-index:4;margin-top:2px;margin-left:1px}.cta___yh8ge03Eo,.pauseCta__3MF11M1psI{fill:#fff}@keyframes fadeout-pause__3Fdr3Gl9Mj{0%{opacity:1}to{opacity:0}}</style><style data-href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/css/07f259ac0b753643973237766cc129fec1cc8f7c_CSS.39aafaad.chunk.css">.xs-fixed{position:fixed}.xs-z4{z-index:400}.xs-t1{top:.5rem}.xs-r1{right:.5rem}.xs-flex-order-1{order:1}.xs-flex-order-2{order:2}.xs-flex-row{flex-direction:row}.xs-flex-align-start{align-items:flex-start}.xs-float-none{float:none}.xs-fit{max-width:100%}.clearfix:after,.clearfix:before{content:" ";display:table}.xs-mr0,.xs-mx0{margin-right:0}.xs-mx0{margin-left:0}.xs-my0{margin-top:0;margin-bottom:0}.xs-mt05{margin-top:.25rem}.xs-mr05{margin-right:.25rem}.xs-my3{margin-top:1.5rem;margin-bottom:1.5rem}.xs-my4{margin-top:2rem;margin-bottom:2rem}.xs-pl0,.xs-px0{padding-left:0}.xs-px0{padding-right:0}.xs-py0{padding-top:0;padding-bottom:0}.xs-pt05{padding-top:.25rem}.xs-pl05,.xs-px05{padding-left:.25rem}.xs-px05{padding-right:.25rem}.xs-p1{padding:.5rem}.xs-pt1{padding-top:.5rem}.xs-px1{padding-left:.5rem;padding-right:.5rem}.xs-pt2{padding-top:1rem}.xs-pb2{padding-bottom:1rem}.align-top{vertical-align:top}.align-bottom{vertical-align:bottom}.xs-col-1{width:8.33333%}.xs-col-5{width:41.66667%}.xs-col-7{width:58.33333%}.xs-text-right{text-align:right}.normal,.regular{font-weight:400}.bold{font-weight:600}.xbold{font-weight:700}.xs-text-3{font-size:1.125rem;line-height:1.2}.xs-text-4{font-size:1rem;line-height:1.3}.xs-text-5{font-size:.875rem;line-height:1.3}.xs-text-6{font-size:.75rem;line-height:1.3}.text-gray{color:#222}.text-white{color:#fff}.text-gray-lighter{color:#666}.text-gray-lightest{color:#757575}.text-promoted-orange{color:#f7ad19}.link-gray{color:#222}.link-gray:hover{color:#0f65ef}.link-gray-lighter{color:#757575}.link-gray-lighter:hover{color:#222}.fill-blue{background-color:#0f65ef}.fill-yellow{background-color:#fe0}.fill-yellow-lighter{background-color:#fffab6}.fill-gray{background-color:#aaa}.fill-gray-darker{background-color:#222}@media (min-width:40rem){.sm-absolute{position:absolute}.sm-r0{right:0}.sm-b0{bottom:0}.sm-overflow-auto{overflow:auto}.sm-inline{display:inline}.sm-float-left{float:left}.sm-float-right{float:right}.sm-full-height{height:100%}.sm-pt0{padding-top:0}.sm-pb0{padding-bottom:0}.sm-pl0{padding-left:0}.sm-pb05{padding-bottom:.25rem}.sm-pl05{padding-left:.25rem}.sm-pt1{padding-top:.5rem}.sm-p2{padding:1rem}.sm-px2{padding-left:1rem;padding-right:1rem}.sm-py2{padding-top:1rem;padding-bottom:1rem}.sm-col-5{width:41.66667%}.sm-col-7{width:58.33333%}.sm-text-2{font-size:1.375rem;line-height:1.2}.sm-text-4{font-size:1rem;line-height:1.3}}@media (min-width:52rem){.md-float-none{float:none}.md-mt0{margin-top:0}.md-mt05{margin-top:.25rem}.md-mb2{margin-bottom:1rem}.md-pt1{padding-top:.5rem}.md-px2{padding-left:1rem;padding-right:1rem}.md-col-1{width:8.33333%}.md-col-4{width:33.33333%}.md-col-12{width:100%}.md-text-left{text-align:left}.md-flex{display:flex}}@media (min-width:64rem){.lg-mx2{margin-left:1rem;margin-right:1rem}.lg-pl0{padding-left:0}}.ad-advertise-wrapper{position:absolute;font-size:.75rem;right:0}.ad-advertise-link{color:#707070;text-decoration:none}.ad-hidden{display:none}.clearfix:after{clear:both;display:table;content:" "}.promoted-header--orange{border-top:8px solid #bf5608!important}.bf-item:hover{cursor:pointer}.bf-image-widestory{display:block;transition:max-height .2s ease-in;border:1px solid #f7f7f7}.xs-mt-n1{margin-top:-20px}.line-height0{line-height:0}.xs-lh-1{line-height:1}.media__body{overflow:hidden;zoom:1}.videos .partner-area{margin-bottom:30px}.videos .partner-area .campaign-big-thumb{width:100%}.ad--wide-promo__post{display:none}.promo-app-banner__img{background-size:cover}.ad-test-label{opacity:.4}.ad-slot{width:100%}.ad-slot-invisible{overflow:hidden;position:absolute;z-index:-1;height:5px!important;width:5px!important}[id^=div-gpt-ad-]{font-size:0;line-height:0}.ad-scroll-sub--enabled{padding-bottom:44px}.ad-button{border:1px solid #0f65ef}.ad-button:hover{color:#fff;background:#0f65ef}.ad-card{background-color:#fff;border:1px solid rgba(0,0,0,.1);border-radius:3px;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);clear:both;position:relative}.ad-card.ad-flexible--programmatic{background-color:rgba(0,0,0,0);box-shadow:0 0 0}.partner-sash{position:absolute;background-color:#bf5608;color:#fff;top:0;left:7px;padding:3px 2px;line-height:1;margin-left:-15px;font-size:7px;letter-spacing:1px;display:inline-block;text-transform:uppercase;z-index:1;transform:rotate(-15deg)}.ad-promotion--other__MTb1ChEDqn .partner-sash,.ad-promotion--sponsorship__1hvUVxP057 .partner-sash,.f_other__3jPBhaKR3l .partner-sash,.f_sponsorship__2d_td0N75D .partner-sash{display:none}.partner-sash--horizontal{margin:0;position:inherit;transform:none}.partner-sash--no-caps{text-transform:none;letter-spacing:normal}.f_sponsorship .bf-display_name{display:block}.f-ad-disclosure{line-height:1.3;align-items:start}.f-ad-disclosure .ad-user--image--big{height:2.4rem;width:auto;border:1px solid #f7f7f7}.ad-user--image{width:2rem;border-radius:3px}.ad-promotion--other .bf-byline_prefix,.f_other .bf-byline_prefix{display:none!important}.ad-promotion--other .ad__promoted,.ad-promotion--other .ad__promoted-by,.f_other .ad__promoted,.f_other .ad__promoted-by{display:none}.ad-promotion--other .ad__disclosure,.ad-promotion--other .f-ad-disclosure,.f_other .ad__disclosure,.f_other .f-ad-disclosure{align-items:center}.ad-promotion--other .ad-user--image,.f_other .ad-user--image{width:1.375rem;border-radius:50%!important;vertical-align:middle}.ad-promotion--other .ad-user--name,.f_other .ad-user--name{font-size:.75rem!important;color:#999!important;font-weight:400!important}.ad-promotion--other .ad-user--name:hover,.f_other .ad-user--name:hover{color:#222!important;transition:color .15s ease 0s;outline-width:0}.ad-animated{-webkit-transition:opacity .25s,height .25s,max-height .25s,width .25s;-moz-transition:opacity .25s,height .25s,max-height .25s,width .25s;-ms-transition:opacity .25s,height .25s,max-height .25s,width .25s;-o-transition:opacity .25s,height .25s,max-height .25s,width .25s;transition:opacity .25s,height .25s,max-height .25s,width .25s}.ad-fade{opacity:0;transition:opacity .5s ease-in-out}.ad-fadeleft{opacity:1}.ad-fadeup{max-height:275px;opacity:1;transition:max-height .25s ease-out,opacity .25s ease-out,margin-top .25s ease-out}.ad-fadedown,.ad-fadeup{margin-top:0;overflow:hidden}.ad-fadedown{max-height:0;opacity:0;transition:max-height .5s ease-in,opacity .75s ease-in,margin-top .75s ease-in}.ad-fadedown--visible{opacity:1;max-height:none}.ad--collapse-vertical,.ad-wireframe--collapse-vertical{overflow:hidden;height:0;min-height:0!important;max-height:0!important;opacity:0;transition:max-height .25s ease-out,opacity .25s ease-out,margin-top .25s ease-out;margin:0!important;padding:0!important}.ad--collapse-horizontal,.ad--collapse-horizontal.ad-fadeleft,.ad-wireframe--collapse-horizontal,.ad-wireframe--collapse-horizontal.ad-fadeleft{overflow:hidden;width:0!important;opacity:0;transition:width .25s ease-out,opacity .25s ease-out;margin:0!important;padding:0!important}.ad-animated-wireframe,.ad-animated-wireframe--horizontal,.ad-animated-wireframe--vertical{-webkit-transition:height .1s,width .1s,background-color .1s,opacity .1s;-moz-transition:height .1s,width .1s,background-color .1s,opacity .1s;-ms-transition:height .1s,width .1s,background-color .1s,opacity .1s;-o-transition:height .1s,width .1s,background-color .1s,opacity .1s;transition:height .1s,width .1s,background-color .1s,opacity .1s}.ad-animated-wireframe--horizontal:not(.ad-wireframe),.ad-animated-wireframe--vertical:not(.ad-wireframe),.ad-animated-wireframe:not(.ad-wireframe){margin:0!important;opacity:0;background-color:rgba(0,0,0,0)}.ad-animated-wireframe--vertical:not(.ad-wireframe){height:0}.ad-animated-wireframe--horizontal:not(.ad-wireframe){width:0}.ad__wireframe-container:not(.ad-wireframe){display:none!important}.ad-wireframe-text{background-color:#f4f4f4;height:12px}.ad-wireframe-image{background-color:#e2e2e2!important}.ad-wireframe-programmatic{background-color:#f4f4f4}.ad-wireframe-wrapper{margin-left:auto;margin-right:auto;transition:min-height .75s ease-out,height .75s ease-out,opacity .75s ease-out}.ad-wireframe-wrapper.ad--collapse-vertical,.ad-wireframe-wrapper.ad-wireframe-wrapper--hidden{height:0;margin:0;min-height:0!important;min-width:0!important;opacity:0;overflow:hidden;width:0}.ad-wireframe-wrapper.ad-wireframe-wrapper--labeled>.js-ad:not(.ad--loaded):not(.ad-ex):before{content:"advertisement";display:block;font-size:.75rem;line-height:.75rem;margin-bottom:.25rem;text-align:center;text-transform:uppercase}.ad-wireframe-wrapper:not(.ad-wireframe-wrapper--nostick) .ad--loaded{position:static!important;position:sticky!important;top:0;transform:none}.ad-wireframe-wrapper iframe{transition:opacity 1s ease-in;opacity:1;background-color:rgba(0,0,0,0)}.ad-wireframe-wrapper .js-ad:not(.ad--loaded) .ad-slot{background-color:#f4f4f4;margin-left:auto;margin-right:auto}.ad-wireframe-wrapper .js-ad:not(.ad--loaded) .ad-slot iframe{background-color:#f4f4f4;opacity:.1}@media (min-width:1px){.ad-wireframe-wrapper[data-wireframe-width="1"]{min-width:1px}.ad-wireframe-wrapper[data-wireframe-width="1"] .js-ad:not(.ad--loaded) .ad-slot{width:1px}.ad-wireframe-wrapper[data-wireframe-height="1"]{min-height:1px}.ad-wireframe-wrapper[data-wireframe-height="1"] .js-ad:not(.ad--loaded) .ad-slot{height:1px}}@media (min-width:300px){.ad-wireframe-wrapper[data-wireframe-width="300"]{min-width:300px}.ad-wireframe-wrapper[data-wireframe-width="300"] .js-ad:not(.ad--loaded) .ad-slot{width:300px}.ad-wireframe-wrapper[data-wireframe-height="250"]{min-height:250px}.ad-wireframe-wrapper[data-wireframe-height="250"] .js-ad:not(.ad--loaded) .ad-slot{height:250px}.ad-wireframe-wrapper[data-wireframe-height="600"]{min-height:600px}.ad-wireframe-wrapper[data-wireframe-height="600"] .js-ad:not(.ad--loaded) .ad-slot{height:600px}}@media (min-width:320px){.ad-wireframe-wrapper[data-wireframe-width="320"]{min-width:320px}.ad-wireframe-wrapper[data-wireframe-width="320"] .js-ad:not(.ad--loaded) .ad-slot{width:320px}.ad-wireframe-wrapper[data-wireframe-height="50"]{min-height:50px}.ad-wireframe-wrapper[data-wireframe-height="50"] .js-ad:not(.ad--loaded) .ad-slot{height:50px}}@media (min-width:728px){.ad-wireframe-wrapper[data-wireframe-width="728"]{min-width:728px}.ad-wireframe-wrapper[data-wireframe-width="728"] .js-ad:not(.ad--loaded) .ad-slot{width:728px}.ad-wireframe-wrapper[data-wireframe-height="90"]{min-height:90px}.ad-wireframe-wrapper[data-wireframe-height="90"] .js-ad:not(.ad--loaded) .ad-slot{height:90px}}@media (min-width:970px){.ad-wireframe-wrapper[data-wireframe-width="970"]{min-width:970px}.ad-wireframe-wrapper[data-wireframe-width="970"] .js-ad:not(.ad--loaded) .ad-slot{width:970px}.ad-wireframe-wrapper[data-wireframe-height="90"]{min-height:90px}.ad-wireframe-wrapper[data-wireframe-height="90"] .js-ad:not(.ad--loaded) .ad-slot{height:90px}.ad-wireframe-wrapper[data-wireframe-height="250"]{min-height:250px}.ad-wireframe-wrapper[data-wireframe-height="250"] .js-ad:not(.ad--loaded) .ad-slot{height:250px}}.ad-flexible--dfp_native_video .ad-user--image,.card--video .ad-user--image{width:40px}.ad-flexible--media-video .ad-slot{position:absolute;top:0}.ad-flexible--media-video .ad-slot,.ad-flexible--media-video .ad-slot [id^=google_ads_iframe]{width:1px;min-width:100%;*width:100%;height:100%!important}.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ad-slot-media-placeholder--1\:1,.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ad-slot-media-placeholder--4\:3,.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ad-slot-media-placeholder--16\:9{display:block}.ad-ex,.ad-flexible.ad-flexible--programmatic{margin-left:auto;margin-right:auto;padding-top:.5rem}.ad-ex:not(.ad-card),.ad-ex:not(.card),.ad-flexible.ad-flexible--programmatic:not(.ad-card),.ad-flexible.ad-flexible--programmatic:not(.card){padding-bottom:1rem;border:none}.ad-ex.card,.ad-flexible.ad-flexible--programmatic.card{padding-bottom:.5rem}.ad-ex.ad-ex--sidebar-top,.ad-flexible.ad-flexible--programmatic.ad-ex--sidebar-top{padding-bottom:0}.ad-ex.ad--partner,.ad-flexible.ad-flexible--programmatic.ad--partner{padding-top:0}.ad-ex.ad--partner .ad__disclosure--ex,.ad-flexible.ad-flexible--programmatic.ad--partner .ad__disclosure--ex{display:none}.ad-ex .ad__disclosure--ex,.ad-flexible.ad-flexible--programmatic .ad__disclosure--ex{color:#757575;font-size:.75rem;font-weight:300;line-height:1.3;margin-bottom:.5rem;text-align:center;text-transform:uppercase;letter-spacing:1px}.ad-ex .ad-slot,.ad-flexible.ad-flexible--programmatic .ad-slot{margin-left:auto;margin-right:auto;text-align:center}.ad-ex.ad-flexible--programmatic .ad__disclosure--programmatic{display:none}.ad-content-ready.ad--loaded.ad-flexible--impression_pixel{padding:0;margin:0;border:none}.ad-research-pixel{position:absolute;margin:0;padding:0}.ix-invite{height:375px!important}.ix-invite .question-label{margin-top:.3em!important;margin-bottom:.75em!important}.ix-invite .ixai-survey-container img:first-of-type{position:relative;left:-2px}.ix-invite .form-ui{margin-top:0!important}.ix-invite #survey-container{padding:1.5em!important}.ix-invite .closeLink{right:.35em!important;top:.5em!important}.ix-invite #submit-row{bottom:1.25em!important}@keyframes spotlight-content-crossfade__OxaRpqDaRd{0%{opacity:.5}40%{opacity:0;transform:translateY(-10%)}50%{transform:translateY(30%)}to{opacity:1;transform:translateY(0)}}@keyframes spotlight-content-crossfade2__2XP__7lcab{0%{opacity:.1}20%{opacity:0;transform:translateY(30%)}30%{opacity:0;transform:translateY(0)}to{opacity:1}}.ad-flexible--spotlight .awareness-bg-animator{display:none}@media (min-width:52rem){.ad-flexible--spotlight.sticky{top:0;left:0;transition:transform .2s;position:relative;max-height:250px;min-height:90px;height:250px;transition:width .2s ease-out,max-width .2s ease-out,height .2s ease-out,max-height .2s ease-out,box-shadow .2s ease-out;z-index:400}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x,.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x .mobile-close{display:none}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x svg{width:1.5rem}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x:hover{transition:opacity .1s;opacity:1}.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x{display:block;position:absolute;right:1rem;top:calc(50% - 12px);line-height:1;z-index:10;opacity:.5;transition:opacity .25s linear;cursor:pointer}.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x:active,.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x:hover{opacity:1;margin-top:1px}}@media (min-width:52rem){.ad-flexible--spotlight.sticky.sticky--show .awareness-bg-animator{display:block;border-radius:5px;position:absolute;margin:0 auto;top:0;left:50%;max-width:71rem;width:100%;height:100%;transform-origin:50% 50%;transform:scale(1) translateX(-50%);transition:height .2s ease-out,max-height .2s ease-out,transform .3s ease-in-out}.ad-flexible--spotlight.sticky .awareness-inner{transition:width .2s ease-out,max-width .2s ease-out .1s,height .2s ease-out,max-height .2s ease-out .1s}.ad-flexible--spotlight.sticky:not(.sticky--first-time){animation-duration:.4s;animation-timing-function:ease-out;animation-name:spotlight-content-crossfade2}.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{transition:width .2s ease-out,max-width .2s ease-out,height .2s ease-out,max-height .2s ease-out .3s;animation-duration:.3s;animation-timing-function:ease-out;animation-name:spotlight-content-crossfade;border-radius:0}.ad-flexible--spotlight.sticky.sticky--fixed .awareness-bg-animator{border-radius:0;transform:scaleX(3) translateX(0);transition:height .2s ease-out,max-height .2s ease-out,transform .4s ease-out}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--hide{top:-250px;transition:top .5s ease-out,transform .2s;box-shadow:0 1px 3px rgba(34,34,34,0)}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--hide .ad-awareness__dismiss.ad-awareness__dismiss--x{opacity:0}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show{top:0;transition:top .5s ease-out,transform .2s;box-shadow:0 1px 3px rgba(34,34,34,.4)}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show.mobile-share--adjust{top:43px;transition:top .5s ease 10ms}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show .awareness-inner{box-shadow:none}}.ad-awareness.ad-dest--bfnews.sticky{z-index:400;top:0;left:0;transition:transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed{width:100%;top:-250px}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__dismiss.ad-awareness__dismiss--x{display:block}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__content{flex-wrap:nowrap}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer{width:auto;position:static}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer.active .ad-awareness__disclaimer-text,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer.active .display-info{opacity:1}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer .display-info{display:block;margin:0 20px 0 10px;transition:opacity .5s ease-in-out;opacity:.4}@media (min-width:52rem){.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer:hover .ad-awareness__disclaimer-text,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer:hover .display-info{opacity:1}}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer .ad-awareness__disclaimer-text{opacity:0;transition:opacity .5s ease-in-out;background-color:#fff;color:#222;position:absolute;top:50%;right:40px;transform:translateY(-50%);border-radius:5px;border:1px solid #d7d7d7;padding:0 5px;pointer-events:none;font-size:.875rem;box-shadow:none;max-width:450px;line-height:1.3}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--hide{top:-250px;transition:top .75s ease-in-out,transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--hide .ad-awareness__dismiss.ad-awareness__dismiss--x{opacity:0}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--show{top:0;transition:top .75s ease-in-out,transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--show.mobile-share--adjust{top:43px;transition:top .5s ease 10ms}.ad-awareness__dismiss.ad-awareness__dismiss--x{display:none;position:absolute;right:0;top:0;opacity:.5;transition:opacity .25s linear;cursor:pointer}.ad-awareness__dismiss.ad-awareness__dismiss--x svg{width:1.5rem}.ad-awareness__dismiss.ad-awareness__dismiss--x:hover{transition:opacity .1s;opacity:1}.ad-awareness__dismiss.ad-awareness__dismiss--caret{display:none}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss.ad-awareness__dismiss--caret{display:flex;align-items:center;justify-content:center;width:0;height:3rem;padding:0;border:none;background:#fff;opacity:0;transition:width .2s,bottom .2s,margin-left .2s,opacity .2s}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss.ad-awareness__dismiss--caret svg{width:14px;height:14px;transform:rotate(-90deg);fill:#aaa}@media (max-width:39.999rem){body.sticky-ad-exp .Ad--awareness-bp{transition:top .2s ease-out,min-height .75s ease-out,height .75s ease-out,opacity .75s ease-out}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness{display:flex;justify-content:center}body.sticky-ad-exp .Ad--awareness-bp .awareness-inner{max-width:320px;max-height:50px;overflow:hidden}body.sticky-ad-exp .sticky.Ad--awareness-bp{position:sticky;z-index:400}body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness,body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness.ad-dest--bfnews.ad-flexible--programmatic,body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness.ad-flexible.ad-flexible--programmatic{background:#fff}body.sticky-ad-exp .sticky.Ad--awareness-bp .awareness-inner{flex-shrink:0}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness{justify-content:space-evenly;box-shadow:0 1px 3px 0 rgba(0,0,0,.1)}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness__dismiss{width:3rem;opacity:1}body.sticky-ad-exp .sticky--dismissed.Ad--awareness-bp{top:-150px!important}}@media (max-width:39.999rem) and (max-width:367px){body.sticky-ad-exp .Ad--awareness-bp .awareness-inner{z-index:1}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss{position:absolute;right:0;bottom:0;z-index:0;width:3rem}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness__dismiss{bottom:-3rem;box-shadow:-1px 1px 3px 0 rgba(0,0,0,.1)}}.ad-awareness-anchor{position:sticky;z-index:-1;height:1px;margin-bottom:-1px}.ad-awareness{position:relative}.ad-awareness.ad-fadedown{min-height:108px;max-height:275px}.ad-awareness.ad-wireframe--collapse-vertical{min-height:0;max-height:0;transition:min-height .75s ease-out}.ad-awareness.ad-flexible.ad-flexible--programmatic{padding-top:1rem;margin-top:0;background-color:#f4f4f4}.ad-awareness.ad-flexible.ad-flexible--programmatic.sticky--fixed{margin-top:0}.ad-awareness.ad-flexible--programmatic .ad__disclosure--ex{display:none}@media (max-width:39.999rem){.ad-awareness.ad-flexible{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-awareness .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}}.ad-awareness .mobile-close{display:none}.ad-awareness .ad-slot-media-inner{width:100%;height:100%;position:relative}.ad-awareness .ad-awareness-content:empty,.ad-awareness .ad-awareness__dismiss--x{display:none}.ad-awareness-component,.ad-awareness-component .ad-disclosure{align-items:center;display:flex;flex-grow:1;flex-direction:column;position:relative;z-index:9}.ad-awareness-component .ad-disclosure{flex-grow:0;flex-direction:row}.ad-awareness-component .ad-disclosure .ad-disclosure-text{font-weight:600;margin-right:1rem}.ad-awareness.ad-flexible--spotlight .awareness-inner{box-shadow:0 1px 4px -2px rgba(34,34,34,.9)}@media (min-width:52rem){.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner,.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thin:not(.sticky--show) .awareness-inner{box-shadow:none;border-width:1px;border-style:solid}.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner{border-width:8px;border-radius:0}.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner .ad-awareness-content,.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner .ad-slot-media-inner{border-radius:0}.ad-awareness.ad-flexible--spotlight.ad-spotlight-font--large:not(.sticky--show) .awareness-inner .ad-awareness-dek{font-size:1.5rem;line-height:2rem}}.ad-flexible--media-img img:not(.ad-hidden){display:block;width:100%;height:100%;object-fit:cover;object-position:center}.ad-display-card__image,.ad-display-card__vidslot{display:block;overflow:hidden;width:100%}@media (min-width:40rem) and (max-width:51rem){.ad-display-card__image,.ad-display-card__vidslot{float:left;width:41.66667%}}.ad-display-card__image{background-color:#e2e2e2;border-top-left-radius:3px;border-top-right-radius:3px;position:relative;z-index:200}.ad-display-card__asset-cover,.ad-display-card__asset-overlay,.ad-display-card__asset-player,.ad-display-card__asset-wrapper,.ad-display-feed-story{display:block;position:relative;margin:0;padding:0}.ad-display-card__asset-overlay,.ad-display-card__asset-player{height:auto;left:0;position:absolute;top:0;width:100%;z-index:200}.ad-display-card__asset-overlay{height:100%;z-index:300}.ad-display-card__asset-cover{width:100%;z-index:100}.ad-display-card__controls{position:absolute;right:0;bottom:0;width:40px;height:40px;z-index:400}.ad-display-card__button{background:rgba(0,0,0,0);border:none;width:40px;height:40px;margin:0;padding:10px 0 0 10px;text-align:center;outline:none;position:absolute}.ad-display-card__button:focus{outline:none}.ad-display-card__button path,.ad-display-card__button svg{display:inline-block;fill:#fff;width:14px;height:14px}.ad-display-card__cta{align-items:center;background:#0f65ef;color:#fff;display:flex;font-size:.875rem;font-weight:600;justify-content:space-between;padding:.5rem 1rem;text-decoration:none}.ad-display-card__cta:hover{color:#fff}.ad-display-card__cta-arrow{fill:#fff;height:.875rem;vertical-align:middle;width:.875rem}.ad-display-card__dek{display:block;font-size:.875rem;margin-top:.25rem;padding:.5rem 1rem 0;width:100%}@media (min-width:40rem) and (max-width:51rem){.ad-display-card__dek{float:right;width:50%}}.ad-display-feed-story .ad-disclosure{display:flex;padding-left:0;padding-right:0;margin-top:.5rem}.ad-display-feed-story .ad-disclosure .ad-disclosure-image{order:1}.ad-display-feed-story .ad-disclosure .ad-disclosure-text{order:2}.ad-display-feed-story .ad-display-card__image{border-radius:0}@media (min-width:40rem){.ad-display-feed-story .ad-display-card__image{width:58.33333%}}.ad-display-feed-story .ad-display-card__dek{padding:1rem}.ad-display-feed-story .ad-display-card__dek h2{font-weight:600;margin-top:0}@media (min-width:40rem){.ad-display-feed-story .ad-display-card__dek{float:right;height:100%;width:41.66667%}}.ad-bigstory{position:relative;margin-bottom:1.5rem}.ad-bigstory.ad--loaded.ad-flexible--dfp_native_video,.ad-bigstory.ad--loaded.ad-flexible--display_card,.ad-bigstory.ad--loaded.ad-flexible--display_card_native_video,.ad-bigstory.ad--loaded.ad-flexible--video{padding:0}.ad-bigstory.ad--loaded.ad-flexible--dfp_native_video .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--display_card .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--display_card_native_video .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--video .ad__wireframe-container{padding:1rem}.ad-bigstory.ad-flexible--programmatic .ad-slot{margin-left:calc(-50vw + 50%);margin-right:calc(-50vw + 50%);width:100vw}@media (min-width:52rem){.ad-bigstory.ad-flexible--programmatic .ad-slot{margin-left:auto;margin-right:auto;width:inherit}}.ad-bigstory.ad-bigstory--simple{transition:height .1s,background-color .1s;height:auto;background:rgba(0,0,0,0)}.ad-bigstory.ad-bigstory--simple.ad-wireframe{height:425px;background:#f4f4f4}.ad-bigstory .ad-buzz-thumbnail{border:1px solid rgba(0,0,0,.1);float:none;display:block;margin:0;overflow:hidden;width:100%}.ad-bigstory .ad-buzz-thumbnail img{display:block;width:100%}.ad-bigstory .ad-buzz-title h2{font-size:1.125rem;font-weight:600;margin-bottom:0}.ad-disclosure,.ad-disclosure--horizontal,.ad-disclosure-link,.ad-disclosure-text{display:flex}.ad-disclosure-link{display:flex;align-items:center;flex-shrink:0;text-decoration:none}.ad-disclosure-image{border-radius:3px;margin-right:.5rem;width:2rem}.ad-disclosure-text{flex-direction:column;font-size:.75rem;line-height:1.3}.ad-disclosure-text--orange{color:#f7ad19}.ad-disclosure-promo-text{color:#222}.ad-disclosure-name{font-size:.875rem;font-weight:600}.ad-disclosure--horizontal{align-items:center;float:none;padding:1rem}.ad-disclosure--horizontal .ad-disclosure-image{border:1px solid rgba(0,0,0,.1);margin-right:.25rem;order:1}.ad-disclosure--horizontal .ad-disclosure-text{flex-direction:column;font-size:.875rem;order:2}.ad-disclosure--horizontal .ad-disclosure-text span{display:inline-block;margin-right:.25rem}.ad-disclosure--horizontal .ad-disclosure-name{font-size:inherit}.ad-buzz-format,.ad-buzz-format article{display:flex}.ad-buzz-format a,.ad-buzz-format article a{text-decoration:none}.ad-buzz-format.ad-card{padding:1rem}.ad-buzz-thumbnail{border-right:1px solid rgba(0,0,0,.1);cursor:pointer}.ad-buzz-content,.ad-buzz-thumbnail{display:block;float:left;width:41.66667%}@media (min-width:52rem){.ad-buzz-content,.ad-buzz-thumbnail{width:33.33333%}}.ad-buzz-image,.ad__post-image{background-color:#e2e2e2;object-fit:cover;object-position:center center;height:100%;width:100%}.ad-buzz-content{padding:.5rem;width:58.33333%}@media (min-width:40rem){.ad-buzz-content{padding:1rem}}@media (min-width:52rem){.ad-buzz-content{width:66.66667%}}.ad-buzz-content--inner{padding-left:.25rem;padding-right:.25rem}.ad-buzz-title{color:#222;display:block;text-decoration:none}.ad-buzz-title h2{font-size:1rem;font-weight:600;margin:0;padding:.5rem 0}@media (min-width:40rem){.ad-buzz-title h2{font-size:1.375rem}}.ad-buzz-summary{color:#666;display:none;font-size:1rem;padding-bottom:.5rem}@media (min-width:40rem){.ad-buzz-summary{display:block}}.ad-bigstory .ad-buzz-format{position:relative;display:block}.ad-ex--wide{width:100%;min-width:970px;clear:both}@media (max-width:39.999rem){.bfp-ad-placeholder .ad-wireframe-programmatic{max-height:50px}}.ad-wireframe-programmatic{margin:0 auto;max-width:100%}.ad-ex--grid .ad-wireframe-programmatic,.ad-ex--rail .ad-wireframe-programmatic{width:300px;height:250px}@media (min-width:52rem){.ad-ex--grid .ad-wireframe-programmatic{width:970px}}.ad-story-video__inner{display:flex;align-items:flex-start;justify-content:space-between;padding:1rem}@media (max-width:39.999rem){.ad-story-video__inner{padding-right:4rem}}.ad-story-video__inner a{text-decoration:none}.ad-story-video__inner .ad-disclosure-image{min-width:40px;height:auto}.ad-story-video__inner .promo-text{font-weight:400;color:#222}.ad-story-video__inner .ad-disclosure-text{text-align:right;margin-right:.5rem;min-width:25%}@media (max-width:51rem){.ad-story-video__inner{display:block;align-items:normal}.ad-story-video__inner .ad-disclosure-text{flex-direction:row}.ad-story-video__inner .ad-disclosure-image{position:absolute;top:.5rem;right:.5rem}}.ad-story-video__title-cta{display:block;font-size:.875rem;color:#222;max-width:80%}.ad-story-video__title-cta:hover{color:#222}.ad-story-video__title-cta h2{font-size:1.125rem;font-weight:600}@media (min-width:40rem){.ad-story-video__title-cta h2{font-size:1.375rem}}.ad-story-video__footer{display:block;text-align:right}@media (min-width:40rem){.ad-story-video__text,.ad-story-video__text a{display:flex}}@media (max-width:39.999rem){.ad-story-video__text .ad-disclosure-text{display:inline-block;text-align:left}}.ad-bpage-story.ad-flexible--programmatic_responsive .ad__disclosure--ex{display:none}.ad-buzz-summary{margin-bottom:0}.ad-bpage-story.ad-card .ad-story-video__cta,.ad-bpage-story.ad-card .ad-story-video__inner,.ad-grid.ad-card .ad-story-video__cta,.ad-grid.ad-card .ad-story-video__inner{padding:1rem}.ad-bpage-story.ad-card .ad-story-video__title-cta,.ad-grid.ad-card .ad-story-video__title-cta{width:70%}.ad-bpage-story.ad-card .ad-disclosure-text,.ad-grid.ad-card .ad-disclosure-text{padding-right:.5rem}.ad-grid{-webkit-transition:width 10ms;-moz-transition:width 10ms;-ms-transition:width 10ms;-o-transition:width 10ms;transition:width 10ms}.ad-grid-thumbnail,.ad-grid-thumbnail img{display:block;width:100%;position:relative}.ad-grid .ad-buzz-title h2{font-size:.875rem}@media (min-width:40rem){.ad-grid .ad-buzz-title h2{font-size:1rem}}.ad-flexible.ad-awareness.ad-awareness--full-width,.ad-flexible.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-awareness.ad-awareness--full-width .awareness-inner,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}@media (min-width:52rem){.ad-awareness.ad-awareness--full-width .ad-awareness__content,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__content{padding-right:0}}.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{display:flex;margin:0 auto;max-width:71rem;min-height:90px;position:relative}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{display:flex;max-height:90px}}@media (min-width:52rem){.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{border-radius:3px}}.ad-flexible--awareness_card .awareness-inner{overflow:hidden;border:1px solid rgba(0,0,0,.1)}.ad-flexible--awareness_card .awareness-inner .ad-slot-media{flex-shrink:0;width:30%}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner .ad-slot-media{width:18%}}@media (min-width:52rem){.ad-flexible--awareness_card .awareness-inner .ad-slot-media{width:15%}}.ad-flexible--awareness_card .awareness-inner .caret{position:relative;width:15px}.ad-flexible--awareness_card .awareness-inner .caret>svg{height:15px;position:absolute;right:0}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner .caret{display:none}}.ad-awareness-content{flex-direction:row;padding:1rem}@media (min-width:52rem){.ad-awareness-headline{display:flex;align-items:center}}.ad-awareness-dek{font-size:.875rem;line-height:1.3}@media (min-width:40rem){.ad-awareness-dek{font-size:1rem}}@media (min-width:52rem){.ad-awareness-dek{font-size:1.125rem;line-height:1.2}}.ad-awareness-cta{display:none}@media (min-width:40rem){.ad-awareness-cta{display:block;padding-top:.25rem}}@media (min-width:52rem){.ad-awareness-cta{text-align:center;margin-left:1.5rem;padding-top:0}}.ad-awareness-cta .ad-button{position:relative;margin:0 auto}.ad-awareness-cta .ad-button:hover{top:2px}.ad-awareness-card-body{display:block}@media (min-width:40rem){.ad-awareness-card-body{align-items:center;display:flex;flex-grow:1;flex-direction:row}}.ad-flexible--awareness_card .ad-disclosure,.ad-flexible--spotlight .ad-disclosure{flex-shrink:0;text-align:center}@media (min-width:40rem){.ad-flexible--awareness_card .ad-disclosure,.ad-flexible--spotlight .ad-disclosure{padding-left:1rem;margin-left:auto}}.ad-flexible--awareness_card .ad-advertiser-link,.ad-flexible--spotlight .ad-advertiser-link{display:inline-block;height:35px;text-align:center}.ad-flexible--awareness_card .ad-advertiser-link img,.ad-flexible--spotlight .ad-advertiser-link img{width:auto}@media (min-width:52rem){.ad-flexible--awareness_card .ad-advertiser-link,.ad-flexible--spotlight .ad-advertiser-link{height:40px}}.ad-awareness-disclaimer{display:block;font-size:.5rem;margin-top:1rem;position:relative;opacity:.7;z-index:1}.ad-awareness-disclaimer .icon{display:none;background-color:rgba(0,0,0,0);border:none;color:inherit;padding:0;margin:0}@media (min-width:40rem){.ad-awareness.sticky--fixed .ad-awareness-disclaimer{font-size:.7rem;margin:0 -.25rem;position:absolute;right:.5rem;top:40%}.ad-awareness.sticky--fixed .ad-awareness-disclaimer .icon{font-size:1rem;display:inline-block;position:static}.ad-awareness.sticky--fixed .ad-awareness-disclaimer span{display:none}.ad-awareness.sticky--fixed .ad-awareness-disclaimer.show-tooltip,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:active,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:hover{opacity:1}.ad-awareness.sticky--fixed .ad-awareness-disclaimer.show-tooltip span,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:active span,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:hover span{display:block;position:absolute;top:0;left:0;width:25rem;transform-origin:top left;transform:translate(-25.5rem,-30%);background:#fff;padding:.25rem;color:#222;border-radius:3px;z-index:2;font-weight:600}}.ad-wireframe-image--big{padding-top:66.4%}.ad-wireframe-image--wide{padding-top:35.2%}.ad--centered,.ad-ex--wide{position:relative;left:50%;-webkit-transform:translateX(-50%);-moz-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%)}.scrollbar--overlay__1fh8lNs35S .ad--fullwidth{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}.scrollbar--10px__1NPZk0NN6Q .ad--fullwidth{width:calc(100vw - 10px);margin-left:calc(50% - 50vw + 5px);margin-right:calc(50% - 50vw + 5px)}.scrollbar--11px__8A_wakdOjq .ad--fullwidth{width:calc(100vw - 11px);margin-left:calc(50% - 50vw + 5.5px);margin-right:calc(50% - 50vw + 5.5px)}.scrollbar--12px__3xQNPEQaZR .ad--fullwidth{width:calc(100vw - 12px);margin-left:calc(50% - 50vw + 6px);margin-right:calc(50% - 50vw + 6px)}.scrollbar--13px__13nO1_ceqp .ad--fullwidth{width:calc(100vw - 13px);margin-left:calc(50% - 50vw + 6.5px);margin-right:calc(50% - 50vw + 6.5px)}.scrollbar--14px__1c3rmUcc-A .ad--fullwidth{width:calc(100vw - 14px);margin-left:calc(50% - 50vw + 7px);margin-right:calc(50% - 50vw + 7px)}.scrollbar--15px__11pvRecC4A .ad--fullwidth{width:calc(100vw - 15px);margin-left:calc(50% - 50vw + 7.5px);margin-right:calc(50% - 50vw + 7.5px)}.scrollbar--16px__HiTLBkWCbF .ad--fullwidth{width:calc(100vw - 16px);margin-left:calc(50% - 50vw + 8px);margin-right:calc(50% - 50vw + 8px)}.scrollbar--17px__UBAkRDWHzN .ad--fullwidth{width:calc(100vw - 17px);margin-left:calc(50% - 50vw + 8.5px);margin-right:calc(50% - 50vw + 8.5px)}@media (max-width:40rem){.ad--fullwidth,.ad-promo-inline.ad-flexible,.Ad .ad-awareness.ad-flexible{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}}.ad-button{display:inline-block;padding:.3125rem 1.5rem;border-radius:3px;font-family:inherit;white-space:nowrap;font-size:.875rem;line-height:1.25rem;text-decoration:none;text-align:center;cursor:pointer}.ad-button:hover{box-shadow:inset 0 0 0 99999px rgba(0,0,0,.2)}.spotlight-countdown{display:flex;flex-direction:row;text-align:center;justify-content:center;margin:0}@media (min-width:40rem){.spotlight-countdown{justify-content:flex-start}}.countdown-unit{color:#fff;border-radius:5px;display:inline-block;background-color:rgba(0,0,0,.7);border:1px solid rgba(0,0,0,.9);margin:0 .25rem;padding:.5rem;text-align:center;min-width:4rem}.countdown-unit:first-child{margin-left:0}.countdown-unit .digit,.countdown-unit .label{display:block}.countdown-unit .digit{font-size:1.375rem;font-weight:600;line-height:1.375rem;margin-bottom:.25rem}.countdown-unit .label{font-size:.875rem;font-weight:400;line-height:.875rem}@media (min-width:40rem) and (max-width:51.999rem){.countdown-unit{min-width:3.5rem}.countdown-unit .digit{font-size:1.125rem;line-height:1.125rem}}.spotlight-countdown--light .countdown-unit{color:#222;background-color:hsla(0,0%,100%,.8);border-color:hsla(0,0%,100%,.9)}:root .ad-flexible--spotlight .ad-slot-media-inner,_::-webkit-full-page-media,_:future{display:inline-block!important}.ad-flexible--spotlight{font-weight:400;width:100%}.ad-flexible--spotlight .ad__disclosure--ex{display:none}@media (min-width:40rem){.ad-flexible--spotlight{display:flex}}.ad-flexible--spotlight .ad-awareness-component .ad-disclosure-text{font-weight:400}.ad-flexible--spotlight .ad-format-clickable{display:none}.ad-flexible--spotlight .awareness-inner{width:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .ad-button{display:block;font-size:1rem;font-weight:600}.ad-flexible--spotlight .awareness-inner .ad-button{padding:0;line-height:48px;font-size:1.125rem;min-height:48px;height:48px;vertical-align:middle}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek{font-size:1.125rem;font-weight:600}.ad-flexible--spotlight .awareness-inner .ad-advertiser-link img{height:100%;width:auto}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .ad-slot-media{position:relative;width:100%;z-index:1}.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper{position:relative;padding-bottom:56.25%}@media (min-width:52rem){.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper{min-width:440px;max-height:250px}}.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper iframe{position:absolute;top:0;left:0;width:100%;height:100%}.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin:1rem 0 0}@media (max-width:39.999rem){.ad-flexible--spotlight .awareness-inner,.ad-flexible--spotlight .awareness-inner .ad-awareness-content,.ad-flexible--spotlight .awareness-inner .ad-slot-media{display:block}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .ad-awareness-cta{margin:0 auto}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body{padding:0 1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-headline,.ad-flexible--spotlight .awareness-inner .ad-disclosure{text-align:center}.ad-flexible--spotlight .awareness-inner .ad-disclosure{margin:1.5rem 0 0;justify-content:center}}@media (min-width:40rem){.ad-flexible--spotlight .awareness-inner{max-height:200px;max-width:800px}.ad-flexible--spotlight .awareness-inner .ad-slot-media{flex-shrink:0;height:100%;width:auto;max-width:45%}.ad-flexible--spotlight .awareness-inner .ad-slot-media-inner{border-radius:3px 0 0 3px;overflow:hidden}.ad-flexible--spotlight .awareness-inner .ad-disclosure{flex-direction:column;text-align:left}.ad-flexible--spotlight .awareness-inner .ad-disclosure-text{margin:0 0 .25rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-disclaimer{margin-left:-.5rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-content{background-position:0 0;background-repeat:no-repeat;background-size:cover;border-radius:0 3px 3px 0;overflow:hidden;flex-direction:column;padding:0;flex-basis:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta{margin-left:0}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body{padding:1rem 2rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body.has-countdown{padding:.5rem 1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-content:before{content:"";display:block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:0;transition:opacity .3s}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .ad-awareness-headline{display:flex;flex-direction:column;align-items:flex-start;flex-basis:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:.5rem}.ad-flexible--spotlight .awareness-inner .ad-button{display:inline-block;padding:0 1.5rem;max-width:20ex}}@media (min-width:52rem){.ad-flexible--spotlight .awareness-inner{border-radius:3px;max-width:71rem;max-height:none}}@media (min-width:56rem){.ad-flexible--spotlight .awareness-inner .ad-awareness-content{padding:1rem 2rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body{padding:0}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body ::-ms-backdrop,.ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body ::-ms-backdrop,:root .ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,:root .ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body{margin-top:-2rem}.ad-flexible--spotlight .awareness-inner .ad-slot-media{max-width:35%}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek{box-decoration-break:clone;align-self:stretch}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek span{display:inline;border-color:rgba(0,0,0,0);border-style:solid;border-width:.25rem 0;line-height:1.5rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:1rem;margin-left:-.5rem}}@media (min-width:64rem){.ad-flexible--spotlight .awareness-inner .ad-button{max-width:none}}@media (min-width:40rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-awareness-component .ad-disclosure-text{font-size:1rem;margin:0 0 1rem}}@media (min-width:56rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-advertiser-link{height:50px}}@media (min-width:64rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-advertiser-link{height:60px}}@media (min-width:40rem){.ad-flexible--spotlight.ad-flexible--media-embed .ad-slot-media{max-width:none}}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot,.ad-flexible--spotlight.ad-flexible--media-video .ad-slot [id^=google_ads_iframe],.ad-flexible--spotlight.ad-flexible--media-video:not(.ad--loaded) .ad-slot,.ad-flexible--spotlight.ad-flexible--media-video:not(.ad--loaded) .ad-slot [id^=google_ads_iframe]{overflow:hidden;opacity:1;background-color:rgba(0,0,0,0)}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ratio--16\:9{display:block;width:auto;height:100%}@media (max-width:39.999rem){.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ratio--16\:9{width:100%;height:auto}}@media (min-width:40rem){.ad-flexible--spotlight.ad-flexible--media-video.ad-awareness:not(.sticky--fixed) .awareness-inner{height:250px}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot-media{flex-shrink:0;display:flex;width:auto;height:100%;max-width:none}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot-media-inner{position:relative;width:auto;display:flex;flex-grow:1}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ad-slot-media-inner{min-width:90px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1.sticky--show .ad-slot-media-inner{width:90px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ad-slot-media-inner{min-width:120px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3.sticky--show .ad-slot-media-inner{width:120px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ad-slot-media-inner{min-width:160px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9.sticky--show .ad-slot-media-inner{width:160px}}@media (min-width:40rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed{overflow:hidden}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-format-clickable{display:block;position:absolute;top:0;left:0;width:calc(100% - 3rem);height:100%;cursor:pointer;z-index:20}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-format-clickable span{visibility:hidden}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none;max-height:90px}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{max-width:80rem}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-slot-media{max-width:20%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-content,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-slot-media-inner{border-radius:0}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-cta{display:none}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-disclosure{padding-right:2rem}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed.ad-flexible--media-video .awareness-inner .ad-slot-media{max-width:none}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-content{align-items:stretch;height:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body{height:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-headline{flex-direction:row;width:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-dek,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .spotlight-countdown{align-self:center}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-dek{padding-right:1rem;max-width:60%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .spotlight-countdown{margin:.5rem 0}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-cta{display:none}}@media (min-width:40rem) and (max-width:51.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-advertiser-link{height:28px}}@media (min-width:40rem) and (max-width:55.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-card-body.has-countdown .ad-awareness-dek{font-size:.875rem}}@media (min-width:40rem) and (max-width:63.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-card-body.has-countdown .countdown-unit{padding:.5rem .25rem;min-width:3rem}}@media (min-width:64rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-content{padding-left:1rem;padding-right:1rem}}.ad-promo-inline .ad-awareness-content:empty{display:none}.ad-flexible--spotlight.ad-promo-inline .ad-slot-media-inner{width:100%;height:100%}.ad-flexible--spotlight.ad-promo-inline .awareness-inner{max-height:none;min-height:250px}@media (min-width:40rem){.ad-flexible--spotlight.ad-promo-inline .awareness-inner{display:block}.ad-flexible--spotlight.ad-promo-inline .awareness-inner .ad-awareness-card-body{padding:1rem}.ad-flexible--spotlight.ad-promo-inline .awareness-inner .ad-slot-media{display:block;max-width:none;width:100%;height:auto}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1.ad-promo-inline .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3.ad-promo-inline .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9.ad-promo-inline .ratio--16\:9{display:block;width:100%;height:auto}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--media-video,.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{height:50vh}.ad-spotlight--jumbo.ad-awareness.ad-flexible--media-video.ad-flexible--spotlight .awareness-inner{height:auto}.ad-spotlight--jumbo.ad-awareness .awareness-inner{max-width:none}.ad-spotlight--jumbo.ad-awareness .awareness-inner .ad-slot-media{height:100%;max-width:60%}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{max-height:360px}}@media (min-height:500px) and (min-width:72rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{max-height:460px}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:300px}}@media (min-height:500px) and (min-width:72rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:390px}}@media (min-height:500px) and (min-width:84rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:460px}}.ad-promo-inline{margin-bottom:1.5rem;clear:both;background:#f4f4f4}.ad-promo-inline.ad-flexible--bfp_promo{background-color:rgba(0,0,0,0)}@media (max-width:39.999rem){.ad-promo-inline.ad-flexible{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-promo-inline .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}.ad-promo-inline .ad-slot{min-width:100%}}@media (min-width:40rem){.ad-promo-inline{background:rgba(0,0,0,0)}}@media (min-width:52rem){.ad-promo-inline.ad-flexible--programmatic{padding-top:0}}.ad-promo-inline.ad-flexible.ad-flexible--spotlight{padding:0;background:rgba(0,0,0,0)}.ad-inline .ad-wireframe-wrapper[data-wireframe-width="728"][data-wireframe-height="90"]{min-height:250px}.ad-inline .ad-wireframe-wrapper[data-wireframe-width="728"][data-wireframe-height="90"] .ad-promo-inline:not(.ad--loaded) .ad-slot{height:250px}@media (min-width:40rem){.Ad .ad-awareness{padding-left:1rem;padding-right:1rem}}.Ad .ad-flexible--spotlight{font-weight:400}.Ad .ad-awareness.ad--rendered,.Ad .ad-awareness.ad--rendered+.sticky-filler{margin-top:0;margin-bottom:.5rem}@media (min-width:52rem){.Ad .ad-awareness.ad--rendered,.Ad .ad-awareness.ad--rendered+.sticky-filler{margin-bottom:0}}@media (min-width:40rem){.Ad .ad-awareness.ad--rendered.ad-awareness--full-width.sticky--show,.Ad .ad-awareness.ad--rendered.ad-awareness--full-width.sticky--show+.sticky-filler,.Ad .ad-awareness.ad--rendered.sticky--fixed.sticky--show,.Ad .ad-awareness.ad--rendered.sticky--fixed.sticky--show+.sticky-filler{margin:0}.Ad .ad-awareness.ad--rendered.sticky--fixed{position:fixed}.Ad .ad-awareness.ad--rendered.ad-flexible--programmatic{margin-top:0}}.Ad .ad-bpage-story{margin-bottom:2rem}.Ad .ad-bpage-story.ad-flexible--programmatic{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}.Ad .ad-wireframe-wrapper--inline{position:relative}@media (min-width:40rem){.Ad .ad-wireframe-wrapper--inline{left:50%;transform:translateX(-50%)}}.Ad .ad-advertise-link{text-decoration:none}.Ad .ad-wireframe-image{background:#f4f4f4}.Ad .ad-grid-thumbnail,.Ad .ad__wireframe-container{border-radius:4px;overflow:hidden}.Ad .ad-grid-thumbnail+.ad-buzz-title h2,.Ad .ad-grid-thumbnail+.ad-buzz-title span,.Ad .ad__wireframe-container+.ad-buzz-title h2,.Ad .ad__wireframe-container+.ad-buzz-title span{font-size:.875rem;line-height:1.21;display:block;font-weight:600}@media (min-width:52rem){.Ad .ad-grid-thumbnail+.ad-buzz-title h2,.Ad .ad-grid-thumbnail+.ad-buzz-title span,.Ad .ad__wireframe-container+.ad-buzz-title h2,.Ad .ad__wireframe-container+.ad-buzz-title span{font-size:1.125rem;line-height:1.2}html[lang=ja] main .Ad .ad-grid-thumbnail+.ad-buzz-title h2,html[lang=ja] main .Ad .ad-grid-thumbnail+.ad-buzz-title span,html[lang=ja] main .Ad .ad__wireframe-container+.ad-buzz-title h2,html[lang=ja] main .Ad .ad__wireframe-container+.ad-buzz-title span{font-size:1rem;line-height:1.5}}@media (min-width:40rem){.adJapanChumbox__3Yg-CcTByD{margin:auto;max-width:1132px;padding:0 16px 16px}}.adJapanLinks__2Wk9-s-s5x{margin-bottom:2rem}.footerCommunity__1zHyaU8rAw{border:3px solid #007c7c;padding:1.5rem 1rem;margin-bottom:2rem;border-radius:3px}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw{text-align:center}}.footerCommunity__1zHyaU8rAw .header__3DndYskf7D{margin-bottom:.5rem;font-weight:800;font-size:40px;line-height:1}.footerCommunity__1zHyaU8rAw .text__3jWn18jAta{margin-bottom:.5rem;line-height:1.5}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .text__3jWn18jAta{margin-bottom:1.5rem}}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .secondRow__1nOhmDG3yr{display:inline-block}}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:.5rem .875rem;font-size:1.125rem;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;background-color:#007c7c;color:#fff;border:1px solid rgba(0,0,0,0);transition:background-color .1s ease 0s;width:100%}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .button__TmEknui0kN{width:auto}}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN:hover{background-color:#001616;transition:background-color .15s ease 0s}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN:active{background-color:#000}.label__3gtOdKh6xR{font-size:1.125rem;line-height:1.2;cursor:pointer;display:block;position:relative;padding-left:1.5rem}html[lang=ja] main .label__3gtOdKh6xR{font-size:1rem;line-height:1.2}.label__3gtOdKh6xR:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:.75rem;height:.75rem;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #d7d7d7;border-radius:3px}.checkbox__1hupQvVcV0{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__1hupQvVcV0:disabled+.label__3gtOdKh6xR{opacity:.3}.checkbox__1hupQvVcV0:checked+.label__3gtOdKh6xR:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.5rem}.checkbox__1hupQvVcV0:focus+.label__3gtOdKh6xR:before{box-shadow:0 0 0 2px #7a9ff3}.form__16pquGAWkg{margin-top:1rem}.fieldset__10rchbRxpA{border:0;margin:0;padding:0}.legend__XkMDgfhD_7{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.submitBox___Bw7C8Xeij{display:flex;margin-top:1rem;position:relative;flex-wrap:wrap}.label__3_XnpS6vTD{position:absolute;color:#757575;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid rgba(0,0,0,0);transition:transform .15s ease-out,color .15s ease-out}@media (-ms-high-contrast:none){.label__3_XnpS6vTD{transform:translate(-.75rem,-80%);font-size:14px;color:inherit;left:0}}.input__2Df9koY-l3{flex-grow:3;font-family:inherit;background:#fff;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid #d7d7d7;border-radius:3px;margin:0 0 .5rem;flex-basis:100%}@media (min-width:52rem){.input__2Df9koY-l3{flex-basis:0}}.input__2Df9koY-l3::placeholder{color:rgba(0,0,0,0)}.input__2Df9koY-l3:-ms-input-placeholder{color:rgba(0,0,0,0)!important}.input__2Df9koY-l3:not(:placeholder-shown)+label{transform:translate(-.75rem,-80%);font-size:14px;color:inherit}.button__3YKvmqlaCA{flex-grow:1;border:1px solid #fff;background:none;-webkit-appearance:none;padding:.5rem 1rem;margin-bottom:.5rem;margin-left:0;border-radius:3px;box-sizing:border-box;color:#fff;cursor:pointer;display:block;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;transition:background-color .1s ease 0s;font-weight:700}@media (min-width:52rem){.button__3YKvmqlaCA{margin-left:.25rem}}.error__Z-JHwpfKJf,.success__2dICwRGsNi{font-weight:700}.loading__3WFS6Ne9pK{opacity:.6}.checkmarkIcon__3AvmVRVqBd{height:1rem;fill:#fff;width:1rem}.spinner__1hr0WyUkd5{position:absolute;border-radius:50%;width:40px;height:40px;top:50%;left:50%;margin:-20px 0 0 -20px;z-index:9999;animation:loader1__rnn1dpuL62 1s linear infinite}@keyframes loader1__rnn1dpuL62{0%{transform:rotate(20deg)}to{transform:rotate(380deg)}}@keyframes loader2__1z7AvurqkF{0%{transform:scale(0)}to{transform:scale(1)}}.spinner__1hr0WyUkd5 span{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.spinner__1hr0WyUkd5:after,.spinner__1hr0WyUkd5:before{position:absolute;content:" ";width:80%;height:80%;background-color:#fff;top:5%;left:0;border-radius:50%}.spinner__1hr0WyUkd5:before{left:-6%;animation:loader2__1z7AvurqkF 1s ease-in-out infinite alternate;transform-origin:10% 50%}.spinner__1hr0WyUkd5:after{left:auto;right:-6%;animation:loader2__1z7AvurqkF 1s ease-in-out 1s infinite alternate;transform:scale(0);transform-origin:90% 50%}.container__1c1IOFaqtw{position:relative;padding:1rem 1.5rem;border-radius:3px}.title__2ek57mlBUO{font-size:1.625rem;line-height:1.2;font-weight:700;margin-bottom:.5rem}html[lang=ja] main .title__2ek57mlBUO{font-size:1.5rem;line-height:1.2}.text__x5HVulrvof{font-size:1.125rem;line-height:1.2;margin-bottom:1rem}html[lang=ja] main .text__x5HVulrvof{font-size:1rem;line-height:1.2}.title__39k5sf58no{font-size:1.125rem;line-height:1.2;margin:0 0 1rem;font-weight:700;width:100%}html[lang=ja] main .title__39k5sf58no{font-size:1rem;line-height:1.2}@media (min-width:52rem){.title__39k5sf58no{font-size:1.375rem;line-height:1.27}html[lang=ja] main .title__39k5sf58no{font-size:1.25rem;line-height:1.27}}@media (min-width:64rem){.title__39k5sf58no{width:75%}}.container__3mJ1rcZaea{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/newsletter-pattern.19d345113652155b8ac91517fcbd191c.png);background-color:#e32;color:#fff;margin-bottom:2rem}.container__3mJ1rcZaea .logo__2N5aw-HaRq{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quizzes-logo.4243a8e776b2c992cdf8438f8e37e508.png);background-repeat:no-repeat;background-size:120px 50px;height:50px;width:160px}.container__3mJ1rcZaea .title__3b5Kcx4fkQ{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.container__3mJ1rcZaea .description__9qj86GlcTG{line-height:1.5;margin-top:.5rem}.container__3mJ1rcZaea .button__22sSCUvP9W{background:#000;margin-left:0;border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.container__3mJ1rcZaea .button__22sSCUvP9W{margin-left:1rem}}.container__3mJ1rcZaea .submitBox__3Wu4b9RvPe{display:flex;flex-direction:column}@media (min-width:52rem){.container__3mJ1rcZaea .submitBox__3Wu4b9RvPe{flex-direction:row}}.caret__BbAkeREjW5{width:.5rem;height:.5rem;margin-left:.25rem}.caret__BbAkeREjW5,.comma__3GSv9Y6V7O{margin-right:.25rem}.breadcrumbItem__3iHtMjln58{list-style:none;display:inline-block}.timestamp__12oPwMqFR8{font-size:.875rem}.headlineByline__1xvw0GX5iL{text-decoration:none;font-size:.875rem;color:#222;margin-right:2rem;display:inline-block}.headlineByline__1xvw0GX5iL:hover .bylineName__8t-CbLgGCD{color:#0f65ef}@media (max-width:40rem){.headlineByline__1xvw0GX5iL.twoAuthors__37jqERqOI3{margin-right:.25rem}}.bylineContainer__1SFDfwq6X5{display:inline-flex;align-items:center}.avatar__18myM8WuAj{border-radius:50%;height:40px;margin-right:.5rem;width:40px;overflow:hidden}@media (min-width:40rem){.avatar__18myM8WuAj{height:56px;width:56px}}.avatar__18myM8WuAj img,.avatar__18myM8WuAj picture{display:block;width:100%;height:100%}.avatar__18myM8WuAj.isAdvertiser__39PV0CmC-7{border-radius:4px;border:1px solid #d7d7d7}.text__16CLiglqRL{font-size:.875rem;text-decoration:none}.text__16CLiglqRL.isAdvertiser__39PV0CmC-7{display:none}@media (min-width:40rem){.desktopHide__2c3cZqbyoR{display:none}}@media (max-width:40rem){.desktopShow__1pfulPcufi{display:none}}.badge__2tlCuv1qM-{display:inline-block;margin-right:.5rem}.badge__2tlCuv1qM- img,.badge__2tlCuv1qM- picture,.badge__2tlCuv1qM- svg{display:block;height:30px;width:30px}@media (min-width:40rem){.badge__2tlCuv1qM- img,.badge__2tlCuv1qM- picture,.badge__2tlCuv1qM- svg{height:40px;width:40px}}.badgeList__1LHbcTIq2k{display:flex}.trendingBadgeContainer__3r-n48OwI8{display:inline-flex;align-items:center}.trendingText__1g3uLDFb1X{display:inline-flex;flex-direction:column}.trendingTitle__KRorkcBZDd{font-size:.75rem}@media (min-width:40rem){.trendingTitle__KRorkcBZDd{font-size:.875rem}}.trendingViewCount__1nq1Blc-zw{color:#e32}.trendingLink__3xW9coA7mb{display:inline-block}.headline__2V6cg6yv2y{margin:.5rem 0 1.5rem}@media (min-width:40rem){.headline__2V6cg6yv2y{margin:1.5rem 0}}.container__1xi1X6X2jr{margin-bottom:1rem}.title__2wEoS_Bqpp{margin-bottom:.5rem}@media (min-width:40rem){.hideTitle__2G2Wc7pA_Y{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}}.description__1bzzdbaw8q{font-size:1.125rem;line-height:1.2}html[lang=ja] main .description__1bzzdbaw8q{font-size:1rem;font-size:1.125rem;line-height:1.2}html[lang=ja] main html[lang=ja] main .description__1bzzdbaw8q{font-size:1rem;line-height:1.2}.description__1bzzdbaw8q a{color:#0f65ef;text-decoration:none}.description__1bzzdbaw8q a:hover{color:#093c8f;transition:color .15s ease 0s}.paidPostBreadcrumb__3U8rya1XzZ{background-color:#f4f4f4;font-size:.875rem;font-weight:700;padding:.25rem 1rem;border-radius:12px;margin-right:.5rem}.breadcrumbContainer__3MGXwlDSV3,.breadcrumbContainer__3MGXwlDSV3 ol{display:inline-block}@media (max-width:40rem){.breadcrumbContainer__3MGXwlDSV3{display:block}}.middot__3mWhYWQBOt{margin:0 .5rem}@media (max-width:40rem){.middot__3mWhYWQBOt{display:none}}.disclaimer__1AWcZ4UCcC{background-color:#fdebe9;padding:1rem;font-size:.875rem}.sharedResultHeadline__ASF3LX_Ob_{display:flex;font-size:14px;line-height:20px;align-items:center;margin-bottom:21px}.sharedResultTitle__2LHBgGnC-T{flex:1;font-size:14px;line-height:20px}.sharedResultTitle__2LHBgGnC-T a{font-weight:700}.newsFooter__3OzkRh0eVK{margin-bottom:2rem;background-color:#f4f4f4}.newsFooterText__3ozi7kZ6VA{color:#666;font-size:.875rem;line-height:1.3}.newsFooterText__3ozi7kZ6VA>a{color:#0f65ef;text-decoration:none}.userBio__3uoJ0WJjCK{padding:1rem 1rem 0}.newsFooterConfidentialTip__2qRtwBM_uH{padding:1rem;margin-bottom:1.5rem}.container__3IbfSEcdwH{background:linear-gradient(270deg,#e32,#e40c78);color:#fff}.checkbox__11-iiikvxZ{margin-bottom:1rem}.form__5mbJlQ2iPt button:hover{background-color:#fff;color:#222}.submitBox__32lvHJ80SZ{margin-top:2rem}.container__3pMTf_O2I3{color:#222;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border:1px solid rgba(0,0,0,.1)}.container__3pMTf_O2I3:after,.container__3pMTf_O2I3:before{content:" ";top:0;left:0;right:0;bottom:0;position:absolute;z-index:-2}.container__3pMTf_O2I3:before{background-color:#fcd70f;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/yellow-background.0f6f3c54a5c863574ccbe9324264c2a2.png);background-position:right 0;background-repeat:no-repeat;background-size:100% auto;z-index:-1}@media (min-width:370px){.container__3pMTf_O2I3:before{background-position:right -10px}}@media (min-width:430px){.container__3pMTf_O2I3:before{background-position:right -20px}}@media (min-width:470px){.container__3pMTf_O2I3:before{background-position:right -30px}}@media (min-width:620px){.container__3pMTf_O2I3:before{background-position:right -20px}}@media (min-width:620px){.container__3pMTf_O2I3 .description__z-2UCI8K6e{max-width:85%}}@media (min-width:620px){.container__3pMTf_O2I3 .form__3gwGXYz7xq{margin-top:40px}}.container__3pMTf_O2I3 .form__3gwGXYz7xq button{background-color:#e32;border:none}.container__3pMTf_O2I3 .form__3gwGXYz7xq button:hover{background-color:#9e180c}.container__3pMTf_O2I3 .logo__RctS6jT6Qm{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/shopping-logo.36e1636a9997916734493f24da8e0f3c.png);background-repeat:no-repeat;background-size:160px 40px;height:40px;margin-bottom:15%;width:160px}@media (min-width:620px){.container__3pMTf_O2I3 .logo__RctS6jT6Qm{margin-bottom:10px}}.container__3pMTf_O2I3 .success__1HuwpWTrci{background:#fcd70f;margin:-16px -24px;padding:24px}.container__3pMTf_O2I3 .text__TA7mm2jPB_{background-color:red}.container__3pMTf_O2I3 .title__FH1MHzJVdI{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.container__DucLZy4CZL{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/newsletter-pattern.19d345113652155b8ac91517fcbd191c.png);background-size:30rem;background-color:#0f65ef;color:#fff;margin-bottom:2rem}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4{background:#fe0;color:#000;font-weight:600}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7{border-color:rgba(0,0,0,0);background:#18c1ee;color:#fff}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7:focus,.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7:hover{background:#0b7895}.text__3MQGtwpdIc{font-weight:700}.link__21amnfM_Z6{text-decoration:none;color:#222}.link__21amnfM_Z6:hover{color:#0f65ef}.img__16muQLf5Hn{width:100%;background-color:#e2e2e2}.img__16muQLf5Hn picture{display:block;width:100%;height:100%}.img__16muQLf5Hn img{height:100%;width:100%;object-fit:cover}.package__fTJxTFE5iG{width:100%;font-family:Proxima Nova,Helvetica,Arial,sans-serif;box-sizing:border-box;padding-bottom:.5rem;margin-bottom:1rem}.wrap__2G-4rPhxsp{padding:1rem;border:1px solid rgba(0,0,0,.2);background-color:#fff}.header__3fFtmgBLyb{border:1px solid rgba(0,0,0,0);padding:1rem;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;flex-direction:column}@media (min-width:40rem){.header__3fFtmgBLyb{flex-direction:row}}.content__2sbl3fHGob{display:flex;flex-direction:column;justify-content:space-between}@media (min-width:40rem){.content__2sbl3fHGob{flex-direction:row}}.splash__M5LzZ_56sW{width:100%}@media (min-width:40rem){.splash__M5LzZ_56sW{width:calc(49% - 1px)}}.splash__M5LzZ_56sW .img__16muQLf5Hn{height:8rem}.splash__M5LzZ_56sW .text__3MQGtwpdIc{font-size:1.625rem;padding-top:.5rem}.splash__M5LzZ_56sW .dek__2gceJ1OSOo{font-size:.875rem;color:#757575;padding-top:.5rem;padding-bottom:1rem}@media (min-width:40rem){.splash__M5LzZ_56sW .dek__2gceJ1OSOo{padding-top:.25rem}}.items__27QTcVhFED{width:100%;padding-top:1.5rem}@media (min-width:40rem){.items__27QTcVhFED{width:calc(49% - 1px);padding-top:0}}.item__IodWxaSlNV{margin-top:.25rem;padding-bottom:.5rem}@media (min-width:40rem){.item__IodWxaSlNV{margin-top:0;padding-bottom:0}}.item__IodWxaSlNV .text__3MQGtwpdIc{width:62%;padding-right:1rem;padding-left:1rem;font-size:.875rem}.item__IodWxaSlNV .img__16muQLf5Hn{width:38%;min-height:70px;max-height:110px}.item__IodWxaSlNV .link__21amnfM_Z6{display:flex;flex-direction:row;margin-bottom:.5rem}.headerWrap__bHd3yG_xJE{align-items:center;display:flex;flex-flow:column}@media (min-width:40rem){.headerWrap__bHd3yG_xJE{align-items:flex-start}}.headerText__2TsVG9FbUZ{color:#fff;font-weight:700;text-align:center;line-height:42px;font-size:26px;margin-bottom:.25rem}@media (min-width:40rem){.headerText__2TsVG9FbUZ{text-align:left;line-height:52px;font-size:42px}}.fireIcon__3w-h_kwQpL{margin-bottom:-7px;margin-right:-4px;margin-left:-9px;height:38px}@media (min-width:40rem){.fireIcon__3w-h_kwQpL{height:53px;margin-bottom:-12px;margin-right:0}}.packageSubTitle__32aGYxFtm1{font-size:.875rem;padding-bottom:.25rem}.ctaTopWrap__1CVyDzWJxt{display:none}@media (min-width:40rem){.ctaTopWrap__1CVyDzWJxt{display:flex;justify-content:end}}.rightArrow__4p4xsr8WmP{vertical-align:middle;width:14px;height:14px}.ctaTop__1MZPHIyqia{text-shadow:0 1px 2px rgba(0,0,0,.15);white-space:nowrap}.ctaBottom__2PSLviuAI1,.ctaTop__1MZPHIyqia{align-items:center;font-weight:700;display:flex;text-decoration:none}.ctaBottom__2PSLviuAI1{justify-content:center;font-size:1.125rem;width:100%;padding:.5rem .875rem;line-height:1.5rem;border:1px solid rgba(0,0,0,.2);cursor:pointer;border-radius:3px;user-select:none;background-color:#fff;white-space:normal;text-align:center}@media (min-width:40rem){.ctaBottom__2PSLviuAI1{display:none}}.yellow__2oAnAfQtpz{border-top:none;background-color:#ffee02;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.yellow__2oAnAfQtpz .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.yellow__2oAnAfQtpz .ctaTop__1MZPHIyqia,.yellow__2oAnAfQtpz .headerText__2TsVG9FbUZ,.yellow__2oAnAfQtpz .packageSubTitle__32aGYxFtm1{color:#222}.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1{color:#222;border-color:#222}.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1:active,.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1:hover{background-color:#ffee02;color:#fff;background:#222}.yellow__2oAnAfQtpz .countdownNum__1oxf-WJGb6,.yellow__2oAnAfQtpz .countdownUnit__2mB5w4oBO2{color:#222}.yellow__2oAnAfQtpz .countdownItem__3-RIEYiuQa:before{background:#fff;opacity:.5;border-color:hsla(0,0%,100%,.2)}.blue__1-4arfFtlb{border-top:none;background-color:#1581ff;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.blue__1-4arfFtlb .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.blue__1-4arfFtlb .ctaTop__1MZPHIyqia{color:#fff}.blue__1-4arfFtlb .rightArrow__4p4xsr8WmP{fill:#fff}.blue__1-4arfFtlb .headerText__2TsVG9FbUZ,.blue__1-4arfFtlb .packageSubTitle__32aGYxFtm1{color:#fff}.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1{border-color:#1581ff;color:#1581ff}.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1:active,.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1:hover{background-color:#1581ff;color:#fff}.blue__1-4arfFtlb .countdownNum__1oxf-WJGb6,.blue__1-4arfFtlb .countdownUnit__2mB5w4oBO2{color:#fff}.blue__1-4arfFtlb .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.green__2lr2ylOD4L{border-top:none;background-color:#69af14;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.green__2lr2ylOD4L .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.green__2lr2ylOD4L .ctaTop__1MZPHIyqia{color:#fff}.green__2lr2ylOD4L .rightArrow__4p4xsr8WmP{fill:#fff}.green__2lr2ylOD4L .headerText__2TsVG9FbUZ,.green__2lr2ylOD4L .packageSubTitle__32aGYxFtm1{color:#fff}.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1{border-color:#69af14;color:#69af14}.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1:active,.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1:hover{background-color:#69af14;color:#fff}.green__2lr2ylOD4L .countdownNum__1oxf-WJGb6,.green__2lr2ylOD4L .countdownUnit__2mB5w4oBO2{color:#fff}.green__2lr2ylOD4L .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.pink__32LYL_sA-p{border-top:none;background-color:#f43192;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.pink__32LYL_sA-p .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.pink__32LYL_sA-p .ctaTop__1MZPHIyqia{color:#fff}.pink__32LYL_sA-p .rightArrow__4p4xsr8WmP{fill:#fff}.pink__32LYL_sA-p .headerText__2TsVG9FbUZ,.pink__32LYL_sA-p .packageSubTitle__32aGYxFtm1{color:#fff}.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1{border-color:#f43192;color:#f43192}.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1:active,.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1:hover{background-color:#f43192;color:#fff}.pink__32LYL_sA-p .countdownNum__1oxf-WJGb6,.pink__32LYL_sA-p .countdownUnit__2mB5w4oBO2{color:#fff}.pink__32LYL_sA-p .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.black__OPJLf-XRz8{border-top:none;background-color:#222;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.black__OPJLf-XRz8 .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.black__OPJLf-XRz8 .ctaTop__1MZPHIyqia{color:#fff}.black__OPJLf-XRz8 .rightArrow__4p4xsr8WmP{fill:#fff}.black__OPJLf-XRz8 .headerText__2TsVG9FbUZ,.black__OPJLf-XRz8 .packageSubTitle__32aGYxFtm1{color:#fff}.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1{border-color:#222;color:#222}.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1:active,.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1:hover{background-color:#222;color:#fff}.black__OPJLf-XRz8 .countdownNum__1oxf-WJGb6,.black__OPJLf-XRz8 .countdownUnit__2mB5w4oBO2{color:#fff}.black__OPJLf-XRz8 .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.orange__3JvPXiLYZO{border-top:none;background-color:#f99126;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.orange__3JvPXiLYZO .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.orange__3JvPXiLYZO .ctaTop__1MZPHIyqia{color:#fff}.orange__3JvPXiLYZO .rightArrow__4p4xsr8WmP{fill:#fff}.orange__3JvPXiLYZO .headerText__2TsVG9FbUZ,.orange__3JvPXiLYZO .packageSubTitle__32aGYxFtm1{color:#fff}.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1{border-color:#f99126;color:#f99126}.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1:active,.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1:hover{background-color:#f99126;color:#fff}.orange__3JvPXiLYZO .countdownNum__1oxf-WJGb6,.orange__3JvPXiLYZO .countdownUnit__2mB5w4oBO2{color:#fff}.orange__3JvPXiLYZO .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.default__yn_LCxrffG{border:1px solid rgba(0,0,0,.2);border-top:8px solid #e40c78;border-radius:3px;padding-bottom:1rem}.default__yn_LCxrffG .headerText__2TsVG9FbUZ{color:#e40c78;font-size:1.125rem;line-height:1.3rem}.default__yn_LCxrffG .wrap__2G-4rPhxsp{border:none;padding:0}@media (min-width:40rem){.default__yn_LCxrffG .wrap__2G-4rPhxsp{padding-left:1rem;padding-right:1rem}}@media (min-width:40rem){.default__yn_LCxrffG .content__2sbl3fHGob{flex-direction:column}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW{width:100%;margin-bottom:1rem}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .img__16muQLf5Hn{width:calc(50% - .5rem)}}.default__yn_LCxrffG .splash__M5LzZ_56sW .text__3MQGtwpdIc{font-size:1.375rem;padding-top:1rem}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .text__3MQGtwpdIc{padding-top:0}}.default__yn_LCxrffG .splash__M5LzZ_56sW .textWrap__3W5B7Yg0PQ{padding-left:1rem;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .textWrap__3W5B7Yg0PQ{width:calc(50% - .5rem);padding-left:0;padding-right:0}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .link__21amnfM_Z6{display:flex;justify-content:space-between}}.default__yn_LCxrffG .items__27QTcVhFED{overflow-x:auto;overflow-y:hidden;display:flex}@media (min-width:40rem){.default__yn_LCxrffG .items__27QTcVhFED{overflow-x:hidden;width:100%;justify-content:space-between}}.default__yn_LCxrffG .item__IodWxaSlNV{flex-basis:11.25rem;flex-shrink:0;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .item__IodWxaSlNV{width:calc(25% - 11px);flex-basis:calc(25% - 11px);flex-shrink:0;padding-right:0}}.default__yn_LCxrffG .item__IodWxaSlNV:first-child{margin-left:1rem}@media (min-width:40rem){.default__yn_LCxrffG .item__IodWxaSlNV:first-child{margin-left:0}}.default__yn_LCxrffG .item__IodWxaSlNV .link__21amnfM_Z6{flex-direction:column}.default__yn_LCxrffG .item__IodWxaSlNV .text__3MQGtwpdIc{width:100%;padding:0}.default__yn_LCxrffG .item__IodWxaSlNV .img__16muQLf5Hn{width:100%;margin-bottom:.5rem}.default__yn_LCxrffG .ctaWrap__1dUZoWsqHP{padding-left:1rem;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .ctaWrap__1dUZoWsqHP{padding:1rem 0 0;display:flex;justify-content:flex-end}}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1{color:#0f65ef;border-color:#0f65ef}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:active,.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:hover{color:#fff;background-color:#0f65ef}@media (min-width:40rem){.default__yn_LCxrffG .ctaBottom__2PSLviuAI1{display:flex;align-items:center;border:0;justify-content:flex-end;padding:0;background:none}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:active,.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:hover{background:none;color:#093c8f}}.countdown__3dIiT2aUyq{display:flex;justify-content:space-between;text-align:center;margin-top:1rem}@media (min-width:40rem){.countdown__3dIiT2aUyq{margin-top:0}}.countdownItem__3-RIEYiuQa{position:relative;border-radius:5px;overflow:hidden;margin-left:.3rem;margin-right:.3rem;padding:.3rem 0 .5rem}.countdownItem__3-RIEYiuQa:first-of-type{margin-left:0;padding-left:0}.countdownItem__3-RIEYiuQa:last-of-type{margin-right:0;padding-right:0}.countdownItem__3-RIEYiuQa:before{position:absolute;z-index:1;top:0;left:0;content:"";width:100%;height:100%;border-radius:5px;border:1px solid}.countdownNum__1oxf-WJGb6{display:block;position:relative;z-index:2;text-shadow:1px 1px 1px rgba(0,0,0,.25);min-width:50px;font-size:18px;line-height:30px;font-weight:600}@media (min-width:40rem){.countdownNum__1oxf-WJGb6{font-size:24px;line-height:36px}}.countdownUnit__2mB5w4oBO2{display:block;position:relative;z-index:2;text-shadow:1px 1px 1px rgba(0,0,0,.25);line-height:17px;font-size:14px;text-align:center;letter-spacing:.1em}.heading__Fach8WFXS_{display:none;font-size:2rem;line-height:1.2;margin-bottom:1rem;font-weight:700}@media (min-width:500px){.heading__Fach8WFXS_{display:block}}.shareBar__1LkDEJbHxX{opacity:0;transition:opacity .2s ease;list-style-type:none}.shareBar__1LkDEJbHxX.loaded__1lIGsoyXF4{opacity:1}.shareBar__1LkDEJbHxX.subbuzz__2iAU-v551S{display:flex}.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu,.shareBar__1LkDEJbHxX.pagelevelSticky__2JhDecN-vh{justify-content:flex-end;width:auto;height:30px;flex:1;display:flex}@media (min-width:500px){.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu.large__FujNh1GueW,.shareBar__1LkDEJbHxX.pagelevelSticky__2JhDecN-vh.large__FujNh1GueW{height:42px}}.shareBar__1LkDEJbHxX li{display:inline-block}.shareBar__1LkDEJbHxX.subbuzz__2iAU-v551S:first-child{height:40px;margin-top:.5rem;padding-left:0}.shareBar__1LkDEJbHxX.pagelevelList__428i6fskv5 li{display:block}.shareButton__OK7kWx2ECc.pagelevel__iT1zf_Mmzu.top_share_bar__1n8-atTmu7{margin-left:10px;margin-right:.25rem}.shareButton__OK7kWx2ECc.pagelevel__iT1zf_Mmzu.bottom_share_bar__2qB_WODjDB{margin-right:13px}.heading__Fach8WFXS_+.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu{justify-content:flex-start}.shareButton__OK7kWx2ECc.subbuzz__2iAU-v551S{margin-right:.5rem}.shareBarContainer__3jThu8f2ls{position:absolute;right:15px;top:8px}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u{padding:0 8px;background:#e60019;display:flex;align-items:center;justify-content:center;border:none;border-radius:20px;height:40px;z-index:200;opacity:0;transition:opacity .3s}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:hover{cursor:pointer;background:#b30013}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:hover a:first-child span{color:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:active{background:#9a0011}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child span{color:#fff;margin:0 10px;font-size:14px;font-weight:600}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child span:hover{color:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child svg:first-child{fill:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u.show__14Sg3KhPi5{opacity:1}.tooltipContainer__2CWb6115CM{width:100%;height:100%;position:absolute;bottom:0;left:0}.messageWrapper__3-OOA-TNDK{width:100%;border:1px solid #68af15;padding:4px 16px;border-radius:3px;margin:16px 0;min-width:280px;overflow:hidden}@media (min-width:52rem){.messageWrapper__3-OOA-TNDK{display:inline-block;width:auto}}.messageWrapper__3-OOA-TNDK .messageSvg__30mLWhm7a5{width:16px;float:left;display:inline-block;margin-right:8px;vertical-align:bottom;position:relative;top:2px}.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7{float:left;display:inline-block;color:#68af15;font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:16px;line-height:18px;padding:0 0 4px;position:relative;top:2px;width:90%}@media (min-width:52rem){.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7{width:auto}}.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7 a{color:#68af15;text-decoration:underline}.dialogWindow__1uVNzOmiQu{position:fixed;overflow:hidden;z-index:999;width:100%;height:394px;bottom:0;left:0;border-radius:0}@media (min-width:52rem){.dialogWindow__1uVNzOmiQu{width:520px;top:50%;left:50%;transform:translate(-50%,-50%);border-radius:3px}}.dialog___SVAjxp_h_{background:#fff;position:relative}@media (min-width:52rem){.dialog___SVAjxp_h_{border-radius:3px}}.productPicker__hh4CvXDIr0{position:relative;width:100%;height:394px}@media (min-width:52rem){.productPicker__hh4CvXDIr0{height:312px;width:520px}}.headerText__2BXSXdVDzr{font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:16px;line-height:20px;color:#222;padding:12px 20px;border-bottom:1px solid #d7d7d7;margin-bottom:24px}.productsWrapper__CoEtE5sDXg{overflow-x:scroll;scrollbar-width:none;-ms-overflow-style:none;width:100%;height:394px;padding-bottom:176px}.productsWrapper__CoEtE5sDXg::-webkit-scrollbar{width:0;background:rgba(0,0,0,0)}@media (min-width:52rem){.productsWrapper__CoEtE5sDXg{width:520px;height:248px;padding-bottom:0}}.productWrapper__29wP88oACJ{display:flex;color:#222;font-family:Proxima Nova;font-style:normal;padding:2px 24px 24px}.productWrapper__29wP88oACJ:last-of-type{padding-bottom:72px}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5{margin-left:12px}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5 .image__hlOM1tjEhS{border:1px solid #d7d7d7;width:112px;height:112px;border-radius:3px;object-fit:cover}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5 .imageError__13v2TqeP66{opacity:.3}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP{margin-left:12px;max-width:310px;overflow:hidden}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP .productTitle__3c1uiVhuD_{margin-top:4px;text-transform:capitalize;display:block;margin-bottom:12px;font-weight:700;font-size:14px;line-height:16px}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP .productDesc__2eCHTRoZQv{font-size:16px;line-height:20px}.buttonWrapper__3ieYpB0O3j{bottom:0;position:absolute;background:linear-gradient(180deg,hsla(0,0%,100%,.85),hsla(0,0%,100%,.75));padding:16px 20px;width:100%;height:132px}@media (min-width:52rem){.buttonWrapper__3ieYpB0O3j{padding:16px 24px;width:520px;height:76px}}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7{background-color:#fff;color:#0f65ef;border:1px solid #0f65ef}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7:hover{color:#093c8f;border-color:#093c8f;transition:background-color .15s ease 0s}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7:active{color:#093c8f;border-color:#041e47}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F{float:right;background-color:#0f65ef;color:#fff;border:1px solid rgba(0,0,0,0);margin-bottom:12px}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F:hover{background-color:#093c8f;transition:background-color .15s ease 0s}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F:active{background-color:#041e47}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F.disabled__2EjXHmdwaJ,.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F.disabled__2EjXHmdwaJ:hover{background-color:#b7d1fa}.checkbox__19y9pVx17P{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__19y9pVx17P:disabled+.label__1-iz5as5wc{opacity:.3}.checkbox__19y9pVx17P:checked+.label__1-iz5as5wc:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.8rem}@media (min-width:52rem){.checkbox__19y9pVx17P:checked+.label__1-iz5as5wc:before{background-size:.5rem}}.checkbox__19y9pVx17P:focus+.label__1-iz5as5wc:before{box-shadow:0 0 0 2px #7a9ff3}.checkbox__19y9pVx17P+.label__1-iz5as5wc{cursor:pointer;display:block;position:relative;padding-left:2.5rem;font-size:16px;line-height:24px}@media (min-width:52rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc{line-height:17px;font-size:14px;padding-left:1.6rem;letter-spacing:-.2px}}.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:24px;height:24px;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #222;border-radius:3px}@media (min-width:40rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{top:0}}@media (min-width:52rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{width:16px;height:16px}}.button__27NGkhbsQa{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 16px;font-size:1.125rem;font-weight:700;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:100%;transition:background-color .1s ease 0s}@media (min-width:52rem){.button__27NGkhbsQa{width:auto}}.overlay__2UPrjR8WcE{position:fixed;width:100%;height:100%;top:0;left:0;right:0;bottom:0;background-color:rgba(0,0,0,.2);z-index:9}.button__3mv4k7gt2O{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 24px 8px 16px;font-size:14px;font-weight:700;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:auto;transition:background-color .1s ease 0s;border:1px solid rgba(0,0,0,0)}.button__3mv4k7gt2O:focus{outline:0}@media (min-width:52rem){.button__3mv4k7gt2O{padding:8px 24px 8px 16px}}.wishButton__3TOGVbsy91{margin-top:16px;background-color:#f43192;color:#fff}@media (min-width:52rem){.wishButton__3TOGVbsy91:hover{background-color:#b50a5f;transition:background-color .15s ease 0s}}.isSelected__23aXtE4nsm .emptyHeart__7rdfsei3Q5{display:none}.isSelected__23aXtE4nsm .heart__3itx0cFrN1{display:inline-block}.isSelected__23aXtE4nsm .clearHeart__2lv4RXIB7Q{display:inline-block;opacity:0}.animate__h9Sn7lxwsx .heart__3itx0cFrN1{transform-origin:center;animation:heart__size__1__MptptWM .6s ease-out}.animate__h9Sn7lxwsx .clearHeart__2lv4RXIB7Q{animation:heart__clear__34xOcz2QwJ .6s ease-out}.heartWrapper__guEeFH8lM5{height:21px;display:inline-block;float:left;position:relative}.wordWrapper__3MgE84r3P3{padding-left:5px;width:80%;float:right;display:inline-block;position:relative;top:2px}.isSelected__23aXtE4nsm .wordWrapper__3MgE84r3P3{width:85%}.heart__3itx0cFrN1{display:none;fill:#fff}.clearHeart__2lv4RXIB7Q{display:none;position:absolute;left:-7px;top:-8px}.emptyHeart__7rdfsei3Q5,.heart__3itx0cFrN1{height:16px;width:16px}@keyframes heart__size__1__MptptWM{0%{transform:scale(1)}33%{transform:scale(.8)}66%{transform:scale(1.2)}to{transform:scale(1)}}@keyframes heart__clear__34xOcz2QwJ{0%,50%{opacity:0}51%{opacity:.1}66%{opacity:.8}to{opacity:0}}.tooltip__vdz04VzJDF{position:absolute;z-index:99;padding:20px;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border-radius:3px;width:311px;transform:translate(-50%);margin-top:15px;background-color:#fff;border:1px solid rgba(0,0,0,.1);left:-80px;top:32px}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{content:" ";display:block;position:absolute;width:0;height:0;left:50%;bottom:100%}.tooltip__vdz04VzJDF:before{border:10px solid rgba(0,0,0,0);border-bottom-color:#ddd;margin-left:10px}.tooltip__vdz04VzJDF:after{border:9px solid rgba(0,0,0,0);border-bottom-color:#fff;margin-left:11px}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{left:75%}@media (min-width:52rem){.tooltip__vdz04VzJDF{top:42px;left:auto}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{left:50%}}.tooltipText__2v1LfjO8vw{color:#222;width:100%;position:relative;white-space:normal;text-align:left;font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:20px}.okButton__2s4X8gl84V{float:right;background-color:#0f65ef;color:#fff;border:1px solid rgba(0,0,0,0);margin-top:24px;width:auto}.okButton__2s4X8gl84V:hover{background-color:#093c8f;transition:background-color .15s ease 0s}.okButton__2s4X8gl84V:active{background-color:#041e47}@media (min-width:52rem){.subbuzz-image--align-left,.subbuzz-image--align-right,.subbuzz-image--outset-left,.subbuzz-image--outset-right{margin-bottom:1rem}.subbuzz-image--align-left,.subbuzz-image--outset-left{float:left;padding-right:1.5rem}.subbuzz-image--align-right,.subbuzz-image--outset-right{float:right;padding-left:1.5rem}.subbuzz-image--align-left,.subbuzz-image--align-right{width:50%}.subbuzz-image--outset-left,.subbuzz-image--outset-right{width:66.66667%}}.subbuzz.photo-set,.subbuzz__media{position:relative}.subbuzz__media-container>picture>img,.subbuzz__media-image{border-radius:4px}@media (min-width:40rem){.subbuzz__media-container>picture>img,.subbuzz__media-image{border-radius:8px}}.photo-set__media img{border-radius:0;object-fit:cover}.subbuzz-photoset__container{overflow:hidden;border-radius:10px}@media (min-width:40rem){.subbuzz-photoset__container{border-radius:14px}}.media__credit{color:#222;margin-top:.5rem}.media__credit a{color:#222}.media__credit a:focus,.media__credit a:hover{color:#0f65ef}.buzz--long .subbuzz-image .js-inline-share-bar{order:3}.buzz--long .subbuzz-image .subbuzz__description p{font-size:.75rem!important}.buzz--long .subbuzz-image .subbuzz__description{order:1}.buzz--long .subbuzz-image .subbuzz__description p{margin-bottom:.25rem!important}.buzz--long .subbuzz-image .subbuzz__attribution{margin-bottom:.5rem;order:2}@media (min-width:52rem){.buzz--long .subbuzz-image--outset-both .js-inline-share-bar{margin-left:-16px}}.subbuzz-tweet__tweet{border-radius:4px}.subbuzz-tweet__display-name{font-size:1.375rem;text-decoration:none}.subbuzz-tweet__created-at,.subbuzz-tweet__username{font-size:.75rem;font-style:italic;text-decoration:none}.subbuzz-tweet__text{margin:.5rem 0}.subbuz-tweet__meta{margin-top:1rem}.instagram__container{border-radius:4px!important;border:2px solid #f4f4f4!important;border-bottom:0!important;box-shadow:0 2px 0 0 #f4f4f4!important}@media (min-width:40rem){.instagram__container{border-radius:8px!important;border:4px solid #f4f4f4!important;border-bottom:0!important;box-shadow:0 4px 0 0 #f4f4f4!important}}[fb-xfbml-state=rendered]+.js-placeholder{display:none}.subbuzz__caption{margin-top:.5rem}.subbuzz a{text-decoration:none}.subbuzz p{line-height:1.5;margin-bottom:1.5rem}.subbuzz blockquote{line-height:1.375;margin:1.5rem 0;display:block;width:auto;padding:1rem;background:#f4f4f4;border-left:5px solid #aaa;overflow:hidden}.subbuzz blockquote p:last-child{margin-bottom:0}.subbuzz-text ol:not(.bfp-related-links__list){padding-left:2rem;list-style:decimal}.subbuzz-text ul:not(.bfp-related-links__list){padding-left:2rem;list-style:unset}.subbuzz-text h2:not(.subbuzz__title):not(.ad__disclosure--ex){margin:2.5rem 0 1rem}html[lang=ja] main h2.subbuzz__title span{line-height:1.5}.subbuzz .subbuzz__description{font-size:1.125rem;line-height:1.2}html[lang=ja] main .subbuzz .subbuzz__description{font-size:1rem;line-height:1.2}.subbuzz .subbuzz__description p{line-height:1.44}html[lang=ja] main .subbuzz .subbuzz__description p{line-height:1.5}.shoppable-photoset-product a:not(.link-gray),.subbuzz-pullquote a,.subbuzz-text a,.subbuzz__description a,.subbuzz__title a{color:#0f65ef}.shoppable-photoset-product a:not(.link-gray):focus,.shoppable-photoset-product a:not(.link-gray):hover,.subbuzz-pullquote a:focus,.subbuzz-pullquote a:hover,.subbuzz-text a:focus,.subbuzz-text a:hover,.subbuzz__description a:focus,.subbuzz__description a:hover,.subbuzz__title a:focus,.subbuzz__title a:hover{color:#093c8f;transition:color .15s ease 0s}.subbuzz-link{font-size:1.375rem;line-height:1.27}html[lang=ja] main .subbuzz-link{font-size:1.25rem;line-height:1.27}.subbuzz__link-name{color:#222}.subbuzz .subbuzz-quiz__result-card ul.subbuzz-quiz__share-container{padding-left:1rem}@media (min-width:40rem){.subbuzz .subbuzz-quiz__result-card ul.subbuzz-quiz__share-container{padding-left:0}}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake p{font-size:.875rem;line-height:1.3;margin-bottom:0}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake{padding-top:1rem}@media (min-width:40rem){.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake{padding-top:0}}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__result-buzz-title{padding-top:2px}.subbuzz-quiz__answer-body.xs-flex-align-center{align-items:center}.quiz-results-carousel{margin-right:-1px;margin-left:-1px}.quiz-results-carousel .result-carousel__item--description{padding-bottom:45px}.quiz-results-carousel .results-carousel__pagination{margin-top:1rem}.quiz-results-carousel .card{border:none}.compare-results .compare-results__graph{width:41.66667%}.js-share-button--copy{position:relative}@media (min-width:40rem){.result-card .result-card__gradient-card .result-card__result-img-container,.result-card .result-card__gradient-card .result-card__result-img-container img{min-height:14.6rem}}@media (max-width:40rem){.result-card .result-card__gradient-card .result-card__result-img-container{max-height:14.6rem}}.result-card .result-card__gradient-card .button--small{border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.quiz-v3-question .tile{max-width:600px}}@media (min-width:52rem){.quiz-v3-question .tile--text{transform:scale(.8)}}.quiz-v3-answer .tile--text--proxima-xbold,.quiz-v3-question .tile--text--proxima-xbold{font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-weight:800}.featured-post .subbuzz p{font-size:1.125rem;line-height:1.2;line-height:1.375}html[lang=ja] main .featured-post .subbuzz p{font-size:1rem;line-height:1.2;line-height:1.5}.featured-post .subbuzz ul:not(.bfp-related-links__list){padding-left:2rem;list-style:unset}.featured-post .subbuzz .js-inline-share-bar ul:not(.bfp-related-links__list){padding-left:0}.featured-post .subbuzz.subbuzz-pullquote{margin-bottom:2rem}.featured-post .subbuzz.subbuzz-text p{margin-bottom:1.5rem}.shoppable-photoset-product img{max-width:100%;height:auto}.subbuzz.subbuzz-bfp .iq-container{overflow-x:visible}.subbuzz-bfp .bfp-related-links .bfp-related-links__title{font-weight:700;font-size:1.625rem;letter-spacing:-.8px;line-height:1.2;margin-bottom:1.5rem;text-transform:capitalize}@media (min-width:40rem){.subbuzz-bfp .bfp-related-links .bfp-related-links__title{font-size:2rem;line-height:1.2815}}.subbuzz-bfp .bfp-related-links .bfp-related-links__title:before{content:"";background:linear-gradient(90deg,#e40c78,#6645dd);border-radius:4px;display:block;height:8px;margin-bottom:.5rem;width:72px}.subbuzz-bfp .bfp-related-links .bfp-related-links__list-item{list-style:none;margin-bottom:2rem}.subbuzz-bfp .bfp-related-links .bfp-related-links__author{font-weight:700;line-height:1.375}.subbuzz-bfp .bfp-related-links .bfp-related-links__link{font-weight:700;font-size:1.125rem;line-height:1.2;margin-bottom:.5rem}@media (min-width:40rem){.subbuzz-bfp .bfp-related-links .bfp-related-links__link{font-size:1.375rem;line-height:1.275}}.subbuzz-bfp .bfp-related-links .bfp-related-links__link:focus,.subbuzz-bfp .bfp-related-links .bfp-related-links__link:hover{color:#0f65ef;text-decoration:none}.subbuzz-bfp .bfp-related-links .bfp-related-links__meta{color:#222}.subbuzz-bfp .bfp-related-links .bfp-related-links__meta [aria-hidden=true]{font-weight:700;font-size:1.2em;display:inline-block;padding:0 5px}.featured-post .buzz__update .buzz-timestamp{display:flex;margin-bottom:1rem}@media (min-width:52rem){.featured-post .buzz__update .buzz-timestamp{margin-left:-1.5rem;margin-bottom:1rem}}.featured-post .buzz__update .buzz-timestamp__time{margin-left:4px}.featured-post .buzz__update .timestamp__icon-time svg{display:inline;fill:#757575;height:16px;width:16px}.featured-post .buzz__update .subbuzz.subbuzz-text p{font-size:1.125rem;line-height:1.2;line-height:1.4}html[lang=ja] main .featured-post .buzz__update .subbuzz.subbuzz-text p{font-size:1rem;line-height:1.2}.buzz__update-title{border-bottom:1px solid #d7d7d7;margin-bottom:1.5rem;padding-bottom:1rem}.subbuzz{margin-bottom:3rem}.subbuzz h2{font-size:1.125rem;line-height:1.2;font-weight:700}html[lang=ja] main .subbuzz h2{font-size:1rem;line-height:1.2}@media (min-width:40rem){.subbuzz h2{font-size:1.375rem;line-height:1.27}html[lang=ja] main .subbuzz h2{font-size:1.25rem;line-height:1.27}}.subbuzz h3{font-size:1rem;font-weight:700;margin-bottom:.25em}@media (min-width:40rem){.subbuzz h3{font-size:1.125rem;line-height:1.2}html[lang=ja] main .subbuzz h3{font-size:1rem;line-height:1.2}}.subbuzz .Ad .ad__disclosure--ex{font-size:.75rem}.trendingProducts__2L3zJTOIgQ{background:#fff;margin:2rem calc(50% - 50vw);padding:1rem 1rem 0;position:relative}.trendingProducts__2L3zJTOIgQ:after{background:linear-gradient(90deg,#e40c78 0,#6645dd);border-radius:0;bottom:-2px;content:"";left:0;position:absolute;right:0;top:-2px;z-index:-1}.trendingProducts__2L3zJTOIgQ a{font-weight:700;text-decoration:none;color:#0f65ef}.trendingProducts__2L3zJTOIgQ a:hover,.trendingProducts__2L3zJTOIgQ a:hover svg{color:#093c8f;fill:#093c8f;transition:color .15s ease 0s,fill .15s ease 0s}@media (min-width:64rem){.trendingProducts__2L3zJTOIgQ{margin-left:0;margin-right:0;padding:1.5rem 1.5rem 0}.trendingProducts__2L3zJTOIgQ:after{border-radius:3px;left:-2px;right:-2px}}.contentWrapper__URHospXLrV{max-width:600px;margin-left:auto;margin-right:auto}.trendingProduct__2fcu4-3mir{margin-bottom:1.5rem}.sponsoredItem__10lLKoqNoh{list-style-type:circle;color:#3594cd}.title__fyhpgrnJvD{align-items:center;display:flex;margin-bottom:1rem}.title__fyhpgrnJvD:before{content:"\1F3C6";font-size:.875rem;margin-left:-2px;padding-right:.25rem;vertical-align:middle}@media (min-width:64rem){.title__fyhpgrnJvD:before{font-size:1.125rem}}.productList__VakTjmMkoh{list-style:disc;margin-left:1rem}.productList__VakTjmMkoh:after{content:" ";display:table}.seeInList__hIEB6R3u-L{margin-top:.25rem}.caret__3Rtr7FhfDv{fill:#0f65ef;height:.75rem;margin-left:.25rem;vertical-align:middle;width:.75rem}.trending-product-label{margin-bottom:1rem;font-size:1rem;border:0;border-bottom:2px solid;border-image:linear-gradient(90deg,#e40c78,#6645dd);border-image-slice:1;display:inline-block;line-height:1.5;font-weight:600}@media (min-width:52rem){.trending-product-label{font-size:1.125rem;line-height:1.2}html[lang=ja] main .trending-product-label{font-size:1rem;line-height:1.2}}.trending-product-label [aria-hidden=true]{font-size:14px;vertical-align:middle}.actionBar__2QSgZuvpTs{display:flex;justify-content:space-between;align-items:flex-start}.featured-post .subbuzz{line-height:26px}.featured-post .subbuzz p{margin-bottom:1rem}.main__1WaNFImq55{padding:16px;position:relative}@media (min-width:40rem){.main__1WaNFImq55{padding:0}}.article__3UhoxMZjIh{display:flex;justify-content:center;width:100%}@media (min-width:64rem){.article__3UhoxMZjIh.default__1Wrp0h0Ou2{justify-content:flex-start;max-width:1000px;margin:0 auto}}@media (min-width:1100px){.article__3UhoxMZjIh.default__1Wrp0h0Ou2{max-width:calc(950px + 5.5rem)}}.content__rBlqJK1v6T{max-width:600px;width:100%}.comments__3zKlMrESV4{margin-top:2rem}.shareBottom__2wlG4S50-n{display:none}@media (min-width:500px){.shareBottom__2wlG4S50-n{display:block;margin:1rem 0 4rem}}.shareTop__3wO4DsSeyw{display:none}@media (min-width:500px){.shareTop__3wO4DsSeyw{display:block;margin:0 0 2rem}}.hideShares__s62FHRYlwi .subbuzz .js-inline-share-bar{display:none}.featureImageWrapper__1y6Wa-Y6RC{position:relative}.featureImagePlaceholder__j3VACt3j2v{position:relative;margin:-16px -16px 1rem}@media (min-width:40rem){.featureImagePlaceholder__j3VACt3j2v{margin:0}}.featureImagePlaceholder__j3VACt3j2v:not(:empty){padding-bottom:0!important}.featureImageShadow__29IPm_6nxZ:after{content:"";background:linear-gradient(0deg,rgba(0,0,0,.65) 0,rgba(0,0,0,0));position:absolute;left:0;top:0;width:100%;height:100%;z-index:1;display:none}@media (min-width:40rem){.featureImageShadow__29IPm_6nxZ:after{display:block}}.featureText__2orFq-Z1YD{position:absolute;z-index:4;width:100%;height:100%;left:0;top:0;display:none}@media (min-width:40rem){.featureText__2orFq-Z1YD{display:block}}.featureTextInner__3utJJy132L{color:#fff;bottom:0;position:absolute;left:50%;width:100%;max-width:600px;text-align:left;z-index:2;transform:translate3d(-50%,0,0);padding-bottom:2rem}.featureTextInner__3utJJy132L .title__1IUxKx-D_Q{font-size:2.5rem;line-height:1.025;line-height:1.05;font-weight:700;margin-bottom:.625rem}html[lang=ja] main .featureTextInner__3utJJy132L .title__1IUxKx-D_Q{font-size:1.5rem;line-height:1.025}.featureTextInner__3utJJy132L .description__1hBjUZQuEg{font-size:1.125rem;line-height:1.2}html[lang=ja] main .featureTextInner__3utJJy132L .description__1hBjUZQuEg{font-size:1rem;line-height:1.2}.featureImage__2kYOI7-zdW{height:0;position:relative;z-index:3}.featureImage__2kYOI7-zdW .image__2b96uIle_g,.featureImage__2kYOI7-zdW .video__2ShwZHocYy,.featureImage__2kYOI7-zdW img,.featureImage__2kYOI7-zdW video{position:absolute;object-fit:cover;width:100%;height:100%}.caption__3uHLNquuFi{margin:0 1rem;color:#757575;font-size:.75rem;font-style:italic;position:absolute;bottom:-1.5rem;left:0;width:100%;z-index:5}@media (min-width:40rem){.caption__3uHLNquuFi{margin:0;top:12px;right:12px;bottom:auto;left:auto;background:rgba(0,0,0,.5);padding:6px;width:auto}}.container__1lh0qsehqA{margin-bottom:1rem}.text__2dEPE8Oj2V{font-size:16px;font-weight:700;font-style:italic;line-height:1.5}@media (min-width:64rem){.text__2dEPE8Oj2V{font-size:17px}}.contentBorder__2X5J_wVf-L{padding:1px;background:rgba(0,0,0,.2);border-radius:3px;margin-bottom:32px}.contentBorder__2X5J_wVf-L.isDisabled__2_DCQTT6Kr{background:linear-gradient(0deg,#fff,rgba(0,0,0,.2))}.contentWrapper__S0Cji6EGiS{font-family:Proxima Nova;font-style:normal;background:#fcfcfc;position:relative;overflow:hidden;padding:24px 16px;box-sizing:border-box;border-radius:3px}@media (min-width:52rem){.contentWrapper__S0Cji6EGiS{padding:24px 32px}}.userReviewsTitle__13HylZPqyx{letter-spacing:0}.headerTitle__2SI8yTuK2i{font-weight:700;font-size:22px;line-height:28px;margin-bottom:8px}.headerTitle__2SI8yTuK2i .signIn__13zzPXH7JD{color:#0f65ef;text-decoration:none;font-weight:700}.headerDesc__14L4Zcvaem{font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:24px}@media (min-width:52rem){.headerDesc__14L4Zcvaem{font-size:14px}}.sectionTitle__2JQuYEnBmb{letter-spacing:0}.section__qbuJubPsSn{margin-bottom:24px;clear:both;overflow:hidden}@media (min-width:52rem){.section__qbuJubPsSn{margin-bottom:32px}}.legalSection__peYGMOYAYe{margin-bottom:16px}.imageSection__i9_DdQCsk-{margin-bottom:40px}.imageSection__i9_DdQCsk- .imagesWrapper__Qym_hk38lC{margin-top:24px}.button__34KmsdMGpF{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 16px;font-size:1.125rem;font-weight:700;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:100%;transition:background-color .1s ease 0s}@media (min-width:52rem){.button__34KmsdMGpF{width:auto}}.submitButton__KXMsQ0KK2d{background-color:#e50e78;color:#fff;border:1px solid rgba(0,0,0,0)}.submitButton__KXMsQ0KK2d:hover{background-color:#850846;transition:background-color .15s ease 0s}.submitButton__KXMsQ0KK2d:active{background-color:#3d0420}.submitButton__KXMsQ0KK2d:disabled{opacity:.3}.submitButton__KXMsQ0KK2d:disabled:hover{background-color:#e50e78}.signInButton__1eQg50oa1B{margin:0;background-color:#07e;color:#fff;border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.signInButton__1eQg50oa1B{margin-left:25%}}.signInButton__1eQg50oa1B:hover{background-color:#048;transition:background-color .15s ease 0s}.signInButton__1eQg50oa1B:active{background-color:#001e3c}.signInButton__1eQg50oa1B:disabled{opacity:.3}.signInButton__1eQg50oa1B:disabled:hover{background-color:#07e}.successMessage__1oUWuLfF_m{font-size:1.375rem;font-weight:700;line-height:1.25}.anotherReviewButton__13UqVrb0K6{width:190px;font-size:1rem;line-height:1.2;margin-top:2rem}.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textDescription__3YM0Nzt7Ou,.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textRequired__-RXYO_Puz0,.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textSectionTitle__39RFc61VDy{color:#757575}.labelSection__2fw8XAYbYI .sectionTitleWrapper__2S2HKALdeu{margin-bottom:4px}.labelSection__2fw8XAYbYI .textRequired__-RXYO_Puz0,.labelSection__2fw8XAYbYI .textSectionTitle__39RFc61VDy{margin-bottom:4px;font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:18px;line-height:22px}.labelSection__2fw8XAYbYI .textRequired__-RXYO_Puz0{color:red;margin-left:5px}.labelSection__2fw8XAYbYI .textDescription__3YM0Nzt7Ou{display:block;font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:24px}@media (min-width:52rem){.labelSection__2fw8XAYbYI .textDescription__3YM0Nzt7Ou{font-size:12px}}.labelSection__2fw8XAYbYI .urLink__1eZWEamaL7{color:#0f65ef;text-decoration:none;font-weight:700}.imageButtonWrapper__2XgvpcI4tA{margin-top:16px}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee{display:inline-block;border:1px solid #0f65ef;box-sizing:border-box;border-radius:3px;cursor:pointer;padding:8px 16px;text-align:center;font-size:16px;line-height:17px;color:#0f65ef;width:100%}@media (min-width:52rem){.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee{width:auto;font-size:14px;padding:5px 10px}}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee:not(.buttonDisabled__2x-X9pNjMX):hover{color:#fff;background:#0f65ef}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee.buttonDisabled__2x-X9pNjMX{opacity:.3}.imageButtonWrapper__2XgvpcI4tA .addLabel__1mjT_OxQF1{margin:10px 0 0;font-size:12px;color:#757575;display:block}@media (min-width:52rem){.imageButtonWrapper__2XgvpcI4tA .addLabel__1mjT_OxQF1{margin:0 0 0 8px;display:inline-block}}.wrapper__2y-gJLplxP{width:140px;height:140px;display:inline-block;position:relative}.wrapper__2y-gJLplxP.even__39ADf6Uc0r{margin-right:19px}.wrapper__2y-gJLplxP.odd__26yXKHAUbe{margin-right:0}.wrapper__2y-gJLplxP:nth-child(3),.wrapper__2y-gJLplxP:nth-child(4){margin-top:16px}@media (min-width:52rem){.wrapper__2y-gJLplxP{width:112px;height:112px;margin-right:16px}.wrapper__2y-gJLplxP.even__39ADf6Uc0r,.wrapper__2y-gJLplxP.odd__26yXKHAUbe{margin-right:16px}.wrapper__2y-gJLplxP:last-child{margin-right:0}.wrapper__2y-gJLplxP:nth-child(3),.wrapper__2y-gJLplxP:nth-child(4){margin-top:0}}.wrapper__2y-gJLplxP .image__2mowbQcrGq{width:140px;height:140px;object-fit:cover;border-radius:3px;border:1px solid #f4f4f4;box-sizing:border-box}@media (min-width:52rem){.wrapper__2y-gJLplxP .image__2mowbQcrGq{width:112px;height:112px}}.wrapper__2y-gJLplxP .fileName__2pHWB7WADV{color:#222;font-size:14px;position:relative;top:-6px}@media (min-width:52rem){.wrapper__2y-gJLplxP .fileName__2pHWB7WADV{font-size:10px}}.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s{cursor:pointer;position:absolute;border:none;background:rgba(0,0,0,0);top:-13px;right:-20px}.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s .closeIcon__3AEmK-EMG2{width:36px;height:36px;fill:red}@media (min-width:52rem){.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s .closeIcon__3AEmK-EMG2{width:28px;height:28px}}.descWarpper__JkXjYMlsPN{overflow:hidden;clear:both}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq{font-family:Proxima Nova;border:1px solid rgba(0,0,0,.1);border-radius:3px;padding:10px 12px;font-size:16px;line-height:1.3;resize:none;outline:none;width:100%;color:#222;-webkit-appearance:none;min-height:60px}@media (min-width:52rem){.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq{font-size:14px;min-height:40px}}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx{color:#aaa}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx::-webkit-input-placeholder{color:#aaa}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx::-moz-placeholder{color:#aaa;opacity:1}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq::-webkit-input-placeholder{color:#757575}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq::-moz-placeholder{color:#757575;opacity:1}.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN{float:right;font-size:12px;font-style:italic}@media (min-width:52rem){.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN{font-size:10px}}.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN.textCharsLeftWarn__2a5Npza1p_{color:red}.select__1sT33f2MH4{-moz-appearance:none;-webkit-appearance:none;background:#fff;border:1px solid rgba(0,0,0,.1);background-image:url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38"><path d="M19 29.3L2.6 12.9c-.8-.8-.8-2 0-2.8.8-.8 2-.8 2.8 0L19 23.7l13.6-13.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L19 29.3z"/></svg>');background-repeat:no-repeat;background-position:calc(100% - 1rem) 50%;background-size:.6875rem;border-radius:3px;font-family:inherit;font-size:14px;padding:.3125rem 2rem .3125rem .625rem;color:#222;width:100%}@media (min-width:52rem){.select__1sT33f2MH4{width:auto}}.select__1sT33f2MH4:disabled{color:#aaa;background-color:#ebebe4}.select__1sT33f2MH4:focus{outline:none}.select__1sT33f2MH4.select__1sT33f2MH4::-ms-expand{display:none}.inputText__gsXAecoZkP{border:1px solid rgba(0,0,0,.1);border-radius:3px;padding:10px 12px;font-size:16px;line-height:1.6;resize:none;outline:none;width:100%;color:#222;font-family:Proxima Nova;-webkit-appearance:none}@media (min-width:52rem){.inputText__gsXAecoZkP{font-size:14px}}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk{color:#aaa}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk::-webkit-input-placeholder{color:#aaa}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk::-moz-placeholder{color:#aaa;opacity:1}.inputText__gsXAecoZkP::-webkit-input-placeholder{color:#757575}.inputText__gsXAecoZkP::-moz-placeholder{color:#757575;opacity:1}.label__dQ1mGHfZYb{cursor:pointer;display:block;position:relative;padding-left:2.5rem;font-size:16px;line-height:24px}@media (min-width:52rem){.label__dQ1mGHfZYb{line-height:17px;font-size:14px;padding-left:1.6rem;letter-spacing:-.2px}}.label__dQ1mGHfZYb:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:24px;height:24px;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #222;border-radius:3px}@media (min-width:40rem){.label__dQ1mGHfZYb:before{top:0}}@media (min-width:52rem){.label__dQ1mGHfZYb:before{width:16px;height:16px}}.checkbox__3XFa_XtLlE{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__3XFa_XtLlE:disabled+.label__dQ1mGHfZYb{opacity:.3}.checkbox__3XFa_XtLlE:checked+.label__dQ1mGHfZYb:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.8rem}@media (min-width:52rem){.checkbox__3XFa_XtLlE:checked+.label__dQ1mGHfZYb:before{background-size:.5rem}}.checkbox__3XFa_XtLlE:focus+.label__dQ1mGHfZYb:before{box-shadow:0 0 0 2px #7a9ff3}.anchorTag__32XY7v-zKt{color:#0f65ef;text-decoration:none;font-weight:700}.errorWrapper__2zw5Vf6ndZ{background:#fdebe9;padding:8px 16px;margin-top:8px;border-radius:3px;position:relative}.errorWrapper__2zw5Vf6ndZ .dismissButton__3jWWpvKe3c{position:absolute;right:8px;cursor:pointer}.errorWrapper__2zw5Vf6ndZ.errorImage__PNQGv0uf9Y{margin-top:10px}.errorWrapper__2zw5Vf6ndZ .errorText__3UuGXu-Bca{font-size:14px;color:#ef3222}.errorWrapper__2zw5Vf6ndZ .errorSVG__35ZstXay6M{margin:0 10px 0 0;position:relative;top:2px}.loaderWrapper__3jj88EpzVE{text-align:center}.loaderText__94lXnTTbWK{font-size:.875rem;line-height:1.25;color:#222}.formBorder__3OszgYhSwl{stroke-dasharray:1000;stroke-dashoffset:1000;animation:border-draw__AfytZmY5-l 2.5s ease-in infinite forwards}.pageFlip__15iVSWg4vK{stroke-dasharray:120;stroke-dashoffset:120;animation:flip-draw__1y7pQ103zj 2.5s ease-in infinite forwards;animation-delay:.5s}.bullet1__2MTU4wdk4O,.bullet2__2NnJ4Tppz5,.bullet3__2p9D3VxAOW{stroke-dasharray:14;stroke-dashoffset:14;animation:bullet__7PNZ8HB2jn 2.5s ease-out infinite backwards}.point1__RWkYXO4wT_,.point2__2WKvdnE2O4,.point3__vqUotxpHT9{stroke-dasharray:150;stroke-dashoffset:150;animation:point__1Wv77_koT0 2.5s ease-in infinite backwards}.bullet1__2MTU4wdk4O{animation-delay:.5s}.point1__RWkYXO4wT_{animation-delay:.9s}.bullet2__2NnJ4Tppz5{animation-delay:1s}.point2__2WKvdnE2O4{animation-delay:1.4s}.bullet3__2p9D3VxAOW{animation-delay:1.5s}.point3__vqUotxpHT9{animation-delay:1.9s}@keyframes border-draw__AfytZmY5-l{to{stroke-dashoffset:0}}@keyframes bullet__7PNZ8HB2jn{0%{stroke-opacity:0}20%{stroke-opacity:1;stroke-dashoffset:0}to{stroke-opacity:1;stroke-dashoffset:0}}@keyframes point__1Wv77_koT0{20%{stroke-dashoffset:0}to{stroke-dashoffset:0}}@keyframes flip__JSkOR7Hd4z{0%{stroke-dashoffset:120}50%{stroke-dashoffset:0}to{stroke-dashoffset:120}}.sectionTitle__2ECNiaGMVO{font-size:1.625rem;line-height:1.2;font-weight:700;letter-spacing:-.8px;margin-bottom:1rem}html[lang=ja] main .sectionTitle__2ECNiaGMVO{font-size:1.5rem;line-height:1.2}.sectionTitle__2ECNiaGMVO:before{content:"";background:linear-gradient(90deg,#e40c78,#6645dd);border-radius:4px;display:block;height:8px;margin-bottom:.5rem;width:72px}@media (min-width:40rem){.sectionTitle__2ECNiaGMVO{font-size:2rem;line-height:1.28}html[lang=ja] main .sectionTitle__2ECNiaGMVO{font-size:1.5rem;line-height:1.28}}.quizPartyPromo__3RAG9vFLe7{display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;background-color:#fff;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quiz-party-promo-bkgd.e145932f04d366b3991f485ac146b495.png);background-repeat:no-repeat;background-size:cover;background-position:top;border-radius:8px;border:1px solid #d7d7d7;padding:1rem;margin-bottom:1.5rem;-webkit-appearance:none;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7{font-size:1.125rem;padding:1.5rem 130px}}.quizPartyPromo__3RAG9vFLe7 .logo__2GNJhlTJjK{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quiz-party-logo.718cea2e1a4996ae4eefc8c42b3f2b33.png);background-repeat:no-repeat;background-size:cover;width:181px;height:42px;margin:.5rem 0}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7 .logo__2GNJhlTJjK{width:263px;height:61px;margin:1rem 0}}.quizPartyPromo__3RAG9vFLe7 .title__3a2IikcKs4{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.quizPartyPromo__3RAG9vFLe7 p{padding:0 1.75rem;font-weight:700;margin-bottom:1rem}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj{margin-bottom:10px;font-size:14px;line-height:16px;color:#222}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj a{font-weight:700;text-decoration:underline}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj a:visited{color:#222}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj{margin-bottom:12px}}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc{display:block;width:100%;padding:.5rem .875rem;font-size:1rem;line-height:1.5rem;text-decoration:none;text-align:center;color:#fff;background-color:#0f65ef;border:1px solid rgba(0,0,0,0);border-radius:3px;transition:background-color .1s ease 0s}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:focus,.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:hover{background-color:#093c8f}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:active{background-color:#041e47}@media (min-width:40rem){.sponsored__1b8XzKQLYj .logo__2GNJhlTJjK{margin-bottom:10px}}.container__Enie-AsPOZ{position:-webkit-sticky;position:sticky;padding-top:1rem;opacity:1;transition:transform .3s,top .3s,opacity .3s;transform:translateY(0)}.container__Enie-AsPOZ.transitioning__2sWLIByVQE{opacity:0;transform:translateY(-2rem)}.container__3TFvvYiUhb>:not(:last-child){border-bottom:1px solid rgba(0,0,0,.2);padding-bottom:1rem;margin-bottom:1rem}.twitterTimelineFallback__1sX0fJ30iC,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child){align-items:center;background:#55acee;border-radius:3px;color:#fff;display:flex;padding:.5rem;text-decoration:none}.twitterTimelineFallback__1sX0fJ30iC:focus,.twitterTimelineFallback__1sX0fJ30iC:hover,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child):focus,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child):hover{background:#51aaee}.twitterTimelineFallback__1sX0fJ30iC:not(:last-child) svg,.twitterTimelineFallback__1sX0fJ30iC svg{fill:#fff;margin-right:5px}.sidebar__1NohnJgwpb{display:none;flex:0 0 auto;width:300px;margin:.5rem 0}@media (min-width:64rem){.sidebar__1NohnJgwpb{display:block;margin-left:5.5em}}@media (min-width:1100px){.sidebar__1NohnJgwpb{width:350px}}.sidebarBranded__2YEnuvurAT{position:relative}.container__1Qe4_cMCWH{margin-bottom:3rem}.quizLink__2dYcBjyyXK{display:flex;align-items:center;cursor:pointer;text-decoration:none}.quizImg__gxOqkhS1OF{min-width:101px;max-width:101px;min-height:101px;max-height:101px;border-radius:3px;object-fit:cover;object-position:center;margin-right:12px}.quizTitle__3C_u0zXDWG{font-weight:700;font-size:18px;line-height:22px}a.backToTop__9eDH2PTKoc{display:none}@media (min-width:40rem){a.backToTop__9eDH2PTKoc{display:block}}.show-ccpa #CCPAModule{display:block}</style><style>.header__3OBcH{font-family:Proxima Nova,Helvetica,Arial,sans-serif;z-index:500;line-height:1.5}.wrapper__36hPD{margin:0 auto;max-width:71rem;padding:0 1rem;position:relative}@media (min-width:71rem){.wrapper__36hPD{padding:0}}.navIconToggles__1NrKY{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-flow:row nowrap;flex-flow:row nowrap;position:absolute;top:18px;right:0}@media (min-width:790px){.navIconToggles__1NrKY{position:static}}.navIconToggles__1NrKY.hasUserInfo__1jiUA{top:10px}.navLoginLink__yYYrw{font-size:14px;font-weight:590;text-decoration:none;white-space:nowrap;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}
.moreNav__1ShAb{display:none;max-width:100%;position:absolute;left:0;padding:0 1rem;z-index:600;overflow-x:hidden}@media (min-width:500px){.moreNav__1ShAb{overflow-y:auto;width:600px}}@media (min-width:790px){.moreNav__1ShAb.withDestinations__yYcfx{width:100%;max-width:1000px}}@media (min-width:71rem){.moreNav__1ShAb{left:-1rem}}.moreNav__1ShAb.visible__2mRGs{display:block}.moreNavInner__5Q6Op{margin:0 .25rem}@media (min-width:790px){.withDestinations__yYcfx .moreNavInner__5Q6Op{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch}}.section__1MiZw{padding:1rem 0}.sectionTitle__2XZFa{font-size:1rem;font-weight:590;margin-bottom:.5rem}.sectionTitle__2XZFa .link__HCunz{text-decoration:none}.sectionsSection__3nLQk{display:-webkit-box;display:-ms-flexbox;display:flex;width:100%;-webkit-box-flex:0;-ms-flex:0 0 auto;flex:0 0 auto;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-direction:row;flex-direction:row;-ms-flex-wrap:wrap;flex-wrap:wrap;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch;-ms-flex-line-pack:start;align-content:flex-start}@media (min-width:790px){.withDestinations__yYcfx .sectionsSection__3nLQk{width:580px}}.sectionLinksSection__2PxjQ{width:50%;line-height:1.15}@media (min-width:500px){.sectionLinksSection__2PxjQ{width:33%}}.sectionItems__1tEqP{list-style:none;margin:0;padding:0}.sectionItems__1tEqP .link__HCunz{display:block;padding:.5rem 0;font-size:.875rem;text-decoration:none}@media (min-width:500px){.sectionItems__1tEqP .link__HCunz{padding:.25rem 0}}.otherLinksSection__3Q5VU .sectionItems__1tEqP .link__HCunz{font-size:.75rem;font-weight:400;padding:2px 0}.footerSection__2ydsr{width:100%;padding:.5rem 0;margin:1.5rem 0}.footerSection__2ydsr .copyright__1Ooxv{font-size:.75rem;margin-top:.5rem;line-height:1}.footerSection__2ydsr .sectionItems__1tEqP{-webkit-column-count:1;-moz-column-count:1;column-count:1}@media (min-width:500px){.footerSection__2ydsr .sectionItems__1tEqP{-webkit-column-count:2;-moz-column-count:2;column-count:2}}.footerSection__2ydsr .CCPAConsentModule__29dUx{display:none;margin-bottom:1.5rem}.footerSection__2ydsr .CCPAConsentModule__29dUx .ccpaCopy__2PhBT{font-size:.75rem;margin-bottom:.5rem}@media (min-width:500px){.footerSection__2ydsr{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end;-webkit-box-orient:horizontal;-webkit-box-direction:reverse;-ms-flex-direction:row-reverse;flex-direction:row-reverse}.footerSection__2ydsr .footerSubSection__2_sE_{width:33%}.footerSection__2ydsr .CCPAConsentModule__29dUx{width:66%;margin-bottom:0}.footerSection__2ydsr .copyright__1Ooxv{margin-top:1.5rem}}.destinationsSection__oGK0H{background-color:#333;color:#f2f2f2;margin:0 -1.5rem;padding:1rem}.destinationsSection__oGK0H .sectionItems__1tEqP{-webkit-column-count:1;-moz-column-count:1;column-count:1}.destinationsSection__oGK0H .sectionTitle__2XZFa{margin-bottom:.5rem}@media (min-width:790px){.destinationsSection__oGK0H{padding:1.5rem;margin:0 -1.5rem 0 0;max-width:400px;-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto}}.destinationItem__sw0jG{display:-webkit-box;display:-ms-flexbox;display:flex;margin-bottom:3rem}.destinationItem__sw0jG:last-child{margin-bottom:0}@media (min-width:790px){.destinationItem__sw0jG{display:block}}.destinationLink__3BrxC{display:-webkit-box;display:-ms-flexbox;display:flex;font-size:.75rem;color:#f2f2f2;fill:#f2f2f2;font-weight:400;text-decoration:none;width:100%;height:100%}@media (min-width:790px){.destinationLink__3BrxC{font-size:.875rem;display:block}}.destinationLink__3BrxC:hover{opacity:.6}.destinationLink__3BrxC i{display:-webkit-box;display:-ms-flexbox;display:flex;min-width:30%;margin-right:1rem}@media (min-width:790px){.destinationLink__3BrxC i{display:block}}.destinationLink__3BrxC i svg{height:100%;margin:auto 0}.destinationLink__3BrxC i.bfnLogo__82I0_ svg{width:138px;height:25px}@media (min-width:790px){.destinationLink__3BrxC i.bfnLogo__82I0_ svg{width:130px}}.destinationLink__3BrxC i.tastyLogo__2XBtV svg{width:55px;height:36px}@media (min-width:790px){.destinationLink__3BrxC i.tastyLogo__2XBtV svg{height:31px}}.destinationLink__3BrxC i.goodfulLogo__3nZNd svg{width:63px;height:24px}.destinationLink__3BrxC i.asisLogo__ZFs3D svg{width:56px;height:26px;margin:auto 0}@media (min-width:790px){.destinationLink__3BrxC i.asisLogo__ZFs3D svg{width:70px}}.destinationLink__3BrxC i.bringmeLogo__2_dtK svg{width:63px;height:26px;margin:auto 0}@media (min-width:790px){.destinationLink__3BrxC i.bringmeLogo__2_dtK svg{width:70px}}.destinationsSection__oGK0H .destinationLink__3BrxC:hover{color:#f2f2f2}.menuToggle__GGVU-{padding:0;background-color:transparent;background-image:none;border:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;font-size:inherit;font-family:inherit;cursor:pointer;padding:8px;-webkit-box-flex:0;-ms-flex:0 0 auto;flex:0 0 auto;margin:0 8px 0 -8px}@media print{.menuToggle__GGVU-{display:none!important}}.menuToggle__GGVU-:active{outline:0}.menuToggle__GGVU- i{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;width:22px;height:22px}.pageOverlay__38sHJ{background-color:rgba(0,0,0,.15);position:fixed;width:100%;height:100%;z-index:498}.bodyWithMoreNav__2lFOz{overflow:hidden}.smallSecondaryButton__30f4z{padding:.3125rem .625rem;font-size:13px;line-height:1.25rem;border-radius:3px;text-decoration:none;cursor:pointer;display:inline-block;text-align:center;color:#0f65ef;border:1px solid #0f65ef;background-color:transparent;-webkit-transition:background-color .1s ease 0s;transition:background-color .1s ease 0s}.smallSecondaryButton__30f4z:hover{color:#fff;background-color:#0f65ef}
.editionSelect__31uLC{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start}.editionSelect__31uLC label{font-size:14px;margin-right:10px}@media (min-width:500px){.editionSelect__31uLC{display:block}.editionSelect__31uLC label{display:block;margin-bottom:5px}}.select__3CYXv{-moz-appearance:none;-webkit-appearance:none;background:#fff;border:1px solid rgba(0,0,0,.2);background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 488 285'%3E%3Cpath d='M483.11 29.381L458.661 4.896c-2.934-2.938-7.335-4.897-11.246-4.897-3.912 0-8.313 1.959-11.246 4.897L244.001 197.344 51.833 4.896C48.899 1.958 44.498-.001 40.587-.001c-4.401 0-8.313 1.959-11.246 4.897L4.892 29.381C1.958 32.319.002 36.726.002 40.644s1.956 8.325 4.89 11.263l227.864 228.196c2.934 2.938 7.335 4.897 11.246 4.897 3.912 0 8.313-1.959 11.246-4.897L483.112 51.907c2.934-2.938 4.89-7.345 4.89-11.263s-1.956-8.325-4.89-11.263z'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:calc(100% - 1rem) 50%;background-size:.6875rem;border-radius:0;font-family:inherit;font-size:.875rem;line-height:1.25rem;padding:.3125rem 2rem .3125rem .625rem}.select__3CYXv::-ms-expand,select::-ms-expand{display:none}
.link__357dN,.text__XYCjV{color:#fff}.link__357dN:hover{color:#e0e0e0}.linkCta__NNr1e{color:#fff;text-decoration:underline!important}.mainNavContainer__2l6Vz{background:#6645dd}.bfoLogo__1KJMe,.menuToggle__2EiBQ svg,.menuToggle__2EiBQ svg.userAvatar__je28w{fill:#fff}.menuToggle__2EiBQ svg.userAvatar__je28w:hover{fill:#e0e0e0}.searchIcon__1Ebx7{fill:#fff}.moreNav__2sbYE{background-color:#6645dd}.secondaryButton__1n7Yk{color:#fff;border-color:#fff}.secondaryButton__1n7Yk:hover{color:#6645dd;border-color:#e0e0e0;background-color:#e0e0e0}.trendingNavWrapper__3gOq_{background-color:#6645dd;border-top:1px solid hsla(0,0%,100%,.1);border-bottom:1px solid hsla(0,0%,100%,.1);-webkit-box-shadow:none;box-shadow:none}.scrollingWrapper__2sil1:after,.topicNavWrapper__2NeIp:after{background:-webkit-gradient(linear,left top,right top,from(rgba(102,69,221,0)),to(#6645dd));background:linear-gradient(90deg,rgba(102,69,221,0),#6645dd)}
.link__2d6hQ,.text__1dl8A{color:#222}.link__2d6hQ:hover{color:#0f65ef}.linkCta__2WKTn{color:#0f65ef;text-decoration:none}.linkCta__2WKTn:hover{color:#093c8f}.mainNavContainer__3mRKb{background:#fff}.bfoLogo__198yR{fill:#e32}.menuToggle__3tmWj svg,.menuToggle__3tmWj svg.userAvatar__DDJBk{fill:#222}.menuToggle__3tmWj svg.userAvatar__DDJBk:hover{fill:#0f65ef}.searchIcon__1dTDa{fill:#222}.searchIcon__1dTDa:hover{fill:#0f65ef}.moreNav__3FbPP{background-color:#fff}.secondaryButton__2eG-m{color:#0f65ef;border-color:#0f65ef}.secondaryButton__2eG-m:hover{color:#fff;background-color:#0f65ef}.trendingNavWrapper__1povE{background-color:#fff;border-top:1px solid #e3e3e3;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.1);box-shadow:0 1px 3px rgba(0,0,0,.1)}.scrollingWrapper__bWL7J:after,.topicNavWrapper__1oERL:after{background:-webkit-gradient(linear,left top,right top,from(hsla(0,0%,100%,0)),to(#fff));background:linear-gradient(90deg,hsla(0,0%,100%,0),#fff)}
a .navLabel__3iKIM.badge__EbO-C{background-color:#fe0;color:#222;padding:4px 8px;letter-spacing:.3px;font-size:.75rem;font-weight:590;margin-left:4px;border-radius:4px}a:hover .navLabel__3iKIM.badge__EbO-C{color:#222}

.bringMeNav__17B_6{background:#681252;position:relative;z-index:499;width:100%;font-size:1rem}@media (min-width:64rem){.bringMeNav__17B_6{position:relative;height:50px;padding:0 20px;font-size:.875rem}}.bringMeNav__17B_6 a{text-decoration:none}.bringMeNav__17B_6 ul{margin:0}.bringMeNav__17B_6 li{list-style-type:none}.bringMeNav__17B_6 button{font-size:1rem;font-family:Proxima Nova,Helvetica,Arial,sans-serif;-webkit-appearance:none}.bringMeNav__17B_6 [aria-expanded=true]{-webkit-box-shadow:inset 0 -4px 0 0 #f27075;box-shadow:inset 0 -4px 0 0 #f27075}.bringMeNav__17B_6 [aria-expanded=true] .subNav__20-4e{display:-webkit-box;display:-ms-flexbox;display:flex}@media (min-width:64rem){.bringMeNav__17B_6 [aria-expanded=true] .subNav__20-4e.destinationContainer__2zbGE{display:-webkit-box;display:-ms-flexbox;display:flex;margin-top:0;position:absolute;top:100%;left:0;z-index:499;max-height:275px;width:275px}}.bringMeNav__17B_6 [aria-expanded=true] .subNav__20-4e.destinationContainer__2zbGE li{margin-bottom:1.5em;margin-right:4em;font-weight:400;text-align:left}.bringMeNav__17B_6 [aria-expanded=true] .caretDown__-Ae1y{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}@media (min-width:64rem){.bringMeNav__17B_6 [aria-expanded=true] .caretDown__-Ae1y{-webkit-transform:none;-ms-transform:none;transform:none}}.container__1kJ1R{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:0}@media (min-width:64rem){.container__1kJ1R{height:inherit}}.menuItem__1x07Q{width:50%;font-weight:600}@media (min-width:64rem){.menuItem__1x07Q{width:auto}}.menuItem__1x07Q:first-child{border-right:1px solid hsla(0,0%,100%,.5)}@media (min-width:64rem){.menuItem__1x07Q:first-child{border-right:none;text-align:center;margin-right:.5rem;position:relative;width:auto}}@media (min-width:64rem){.discoverItem__be6DQ:hover,.isCurrentPage__reeqb{-webkit-box-shadow:inset 0 -4px 0 0 #f27075;box-shadow:inset 0 -4px 0 0 #f27075}}.menuItem__1x07Q button svg,.menuItem__1x07Q svg{height:10px;width:12px;fill:#fff}.toggle__3AcHu{color:#fff!important;padding:1rem!important;display:block;font-weight:600;width:100%;text-align:left;-webkit-box-align:center;-ms-flex-align:center;align-items:center;position:relative}@media (min-width:64rem){.toggle__3AcHu{padding:0!important;display:block}}.discoverButton__K5gfv,.toggle__3AcHu button{border:none;background:transparent}.discoverButton__K5gfv svg{position:absolute;right:16px;top:50%;margin-top:-5px}.toggle__3AcHu button{position:absolute;left:0;top:0;right:0;bottom:0;width:100%;padding:0 1rem;text-align:right}@media (min-width:64rem){.toggle__3AcHu button{position:static;width:26px;height:24px;padding:0;margin-left:4px;text-align:center}}@media (min-width:64rem){.discoverButton__K5gfv{display:none!important}}.subNav__20-4e{display:none;width:100%;position:absolute;left:0;background-color:#fff;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-ms-flex-wrap:wrap;flex-wrap:wrap;padding:1.5rem 1.5rem 0}.subNav__20-4e a{color:#681252}@media (min-width:64rem){.subNav__20-4e a{color:#fff}}.subNav__20-4e a:active,.subNav__20-4e a:hover{color:#460c37;text-decoration:underline}@media (min-width:64rem){.subNav__20-4e a:active,.subNav__20-4e a:hover{color:#fff;text-decoration:none}}.subNav__20-4e li{margin-bottom:1.5rem;font-weight:400}@media (min-width:64rem){.subNav__20-4e li{margin-bottom:0;font-weight:600}}.destinationContainer__2zbGE{height:17rem}.destinationContainer__2zbGE.subNav__20-4e a{color:#681252}.destinationContainer__2zbGE.subNav__20-4e a:active,.destinationContainer__2zbGE.subNav__20-4e a:hover{color:#460c37;text-decoration:underline}@media (min-width:64rem){.destinationContainer__2zbGE{height:15rem}}.discoverContainer__bIDhZ{height:17rem}@media (min-width:64rem){.discoverContainer__bIDhZ{height:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-direction:row;flex-direction:row;background-color:#681252;position:relative;padding:0}.discoverContainer__bIDhZ li{margin:0 1rem}}@media (min-width:64rem){.discoverItem__be6DQ,.menuItem__1x07Q{height:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}}.moreLabel__29Rsq{margin:0;padding:0;display:block;width:0;height:0;position:absolute;text-indent:-9999em;text-align:left;overflow:hidden}
.flyout__2gQze{position:relative}.flyoutInner__18rbM{position:absolute;background-color:#fff;border:1px solid rgba(0,0,0,.2);top:90%;z-index:600}.arrow__23JFg:after,.arrow__23JFg:before{bottom:100%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none;left:50%}.arrow__23JFg:before{border-color:transparent;border-bottom-color:#aaa;border-width:9px;margin-left:-9px}.arrow__23JFg:after{border-color:transparent;border-bottom-color:#fff;border-width:8px;margin-left:-8px}
.mainNavContainer__1m7kD{position:relative}.mainNavContainer__1m7kD.collapsedTrending__28wsE{-webkit-box-shadow:0 1px 3px rgba(0,0,0,.1);box-shadow:0 1px 3px rgba(0,0,0,.1)}.mainNav__VimfQ{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:10px 0 0;position:relative;-ms-flex-wrap:wrap;flex-wrap:wrap}@media (min-width:790px){.mainNav__VimfQ{padding:0;-ms-flex-wrap:nowrap;flex-wrap:nowrap}}.stickyMainNav__3x18O{position:fixed;width:100%;top:0;left:0;z-index:500}@media print{.stickyMainNav__3x18O{display:none!important}}
.skipNav__261Yu{margin:0;padding:0;display:block;width:0;height:0;position:absolute;text-indent:-9999em;text-align:left;overflow:hidden;color:#222;text-decoration:underline;font-size:1rem;position:fixed;top:0;left:0;z-index:-1}.skipNav__261Yu:focus{background:#fff;height:auto;text-indent:0;width:auto;padding:.25rem;z-index:9999}
.logoContainer__3fSgq{-webkit-box-flex:1;-ms-flex-positive:1;flex-grow:1;display:-webkit-box;display:-ms-flexbox;display:flex;margin-right:10px}@media print{.logoContainer__3fSgq{margin:.5rem 0 1rem!important}}@media (min-width:400px){.logoContainer__3fSgq{margin-right:25px}}@media (min-width:790px){.logoContainer__3fSgq{-webkit-box-flex:initial;-ms-flex-positive:initial;flex-grow:0}}.newsLogoContainer__x7FfB{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:baseline;-ms-flex-align:baseline;align-items:baseline;width:160px}@media (min-width:360px){.newsLogoContainer__x7FfB{width:auto}}.microBrandContainer__3nh2f{-webkit-box-flex:1;-ms-flex-positive:1;flex-grow:1;-webkit-transform:scale(.8) translate(-30px);-ms-transform:scale(.8) translate(-30px);transform:scale(.8) translate(-30px)}@media (min-width:360px){.microBrandContainer__3nh2f{-webkit-transform:none;-ms-transform:none;transform:none}}.microBrandContainer__3nh2f,.microBrandLink__3wbkF{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.microBrandDelimiter__3CXeP{padding:0 7px}@media (min-width:400px){.microBrandDelimiter__3CXeP{padding:0 10px}}.delimiter-asis__24bsL,.delimiter-bringme__2lBJE,.delimiter-goodful__1Mi7S,.delimiter-lgbtq__3Teqq,.delimiter-nifty__1lC-M,.delimiter-playfull__2N1Ai{color:#757575}.delimiter-bringme__2lBJE{padding:0 7px 0 2px}.bfo__MfRqr{width:134px;height:23.57px}.bfo__MfRqr.secondary__1eyya{width:100px}@media (min-width:400px){.bfo__MfRqr.secondary__1eyya{width:130px}}.news__3bAiS{width:130px;height:16px}@media (min-width:400px){.news__3bAiS{height:19px;width:150px}}@media (min-width:450px){.news__3bAiS{height:25px;width:200px}}.newsTagline__ZLyPI{width:55px;height:13px;margin-left:5px}@media (min-width:400px){.newsTagline__ZLyPI{margin-left:10px;height:16px;width:70px}}.bringme__3Fhih{width:70px;height:35px}@media (min-width:400px){.bringme__3Fhih{height:40px;width:80px}}.goodful__3Gave{width:60px;height:21px}@media (min-width:400px){.goodful__3Gave{width:80px;height:28px}}.nifty__1veSO{width:50px;height:20px}@media (min-width:400px){.nifty__1veSO{height:37px;width:67px}}.asis__1g-BP{width:70px;height:35px}@media (min-width:400px){.asis__1g-BP{width:70px;height:27px}}.playfull__3uBIo{margin-top:10px;width:73px;height:35px}@media (min-width:400px){.playfull__3uBIo{width:70px;height:27px}}.lgbtq__rI36F{width:58px;height:26px}@media (min-width:400px){.lgbtq__rI36F{width:74px;height:33px}}
.wrapper__DtNG9{width:100%;position:relative;overflow-x:hidden}@media print{.wrapper__DtNG9{display:none!important}}.wrapper__DtNG9:after{content:"";position:absolute;height:100%;width:30px;right:0;top:0;pointer-events:none}@media (min-width:790px){.wrapper__DtNG9:after{right:15px}}.link__1aeEz{text-decoration:none}.topicNav__WFzIs{list-style:none;margin:0;padding:0;position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:nowrap;flex-wrap:nowrap;margin:.5rem 0 0 .25rem;overflow-x:auto;-ms-overflow-style:none;-webkit-overflow-scrolling:touch;-webkit-tap-highlight-color:transparent;scrollbar-width:none;-webkit-transition:opacity .2s ease-in;transition:opacity .2s ease-in}.topicNav__WFzIs::-webkit-scrollbar{display:none}@media (min-width:790px){.topicNav__WFzIs{-webkit-box-flex:1;-ms-flex-positive:1;flex-grow:1;margin:0 1rem 0 .5rem}}.topicNav__WFzIs.fadeOut__2z3J0{opacity:0}.collapsedTrending__2N5pD{font-weight:400}.topicNavItem__i53qs{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding-bottom:9px;margin-right:18px;-webkit-box-flex:0;-ms-flex:0 0 auto;flex:0 0 auto;font-weight:590;font-size:1rem}@media (min-width:790px){.topicNavItem__i53qs{padding:20px 0;margin-right:28px}.collapsedTrending__2N5pD .topicNavItem__i53qs{font-weight:400!important;font-size:.875rem;height:64px}}.topicNavItem__i53qs:last-child:after{content:"";display:inline-block;width:20px}@media (min-width:500px){.mdHide__24xVL{display:none}}.downCaret__2AXUI{width:10px;height:10px;-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);vertical-align:middle;margin-left:3px;display:none;fill:currentColor}@media (min-width:790px){.downCaret__2AXUI{display:block}}
.container__Wkw-E{padding:20px;text-align:center}.title__qkYfH{margin-bottom:20px;font-weight:600}.items__EE0Lf{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between}.item__1Bg9C{width:23%;margin-bottom:30px;text-decoration:none;font-weight:600;font-size:.875rem;color:#222}.item__1Bg9C:hover{color:#0f65ef}.item__1Bg9C figure{margin:0 10px 0 0;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}.item__1Bg9C img{border-radius:3px;width:80px;margin-bottom:4px}.item__1Bg9C:first-of-type{width:100%;margin-bottom:24px;text-align:left}.item__1Bg9C:first-of-type figure{-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-direction:row;flex-direction:row}.item__1Bg9C:first-of-type img{margin-right:10px;width:137px}.cta__1wCm_{background-color:#0f65ef;color:#fff;border-radius:3px;text-decoration:none;display:block;-webkit-transition:background-color .1s ease 0s;transition:background-color .1s ease 0s;padding:8px 14px}.cta__1wCm_:hover{background-color:#093c8f}.cta__1wCm_ svg{fill:#fff;padding-left:4px;vertical-align:middle}
.userMenu__35Tpj{border-bottom:1px solid rgba(0,0,0,.2)}.userMenu__35Tpj a{text-decoration:none;font-weight:600}.userMenu__35Tpj a:hover{color:#093c8f}.userAvatarContainer__1fzue{position:relative}.userAvatar__1hSmA{display:block;border-radius:50%;width:24px;max-width:24px;height:24px}.userOptions__2AWrW .userAvatar__1hSmA{width:35px;max-width:35px;height:35px}.userAvatarNotificationIcon__1f69k{height:18px;background-color:#0f65ef;border:1px solid #fff;border-radius:4px;position:absolute;top:-6px;left:12px;padding:1px 4px;min-width:18px;-webkit-animation:growBox__2LIlc .15s ease-in-out;animation:growBox__2LIlc .15s ease-in-out}@-webkit-keyframes growBox__2LIlc{0%{-webkit-transform:scale(0);transform:scale(0)}to{-webkit-transform:scale(1);transform:scale(1)}}@keyframes growBox__2LIlc{0%{-webkit-transform:scale(0);transform:scale(0)}to{-webkit-transform:scale(1);transform:scale(1)}}.userAvatarNotificationCount__UrVw7{color:#fff;font-size:12px;font-weight:600;font-style:normal;line-height:15px;-webkit-animation:fadeIn__35L0j .15s ease-in-out .15s forwards;animation:fadeIn__35L0j .15s ease-in-out .15s forwards;opacity:0}@-webkit-keyframes fadeIn__35L0j{0%{opacity:0}to{opacity:1}}@keyframes fadeIn__35L0j{0%{opacity:0}to{opacity:1}}svg.userAvatar__1hSmA{fill:#222}svg.userAvatar__1hSmA:hover{fill:#0f65ef}.menuToggle__3fDMA{padding:0;background-color:transparent;background-image:none;border:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;font-size:inherit;font-family:inherit;cursor:pointer;padding:8px;-webkit-box-flex:0;-ms-flex:0 0 auto;flex:0 0 auto}@media print{.menuToggle__3fDMA{display:none!important}}.menuToggle__3fDMA:active{outline:0}.menuToggle__3fDMA i{-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;width:22px;height:22px}.menuToggle__3fDMA i,.userOptionsProfile__1k7j3{display:-webkit-box;display:-ms-flexbox;display:flex}.userOptionsProfile__1k7j3{padding:1rem;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-direction:row;flex-direction:row;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between}.userProfileName__1fUgc{width:156px;padding-left:.5rem;margin:0}.userProfileNameText__1kYou{display:block;font-size:1.125rem;text-overflow:ellipsis;overflow:hidden}.userProfileLink__15Sc6{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.userOptionsLinks__Xnzta{list-style:none;margin:0;padding:0;padding:0 1rem .5rem}.userOptionsLinks__Xnzta li{margin-bottom:.5rem}.userOptionsLinks__Xnzta li button{cursor:pointer;padding:0;background-color:transparent;background-image:none;border:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;font-size:inherit;font-family:inherit}.userOptionsLinks__Xnzta li button:active{outline:0}.userOptionsLinks__Xnzta li a,.userOptionsLinks__Xnzta li button{color:#222;text-decoration:none;font-weight:600;cursor:pointer}.userMenuContainer__1N7EL{display:none;position:absolute;right:-1rem;z-index:600;background-color:#fff;width:100vw}@media (min-width:500px){.userMenuContainer__1N7EL{overflow-y:auto;width:460px;right:0;top:100%}}.userMenuContainer__1N7EL.visible__1Jcvp{display:block}
.notifications__322d_{padding:1.5rem 1rem;background-color:#f4f4f4}.notifications__322d_ ul{list-style:none;margin:0;padding:0;width:100%}.notificationsTitle__POmkC{margin-bottom:.5rem;font-weight:590;font-size:22px}.unreadTitleContainer__1TIny{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin-bottom:.5rem}.readTitle__O2neZ,.unreadTitle__10M4M{font-weight:590;font-size:18px}.readTitle__O2neZ{margin-bottom:.5rem}.unreadIcon__3GhNp{height:20px;min-width:20px;border-radius:4px;background-color:#0f65ef;color:#fff;margin-left:.25rem;text-align:center;font-size:13px;font-weight:600;margin-bottom:2px;line-height:1.3rem}.notification__1GY2F{-webkit-box-shadow:0 1px 2px 0 rgba(0,0,0,.1);box-shadow:0 1px 2px 0 rgba(0,0,0,.1);border:1px solid rgba(0,0,0,.1);background-color:#fff;border-radius:3px;padding:1rem;margin-bottom:1rem;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;color:#222}.notification__1GY2F,.notificationTitle__2W-bI{display:-webkit-box;display:-ms-flexbox;display:flex}.notificationTitle__2W-bI{font-size:14px;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;margin-bottom:.5rem}.notificationTimestamp__1TRPH{color:#666}.notificationEmptyState__3Z3Hi{color:#666;text-align:center;margin:1rem 0}.readNotificationsContainer__zRtEj,.unreadNotificationsContainer__23-P3{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}.readNotificationsContainer__zRtEj a,.unreadNotificationsContainer__23-P3 a{text-decoration:none}.trophyAddedContainer__v4LmB{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.markAllAsReadButton__2wqrb{padding:0;background-color:transparent;background-image:none;border:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;font-size:inherit;font-family:inherit;cursor:pointer;text-align:center;color:#0f65ef;text-decoration:none;font-weight:590;margin:12px 0 24px}.markAllAsReadButton__2wqrb:active{outline:0}.sparklesSVG__1IM_e{margin-right:.25rem}.postTitle__3Ckhq{padding-left:.5rem;font-weight:590}
.signInPrompt__ITXeY{position:relative;padding:1rem}.closeButtonWrapper__K9dNn{position:absolute;top:.5rem;right:1rem}.cta__1OeFp{margin:0}.ctaLink__3VlqM{font-weight:600;text-decoration:none;color:#0f65ef}.sell__PxAbD{margin:0;color:#222}
@-webkit-keyframes highlight__2YaD8{0%{background:rgba(228,12,120,.1)}to{background:none}}@keyframes highlight__2YaD8{0%{background:rgba(228,12,120,.1)}to{background:none}}.highlight__2YaD8{-webkit-animation:highlight__2YaD8 3s;animation:highlight__2YaD8 3s}.wishCount__3p9JY{background:#e40c78;border-radius:3px;padding:2px 8px;display:inline-block;margin-left:12px;color:#fff;font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:12px;position:relative;top:-3px}
.search__1B6FB{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin:0 8px 0 16px}@media (min-width:790px){.search__1B6FB{margin:0 16px}}.searchLink__3OXhS{display:-webkit-box;display:-ms-flexbox;display:flex}@media print{.searchLink__3OXhS{display:none!important}}@media (min-width:500px){.searchLink__3OXhS{display:none}}.searchButton__1XY_w{cursor:pointer;padding:0;background-color:transparent;background-image:none;border:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;font-size:inherit;font-family:inherit;display:none}.searchButton__1XY_w:active{outline:0}@media (min-width:500px){.searchButton__1XY_w{display:-webkit-box;display:-ms-flexbox;display:flex;padding:10px}}.searchIcon__z-gd4{width:16px;height:16px}.searchInputContainer__3QaXp{background-color:#fff;display:-webkit-box;display:-ms-flexbox;display:flex;border:1px solid rgba(0,0,0,.2);margin-left:20px;padding:5px}.searchInput__2f09w,.searchInputContainer__3QaXp{-webkit-box-align:center;-ms-flex-align:center;align-items:center}.searchInput__2f09w{font-size:14px;font-family:inherit;-webkit-appearance:none;outline:none!important;border:0;width:140px}.searchInput__2f09w,.searchInput__2f09w:focus{text-overflow:ellipsis}.searchLabel__31sal{margin:0;padding:0;display:block;width:0;height:0;position:absolute;text-indent:-9999em;text-align:left;overflow:hidden}
@-webkit-keyframes bounce__3Y-pE{0%,10%,65%,to{-webkit-animation-timing-function:cubic-bezier(.215,.61,.355,1);animation-timing-function:cubic-bezier(.215,.61,.355,1);-webkit-transform:translateY(0);transform:translateY(0)}40%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translateY(-5px);transform:translateY(-5px)}90%{-webkit-transform:translateY(-3px);transform:translateY(-3px)}}@keyframes bounce__3Y-pE{0%,10%,65%,to{-webkit-animation-timing-function:cubic-bezier(.215,.61,.355,1);animation-timing-function:cubic-bezier(.215,.61,.355,1);-webkit-transform:translateY(0);transform:translateY(0)}40%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translateY(-5px);transform:translateY(-5px)}90%{-webkit-transform:translateY(-3px);transform:translateY(-3px)}}.badgeBar__1SKBc{list-style:none;margin:0;padding:0;height:0;margin-left:5px;position:relative;-webkit-transform:translateY(-22px);-ms-transform:translateY(-22px);transform:translateY(-22px);-webkit-transition:-webkit-transform .3s;transition:-webkit-transform .3s;transition:transform .3s;transition:transform .3s,-webkit-transform .3s;display:none}@media (min-width:790px){.badgeBar__1SKBc{display:-webkit-box;display:-ms-flexbox;display:flex}}.badgeBarItem__3ujdt{width:43px;height:43px;margin-right:-4px;position:relative}.badgeBarItem__3ujdt:last-child{margin-right:0}.badgeBarItem__3ujdt a{display:block}.badgeBarItem__3ujdt a:hover{-webkit-animation-duration:.6s;animation-duration:.6s;-webkit-animation-name:bounce__3Y-pE;animation-name:bounce__3Y-pE;-webkit-transform-origin:center bottom;-ms-transform-origin:center bottom;transform-origin:center bottom;-webkit-transform:translateY(0);-ms-transform:translateY(0);transform:translateY(0)}.badgeBarItem__3ujdt a>svg{-webkit-box-shadow:0 1px 1px 0 hsla(0,0%,49%,.5);box-shadow:0 1px 1px 0 hsla(0,0%,49%,.5);border-radius:50%;width:43px;height:43px}
.wrapper__3B1Hn{width:100%;-webkit-transition:-webkit-transform .2s ease-in;transition:-webkit-transform .2s ease-in;transition:transform .2s ease-in;transition:transform .2s ease-in,-webkit-transform .2s ease-in;will-change:transform}@media (min-width:500px){.wrapper__3B1Hn{text-align:center}}.emojiWrapper__3ELFx{max-width:71rem;position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}@media (min-width:500px){.emojiWrapper__3ELFx{-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin:0 auto}}.emojiWrapper__3ELFx:after,.emojiWrapper__3ELFx:before{content:url("data:image/svg+xml; utf8, <svg width='16' height='15' viewBox='0 0 16 15' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M16 7.21542L15.0029 0L8.38057 2.72635L11.0054 4.27272L8.5259 8.65514L4.23121 6.12488L0 13.6037L2.36994 15L5.23282 9.93967L9.52752 12.4699L13.3753 5.66905L16 7.21542Z' fill='%23EE3322'/></svg>");font-size:10px;display:inline-block;margin:0 10px;width:16px;height:15px;line-height:22px}.scrollingWrapper__3VZiC{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start;overflow-x:auto;-ms-overflow-style:none;-webkit-overflow-scrolling:touch;-webkit-tap-highlight-color:transparent;scrollbar-width:none}.scrollingWrapper__3VZiC::-webkit-scrollbar{display:none}.scrollingWrapper__3VZiC:after{content:"";position:absolute;height:100%;width:30px;right:30px;top:0;pointer-events:none}.trendingNav__1WiRh{list-style:none;margin:0;padding:0;display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:nowrap;flex-wrap:nowrap;white-space:nowrap;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start;margin:0 auto;padding:.5rem 0;font-size:.875rem}.trendingNavSticky__7pV2n{position:fixed;top:89px;z-index:499}@media (min-width:790px){.trendingNavSticky__7pV2n{top:64px}}.collapsedTrending__HUms3{-webkit-transform:translateY(-150%);-ms-transform:translateY(-150%);transform:translateY(-150%)}.link__34FKx{display:-webkit-box;display:-ms-flexbox;display:flex;text-decoration:none;font-weight:400;margin:0 .5rem}@media (min-width:500px){.link__34FKx{padding:0 .25rem}}

/*# sourceMappingURL=style.css.map*/</style><style>.modal{background:rgba(255,255,255,0.9);position:fixed;height:100%;width:100%;top:0;left:0;padding:1rem;z-index:400;opacity:0;visibility:hidden;-webkit-transition:all .2s;-o-transition:all .2s;transition:all .2s;overflow-x:hidden;overflow-y:auto}.modal__content{-webkit-animation-duration:.15s;animation-duration:.15s;-webkit-animation-fill-mode:both;animation-fill-mode:both;background:#fff;border:1px solid rgba(0,0,0,0.2);border-radius:3px;margin:0 auto;position:relative;padding:2rem}.modal__close{width:3.5rem;height:3.5rem;padding:1rem;float:right;margin:-2rem -2rem 0 0}.modal__close:hover{cursor:pointer}.modal__close:hover .modal__close-icon{fill:#222}.modal__close-icon{width:1.5rem;fill:#aaa}.js-show-modal{overflow:hidden}.js-show-modal .modal{visibility:visible;opacity:1}.js-show-modal .modal__content{-webkit-animation-name:modal__content-scale;animation-name:modal__content-scale}@-webkit-keyframes modal__content-scale{from{opacity:0;-webkit-transform:scale3d(0.6, 0.6, 0.6);transform:scale3d(0.6, 0.6, 0.6)}50%{opacity:1}}@keyframes modal__content-scale{from{opacity:0;-webkit-transform:scale3d(0.6, 0.6, 0.6);transform:scale3d(0.6, 0.6, 0.6)}50%{opacity:1}}.photo-viewer{width:100%;height:100%;position:relative}.photo-viewer__content{height:100%}.photo-viewer__content--slide{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:nowrap;flex-wrap:nowrap;position:relative;-webkit-transition:-webkit-transform .25s;transition:-webkit-transform .25s;-o-transition:transform .25s;transition:transform .25s;transition:transform .25s, -webkit-transform .25s}.photo-viewer__content--slide .photo-viewer__item{width:100vw;display:block;-webkit-box-flex:0;-ms-flex:0 0 auto;flex:0 0 auto;position:relative}.photo-viewer__item{display:none;height:100%}.photo-viewer__item--show{display:block}.photo-viewer__media{height:100%;width:100%}.photo-viewer__media img{-o-object-fit:contain;object-fit:contain;background-color:transparent}.photo-viewer__media-centered{-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;display:-webkit-box !important;display:-ms-flexbox !important;display:flex !important;height:100%;width:100%}.photo-viewer__caption{position:absolute;top:0;left:0;width:100%}.photo-viewer__meta{background-image:-webkit-gradient(linear, left bottom, left top, color-stop(5%, rgba(0,0,0,0)), to(rgba(0,0,0,0.5)));background-image:-o-linear-gradient(bottom, rgba(0,0,0,0) 5%, rgba(0,0,0,0.5) 100%);background-image:linear-gradient(to top, rgba(0,0,0,0) 5%, rgba(0,0,0,0.5) 100%);padding-top:5rem;top:0;left:0;width:100%;z-index:1}.photo-viewer__attribution{opacity:.6}.photo-viewer__attribution>a,.photo-viewer__attribution>a:hover{color:inherit}.photo-viewer__external-link{top:0;right:0;z-index:2}.photo-viewer__footer{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;bottom:0;left:0;z-index:20;width:100%}.photo-viewer__progress{width:50%;opacity:.6}.photo-viewer__helper{margin:0;padding:0;display:block;width:0;height:0;position:absolute;text-indent:-9999em;text-align:left;overflow:hidden}.photo-viewer__share{display:-webkit-box;display:-ms-flexbox;display:flex;width:50%;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end;list-style:none;margin:0;padding:0}.photo-viewer__share .sharing-btn{background-color:transparent;margin:0 1rem}.photo-viewer__share .sharing-btn .sharing-btn__text{display:none}.photo-viewer__share .icon--secondary{display:none}.modal.modal__overlay--photo-viewer{background:#000;padding:0;z-index:6000}.modal--photo-viewer.modal__content{height:100%;padding:0;background:transparent;border:0}.modal--photo-viewer.modal__content .modal__close{cursor:pointer                             !important;padding:0                                  !important;background-color:transparent               !important;background-image:none                      !important;border:1px solid transparent               !important;white-space:nowrap                         !important;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-o-user-select:none;user-select:none;z-index:20;margin:1rem;top:0;left:0;position:absolute;float:none;width:1rem;height:1rem;padding:0}.modal--photo-viewer.modal__content .modal__close:active{outline:0 !important}.modal--photo-viewer.modal__content .modal__close .modal__button-close__svg{width:1rem;height:1rem}.photo-viewer__controls{top:50%;left:0;pointer-events:none}.photo-viewer__controls .photo-viewer__toggle--left{border-radius:0 3px 3px 0}.photo-viewer__controls .photo-viewer__toggle--right{border-radius:3px 0 0 3px}.photo-viewer__controls .photo-viewer__toggle{cursor:pointer                             !important;padding:0                                  !important;background-color:transparent               !important;background-image:none                      !important;border:1px solid transparent               !important;white-space:nowrap                         !important;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-o-user-select:none;user-select:none;pointer-events:initial;-webkit-transition:all .25s ease;-o-transition:all .25s ease;transition:all .25s ease;opacity:1}.photo-viewer__controls .photo-viewer__toggle:active{outline:0 !important}.photo-viewer__controls .photo-viewer__toggle .photo-viewer__arrow{fill:#fff;margin-top:8px;height:20px;width:20px}.photo-viewer__controls .photo-viewer__toggle:hover{background-color:#0f65ef;cursor:pointer}.buzz__update-subbuzzes{clear:both}.subbuzz__description p+p{margin-top:.5rem}.subbuzz__description{margin-top:.5rem}@media (min-width: 52rem){.subbuzz__description{font-size:17px}}.subbuzz__attribution{color:#757575;font-style:italic}.subbuzz__attribution a{color:#757575}.subbuzz__description--compact{font-size:.75rem;line-height:1.3;color:#222;-webkit-box-ordinal-group:2;-ms-flex-order:1;order:1;margin-top:0}.subbuzz__description--compact small{font-size:inherit}.subbuzz__attribution--compact{-webkit-box-ordinal-group:3;-ms-flex-order:2;order:2}.subbuzz__shares--compact{-webkit-box-ordinal-group:4;-ms-flex-order:3;order:3}.subbuzz__description p{margin:0}.subbuzz__media-container{position:relative;width:100%;background-color:rgba(0,0,0,0.05)}.subbuzz__media-container.subbuzz__media-loaded{background:none}.subbuzz__media-container.subbuzz__media-loaded .subbuzz-embed__frame{background:#fff}.subbuzz__media-image{background-color:#efefef;display:block;width:100%;height:100%;background-repeat:no-repeat;background-position:center;background-size:cover;position:absolute;top:0;left:0}.subbuzz__media-link{-webkit-tap-highlight-color:rgba(0,0,0,0)}.subbuzz__media-container--no-margin-bottom{margin-bottom:0}.subbuzz__media-container--small-margin-bottom{margin-bottom:.25rem}.subbuzz-embed .subbuzz__media-container{min-height:200px}.subbuzz-embed__frame{height:100%}.instagram__container{min-width:auto !important}@media (max-width: 39.9rem){.subbuzz__media-container--spotify.subbuzz__media-loaded{padding-top:100% !important}}.subbuzz-facebook .subbuzz-facebook__container{position:relative;width:100%;background-color:rgba(0,0,0,0.05);padding-top:66.6%}.subbuzz-facebook .fb-post span{width:100% !important}.subbuzz-facebook .fb-post iframe{width:100% !important}.subbuzz-facebook .subbuzz__media-container{position:relative}.subbuzz-facebook .subbuzz-facebook__placeholder{position:relative;z-index:2}.subbuzz-facebook .fb-video{position:absolute;opacity:0;top:0;z-index:1}.subbuzz-facebook .fb-video--loaded{position:static;opacity:1}.article--feature .fb-post span{display:block;margin-left:auto;margin-right:auto}@media (min-width: 40rem){.article--feature .fb-post span{width:552px !important}}.subbuzz-image{clear:both}.bpage-next .subbuzz-image img{border-radius:8px}.subbuzz-image noscript img{width:100%}@media (min-width: 52rem){.subbuzz-image--outset-left{margin-left:-6rem}.subbuzz-image--outset-right{margin-right:-6rem}.subbuzz-image--outset-center .subbuzz__media--full-width-container{position:relative;left:50%;right:50%;margin-left:-50vw;margin-right:-50vw;width:100vw}.subbuzz-image--outset-both .subbuzz__media--full-width-container{margin-left:-26%;margin-right:-26%}.subbuzz-image--outset-both .subbuzz__media{padding-left:1rem;padding-right:1rem}.subbuzz-image--outset-both .subbuzz__description,.subbuzz-image--outset-both .subbuzz__attribution{margin-left:-1rem}}@media (min-width: 64rem){.subbuzz-image--outset-small{margin-left:-3rem}}.subbuzz-image-group noscript img{width:100%}.subbuzz-image-group__row--not-stacked{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start}.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row--not-stacked__cell{-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto;-webkit-box-ordinal-group:1;-ms-flex-order:0;order:0}.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--two-pl.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(2),.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--two-lp.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(1){width:67%}.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--two-pl.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(1),.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--two-lp.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(2),.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--three.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell{width:33%}.subbuzz-image-group__row--not-stacked.subbuzz-image-group__row--two-ss.subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell{width:50%}.subbuzz-image-group__row--not-stacked[class*="subbuzz-image-group__row--t"].subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(1n+2){margin-left:2px}@media (min-width: 52rem){.subbuzz-image-group__row{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start;-webkit-box-pack:start;-ms-flex-pack:start;justify-content:flex-start}.subbuzz-image-group__row .subbuzz-image-group__row__cell{-webkit-box-flex:1;-ms-flex:1 1 auto;flex:1 1 auto;-webkit-box-ordinal-group:1;-ms-flex-order:0;order:0}.subbuzz-image-group__row.subbuzz-image-group__row--two-pl .subbuzz-image-group__row__cell:nth-of-type(2),.subbuzz-image-group__row.subbuzz-image-group__row--two-lp .subbuzz-image-group__row__cell:nth-of-type(1){width:67%}.subbuzz-image-group__row.subbuzz-image-group__row--two-pl .subbuzz-image-group__row__cell:nth-of-type(1),.subbuzz-image-group__row.subbuzz-image-group__row--two-lp .subbuzz-image-group__row__cell:nth-of-type(2),.subbuzz-image-group__row.subbuzz-image-group__row--three .subbuzz-image-group__row__cell{width:33%}.subbuzz-image-group__row.subbuzz-image-group__row--two-ss .subbuzz-image-group__row__cell{width:50%}.subbuzz-image-group__row[class*="subbuzz-image-group__row--t"] .subbuzz-image-group__row__cell:nth-of-type(1n+2),.subbuzz-image-group__row[class*="subbuzz-image-group__row--t"].subbuzz-image-group__row--not-stacked .subbuzz-image-group__row__cell:nth-of-type(1n+2){margin-left:4px}}.subbuzz-image-group__row .subbuzz__attribution{padding-right:.5rem;word-wrap:break-word}.subbuzz-imgur .imgur-embed-iframe-pub{width:100% !important}.photo-set__group{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.photo-set__item{padding:2px}.photo-set__media{height:100%}.photo-set__media img{width:100%}.photo-set__media:focus-within{outline:#3b99fc auto 5px}.photo-set__media--dim{background:#222}.photo-set__media--dim .photo-set__media-container{opacity:.3}.photo-set__media-container{height:100%}.photo-set__media-container .gif-play-button{-webkit-transform:translate(-50%, -50%);-ms-transform:translate(-50%, -50%);transform:translate(-50%, -50%);width:30%;height:30%;margin:auto;position:absolute;top:50%;left:50%}.photo-set__media-container video{position:absolute;min-width:100%;min-height:100%;width:auto !important;left:50%;top:50%;-webkit-transform:translate(-50%, -50%);-ms-transform:translate(-50%, -50%);transform:translate(-50%, -50%)}.photo-set__photo{width:100%;max-width:none !important;height:auto;display:block}.photo-set--two-photos .photo-set__item{width:100%;height:100%}.photo-set--four-photos{display:-webkit-box;display:-ms-flexbox;display:flex}.photo-set--four-photos .photo-set__group--large{width:75%}.photo-set--four-photos .photo-set__group--large .photo-set__item{width:100%;height:100%}.photo-set--four-photos .photo-set__group--small{-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch;width:25%}.photo-set--three-photos{display:-webkit-box;display:-ms-flexbox;display:flex}.photo-set--three-photos .photo-set__group--large{width:66.666%}.photo-set--three-photos .photo-set__group--large .photo-set__item{width:100%;height:100%}.photo-set--three-photos .photo-set__group--small{-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch;width:33.333%}.photo-set--five-photos .photo-set__group--large .photo-set__item{width:50%}.photo-set--five-photos .photo-set__group--small .photo-set__item{width:33.333%}.photo-set--six-photos .photo-set__group--large .photo-set__item,.photo-set--overflow-photos .photo-set__group--large .photo-set__item{width:50%}.photo-set--six-photos .photo-set__group--small .photo-set__item,.photo-set--overflow-photos .photo-set__group--small .photo-set__item{width:25%}.photo-set__overflow-count{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-transform:translate(-50%, -50%);-ms-transform:translate(-50%, -50%);transform:translate(-50%, -50%);top:50%;left:50%}.photo-set__caption{display:none}.subbuzz-photoslider .action-bar--subbuzz,.subbuzz-photoslider{z-index:200}.photoslider__left{width:100%}.enhanced-ux .photoslider__left{position:absolute}.photoslider__border{border:0;height:100%;width:4px;background:#000;display:block;position:absolute;padding:0;margin:0;left:0;top:0;cursor:ew-resize}.photoslider__border.focused{-webkit-box-shadow:0 0 3px 1px #fff;box-shadow:0 0 3px 1px #fff}.js-photoslider__slider{width:0;height:0;overflow:hidden;margin:0;padding:0;position:absolute;text-indent:-9999em;text-align:left;bottom:0;left:0;z-index:-1}.photoslider__message{pointer-events:none;margin-right:-50px;margin-top:-15px;background:rgba(250,245,187,0.8);top:50%;right:50%;width:100px;height:30px;text-align:center;line-height:1.875rem;opacity:1;-webkit-transition:opacity .5s ease-out;-o-transition:opacity .5s ease-out;transition:opacity .5s ease-out;border-radius:3px;color:#000;text-transform:uppercase;font-weight:normal;font-size:.875rem}.buzz blockquote.subbuzz-pullquote{word-break:break-word;margin:0;padding:0;background:none;border:0;overflow:visible}.subbuzz-pullquote{word-break:break-word}.subbuzz__section-divider{border:0}.subbuzz__section-divider--thick{border-bottom:5px solid #aaa}.subbuzz__section-divider--thin{border-bottom:1px solid rgba(0,0,0,0.2)}.blurred-overlay .gif-play-button{display:none}.blurred-overlay img,.blurred-overlay video{-webkit-filter:blur(30px);filter:blur(30px)}.image-reveal{background:rgba(34,34,34,0.25);top:50%;-webkit-transform:translate(0, -50%);-ms-transform:translate(0, -50%);transform:translate(0, -50%);width:275px}@media (min-width: 52rem){.subbuzz-text>p{font-size:17px}}.subbuzz-text sub{bottom:-.25rem}.subbuzz-text sup{top:-.15em;vertical-align:top}.tweet__container{max-width:500px}.subbuzz-tweet__tweet a{color:#222}.subbuzz-tweet__byline{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:start;-ms-flex-align:start;align-items:start}.subbuzz-tweet__author{-webkit-box-flex:1;-ms-flex:1;flex:1}.subbuzz-tweet__meta-item{font-size:.875rem;line-height:1.3;vertical-align:middle}.subbuzz-tweet__meta-item:before{width:17px;height:22px;background:url(/static-assets/img/twitter-sprite.9a30adc03723942422d1f16cebbb326a.png) 0 center no-repeat;content:"";display:inline-block;vertical-align:top;margin-right:3px}.subbuzz-tweet__timestamp{margin-top:.5rem;margin-bottom:.5rem}.subbuzz-tweet__retweet::before{background-position:-81px center}.subbuzz-tweet__favorite::before{background-position:-32px center}.article--feature .tweet__container>*{margin-left:auto;margin-right:auto}.video-player,.video-player__wrapper{width:100%;height:100%}.video-player{background-color:#000;display:block}.video-player__error{text-align:center;display:-webkit-box;display:-ms-flexbox;display:flex}.video-player__error svg{width:32px;height:32px}@-webkit-keyframes loader1{0%{-webkit-transform:rotate(20deg);transform:rotate(20deg)}100%{-webkit-transform:rotate(380deg);transform:rotate(380deg)}}@keyframes loader1{0%{-webkit-transform:rotate(20deg);transform:rotate(20deg)}100%{-webkit-transform:rotate(380deg);transform:rotate(380deg)}}@-webkit-keyframes loader2{0%{-webkit-transform:scale(0);transform:scale(0)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes loader2{0%{-webkit-transform:scale(0);transform:scale(0)}100%{-webkit-transform:scale(1);transform:scale(1)}}.loader{position:absolute;border-radius:50%;width:40px;height:40px;top:50%;left:50%;margin:-20px 0 0 -20px;z-index:9999;-webkit-animation:loader1 1s infinite linear;animation:loader1 1s infinite linear}.loader:before,.loader:after{position:absolute;content:" ";width:80%;height:80%;background-color:#fff;top:5%;left:0;border-radius:50%}.loader:before{left:-6%;-webkit-animation:loader2 1s infinite alternate ease-in-out;animation:loader2 1s infinite alternate ease-in-out;-webkit-transform-origin:10% 50%;-ms-transform-origin:10% 50%;transform-origin:10% 50%}.loader:after{left:auto;right:-6%;-webkit-animation:loader2 1s 1s infinite alternate ease-in-out;animation:loader2 1s 1s infinite alternate ease-in-out;-webkit-transform:scale(0);-ms-transform:scale(0);transform:scale(0);-webkit-transform-origin:90% 50%;-ms-transform-origin:90% 50%;transform-origin:90% 50%}.video-player-skin{position:relative;overflow:hidden}.video-player-skin:hover{cursor:pointer}.video-player-skin:hover .video-player-skin__play-big-button{-webkit-transform:translate3d(-50%, -50%, 0) scale(1.1);transform:translate3d(-50%, -50%, 0) scale(1.1);background:#f43192}.video-player-skin:active .video-player-skin__play-big-button{background-color:#e60c78}.video-player-skin:not(.video-player-skin--keyboard) .video-player-skin__button{outline:none}.video-player-skin[data-state="init"] .video-player-skin__play-big-button{display:block}.video-player-skin[data-state="init"] .video-player-skin__controls{opacity:0}.video-player-skin[data-state="playing"] .video-player-skin__play-icon{display:none}.video-player-skin[data-state="playing"] .video-player-skin__pause-icon{display:block}.video-player-skin[data-state="playing"][data-autohide],.video-player-skin[data-state="loading"][data-autohide]{cursor:none}.video-player-skin[data-state="playing"][data-autohide] .video-player-skin__controls,.video-player-skin[data-state="loading"][data-autohide] .video-player-skin__controls{opacity:0}.video-player-skin[data-muted] .video-player-skin__mute-icon{display:block}.video-player-skin[data-muted] .video-player-skin__unmute-icon{display:none}.video-player-skin[data-fullscreen] .video-player-skin__exitfullscreen-icon{display:block}.video-player-skin[data-fullscreen] .video-player-skin__fullscreen-icon{display:none}.video-player-skin:not([data-state="loading"]) .video-player-skin__loader{display:none}.video-player-skin__controls{-webkit-transition:opacity 100ms ease-in;-o-transition:opacity 100ms ease-in;transition:opacity 100ms ease-in;width:100%;background:-webkit-gradient(linear, left top, left bottom, from(transparent), to(rgba(0,0,0,0.3))) left repeat;background:-o-linear-gradient(top, transparent, rgba(0,0,0,0.3)) left repeat;background:linear-gradient(to bottom, transparent, rgba(0,0,0,0.3)) left repeat;padding:30px 0 15px;position:absolute;bottom:0;left:0;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-touch-callout:none;z-index:2}.video-player-skin__button{cursor:pointer;background:none;border:none;margin:0;padding:0}.video-player-skin__play-big-button{background:rgba(244,49,146,0.8);position:absolute;top:50%;left:50%;width:70px;height:70px;padding:18px 15px 18px 20px;-webkit-transform:translate3d(-50%, -50%, 0);transform:translate3d(-50%, -50%, 0);z-index:2;display:none;-webkit-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease}.video-player-skin__play-big-button:before{content:" ";width:100%;height:100%;position:absolute;top:0;left:0}.video-player-skin__play-button,.video-player-skin__mute-button,.video-player-skin__fullscreen-button{width:20px;height:20px;position:relative}.video-player-skin__play-button:before,.video-player-skin__mute-button:before,.video-player-skin__fullscreen-button:before{content:" ";width:100%;height:100%;position:absolute;top:0;left:0}.video-player-skin__play-button{width:18px;height:18px}.video-player-skin__icon{width:100%;height:100%}.video-player-skin__icon svg{fill:#fff}.video-player-skin__unmute-icon svg{fill:#f43192}.video-player-skin__pause-icon,.video-player-skin__replay-icon,.video-player-skin__exitfullscreen-icon,.video-player-skin__mute-icon{display:none}.video-player-skin__progress{cursor:pointer;background:rgba(255,255,255,0.55);margin-top:8px;width:100%;height:4px;position:relative}.video-player-skin__progress-overlay{position:absolute;left:0;top:-10px;height:20px;width:100%}.video-player-skin__progress-handle{width:18px;height:18px;margin-top:-8px;margin-left:-9px;position:absolute;top:0;left:0;background-color:#f43192}.video-player-skin__progress-play{height:4px;background-color:#f43192}.video-player-skin__current-time-text,.video-player-skin__duration-text{line-height:20px;font-size:14px}.vps-container{position:relative;height:0;overflow:hidden;padding-bottom:56.25%}.vps-container iframe,.vps-container .video-player__wrapper{position:absolute;top:0;left:0;width:100%;height:100%}.vps-container.vps-16x9{padding-bottom:56.25%}.vps-container.vps-9x16{padding-bottom:177.77778%}.vps-container.vps-1x1{padding-bottom:100%}.subbuzz-youtube__play-button{position:absolute;top:50%;left:50%;margin:-30px 0 0 -42px}.subbuzz-youtube .subbuzz__media-container{padding-top:56.25%}@media (min-width: 40rem){.subbuzz-youtube .subbuzz__media-container{padding-top:56%}}.subbuzz-youtube iframe{width:100%;height:100%;top:0;position:absolute}@media (min-width: 40rem){.subbuzz-youtube__thumb-img{height:auto;position:absolute;top:50%;-webkit-transform:translate(0, -50%);-ms-transform:translate(0, -50%);transform:translate(0, -50%)}}.subbuzz-buzzfeed-video video{width:100%;height:auto}.IIV::-webkit-media-controls-play-button,.IIV::-webkit-media-controls-start-playback-button{opacity:0;pointer-events:none}.js-gif-container img{display:block}.gif--playing .gif-play-button .gif-play-button__cta,.gif--playing .gif-play-button .gif-play-button__bg,.gif--playing .gif-play-button .gif-play-button__circle{opacity:0}.gif--playing .gif-play-button:hover .gif-play-button__circle,.gif--playing .gif-play-button:hover .gif-play-button__bg,.gif--playing .gif-play-button:hover .gif-play-button__pause-cta,.gif--playing .gif-play-button:focus .gif-play-button__circle,.gif--playing .gif-play-button:focus .gif-play-button__bg,.gif--playing .gif-play-button:focus .gif-play-button__pause-cta{opacity:1;-webkit-animation:300ms fadeout-pause 2s;animation:300ms fadeout-pause 2s;-webkit-animation-fill-mode:forwards;animation-fill-mode:forwards}.gif--loading img{visibility:hidden}.gif--loading .gif-play-button__cta,.gif--loading .gif-play-button__pause-cta{opacity:0}.gif--loading .gif-play-button__circle{-webkit-animation:spin 3s infinite linear;animation:spin 3s infinite linear;-webkit-transform-origin:50% 50%;-ms-transform-origin:50% 50%;transform-origin:50% 50%;stroke-dasharray:8, 4}.gif-play-button__cta,.gif-play-button__circle{opacity:1;-webkit-transition:opacity 100ms ease-out;-o-transition:opacity 100ms ease-out;transition:opacity 100ms ease-out}.gif-play-button__pause-cta{opacity:0}.gif-play-button{-webkit-appearance:none;-moz-appearance:none;appearance:none;background:none;border:0;display:block;width:100%;height:100%;padding:0;position:absolute;left:0;top:0;z-index:10}.gif-play-button__icon{display:block;height:48px;width:48px;position:absolute;top:50%;left:50%;margin:-1.5rem 0 0 -1.5rem}.gif-play-button__cta,.gif-play-button__pause-cta{fill:#fff}.no-svg .gif-play-button::after{content:"PLAY";display:block;width:48px;height:48px;position:absolute;top:50%;left:50%;margin:-1.5rem 0 0 -1.5rem}.no-svg .gif--playing .gif-play-button::after,.no-svg .gif--loading .gif-play-button::after{display:none}@-webkit-keyframes spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(1turn);transform:rotate(1turn)}}@keyframes spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(1turn);transform:rotate(1turn)}}@-webkit-keyframes fadeout-pause{0%{opacity:1}100%{opacity:0}}@keyframes fadeout-pause{0%{opacity:1}100%{opacity:0}}


/*# sourceMappingURL=subbuzzes.de459b95c74874fd6b70.css.map?brotli=allow*/</style><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fS9D33MWasw9q8uXPzRD3/pages/%5B...slug%5D.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fS9D33MWasw9q8uXPzRD3/pages/_app.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/runtime/webpack-e52ba3a8123d7926954d.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/framework.ae120b8c5761e53e5f76.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/68f504b0.f1abcdbb338826c9fd8d.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/5d22e404f10471a02487b526fff9a67fdbf3ec81.858d490322323b35fba3.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/e12f1740a749dbd8a654b2ea0ebe807611efad37.9b3f4ff21fd05bb564ff.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/049572d341ee327e21aa6718c0fe4d999fb2ff8c.e81bf0da32f65840bc52.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/ade5d81801d9056eb660d7a4a1e8da67c532af34.38caee8699d06775ea03.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/styles.ca80a62a5bb220ecb405.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/runtime/main-9c017966b4f833645069.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/d7d6c54e.70ab9aeef653278fce45.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/2edb282b.f9ae89ec13bed49eb7da.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/cef39f20.248a4369c125365bb053.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/07f259ac0b753643973237766cc129fec1cc8f7c.d3b0ce6608b6275b2503.js?brotli=allow" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/chunks/07f259ac0b753643973237766cc129fec1cc8f7c_CSS.8d20fa8ceffc8a76b073.js?brotli=allow" as="script"/></head><body><div id="__next"><div class="Ad Ad--awareness-bp "></div><div><div><div><svg width="0" height="0" style="display: block;"><defs><symbol width="95" height="18" id="bfn-logo"><path d="M1 13.46a.89.89 0 0 0 .34-.83V5.1A.89.89 0 0 0 1 4.24l-.67-.51v-.21h4.86c2.87 0 3.7 1.05 3.7 2.57v.07C8.9 7.37 8 8.34 5.73 8.58c2.65.1 3.72 1.09 3.72 2.74v.08c0 1.94-1.43 2.79-4.12 2.79h-5V14zm2.74-5h1.18c1.11 0 1.52-.37 1.52-2.12v-.23c0-1.66-.36-2.05-1.52-2.05H3.76zm3.07 3.05v-.31C6.84 9.51 6.34 9 4.9 9H3.76v4.1c0 .38.14.55.75.55h.41c1.41 0 1.93-.41 1.93-2.15zm3.38-3.57a.9.9 0 0 0-.36-.83l-.43-.38v-.2h3.06v5.34c0 .63.25 1 .93 1a2.56 2.56 0 0 0 1-.23V8.08a.89.89 0 0 0-.34-.83l-.69-.52v-.2h3.27v6.27a1 1 0 0 0 .36.83l.38.36v.21h-2.63l-.18-1.25a2.81 2.81 0 0 1-2.36 1.37c-1.26 0-2-.88-2-2.27zm11.66-.85h-1.09c-.55 0-.69.05-1 .57L18.17 10H18V6.53h6.12v1.09l-3.92 6h1c.55 0 .69-.05 1-.57l1.65-2.53h.21v3.65H18v-1.08zm7.12 0h-1.09c-.55 0-.69.05-1 .57L25.31 10h-.21V6.53h6.1v1.09l-3.92 6h1c.55 0 .69-.05 1-.57L31 10.53h.23v3.65h-6.15v-1.09zm3.54 6.39a.9.9 0 0 0 .36-.83V5.1a.9.9 0 0 0-.36-.83l-.65-.53v-.22h8.23v3.31h-.21l-1.6-2.14a1.22 1.22 0 0 0-1.22-.63h-1.74v4.46h1c.26 0 .41-.05.69-.38l1.43-1.85h.21v5h-.21L37 9.41a.72.72 0 0 0-.66-.41h-1v3.6a.68.68 0 0 0 .45.68l1.31.72v.21h-5.21V14zm10.49.84c-2 0-3.38-1.53-3.38-3.84a3.82 3.82 0 0 1 3.43-4 2.47 2.47 0 0 1 2.74 2.67v.83h-3.88C42 12 43 12.83 44.24 12.83a3.18 3.18 0 0 0 1.52-.45H46V13a3.84 3.84 0 0 1-3 1.32zm-1.17-5h2v-.91c0-1.15-.22-1.51-.84-1.51s-1.18.68-1.18 2.19zm7.78 5c-2 0-3.33-1.53-3.33-3.84a3.82 3.82 0 0 1 3.43-4 2.47 2.47 0 0 1 2.74 2.67v.83h-3.89c.14 2.09 1.1 2.94 2.33 2.94a3.18 3.18 0 0 0 1.52-.45h.21V13a3.84 3.84 0 0 1-3 1.34zm-1.17-5h2v-.91c0-1.15-.22-1.51-.84-1.51s-1.18.68-1.18 2.19zm4.4 1a3.62 3.62 0 0 1 3.72-3.94 4.3 4.3 0 0 1 1.44.28V5.29c0-.4-.07-.49-.33-.64L56.59 4v-.2L60 3.05h.21v9.74a.87.87 0 0 0 .38.81l.49.38v.21h-2.72l-.18-1.25a2.79 2.79 0 0 1-2.41 1.37c-1.7 0-2.87-1.45-2.87-3.93zm4 2.49a2.41 2.41 0 0 0 1.1-.23V9.29c0-1.78-.59-2.35-1.41-2.35s-1.45.63-1.45 2.5v.21c0 2.38.78 3.17 1.78 3.17zm6.56-8.63l-.36-.33v-.2h3.32L71 11V7.31a2.39 2.39 0 0 0-.44-1.41l-1.27-2.06v-.19h3.35v.21L71.79 6a2.82 2.82 0 0 0-.25 1.26v6.88H70l-5.11-8.2a7.7 7.7 0 0 0-1.44-1.75zm12.4 10.14c-2 0-3.38-1.53-3.38-3.84a3.82 3.82 0 0 1 3.43-4 2.47 2.47 0 0 1 2.74 2.67v.83h-3.91c.14 2.09 1.1 2.94 2.33 2.94a3.18 3.18 0 0 0 1.52-.45h.21V13a3.84 3.84 0 0 1-2.94 1.32zm-1.17-5h2v-.91c0-1.15-.22-1.51-.84-1.51s-1.18.68-1.18 2.19zm3.81-2.52l-.11-.11v-.16h3.61v.21l-.29.26a.68.68 0 0 0-.22.75l1.11 4 .93-3.42L83 6.72v-.21h2.28l1.51 5.31.62-2.12a1.71 1.71 0 0 0 0-1l-.59-2v-.17h2.72v.21l-.27.36A6.73 6.73 0 0 0 88 9.63l-1.32 4.56h-1.44l-1.49-4.93-1.33 4.93H81l-1.64-5.72a2.85 2.85 0 0 0-.93-1.63zm10.74 4.26h.21L90.6 13c.43.68.74.85 1.28.85.69 0 1.13-.34 1.13-.79a1.27 1.27 0 0 0-.69-1.11l-1.61-1.05a2.56 2.56 0 0 1-1.3-2.16c0-1.23 1-2.26 2.81-2.26a9.88 9.88 0 0 1 2.24.27V9.4h-.21l-1-1.56c-.48-.74-.82-.9-1.29-.9-.63 0-1 .33-1 .78s.15.68.69 1l1.51.9a2.54 2.54 0 0 1 1.56 2.28v.05c0 1.42-1.43 2.39-2.95 2.39a12.43 12.43 0 0 1-2.55-.3z"></path><path d="M64.59 14.32a1.83 1.83 0 0 1-1.87-1.87 1.87 1.87 0 0 1 3.73 0 1.83 1.83 0 0 1-1.87 1.87z"></path></symbol><symbol width="32" height="18" id="tasty-logo"><path d="M6.49 2.41a.82.82 0 0 0-.23-.54 1.16 1.16 0 0 0-.54-.24 2.64 2.64 0 0 0-.58-.08 5.38 5.38 0 0 0-.58.07c-.2 0-1 .14-1.16.18s-.94.23-1.18.28-.4.12-.61.16-1.07.22-1.22.28A.55.55 0 0 0 0 3a1.32 1.32 0 0 0 .06.69c.07.17.26.2.46.24a2.14 2.14 0 0 0 .56.07h.53c.16 0 .5-.08.53 0a3.61 3.61 0 0 1 0 .61v9.27c0 .18-.06.33-.08.56s0 .39 0 .57a1.43 1.43 0 0 0 .11.54c.08.19.2.33.39.27a5.71 5.71 0 0 0 .44-.19.79.79 0 0 1 .5-.1c.35 0 .41.08.64-.38a1.42 1.42 0 0 0 .16-.52 3.85 3.85 0 0 0 0-.55c0-.18-.1-.92-.12-1.08s-.09-.94-.09-1.13v-1.72c0-.19.07-1.51.07-1.71V7.27v-.59c0-.2 0-1 .06-1.17s0-.39 0-.59V3.78c0-.25.41-.1.48-.13s.82-.06 1-.08a2.19 2.19 0 0 0 .49-.07c.16-.06.24-.27.28-.5a1.77 1.77 0 0 0 0-.58"></path><path d="M12 14.91c0-.19-.05-.38-.06-.56s0-.38 0-.56-.08-1-.11-1.13-.14-.92-.17-1.11-.07-.36-.1-.55 0-.37-.06-.55-.15-.92-.17-1.11 0-.38 0-.57-.08-.94-.09-1.13-.05-.94-.07-1.13 0-.38 0-.57 0-.38-.07-.56-.07-.37-.11-.56-.19-.92-.24-1.11-.31-.93-.4-1.09a1.53 1.53 0 0 0-.35-.47.74.74 0 0 0-.57-.15 1.23 1.23 0 0 0-.54.15 1.21 1.21 0 0 0-.47.36 2.55 2.55 0 0 0-.23.56c-.07.19-.17.37-.23.57s-.12.4-.19.58-.13.34-.19.58-.08.38-.13.59l-.13.55c0 .19-.09.43-.13.63s-.1.57-.14.77-.15.83-.19 1-.09.42-.12.59-.12 1-.14 1.22-.06.45-.09.65-.05.37-.09.57-.17 1-.2 1.22S6 13.54 6 13.7s0 .32-.08.49-.06.32-.1.49a2.42 2.42 0 0 0-.09.83A.82.82 0 0 0 6 16a.92.92 0 0 0 .63.15c.3 0 1.1-.24 1.31-.56a4 4 0 0 0 .15-1.06 4.85 4.85 0 0 1 .06-.76c0-.06.28 0 .65 0h.6a2.91 2.91 0 0 1 .67 0 4 4 0 0 1 0 .74v1.2a1.67 1.67 0 0 0 0 .49.65.65 0 0 0 .31.37 1.29 1.29 0 0 0 1.21-.14.86.86 0 0 0 .31-.43 8 8 0 0 0 .1-1.09m-2.09-2.74a5.87 5.87 0 0 1-1 0c-.25 0-.53 0-.55-.06a6.17 6.17 0 0 1 .07-.68c0-.21.05-.73.08-1s0-.38 0-.59.09-1 .12-1.18.08-.39.11-.58l.09-.59c0-.21.18-1 .22-1.14.08-.32.17-.64.24-.64a1.71 1.71 0 0 1 .13.68c0 .2.13 1.55.15 1.86s.07 1 .09 1.21.07.4.08.6 0 .4.06.6 0 .41 0 .59.13.91 0 .93"></path><path d="M15.23 5.63a2.8 2.8 0 0 1-.17-.63 4.18 4.18 0 0 1 0-1 3.63 3.63 0 0 1 .3-.75 1.39 1.39 0 0 1 .39-.4.33.33 0 0 1 .49.13 2.39 2.39 0 0 1 0 1.07 5.28 5.28 0 0 0-.18.53 1 1 0 0 0 .16.52.93.93 0 0 0 .31.27 1.31 1.31 0 0 0 .38.21.61.61 0 0 0 .44-.15.76.76 0 0 0 .31-.43 1.7 1.7 0 0 0 .1-.48v-.54-.54a5.11 5.11 0 0 0 0-.55 2.91 2.91 0 0 0-.15-.53 1.46 1.46 0 0 0-.29-.47 1.58 1.58 0 0 0-.42-.35 3.93 3.93 0 0 0-.51-.18 11.07 11.07 0 0 0-1.12-.33 1.46 1.46 0 0 0-.6 0 1.32 1.32 0 0 0-.5.34 1.48 1.48 0 0 0-.36.4 4.43 4.43 0 0 0-.24.54c-.07.18-.32.94-.36 1.13a5 5 0 0 0-.09.55 10.86 10.86 0 0 0 0 1.11c0 .18.08.41.11.59a9.54 9.54 0 0 0 .34 1.06c.06.16.17.34.26.54s.13.39.2.58.4.9.48 1.08.18.38.25.54.45.94.55 1.14.17.41.25.62a4 4 0 0 1 .21.63c0 .14.22.86.23 1a2.2 2.2 0 0 1-.19 1c-.13.19-.21.27-.42.26a.57.57 0 0 1-.48-.43 1.94 1.94 0 0 1-.05-.67v-.57a3.8 3.8 0 0 0-.09-.56 1.5 1.5 0 0 0-.19-.52.69.69 0 0 0-.42-.36 1.22 1.22 0 0 0-.59.05.88.88 0 0 0-.51.27 1.1 1.1 0 0 0-.27.55s0 .93.05 1.14.09.36.13.55a4.82 4.82 0 0 0 .17.54 7.54 7.54 0 0 0 .51 1 3.23 3.23 0 0 0 .37.42 3.18 3.18 0 0 0 .44.33 4.66 4.66 0 0 0 1 .43 1.82 1.82 0 0 0 1.12-.15 2.1 2.1 0 0 0 .48-.3 4.79 4.79 0 0 0 .71-.89 3.66 3.66 0 0 0 .24-.53 7.07 7.07 0 0 0 .17-1.09 5 5 0 0 0-.06-.56c0-.18-.13-.35-.17-.54s-.09-.36-.15-.54-.12-.35-.18-.53-.13-.34-.21-.52-.35-.86-.43-1l-.23-.51-.24-.51c-.08-.17-.11-.36-.19-.53l-.24-.51c-.08-.17-.17-.33-.25-.5s-.13-.35-.2-.52-.13-.35-.2-.52-.15-.34-.22-.52"></path><path d="M23.71 2.39a1.16 1.16 0 0 0 .1-.51 1 1 0 0 0-.18-.49.82.82 0 0 0-.53-.19h-3.58a2.68 2.68 0 0 0-.52 0 .57.57 0 0 0-.44.24 1.35 1.35 0 0 0-.2.47 2.12 2.12 0 0 0 .05.52.83.83 0 0 0 .17.46c.11.13.37.13.64.1a3.5 3.5 0 0 1 .86 0c.06 0 0 .27.07.53a4.58 4.58 0 0 1 0 .56v1.73c0 .2-.08.88-.09 1.07s0 .38 0 .57V8c0 .19-.05.43-.06.62s-.13 1.43-.14 1.61 0 .9 0 1.08v.59c0 .18-.07.94-.07 1.12s-.07.91-.09 1.05a1.83 1.83 0 0 0 0 .51 1.2 1.2 0 0 0 .16.48.62.62 0 0 0 .59.16 3.76 3.76 0 0 0 .58-.15 4.13 4.13 0 0 1 .57-.17.53.53 0 0 0 .51-.26 1.17 1.17 0 0 0 .09-.59c0-.19-.06-.39-.08-.61s0-.39 0-.58v-.58-.58-.59-.59V9.4v-.64-.63-.54-1-.63-.55-.86-.7c0-.17-.06-.67-.06-.8s.27-.08.58-.09.37 0 .53 0a1.42 1.42 0 0 0 .53-.06.69.69 0 0 0 .3-.45"></path><path d="M31.62 6.73a.46.46 0 0 0-.44-.17 1.15 1.15 0 0 0-.47.2 4 4 0 0 0-.44.29l-.41.34c-.14.12-.25.27-.38.38A2.22 2.22 0 0 1 29 8a5.7 5.7 0 0 0-.51.27c-.07 0 0-.54 0-.7s.05-.39.1-.63.07-.35.12-.56l.13-.6c.05-.25.08-.44.11-.58s.06-.33.11-.54.07-.35.11-.54.08-.36.11-.54.05-.38.07-.55a4.12 4.12 0 0 0 0-.55 1.78 1.78 0 0 0 0-.56.55.55 0 0 0-.43-.34 1.57 1.57 0 0 0-.55 0 .85.85 0 0 0-.43.33c-.12.13-.24.19-.29.38a2.37 2.37 0 0 0 0 .48c0 .19-.06.36-.06.54s0 .61-.06.8-.12.69-.15.87-.06.74-.1 1a2.7 2.7 0 0 1-.18.89.71.71 0 0 1-.57.26.86.86 0 0 1-.57-.24c-.13-.1-.13-.51-.14-.78a4.55 4.55 0 0 1 .06-.64c0-.22 0-.44.06-.64s.08-.51.1-.63.16-.84.2-1 .12-.33.15-.5.05-.37.07-.52.06-.46 0-.51a.82.82 0 0 0-.52-.22 1.39 1.39 0 0 0-.55.11c-.2.06-.4.12-.48.28a2.54 2.54 0 0 0-.17.54c0 .16-.17.91-.2 1.1s-.14.92-.17 1.11 0 .38 0 .56 0 .38-.06.56-.06.37-.07.55 0 1 0 1.12a1.46 1.46 0 0 0 .14.54 2.35 2.35 0 0 0 .28.43 1.24 1.24 0 0 0 .35.27 1.81 1.81 0 0 0 .52.2l.52.1.52.06a2.86 2.86 0 0 0 .79 0 2.82 2.82 0 0 1-.62.42l-.47.24-.47.23-.47.23-.5.23c-.17.08-.34.16-.5.25a3.83 3.83 0 0 0-.43.32 4.43 4.43 0 0 0-.51.46 3.71 3.71 0 0 0-.46.91 3.42 3.42 0 0 0-.1.58 4.14 4.14 0 0 0 0 .6 4.69 4.69 0 0 0 .09.59 8.78 8.78 0 0 0 .37 1.09 4.47 4.47 0 0 0 .32.55 3 3 0 0 0 .39.43 2.35 2.35 0 0 0 .46.37 4 4 0 0 0 1.09.38 4 4 0 0 0 1.15-.09 2.43 2.43 0 0 0 .86-.64 5.26 5.26 0 0 0 .39-.46 9.6 9.6 0 0 0 .52-1 3.89 3.89 0 0 0 .19-.62 4.41 4.41 0 0 0 .1-.62v-.62-.63-.59c0-.2-.06-.4-.05-.59s0-.54 0-.61.32-.29.49-.41.9-.54 1.08-.65a4.33 4.33 0 0 0 .5-.38c.11-.09.29-.21.45-.35a5.79 5.79 0 0 0 .74-.85.73.73 0 0 0 0-.55 1.2 1.2 0 0 0-.35-.47zm-4.4 7a3.49 3.49 0 0 1-.24.58 1.32 1.32 0 0 1-.35.45 1 1 0 0 1-.53.17 1.36 1.36 0 0 1-.54-.07 1.07 1.07 0 0 1-.48-.25 1 1 0 0 1-.22-.5 1.24 1.24 0 0 1 0-.54 3.3 3.3 0 0 1 .49-1 3.42 3.42 0 0 1 .4-.39c.13-.1.25-.2.4-.3l.46-.28c.21-.11.66-.47.69-.36s0 .26 0 .82a4.8 4.8 0 0 1 0 .55v.54a3.32 3.32 0 0 1-.08.58z"></path></symbol><symbol width="48" height="18" id="goodful-logo"><path d="M6.88 5.94c-.26 1.73-2.19 4.45-3.44 4.45-.83 0-1.4-.8-1.4-2C2 5.56 4.14 2.61 5.67 2.61a.92.92 0 0 1 1 .94 2.4 2.4 0 0 1-.14.81c-.24.58 1.31.91 1.43.46a5.69 5.69 0 0 0 .26-1.53 2.16 2.16 0 0 0-2.3-2.12c-3.18 0-5.6 3.89-5.6 7.36 0 1.83 1 3.33 2.82 3.33 2.16 0 4-2.64 4.54-5.22zm22.28 3.4c-.2 1.48-1 2.48-1.46 2.48-.34 0-.48-.7-.5-1.36a45.31 45.31 0 0 1 1.15-8.65c0-.66-1.58-.66-1.61.22a34.24 34.24 0 0 0-1 8.37c.09 1.77.86 2.7 1.85 2.7 1.74 0 2.37-2.5 2.6-3.76zM45 13.25c1 0 1.94-1.25 2.42-3 .11-.3-.38-.59-.74-.47-.52 1.55-1 2-1.39 2s-.58-.66-.55-1.81a32.65 32.65 0 0 1 .5-4.82c.34-1.89.49-2.73.94-2.73.23 0 .45.25.45.83 0 1.75-1.25 4.28-2.9 5l.49 1.19c1.94-1 3.63-4.14 3.63-6.12 0-1.47-.73-2.16-1.69-2.16s-2 .75-2.49 3.62c-.19 1.15-.58 4.56-.58 5.3-.01 2.36.84 3.17 1.91 3.17zm-1.73-4.87c-.27 1-1.42 3.11-2.22 3.11-.38 0-.52-.41-.52-1.64a18.77 18.77 0 0 1 .66-4.07c0-.33-1.47-.31-1.52 0a20.44 20.44 0 0 0-.67 4.1c0 2 .74 2.81 1.85 2.81 2.15 0 3.27-3.33 3.46-4.31zm-3.62-2.49c-.67 2.81-1.57 5-2.33 5-.27 0-.53-.19-.53-.75a20.66 20.66 0 0 1 .66-4.39c0-.33-1.49-.31-1.53 0a23.47 23.47 0 0 0-.67 4.42c0 1.45.83 2.06 1.64 2.06 1.79 0 2.74-2.42 3.43-5.62zm-21.45.52c-1.66 0-2.62 1.77-2.62 3.48s.68 3.45 2.47 3.45c1.33 0 2.58-1.58 2.58-4.44 0-1.06-.5-1.91-1.22-1.91A1.53 1.53 0 0 0 18 8.64a2.5 2.5 0 0 0 2.49 2.66 3.6 3.6 0 0 0 2.61-1.93c.16-.25-.61-.67-.69-.56-.56.91-1.39 1.44-2.07 1.17l-1.07-1.45a2.23 2.23 0 0 1 .11.7c0 1.23-.39 2.91-1.22 2.91-.61 0-1-1-1-2.27s.39-2.37 1.53-2.37a.93.93 0 0 0 .53-.7 1.34 1.34 0 0 0-1.02-.39zm-6.11-.11C10.7 6.29 9.54 8 9.54 10.12c0 1.63 1 3.36 2.58 3.36s2.71-2 2.71-4.44c0-.89-.53-1.89-1.27-1.89a1.29 1.29 0 0 0-1.33 1.42 1.85 1.85 0 0 0 2 1.84c1.58 0 2.6-1.39 3-3.09 0-.14-1 .08-1 .16-.61 1.19-1.53 1.87-2.11 1.69l-1-.64.53.84c0 1.45-.5 2.89-1.49 2.89-.67 0-1.11-.84-1.11-2.23 0-1.15.55-2.56 1.27-2.56a2.93 2.93 0 0 1 .58.16c.26.06.75-.47.64-.62a1.68 1.68 0 0 0-1.45-.72zM6.86 5A30.3 30.3 0 0 1 6 13.16c-.31 1.4-1.42 3.42-2.37 3.42a.54.54 0 0 1-.5-.58c0-1.16 1.72-2.28 3.43-2.8 2.07-.6 3.79-1.58 4.08-3.66L10 8.26a3.91 3.91 0 0 1-3.25 3.54c-2.42.58-5 2-5 4.28a1.72 1.72 0 0 0 1.75 1.77c2.41 0 3.81-2.72 4.31-5.42a35.27 35.27 0 0 0 .63-7.69c0-.29-1.58.01-1.58.26zm18.82 4.64c-.16 1.25-.74 2.69-1.6 2.69-.59 0-.86-.7-.86-1.39 0-1.22.67-3.2 1.64-3.2a1.08 1.08 0 0 1 1 .89l.31-1.15a1.4 1.4 0 0 0-1.32-.89c-2 0-3 2.58-3 4.36 0 1.36.64 2.69 2.08 2.69s2.38-1.85 2.58-3.1c-.04.04-.83-.95-.83-.9zm11.13-3.7l-.9-.14c-.66 2.2-1.72 4.2-3.42 4.35-.11 0 .17 1.33.61 1.17 1.9-.54 3.29-2.74 3.71-5.38zm-4.19 5.5l-.92-1a5.64 5.64 0 0 1 1.17 3.3c0 1.53-.67 2.77-1.24 2.77s-1-.55-1-4.62c0-.52 0-1.37.08-1.94.2-3.11.75-5.48 1.49-5.48.36 0 .63.42.63.91 0 1.42-1.46 3.52-2.51 3.52l.53.84C32.38 9.67 34 6.91 34 5.42c0-1.77-1.13-2.33-1.85-2.33-1.75 0-2.82 1.84-3.08 6.67 0 .64-.11 1.55-.11 2.16 0 3.52.49 5.91 2.47 5.91 1.21 0 2.72-1.28 2.72-4.45 0-1.56-1-4.37-2.77-4.37-.67 0-1.11.3-1.11 1.42.02.57 1.11 1.44 2.35 1z"></path></symbol><symbol id="bringme-logo" viewBox="0 0 75 29"><path d="M74.81,12.15A1.64,1.64,0,0,0,74.09,11L61.29,2.2h0a.94.94,0,0,0-1,0,.94.94,0,0,0-.49.82V4.89l-16,3.38V2.1A2.07,2.07,0,0,0,43,.49,2.1,2.1,0,0,0,41.28.06L.81,8.53A.94.94,0,0,0,.19,9a1,1,0,0,0-.08.76l3,8.89a.55.55,0,0,1,0,.36l-3,9.34a.89.89,0,0,0,.19.88.86.86,0,0,0,.84.27l32-6.58h0l.7-.15v6.32a.5.5,0,0,0,.51.51h.11l25.34-5.4v2.39a.88.88,0,0,0,1.52.6l13-13.7A1.6,1.6,0,0,0,74.81,12.15ZM4.1,19.31a1.63,1.63,0,0,0,0-1l-3-8.79L41.49,1.07a1,1,0,0,1,1.27,1V8.9s0,.08,0,.11V19.76l-8.49,1.87L1.2,28.45ZM41.74,21l-6.85,6.87V22.52Zm31.89-8.24L60.86,26.2V24a.91.91,0,0,0-1.09-.88L35.92,28.23l7.69-7.73a.47.47,0,0,0,.14-.37h0V9.32L60.08,5.89A.93.93,0,0,0,60.86,5V3.15l12.65,8.67h0a.61.61,0,0,1,.27.44A.62.62,0,0,1,73.63,12.76Z"></path><path d="M35,17a2.54,2.54,0,0,0,3,1.5,4.08,4.08,0,0,0,2.64-1.84,1.5,1.5,0,0,0,.2-.72c0-.72,0-1.44,0-2.16s0-1.53,0-2.29c0-.4-.14-.51-.54-.44l-1.73.32c-1.1.21-1.1.21-1,1.32v0c0,.33.15.43.48.38l.76-.12a.33.33,0,0,1,.42.36c0,.76,0,1.52,0,2.28A1.43,1.43,0,0,1,38,16.8a.94.94,0,0,1-1.19-.56,5.45,5.45,0,0,1-.53-1.53,15.87,15.87,0,0,1-.15-4.46,13.26,13.26,0,0,1,.31-1.87A2.68,2.68,0,0,1,37.17,7a1,1,0,0,1,1.63.21c.09.14.16.3.24.45a.34.34,0,0,0,.51.17l.77-.41a.42.42,0,0,0,.22-.52A2.36,2.36,0,0,0,38.24,5,3.32,3.32,0,0,0,35.5,6.48a7.08,7.08,0,0,0-1.14,3,16.5,16.5,0,0,0-.14,4.38A8.78,8.78,0,0,0,35,17Z"></path><path d="M11.18,17.09c-.21-.12-.15-.28,0-.42a4,4,0,0,0,1.16-3c0-.23-.06-.57-.13-.9A2.18,2.18,0,0,0,9.51,10.9c-.93.14-1.86.32-2.79.5-.39.07-.49.2-.49.59q0,6,.1,12c0,.43.13.52.56.45L9.32,24a3.85,3.85,0,0,0,2.16-1,4.21,4.21,0,0,0,1.08-3.26A2.92,2.92,0,0,0,11.18,17.09ZM8,14.77H8c0-.49,0-1,0-1.47s.11-.49.47-.58l.36-.07c.89-.15,1.41.17,1.52,1a4.69,4.69,0,0,1-.06,1.63c-.25,1-1.05,1.29-1.94,1.34-.26,0-.32-.18-.32-.39C8.05,15.77,8.05,15.27,8,14.77Zm2.56,6A1.76,1.76,0,0,1,9,22.42c-.83.18-.91.12-.91-.72,0-.41,0-.83,0-1.25h0c0-.51,0-1,0-1.53s.11-.58.56-.66l.24,0c1.15-.26,1.61.35,1.75,1.29A4.36,4.36,0,0,1,10.6,20.81Z"></path><path d="M19.05,17a.58.58,0,0,1,.18-.71,3.71,3.71,0,0,0,1-1.52,6.4,6.4,0,0,0,.32-2.6,3.4,3.4,0,0,0-.5-1.75A2.13,2.13,0,0,0,17.92,9.3c-1,.13-2,.35-3,.55-.58.11-.65.22-.65.79,0,1.95,0,3.89.05,5.84s0,3.77.05,5.66c0,.14,0,.28,0,.43,0,.31.15.41.47.36s.56-.1.85-.17.51-.21.52-.67c0-.2,0-.41,0-.61l0-3.42c0-.4.11-.53.48-.62s.54,0,.68.4c.44,1.23.87,2.46,1.3,3.69.16.46.29.53.79.42l.75-.16c.53-.11.59-.23.4-.71C20.09,19.72,19.57,18.35,19.05,17Zm-.91-1.91a2.12,2.12,0,0,1-1.65.75c-.25,0-.31-.18-.31-.39,0-.64,0-1.27,0-1.9s0-1.2,0-1.8c0-.4.1-.52.51-.62l.51-.11a1.12,1.12,0,0,1,1.21.54A3.63,3.63,0,0,1,18.14,15.08Z"></path><path d="M32.63,7c0-.11,0-.22,0-.33a.31.31,0,0,0-.39-.32c-.24,0-.48.08-.73.13-.67.14-.72.2-.71.88,0,2.15,0,4.31,0,6.46h0c0,.21-.31.28-.38.09h0c-.39-1-.76-2-1.13-3L28.15,7.73c-.17-.46-.3-.52-.78-.43l-.64.13c-.53.11-.62.21-.61.75,0,2,0,3.91.05,5.87,0,1.06,0,2.12,0,3.18l0,2.87a.42.42,0,0,0,.51.41c.21,0,.42-.09.63-.13.66-.14.7-.19.7-.86,0-2.29,0-4.57,0-6.86h0a.21.21,0,0,1,.39-.08h0c.48,1.26,1,2.53,1.42,3.79.34.94.69,1.87,1,2.8.14.36.28.43.66.36l.55-.12c.63-.13.67-.17.66-.81C32.7,14.71,32.66,10.84,32.63,7Z"></path><path d="M24.19,14.52c0-1.92,0-3.83-.05-5.75,0-.13,0-.27,0-.4A.34.34,0,0,0,23.71,8l-.7.13c-.67.13-.72.18-.71.86,0,3.86.06,7.71.1,11.57,0,.11,0,.22,0,.33a.32.32,0,0,0,.4.34c.28,0,.55-.08.82-.14.54-.1.61-.18.61-.73C24.22,18.44,24.21,16.48,24.19,14.52Z"></path><path d="M61.16,19.23c-.71.14-1.42.29-2.13.41-.42.08-.53,0-.53-.44,0-1,0-2.06,0-3.09,0-.41.1-.52.52-.6l1.6-.3c1-.2,1-.21,1-1.25,0-.42-.12-.5-.54-.42l-2,.38c-.43.08-.56,0-.57-.44,0-.94,0-1.88,0-2.82,0-.41.1-.52.51-.6l1.75-.34c1-.19,1-.13,1-1.22,0-.45-.13-.54-.57-.46l-3.82.75c-.53.1-.58.17-.58.69l0,5.76c0,2,0,3.92,0,5.88,0,.45.12.54.57.46l3.4-.66c1-.2,1-.1,1-1.23C61.73,19.23,61.62,19.15,61.16,19.23Z"></path><path d="M64,7.48A1.48,1.48,0,0,0,62.7,9.11l.89,7.39a.52.52,0,0,0,1,0L65.57,9A1.4,1.4,0,0,0,64,7.48Z"></path><path d="M55.13,13.52c0-1.21,0-2.42,0-3.63,0-.4-.14-.52-.54-.45s-.77.17-1.15.22a.79.79,0,0,0-.75.72c-.52,2.3-1.07,4.59-1.6,6.88a3.13,3.13,0,0,1-.16.52c0,.06-.09.13-.14.13s-.12-.06-.14-.11a4.5,4.5,0,0,1-.16-.48q-.83-3.09-1.66-6.18c-.12-.46-.24-.53-.7-.45L47,10.92c-.54.11-.59.19-.59.73l0,5.76,0,5.25c0,.24,0,.48,0,.71s.14.41.44.37l.71-.14c.59-.12.64-.18.64-.78l0-6.54c0-.2,0-.4,0-.6a.45.45,0,0,1,.1-.23c.09,0,.13.11.16.18s.11.34.16.51l1.14,4.35c.18.71.37,1.42.56,2.13.06.2.16.37.41.35a.47.47,0,0,0,.46-.37l.06-.2,1.62-7.06a5.16,5.16,0,0,1,.2-.67c0-.05.07-.08.12-.12s.08.08.09.13a5.46,5.46,0,0,1,0,.57c0,2.15,0,4.29,0,6.44,0,.13,0,.26,0,.39a.29.29,0,0,0,.37.31l.75-.14c.59-.11.66-.18.66-.79C55.16,18.82,55.14,16.17,55.13,13.52Z"></path><path d="M64.12,18.09a1.07,1.07,0,0,0-1,1.06,1,1,0,0,0,1,1,1.07,1.07,0,0,0,1-1.06A1,1,0,0,0,64.12,18.09Z"></path></symbol><symbol width="48" height="18" id="asis-logo"><path d="M38.29 13.8h1.8V2.71h-1.8V13.8z"></path><path d="M44.59 5.45a3.6 3.6 0 0 1 3.14 1.48l-1.15 1.15a2.39 2.39 0 0 0-2.08-1c-.77 0-1.29.29-1.29.8s.63.75 1.86 1 2.68.72 2.68 2.51S46.44 14 44.55 14A3.85 3.85 0 0 1 41 12.35l1.17-1.16a2.67 2.67 0 0 0 2.45 1.21c.81 0 1.36-.26 1.36-.88s-.57-.78-1.75-1-2.79-.73-2.79-2.53c0-1.53 1.17-2.49 3.13-2.49"></path><path d="M5.8 5.18l1.84 4.67H4zm-.87-2.43L.22 13.84H2.3l.85-2 .09-.22h5.13l.09.22.85 2h2.08L6.68 2.75z"></path><path d="M15.63 8.93c-1.23-.28-1.86-.42-1.86-1s.52-.8 1.29-.8a2.39 2.39 0 0 1 2.08 1L18.3 7a3.6 3.6 0 0 0-3.14-1.48c-2 0-3.13 1-3.13 2.49 0 1.79 1.56 2.27 2.79 2.53s1.75.41 1.75 1-.55.88-1.36.88a2.67 2.67 0 0 1-2.45-1.21l-1.17 1.16A3.85 3.85 0 0 0 15.11 14c1.89 0 3.2-.8 3.2-2.59S17 9.24 15.63 8.93"></path><path d="M36 2.69l-15.51 9.36v2.14L36 4.83V2.69z"></path></symbol><symbol width="1024" height="1024" id="lol-badge"><path fill="#fe0" d="M955.3 256C814 11.2 500.9-72.7 256 68.7 11.2 210-72.7 523.1 68.7 768 210 1012.8 523.1 1096.7 768 955.3 1012.8 814 1096.7 500.9 955.3 256z"></path><path d="M416 640.9l33.3 57.6-148.9 86-126.1-218.4 66.1-38.2 92.8 160.7 82.8-47.7zm212.5-191.3c38.7 67.1 13.2 143-54.3 181.9-67.4 38.9-145.9 23.2-184.7-43.9s-13.2-143 54.3-181.9c67.5-38.9 146-23.2 184.7 43.9zm-67.1 38.8c-17.6-30.4-52.2-42.8-83.9-24.4-31.8 18.3-38.4 54.5-20.8 84.9 17.6 30.4 52.2 42.8 83.9 24.4s38.4-54.5 20.8-84.9zm182.8-37l-92.8-160.7-66.1 38.2 126.1 218.3 148.9-86-33.3-57.6-82.8 47.8z"></path></symbol><symbol width="200" height="200" id="win-badge"><path fill="#fe0" d="M186.588 50.01c27.61 47.822 11.225 108.973-36.596 136.583-47.822 27.61-108.97 11.226-136.58-36.597-27.61-47.823-11.225-108.974 36.596-136.584 47.822-27.61 108.971-11.225 136.58 36.598"></path><path d="M87.659 140.935l-19.032-18.183 6.312 25.525-15.882 9.171-33.939-32.589 14.989-8.653 17.63 18.561-5.557-25.532 13.046-7.532 19.25 17.625-7.259-24.549 15.072-8.702 11.251 45.688-15.881 9.17"></path><path d="M88.108 73.798c-2.62-4.538-1.079-10.291 3.458-12.91 4.54-2.62 10.291-1.079 12.911 3.458 2.619 4.539 1.079 10.29-3.461 12.91-4.536 2.621-10.287 1.08-12.908-3.458zm29.85 49.643l-22.597-39.138 14.586-8.421 22.594 39.138-14.583 8.421zM165.532 95.973l-12.491-21.635c-2.34-4.051-5.416-4.328-8.899-2.316-3.322 1.917-4.041 4.603-4.462 6.682l13.941 24.146-14.586 8.421-22.596-39.138 14.584-8.421 2.573 4.457c.772-3.903 3.43-9.219 10.316-13.195 9.075-5.239 16.229-2.021 20.157 4.785l16.047 27.794-14.584 8.42"></path></symbol><symbol width="512" height="512" id="trending-badge"><circle fill="#e32" cx="256" cy="256" r="256"></circle><path d="M377.896 247.32l-15.2-107.775-100.934 40.72 40.006 23.1-37.795 65.46-65.46-37.794-64.49 111.71 36.12 20.853 43.638-75.582 65.462 37.795L337.89 224.22l40.006 23.1" fill="#FFF"></path></symbol><symbol id="hamburger" width="16" height="12"><g fill-rule="nonzero"><path d="M0 0h16v2H0zM0 5h16v2H0zM0 10h16v2H0z"></path></g></symbol><symbol id="search-icon" width="38" height="38"><path d="M24.5 1C17.6 1 12 6.6 12 13.5c0 2.7.9 5.2 2.4 7.3L.6 34.6c-.8.8-.8 2 0 2.8.8.8 2 .8 2.8 0l13.8-13.8c2.1 1.5 4.6 2.4 7.3 2.4C31.4 26 37 20.4 37 13.5S31.4 1 24.5 1zm0 21c-4.7 0-8.5-3.8-8.5-8.5S19.8 5 24.5 5 33 8.8 33 13.5 29.2 22 24.5 22z"></path></symbol><symbol id="close-icon" width="38" height="38"><polygon points="30.3,10.5 27.5,7.7 19,16.2 10.5,7.7 7.7,10.5 16.2,19 7.7,27.5 10.5,30.3 19,21.8 27.5,30.3 30.3,27.5 21.8,19 "></polygon></symbol><symbol id="caret-icon" width="38" height="38"><path d="M11.5 36c-.5 0-1-.2-1.4-.6-.8-.8-.8-2 0-2.8L23.7 19 10.1 5.4c-.8-.8-.8-2 0-2.8.8-.8 2-.8 2.8 0L29.3 19 12.9 35.4c-.4.4-.9.6-1.4.6z"></path></symbol><symbol id="settings-icon" width="512" height="512"><path d="M254.993 352.303c-53.193-.41-95.981-43.862-95.571-97.035.41-53.193 43.862-95.981 97.035-95.571 53.193.41 95.981 43.842 95.571 97.035-.39 53.193-43.842 95.981-97.035 95.571m212.965-150.774l21.492-15.792c-11.029-36.698-30.51-69.765-56.14-96.976l-24.4 10.717c-18.739 8.238-40.075 6.364-57.682-4.041-1.347-.8-2.694-1.581-4.041-2.342-17.92-9.994-30.256-27.602-32.501-48l-2.928-26.547c-17.412-4.099-35.527-6.403-54.169-6.539-19.93-.156-39.314 2.147-57.897 6.52l-2.928 26.645c-2.245 20.36-14.543 37.947-32.423 47.961-1.327.742-2.655 1.503-3.963 2.284-17.627 10.443-39.001 12.337-57.76 4.099l-24.498-10.756c-25.61 27.192-45.033 60.259-56.062 97.015l21.414 15.733c16.709 12.259 25.552 32.013 25.357 52.724v.332c-.02 1.542-.02 3.084.02 4.626.371 20.203-9.057 39.314-25.357 51.28l-21.492 15.772c11.029 36.717 30.51 69.765 56.14 96.996l24.4-10.736c18.739-8.218 40.094-6.344 57.702 4.06 1.327.8 2.674 1.562 4.041 2.323 17.9 9.994 30.237 27.621 32.482 48l2.928 26.567c17.412 4.099 35.527 6.422 54.169 6.539 19.95.156 39.314-2.147 57.897-6.52l2.948-26.645c2.225-20.36 14.543-37.947 32.404-47.961 1.327-.742 2.655-1.503 3.963-2.284 17.627-10.443 39.001-12.337 57.76-4.099l24.498 10.756c25.63-27.192 45.053-60.278 56.081-97.035l-21.433-15.714c-16.69-12.278-25.552-32.013-25.337-52.744v-.332c0-1.542 0-3.065-.039-4.607-.371-20.203 9.057-39.314 25.357-51.28"></path></symbol><symbol id="bfo-logo" width="315.7" height="53.2"><path d="M31.8 27.3c2.5.2 4.6 1.2 6.4 3.1 1.8 1.9 2.7 4.5 2.7 7.8 0 4-1.3 7.3-4 9.7-2.7 2.4-6.5 3.6-11.6 3.6H.7V4.1h24.5c4.3 0 7.8 1.2 10.4 3.5 2.6 2.4 3.9 5.5 3.9 9.4 0 3-.8 5.3-2.5 7.1s-3.4 2.7-5.3 2.9l.1.3zm-19.4-3.6h10.2c1.7 0 3.1-.5 4.2-1.5 1-1 1.6-2.2 1.6-3.9 0-1.5-.5-2.6-1.5-3.5s-2.3-1.3-3.8-1.3H12.4v10.2zm10.8 18.4c1.8 0 3.3-.5 4.3-1.4 1-.9 1.5-2.2 1.5-3.9 0-1.6-.5-2.8-1.6-3.7-1-.9-2.4-1.4-4-1.4h-11v10.4h10.8zM81.4 51.5H70.1v-3.4c-2.8 3-6.5 4.5-10.9 4.5-4.2 0-7.5-1.4-10-4.1-2.5-2.7-3.8-6.3-3.8-10.7V16h11.2v19.4c0 2.1.6 3.8 1.7 5.1 1.1 1.3 2.6 1.9 4.4 1.9 2.3 0 4.1-.8 5.4-2.4 1.3-1.6 1.9-4.1 1.9-7.5V16h11.3l.1 35.5zM116.3 51.5h-30v-2.1L100.4 25H86.7v-9h29.4v2.1L102 42.5h14.2v9zM151.1 51.5h-29.9v-2.1l14-24.4h-13.7v-9h29.4v2.1l-14.1 24.4H151l.1 9zM167.9 24.4h20.5v10.2h-20.5v17h-11.7V4.1h34v10.2h-22.3v10.1zM271.3 36.7h-26c.7 4.4 4 6.9 8.9 6.9 3.9 0 7.8-1.5 10.7-3.8l4.3 7.5c-4 3.4-9.1 5.3-15 5.3-11.9 0-20-7.2-20-18.8 0-5.5 1.8-10 5.4-13.5 3.6-3.5 8.1-5.3 13.4-5.3 5.1 0 9.4 1.7 12.9 5.2s5.3 8 5.4 13.7v2.8zm-22.9-11.1c-1.4 1-2.4 2.4-2.9 4.1h14.6c-.5-1.8-1.4-3.2-2.7-4.2-1.3-.9-2.8-1.4-4.4-1.4-1.7 0-3.2.5-4.6 1.5zM229.9 36.7h-26c.7 4.4 4 6.9 8.9 6.9 3.9 0 7.8-1.5 10.7-3.8l4.3 7.5c-4 3.4-9.1 5.3-15 5.3-11.9 0-20-7.2-20-18.8 0-5.5 1.8-10 5.4-13.5 3.6-3.5 8.1-5.3 13.4-5.3 5.1 0 9.4 1.7 12.9 5.2s5.3 8 5.4 13.7v2.8zM207 25.6c-1.4 1-2.4 2.4-2.9 4.1h14.6c-.5-1.8-1.4-3.2-2.7-4.2-1.3-.9-2.8-1.4-4.4-1.4-1.7 0-3.2.5-4.6 1.5zM315 51.5h-11.3v-2.8c-2.9 2.6-6.5 3.9-11 3.9-4.8 0-8.9-1.8-12.3-5.3-3.4-3.5-5.1-8-5.1-13.5s1.7-10 5.1-13.5 7.5-5.3 12.3-5.3c4.5 0 8.2 1.3 11 3.9V.6H315v50.9zm-13.8-11.1c1.7-1.7 2.6-3.9 2.6-6.6 0-2.6-.9-4.8-2.6-6.6-1.7-1.7-3.8-2.6-6.1-2.6-2.5 0-4.5.9-6.1 2.6s-2.4 3.9-2.4 6.6c0 2.7.8 5 2.4 6.7s3.6 2.5 6.1 2.5c2.3 0 4.3-.9 6.1-2.6z"></path></symbol><symbol id="default-user-icon" width="512" height="512"><path d="M256.271 12c-135.09 0-244.271 109.182-244.271 244.271 0 135.09 109.182 244.271 244.271 244.271 135.09 0 244.271-109.182 244.271-244.271 0-135.09-109.182-244.271-244.271-244.271zm168.399 160.997c-12.954 0-27.758-3.701-40.712-14.804-16.655-12.954-22.206-31.459-18.505-55.516 24.057 18.505 44.413 42.562 59.217 70.321zm-168.399-105.481c25.908 0 49.965 5.552 74.022 14.804-18.505 37.011-53.666 62.918-96.228 75.872-44.413 12.954-90.677 5.552-125.837-16.655 33.31-44.413 86.975-74.022 148.043-74.022zm0 377.51c-103.63 0-188.755-85.125-188.755-188.755 0-29.609 7.402-57.367 18.505-81.424 29.609 18.505 64.769 27.758 99.929 27.758 18.505 0 37.011-1.851 55.516-7.402 35.16-9.253 64.769-27.758 86.975-51.815 5.552 16.655 14.804 31.459 29.609 44.413 18.505 14.804 42.562 22.206 64.769 22.206 3.701 0 9.253 0 12.954-1.851 3.701 14.804 5.552 31.459 5.552 48.114 3.701 103.63-81.424 188.755-185.054 188.755zM256.271 385.809c35.16 0 62.918-27.758 62.918-62.918h-127.687c1.851 33.31 29.609 62.918 64.769 62.918zM147.09 230.364h-33.31v31.459c0 18.505 14.804 31.459 31.459 31.459s31.459-14.804 31.459-31.459-12.954-31.459-29.609-31.459zM333.994 261.823c0 18.505 14.804 31.459 31.459 31.459s31.459-14.804 31.459-31.459v-31.459h-31.459c-16.655 0-31.459 12.954-31.459 31.459z"></path></symbol><symbol id="sparkles-icon" width="14" height="14" fill="#E40C78"><path fill="#E40C78" d="M13.11 10.023c-1.628 0-2.724-2.3-2.724-3.95 0 1.65-1.096 3.95-2.725 3.95 1.629 0 2.725 2.318 2.725 3.95 0-1.65 1.113-3.95 2.725-3.95zM8.537 6.375C5.994 6.375 4.268 2.66 4.268 0 4.268 2.66 2.54 6.375 0 6.375c2.541 0 4.268 3.715 4.268 6.376 0-2.66 1.726-6.376 4.268-6.376z"></path></symbol></defs></svg><div id="js-header-container"><header class="header__3OBcH"><a href="#buzz-content" class="skipNav__261Yu">Skip To Content</a><div class="js-sticky-container"><div class="mainNavContainer__1m7kD mainNavContainer__3mRKb js-main-nav
          
          
        "><div class="wrapper__36hPD"><div class="mainNav__VimfQ"><button type="button" aria-expanded="false" aria-label="open menu to see more links" class="menuToggle__GGVU- menuToggle__3tmWj" aria-controls="js-more-nav"><i><svg viewBox="0 0 16 12" width="16" height="12" aria-hidden><use xlink:href="#hamburger"></use></svg></i></button><a href="https://www.buzzfeed.com" class="logoContainer__3fSgq"><svg viewBox="0 0 315.7 53.2" class="bfo__MfRqr bfoLogo__198yR" role="img" aria-labelledby="js-bfo-logo-title" edition="us"><title id="js-bfo-logo-title">Homepage</title><use xlink:href="#bfo-logo"></use></svg></a><nav class="topicNavWrapper__1oERL wrapper__DtNG9" aria-label="Hot Topics"><ul class="topicNav__WFzIs"><li class="topicNavItem__i53qs"><a href="https://www.buzzfeed.com/quizzes" class="link__1aeEz link__2d6hQ ">Quizzes</a></li><li class="topicNavItem__i53qs"><a href="https://www.buzzfeed.com/tvandmovies" class="link__1aeEz link__2d6hQ ">TV &amp; Movies</a></li><li class="topicNavItem__i53qs"><a href="https://www.buzzfeed.com/shopping" class="link__1aeEz link__2d6hQ ">Shopping</a></li><li class="topicNavItem__i53qs"><a href="https://www.buzzfeed.com/videos" class="link__1aeEz link__2d6hQ ">Videos</a></li><li class="topicNavItem__i53qs"><a href="https://www.buzzfeednews.com" class="link__1aeEz link__2d6hQ ">News</a></li><li class="topicNavItem__i53qs"><a href="https://tasty.co" class="link__1aeEz link__2d6hQ ">Tasty</a></li></ul></nav><div class="navIconToggles__1NrKY "><a href="https://www.buzzfeed.com/auth/signin" class="navLoginLink__yYYrw link__2d6hQ">Sign In</a><div class="search__1B6FB"><div><a href="https://www.buzzfeed.com/search" class="searchLink__3OXhS"><svg viewBox="0 0 38 38" class="searchIcon__z-gd4 searchIcon__1dTDa" role="img" aria-labelledby="js-search-button-mobile"><title id="js-search-button-mobile">Search BuzzFeed</title><use xlink:href="#search-icon"></use></svg></a><button type="button" class="searchButton__1XY_w" aria-label="open form to search" aria-controls="js-header-search" aria-expanded="false"><svg viewBox="0 0 38 38" class="searchIcon__z-gd4 searchIcon__1dTDa" role="img" aria-labelledby="js-search-button-desktop"><title id="js-search-button-desktop">Search BuzzFeed</title><use xlink:href="#search-icon"></use></svg></button></div></div></div><ul class="badgeBar__1SKBc" aria-label="BuzzFeed badges"><li class="badgeBarItem__3ujdt" style="z-index: 3;"><a href="https://www.buzzfeed.com/lol"><svg viewBox="0 0 1024 1024" brand="bfo" role="img" aria-labelledby="js-badge-feed-title-lol"><title id="js-badge-feed-title-lol">lol Badge Feed</title><use xlink:href="#lol-badge"></use></svg></a></li><li class="badgeBarItem__3ujdt" style="z-index: 2;"><a href="https://www.buzzfeed.com/win"><svg viewBox="0 0 200 200" brand="bfo" role="img" aria-labelledby="js-badge-feed-title-win"><title id="js-badge-feed-title-win">win Badge Feed</title><use xlink:href="#win-badge"></use></svg></a></li><li class="badgeBarItem__3ujdt" style="z-index: 1;"><a href="https://www.buzzfeed.com/trending"><svg viewBox="0 0 512 512" brand="bfo" role="img" aria-labelledby="js-badge-feed-title-trending"><title id="js-badge-feed-title-trending">trending Badge Feed</title><use xlink:href="#trending-badge"></use></svg></a></li></ul></div><section class="moreNav__1ShAb moreNav__3FbPP  withDestinations__yYcfx" id="js-more-nav"><div class="moreNavInner__5Q6Op"><div class="sectionsSection__3nLQk"><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Pop Culture"><h2 class="sectionTitle__2XZFa text__1dl8A">Pop Culture</h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/tvandmovies" class="link__HCunz link__2d6hQ">TV &amp; Movies</a></li><li><a href="https://www.buzzfeed.com/celebrity" class="link__HCunz link__2d6hQ">Celebrity</a></li><li><a href="https://www.buzzfeed.com/bestoftheinternet" class="link__HCunz link__2d6hQ">Best of the Internet</a></li><li><a href="https://www.buzzfeed.com/animals" class="link__HCunz link__2d6hQ">Animals</a></li><li><a href="https://www.buzzfeed.com/music" class="link__HCunz link__2d6hQ">Music</a></li><li><a href="https://www.buzzfeed.com/rewind" class="link__HCunz link__2d6hQ">Rewind</a></li><li><a href="https://www.buzzfeed.com/books" class="link__HCunz link__2d6hQ">Books</a></li><li><a href="https://www.buzzfeed.com/lgbtq" class="link__HCunz link__2d6hQ">LGBTQ<span class="navLabel__3iKIM badge__EbO-C">NEW!</span></a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Quizzes"><h2 class="sectionTitle__2XZFa text__1dl8A"><a href="https://www.buzzfeed.com/quizzes" class="link__HCunz link__2d6hQ">Quizzes</a></h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/quizzes" class="link__HCunz link__2d6hQ">Latest</a></li><li><a href="https://www.buzzfeed.com/trending/quizzes" class="link__HCunz link__2d6hQ">Trending</a></li><li><a href="https://www.buzzfeed.com/quizzes/food" class="link__HCunz link__2d6hQ">Food</a></li><li><a href="https://www.buzzfeed.com/quizzes/love" class="link__HCunz link__2d6hQ">Love</a></li><li><a href="https://www.buzzfeed.com/quizzes/trivia" class="link__HCunz link__2d6hQ">Trivia</a></li><li><a href="https://www.buzzfeed.com/quizparty?utm_source=buzzfeed&amp;utm_campaign=bf_nav_menu" class="link__HCunz link__2d6hQ">Quiz Party</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Shopping"><h2 class="sectionTitle__2XZFa text__1dl8A"><a href="https://www.buzzfeed.com/shopping" class="link__HCunz link__2d6hQ">Shopping</a></h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/shopping" class="link__HCunz link__2d6hQ">Latest</a></li><li><a href="https://www.buzzfeed.com/reviews" class="link__HCunz link__2d6hQ">Reviews</a></li><li><a href="https://www.buzzfeed.com/shopping/gifts" class="link__HCunz link__2d6hQ">Gift Guides</a></li><li><a href="https://www.buzzfeed.com/shopping/deals" class="link__HCunz link__2d6hQ">Deals</a></li><li><a href="https://www.buzzfeed.com/shopping/home" class="link__HCunz link__2d6hQ">Home</a></li><li><a href="https://www.buzzfeed.com/shopping/clothing" class="link__HCunz link__2d6hQ">Clothing</a></li><li><a href="https://www.buzzfeed.com/shopping/gadgets" class="link__HCunz link__2d6hQ">Gadgets</a></li><li><a href="https://www.buzzfeed.com/shopping/beauty" class="link__HCunz link__2d6hQ">Beauty</a></li><li><a href="https://www.buzzfeed.com/pets" class="link__HCunz link__2d6hQ">Pets<span class="navLabel__3iKIM badge__EbO-C">NEW!</span></a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Video"><h2 class="sectionTitle__2XZFa text__1dl8A"><a href="https://www.buzzfeed.com/videos" class="link__HCunz link__2d6hQ">Video</a></h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/videos" class="link__HCunz link__2d6hQ">Latest</a></li><li><a href="https://www.buzzfeed.com/cocoabutter" class="link__HCunz link__2d6hQ">Cocoa Butter<span class="navLabel__3iKIM badge__EbO-C">NEW!</span></a></li><li><a href="https://www.buzzfeed.com/mominprogress" class="link__HCunz link__2d6hQ">Mom In Progress</a></li><li><a href="https://www.buzzfeed.com/worthit" class="link__HCunz link__2d6hQ">Worth It</a></li><li><a href="https://www.buzzfeed.com/unsolved" class="link__HCunz link__2d6hQ">Unsolved True Crime</a></li><li><a href="https://www.buzzfeed.com/unsolved" class="link__HCunz link__2d6hQ">Unsolved Supernatural</a></li><li><a href="https://www.buzzfeed.com/multiplayerbybuzzfeed" class="link__HCunz link__2d6hQ">Multiplayer</a></li><li><a href="https://www.buzzfeed.com/perolike" class="link__HCunz link__2d6hQ">Pero Like</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Lifestyle"><h2 class="sectionTitle__2XZFa text__1dl8A">Lifestyle</h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/asis" class="link__HCunz link__2d6hQ">As/Is: Style</a></li><li><a href="https://www.buzzfeed.com/bringme" class="link__HCunz link__2d6hQ">BringMe: Travel</a></li><li><a href="https://www.buzzfeed.com/goodful" class="link__HCunz link__2d6hQ">Goodful: Wellness</a></li><li><a href="https://www.buzzfeed.com/nifty" class="link__HCunz link__2d6hQ">Nifty: DIY</a></li><li><a href="https://www.buzzfeed.com/playfull" class="link__HCunz link__2d6hQ">Playfull: Parents</a></li><li><a href="https://www.buzzfeed.com/food" class="link__HCunz link__2d6hQ">Food</a></li><li><a href="https://www.buzzfeed.com/weddings" class="link__HCunz link__2d6hQ">Weddings</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Hot Topics"><h2 class="sectionTitle__2XZFa text__1dl8A">Hot Topics</h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/badge/vote" class="link__HCunz link__2d6hQ">Please Just Vote</a></li><li><a href="https://www.buzzfeed.com/trending/quizzes" class="link__HCunz link__2d6hQ">Trending Quizzes</a></li><li><a href="https://www.buzzfeed.com/coronavirus-coverage" class="link__HCunz link__2d6hQ">Coronavirus Coverage</a></li><li><a href="https://www.buzzfeed.com/tvandmovies/what-to-watch" class="link__HCunz link__2d6hQ">What To Watch</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="Community"><h2 class="sectionTitle__2XZFa text__1dl8A"><a href="https://www.buzzfeed.com/community" class="link__HCunz link__2d6hQ">Community</a></h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/community/about" class="link__HCunz link__2d6hQ">What is Community?</a></li><li><a href="https://community.buzzfeed.com" class="link__HCunz link__2d6hQ">Join Community!</a></li><li><a href="https://www.buzzfeed.com/community" class="link__HCunz link__2d6hQ">Featured Posts</a></li><li><a href="https://www.buzzfeed.com/community/leaderboard" class="link__HCunz link__2d6hQ">Leaderboard</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ" aria-label="About"><h2 class="sectionTitle__2XZFa text__1dl8A">About</h2><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/about" class="link__HCunz link__2d6hQ">About Us</a></li><li><a href="https://advertise.buzzfeed.com" class="link__HCunz link__2d6hQ">Advertise</a></li><li><a href="https://www.buzzfeed.com/about/jobs" class="link__HCunz link__2d6hQ">Jobs</a></li><li><a href="https://bzfd.it/2LP9eNo" class="link__HCunz link__2d6hQ">Merch</a></li><li><a href="https://www.buzzfeed.com/newsletters?origin=nav" class="link__HCunz link__2d6hQ">Newsletters</a></li></ul></nav><nav class="section__1MiZw sectionLinksSection__2PxjQ otherLinksSection__3Q5VU" aria-label="useful information"><ul class="sectionItems__1tEqP"><li><a href="https://www.buzzfeed.com/press" class="link__HCunz link__2d6hQ">Press</a></li><li><a href="https://www.buzzfeed.com/rss" class="link__HCunz link__2d6hQ">RSS</a></li><li><a href="https://www.buzzfeed.com/about/privacy" class="link__HCunz link__2d6hQ">Privacy</a></li><li><a href="https://www.buzzfeed.com/consent-preferences" class="link__HCunz link__2d6hQ">Consent Preferences</a></li><li><a href="https://www.buzzfeed.com/about/useragreement" class="link__HCunz link__2d6hQ">User Terms</a></li><li><a href="https://www.buzzfeed.com/about/accessibility" class="link__HCunz link__2d6hQ">Accessibility Statement</a></li><li><a href="https://www.buzzfeed.com/about/privacy#adchoices" class="link__HCunz link__2d6hQ">Ad Choices</a></li><li><a href="https://www.buzzfeed.com/help" class="link__HCunz link__2d6hQ">Help</a></li><li><a href="https://www.buzzfeed.com/about/contact" class="link__HCunz link__2d6hQ">Contact</a></li><li><a href="https://www.buzzfeed.com/archive" class="link__HCunz link__2d6hQ">Sitemap</a></li></ul></nav><div class="section__1MiZw footerSection__2ydsr"><div id="CCPAModule" class="CCPAConsentModule__29dUx"><div class="ccpaCopy__2PhBT text__1dl8A">California residents can opt out of &quot;sales&quot; of personal data.</div><button type="button" class="smallSecondaryButton__30f4z secondaryButton__2eG-m">Do Not Sell My Personal Information</button></div><div class="footerSubSection__2_sE_"><div class="editionSelect__31uLC"><label class="text__1dl8A" for="js-header-edition-select">Edition</label><select id="js-header-edition-select" class="select__3CYXv" value="us"><option data-bfa="@a:Main-Nav;@d:US;" value="us">US</option><option data-bfa="@a:Main-Nav;@d:UK;" value="uk">UK</option><option data-bfa="@a:Main-Nav;@d:Australia;" value="au">Australia</option><option data-bfa="@a:Main-Nav;@d:Brasil;" value="br">Brasil</option><option data-bfa="@a:Main-Nav;@d:Canada;" value="ca">Canada</option><option data-bfa="@a:Main-Nav;@d:Deutschland;" value="de">Deutschland</option><option data-bfa="@a:Main-Nav;@d:India;" value="in">India</option><option data-bfa="@a:Main-Nav;@d:Japan;" value="ja-jp">Japan</option><option data-bfa="@a:Main-Nav;@d:Mexico;" value="mx">Mexico</option></select></div><div class="copyright__1Ooxv text__1dl8A">© 2020 BuzzFeed, Inc</div></div></div></div><nav class="section__1MiZw destinationsSection__oGK0H" aria-label="Browse Brands"><ul class="sectionItems__1tEqP"><li class="destinationItem__sw0jG"><a href="https://www.buzzfeednews.com" class="destinationLink__3BrxC"><i class="bfnLogo__82I0_"><svg width="95" height="18" viewBox="0 0 95 18" role="img" aria-labelledby="js-destination-item-bfn-more"><title id="js-destination-item-bfn-more">BuzzFeed News</title><use xlink:href="#bfn-logo"></use></svg></i><span>Reporting on what you care about. We hold major institutions accountable and expose wrongdoing.</span></a></li><li class="destinationItem__sw0jG"><a href="https://www.tasty.co" class="destinationLink__3BrxC"><i class="tastyLogo__2XBtV"><svg width="32" height="18" viewBox="0 0 32 18" role="img" aria-labelledby="js-destination-item-tasty-more"><title id="js-destination-item-tasty-more">BuzzFeed Tasty</title><use xlink:href="#tasty-logo"></use></svg></i><span>Search, watch, and cook every single Tasty recipe and video ever - all in one place!</span></a></li><li class="destinationItem__sw0jG"><a href="https://www.buzzfeed.com/goodful" class="destinationLink__3BrxC"><i class="goodfulLogo__3nZNd"><svg width="48" height="18" viewBox="0 0 48 18" role="img" aria-labelledby="js-destination-item-goodful-more"><title id="js-destination-item-goodful-more">BuzzFeed Goodful</title><use xlink:href="#goodful-logo"></use></svg></i><span>Self care and ideas to help you live a healthier, happier life.</span></a></li><li class="destinationItem__sw0jG"><a href="https://www.buzzfeed.com/bringme" class="destinationLink__3BrxC"><i class="bringmeLogo__2_dtK"><svg width="48" height="18" role="img" aria-labelledby="js-destination-item-bringme-more"><title id="js-destination-item-bringme-more">BuzzFeed Bring Me</title><use xlink:href="#bringme-logo"></use></svg></i><span>Obsessed with travel? Discover unique things to do, places to eat, and sights to see in the best destinations around the world with Bring Me!</span></a></li><li class="destinationItem__sw0jG"><a href="https://www.buzzfeed.com/asis" class="destinationLink__3BrxC"><i class="asisLogo__ZFs3D"><svg width="48" height="18" viewBox="0 0 48 18" role="img" aria-labelledby="js-destination-item-asis-more"><title id="js-destination-item-asis-more">BuzzFeed As Is</title><use xlink:href="#asis-logo"></use></svg></i><span>Something for everyone interested in hair, makeup, style, and body positivity.</span></a></li></ul></nav></div></section></div><div class="js-main-nav-flyout"></div></div><nav class="wrapper__3B1Hn trendingNavWrapper__1povE  "><div class="emojiWrapper__3ELFx"><div class="scrollingWrapper__3VZiC scrollingWrapper__bWL7J"><ul class="trendingNav__1WiRh"><li><a href="https://www.buzzfeed.com/badge/vote" class="link__34FKx link__2d6hQ" url="https://www.buzzfeed.com/badge/vote" name="Please Just Vote">Please Just Vote</a></li><li><a href="https://www.buzzfeed.com/trending/quizzes" class="link__34FKx link__2d6hQ" url="https://www.buzzfeed.com/trending/quizzes" name="Trending Quizzes">Trending Quizzes</a></li><li><a href="https://www.buzzfeed.com/coronavirus-coverage" class="link__34FKx link__2d6hQ" url="https://www.buzzfeed.com/coronavirus-coverage" name="Coronavirus Coverage">Coronavirus Coverage</a></li><li><a href="https://www.buzzfeed.com/tvandmovies/what-to-watch" class="link__34FKx link__2d6hQ" url="https://www.buzzfeed.com/tvandmovies/what-to-watch" name="What To Watch">What To Watch</a></li></ul></div></div></nav></div></header></div><script>
      window.BZFD = window.BZFD || {};
      window.BZFD.__HEADER_STATE__ = {"theme":"light","brand":"bfo","edition":"us","showBadges":true,"config":{"bf_url":"https://www.buzzfeed.com","brand_urls":{"asis":"https://www.buzzfeed.com/asis","bfo":"https://www.buzzfeed.com","bringme":"https://www.buzzfeed.com/bringme","goodful":"https://www.buzzfeed.com/goodful","news":"https://www.buzzfeednews.com","nifty":"https://www.buzzfeed.com/nifty","playfull":"https://www.buzzfeed.com/parents","adobe":"https://www.buzzfeed.com/makethefeed","lgbtq":"https://www.buzzfeed.com/lgbtq"},"cms_url":"https://cms.buzzfeed.com","community_url":"https://community.buzzfeed.com","dashbird_url":"https://dashbird.buzzfeed.io","dashbird_community_url":"https://community-dashbird.buzzfeed.com","image_service_url":"https://img.buzzfeed.com/buzzfeed-static","new_post_path":"/post","settings_path":"/settings","ga":"buzzfeed_ga"},"navItems":{"destinations":[{"url":"https://www.buzzfeednews.com","name":"bfn","label":"bfnews","description":"Reporting on what you care about. We hold major institutions accountable and expose wrongdoing."},{"url":"https://www.tasty.co","name":"tasty","description":"Search, watch, and cook every single Tasty recipe and video ever - all in one place!"},{"url":"/goodful","name":"goodful","description":"Self care and ideas to help you live a healthier, happier life."},{"url":"/bringme","name":"bringme","description":"Obsessed with travel? Discover unique things to do, places to eat, and sights to see in the best destinations around the world with Bring Me!"},{"url":"/asis","name":"asis","description":"Something for everyone interested in hair, makeup, style, and body positivity."}],"topics":[{"url":"/quizzes","name":"Quizzes"},{"url":"/tvandmovies","name":"TV & Movies"},{"url":"/shopping","name":"Shopping"},{"url":"/videos","name":"Videos"},{"url":"https://www.buzzfeednews.com","name":"News","label":"bfnews"},{"url":"https://tasty.co","name":"Tasty","label":"tasty"}],"badges":[{"name":"lol","url":"/lol"},{"name":"win","url":"/win"},{"name":"trending","url":"/trending"}],"sections":[{"name":"Pop Culture","subSections":[{"name":"TV & Movies","url":"/tvandmovies"},{"name":"Celebrity","url":"/celebrity"},{"name":"Best of the Internet","url":"/bestoftheinternet"},{"name":"Animals","url":"/animals"},{"name":"Music","url":"/music"},{"name":"Rewind","url":"/rewind"},{"name":"Books","url":"/books"},{"name":"LGBTQ","nav_label":"NEW!","nav_label_type":"badge","url":"/lgbtq"}]},{"name":"Quizzes","url":"/quizzes","subSections":[{"name":"Latest","url":"/quizzes"},{"name":"Trending","url":"/trending/quizzes"},{"name":"Food","url":"/quizzes/food"},{"name":"Love","url":"/quizzes/love"},{"name":"Trivia","url":"/quizzes/trivia"},{"name":"Quiz Party","url":"/quizparty?utm_source=buzzfeed&utm_campaign=bf_nav_menu"}]},{"name":"Shopping","url":"/shopping","subSections":[{"name":"Latest","url":"/shopping"},{"name":"Reviews","url":"/reviews"},{"name":"Gift Guides","url":"/shopping/gifts"},{"name":"Deals","url":"/shopping/deals"},{"name":"Home","url":"/shopping/home"},{"name":"Clothing","url":"/shopping/clothing"},{"name":"Gadgets","url":"/shopping/gadgets"},{"name":"Beauty","url":"/shopping/beauty"},{"name":"Pets","url":"/pets","nav_label":"NEW!","nav_label_type":"badge"}]},{"name":"Video","url":"/videos","subSections":[{"name":"Latest","url":"/videos"},{"name":"Cocoa Butter","nav_label":"NEW!","nav_label_type":"badge","url":"/cocoabutter"},{"name":"Mom In Progress","url":"/mominprogress"},{"name":"Worth It","url":"/worthit"},{"name":"Unsolved True Crime","url":"/unsolved"},{"name":"Unsolved Supernatural","url":"/unsolved"},{"name":"Multiplayer","url":"/multiplayerbybuzzfeed"},{"name":"Pero Like","url":"/perolike"}]},{"name":"Lifestyle","subSections":[{"name":"As/Is: Style","url":"/asis"},{"name":"BringMe: Travel","url":"/bringme"},{"name":"Goodful: Wellness","url":"/goodful"},{"name":"Nifty: DIY","url":"/nifty"},{"name":"Playfull: Parents","url":"/playfull"},{"name":"Food","url":"/food"},{"name":"Weddings","url":"/weddings"}]}],"community":[{"name":"What is Community?","url":"/community/about"},{"name":"Join Community!","url":"https://community.buzzfeed.com"},{"name":"Featured Posts","url":"/community"},{"name":"Leaderboard","url":"/community/leaderboard"}],"about":[{"url":"/about","name":"About Us"},{"url":"https://advertise.buzzfeed.com","name":"Advertise"},{"url":"/about/jobs","name":"Jobs"},{"url":"https://bzfd.it/2LP9eNo","name":"Merch","label":"merch"},{"url":"/newsletters?origin=nav","name":"Newsletters"}],"footer":[{"url":"/press","name":"Press"},{"url":"/rss","name":"RSS"},{"url":"/about/privacy","name":"Privacy"},{"url":"/consent-preferences","name":"Consent Preferences"},{"url":"/about/useragreement","name":"User Terms"},{"url":"/about/accessibility","name":"Accessibility Statement"},{"url":"/about/privacy#adchoices","name":"Ad Choices"},{"url":"/help","name":"Help"},{"url":"/about/contact","name":"Contact"},{"url":"/archive","name":"Sitemap"}],"trendingTopics":[{"url":"https://www.buzzfeed.com/badge/vote","name":"Please Just Vote"},{"url":"https://www.buzzfeed.com/trending/quizzes","name":"Trending Quizzes"},{"url":"https://www.buzzfeed.com/coronavirus-coverage","name":"Coronavirus Coverage"},{"url":"https://www.buzzfeed.com/tvandmovies/what-to-watch","name":"What To Watch"}]},"i18n":{"about":"About","edition":"Edition","or":"or","sign_up":"Sign Up","to_post":"to post and comment!","log_in":"Sign In","browse_sections":"Browse Sections","browse_brands":"Browse Brands","view_profile":"View profile","settings":"Settings","new_post":"New Post","my_drafts":"My Drafts","dashboard":"Dashboard","logout":"Log Out","search":"Search BuzzFeed","more_buzzfeed_brands":"more BuzzFeed brands","buzzfeed_badges":"BuzzFeed badges","hot_topics":"Hot Topics","community":"Community","skip_to_content":"Skip To Content","useful_information":"useful information","hamburger":"open menu to see more links","a11y_search":"open form to search"}};
    </script></div></div></div><main id="buzz-content" class="main__1WaNFImq55"><div class="article__3UhoxMZjIh default__1Wrp0h0Ou2"><div class="content__rBlqJK1v6T"><article><div class="headline__2V6cg6yv2y"><div class="container__1xi1X6X2jr"><ul class="badgeList__1LHbcTIq2k"></ul></div><div class="container__1xi1X6X2jr"><nav aria-label="Breadcrumb" class="breadcrumbContainer__3MGXwlDSV3"><ol><li class="breadcrumbItem__3iHtMjln58"><a class="metadata-link" href="/shopping">Shopping</a><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="caret-separator caret__BbAkeREjW5" aria-hidden="true"><title>Caret Right</title><path d="M11.5 36c-.5 0-1-.2-1.4-.6-.8-.8-.8-2 0-2.8L23.7 19 10.1 5.4c-.8-.8-.8-2 0-2.8.8-.8 2-.8 2.8 0L29.3 19 12.9 35.4c-.4.4-.9.6-1.4.6z"></path></svg></li><li class="breadcrumbItem__3iHtMjln58"><a class="metadata-link" href="/shopping/home">Home</a><span class="comma__3GSv9Y6V7O" aria-hidden="true">,<!-- --> </span></li><li class="breadcrumbItem__3iHtMjln58"><a class="metadata-link" href="/shopping/amazon">Amazon</a></li></ol><span class="bold middot__3mWhYWQBOt">·</span></nav><span class="timestamp__12oPwMqFR8">Updated<!-- --> <!-- -->37 minutes ago<!-- -->. </span><span class="timestamp__12oPwMqFR8">Posted on<!-- --> <!-- -->Oct 11, 2020</span></div><div class="container__1xi1X6X2jr "><h1 class="title__2wEoS_Bqpp">24 Home Products From Amazon That TikTok Users Love</h1><p class="description__1bzzdbaw8q">If you don't have a toothpaste dispenser and a cloud-shaped key holder in your house, then let me tell you, you're missing out.</p></div><div style="position:relative"><a href="/kaylaboyd" class="headlineByline__1xvw0GX5iL"><div class="bylineContainer__1SFDfwq6X5"><div class="avatar__18myM8WuAj "><picture><source type="image/webp" srcSet="https://img.buzzfeed.com/buzzfeed-static/static/user_images/LJwgxbrhi_large.jpg?crop=320%25252525253A320%25252525253B86%25252525252C0&amp;downsize=60:*&amp;output-format=webp&amp;output-quality=auto"/><img alt="Kayla Boyd" loading="eager" src="https://img.buzzfeed.com/buzzfeed-static/static/user_images/LJwgxbrhi_large.jpg?crop=320%25252525253A320%25252525253B86%25252525252C0&amp;downsize=60:*&amp;output-format=jpg&amp;output-quality=auto"/></picture></div><div><span class="text__16CLiglqRL ">by </span><span class="metadata-link bylineName__8t-CbLgGCD">Kayla Boyd</span><span style="visibility:hidden;display:inline-block;min-height:13px" aria-hidden="true"></span><p>BuzzFeed Staff</p></div></div></a></div></div><div class="actionBar__2QSgZuvpTs"><div></div><div role="group" aria-label="Share" class="shareTop__3wO4DsSeyw"><ul class="shareBar__1LkDEJbHxX pagelevel__iT1zf_Mmzu "><li><div class="shareButton__Qwddr facebook__1CNms large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Facebook" class="shareLink__3GGa8" href="https://www.facebook.com/dialog/share?href=https%3A%2F%2Fwww.buzzfeed.com%2Fkaylaboyd%2Fhome-products-from-amazon-that-tiktok-users-love%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharefacebook&amp;app_id=862012947269736"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Facebook</title><path d="M38,19.12A19,19,0,1,0,16,38V24.64H11.21V19.12H16V14.9c0-4.79,2.84-7.43,7.18-7.43a29.21,29.21,0,0,1,4.25.37v4.7H25.07a2.76,2.76,0,0,0-3.1,3v3.59h5.27l-.84,5.52H22V38A19.08,19.08,0,0,0,38,19.12Z"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr pinterest__2XzXt large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Pinterest" class="shareLink__3GGa8" href="https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.buzzfeed.com%2Fkaylaboyd%2Fhome-products-from-amazon-that-tiktok-users-love%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharepinterest&amp;description=24%20Home%20Products%20From%20Amazon%20That%20TikTok%20Users%20Love&amp;media=https%3A%2F%2Fimg.buzzfeed.com%2Fbuzzfeed-static%2Fstatic%2F2020-10%2F2%2F23%2Ftmp%2F52c11188ae60%2Ftmp-name-2-4608-1601682851-6_dblbig.jpg"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Pinterest</title><path d="M19 0C8.5 0 0 8.5 0 19c0 7.8 4.7 14.5 11.4 17.4-.1-1.3 0-2.9.3-4.4.4-1.5 2.4-10.4 2.4-10.4s-.6-1.2-.6-3c0-2.8 1.6-4.9 3.7-4.9 1.7 0 2.6 1.3 2.6 2.9 0 1.7-1.1 4.3-1.7 6.7-.5 2 1 3.7 3 3.7 3.6 0 6-4.6 6-10.1 0-4.2-2.8-7.3-7.9-7.3-5.8 0-9.4 4.3-9.4 9.1 0 1.7.5 2.8 1.3 3.7.4.4.4.6.3 1.1-.1.3-.3 1.2-.4 1.5-.1.5-.5.7-1 .5-2.7-1.1-3.9-4-3.9-7.3 0-5.4 4.6-11.9 13.6-11.9 7.3 0 12 5.3 12 10.9 0 7.5-4.1 13-10.3 13-2 0-4-1.1-4.6-2.4L15.5 33c-.4 1.5-1.2 2.9-1.9 4.1 1.7.5 3.5.8 5.4.8 10.5 0 19-8.5 19-19C38 8.5 29.5 0 19 0"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr twitter__2yyOE large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Twitter" class="shareLink__3GGa8" href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fwww.buzzfeed.com%2Fkaylaboyd%2Fhome-products-from-amazon-that-tiktok-users-love%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharetwitter&amp;text=24%20Home%20Products%20From%20Amazon%20That%20TikTok%20Users%20Love&amp;via=kaylacboyd"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Twitter</title><path d="M37.9 8c-1.4.6-2.9 1-4.4 1.2 1.6-1 2.8-2.5 3.4-4.3-1.5.9-3.1 1.5-4.9 1.9-1.4-1.5-3.4-2.4-5.6-2.4-4.3 0-7.7 3.5-7.7 7.7 0 .6.1 1.2.2 1.8-6.4-.3-12.1-3.4-15.9-8.1-.7 1.1-1 2.5-1 3.9 0 2.7 1.2 5 3.2 6.4-1.3 0-2.3-.4-3.7-1v.1c0 3.7 2.9 6.9 6.4 7.6-.9.2-1.4.3-2.1.3-.5 0-.9 0-1.4-.1 1 3.1 3.9 5.3 7.2 5.4-2.6 2.1-6 3.3-9.6 3.3-.6 0-1.2 0-1.8-.1C3.6 33.7 7.7 35 12 35c14.2 0 22-11.8 22-22v-1c1.5-1.1 2.8-2.5 3.9-4"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr email__31fFX large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Email" class="shareLink__3GGa8" href="mailto:?body=https%3A%2F%2Fwww.buzzfeed.com%2Fkaylaboyd%2Fhome-products-from-amazon-that-tiktok-users-love%3Futm_source%3Ddynamic%26utm_campaign%3Dbfshareemail%0A%0AGet%20the%20BuzzFeed%20App%3A%20https%3A%2F%2Fbzfd.it%2Fbfmobileapps&amp;subject=24%20Home%20Products%20From%20Amazon%20That%20TikTok%20Users%20Love"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Mail</title><path d="M0 7v24h38V7H0zm33.3 4l-11.9 8.1c-1.5 1-3.4 1-4.9 0L4.7 11h28.6zM4 27V14.2l10.9 7.4c1.3.9 2.7 1.3 4.1 1.3s2.9-.4 4.1-1.3L34 14.2V27H4z"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr copy__YNF7L large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Copy Link" class="shareLink__3GGa8" href=""><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Link</title><path d="M19.7 31.5l-3.8 3.8c-3.8 3.8-10 3.6-13.6-.5-3.3-3.7-2.9-9.4.7-12.9l7.1-7.1c3.1-3 7.8-3.9 11.6-1.8 1 .6 1.9 1.3 2.5 2.1.6.7.5 1.8-.1 2.4l-.2.2c-.8.8-2 .6-2.7-.2-.3-.3-.5-.6-.9-.8-2.2-1.6-5.3-1.3-7.2.7l-7.5 7.5c-2.2 2.2-2.1 5.9.4 8 2.2 1.8 5.4 1.5 7.4-.5l3.6-3.6c.5-.5 1.2-.7 1.8-.5h.1c1.4.3 1.9 2.1.8 3.2zM35.8 3.2C32.2-.9 26-1 22.2 2.7l-3.8 3.8c-1.1 1.1-.6 2.9.9 3.2h.1c.7.2 1.3 0 1.8-.5l3.6-3.6c2-2 5.2-2.3 7.4-.5 2.5 2 2.6 5.8.4 8l-7.5 7.5c-1.9 1.9-5 2.3-7.2.7-.3-.2-.6-.5-.9-.8-.7-.8-1.9-.9-2.7-.2l-.3.2c-.7.7-.7 1.7-.1 2.4.7.8 1.5 1.5 2.5 2.1 3.8 2.1 8.5 1.2 11.6-1.8l7.1-7.1c3.5-3.5 3.9-9.2.7-12.9z"></path></svg></div></div></a></div></li></ul></div></div><div class="container__1lh0qsehqA"><p class="text__2dEPE8Oj2V">We hope you love the products we recommend! All of them were independently selected by our editors. Just so you know, BuzzFeed may collect a share of sales or other compensation from the links on this page if you decide to shop from them. Oh, and FYI — prices are accurate and items in stock as of time of publication.</p></div><div><div class=" buzz--list"><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125587358" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125587358
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">1.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07FDXK595?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877834" data-vars-keywords="cleaning" data-vars-link-id="14877834" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/dp/B07FDXK595?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877834" rel="nofollow" target="_blank">toothpaste dispenser</a> that holds the whole family's toothbrushes, toothpaste, and cups so you can keep everything clean, ready to go, and off the bathroom counter.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg","images":{"mobile":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg?resize=990:*","width":"990"},"original":{"height":"2028","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg","width":"986"},"standard":{"height":"1285","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg?resize=625:*","width":"625"},"wide":{"height":"2036","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg","width":986,"height":2028,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R2VXLD35Y4ITQA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R2VXLD35Y4ITQA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125689017","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1479","width":"986","x_offset":"0","y_offset":"256"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/c514e5765bc3\/sub-buzz-6925-1600102674-2.jpg?crop=986:1479;0,256","alt_text":"reviewer's toothpaste dispenser, which holds two tubes on toothpaste and has three toothbrushes in it"},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8_preview.gif","width":"294"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","width":"294"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","width":"294"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","width":"294"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","width":"294"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8.gif","width":294,"height":480,"attribution":"@toponlinefinds \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6834331690282831110\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.99\" href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6834331690282831110\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689018","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"294","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2131-1601572109-8_preview.gif?crop=294:480;0,0","alt_text":"TikTok of a person using the toothpaste dispenser "}],
          "id": 125587358,
          "bfa": {"e":"{idx:0,subbuzzId:125587358}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6667;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125689017">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/c514e5765bc3/sub-buzz-6925-1600102674-2.jpg?crop=986%3A1479%3B0%2C256&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.0%;"
                data-aratio="150.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/c514e5765bc3/sub-buzz-6925-1600102674-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125689017:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s toothpaste dispenser, which holds two tubes on toothpaste and has three toothbrushes in it"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/c514e5765bc3/sub-buzz-6925-1600102674-2.jpg?crop=986%3A1479%3B0%2C256&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6125;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689018">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2131-1601572109-8_preview.gif?crop=294%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 163.27%;"
                data-aratio="163.27">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2131-1601572109-8.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689018:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125587358" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125587358">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: TikTok of a person using the toothpaste dispenser "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2131-1601572109-8.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2131-1601572109-8_preview.gif?crop=294%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2131-1601572109-8.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2VXLD35Y4ITQA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/gp/customer-reviews/R2VXLD35Y4ITQA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @toponlinefinds / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@toponlinefinds/video/6834331690282831110" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.tiktok.com/@toponlinefinds/video/6834331690282831110" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Works great! The mount it comes with sticks great to our mirror. It will fit any type of standard toothpaste and has four cups you can use. Really great and saves so much time and room on our sink." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3NLCMHA02PGJ6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877825" data-vars-keywords="cleaning" data-vars-link-id="14877825" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/gp/customer-reviews/R3NLCMHA02PGJ6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877825" rel="nofollow" target="_blank">Cassie P.</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07FDXK595?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877834" data-vars-keywords="cleaning" data-vars-link-id="14877834" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/dp/B07FDXK595?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C1%2C48%2Cmobile_web%2C0%2C0%2C14877834" rel="nofollow" target="_blank">$19.99</a> (available in three colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125706817" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here: ", "oembed_data": {"author_name": "toponlinefinds", "author_url": "https://www.tiktok.com/@toponlinefinds", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@toponlinefinds/video/6834331690282831110"}, {"key": "data-video-id", "value": "6834331690282831110"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@toponlinefinds"}, {"key": "href", "value": "https://www.tiktok.com/@toponlinefinds"}], "children": [{"content": "@toponlinefinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Cool bathroom finds!\u2728 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "lifehacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/lifehacks"}], "children": [{"content": "#lifehacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "hacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/hacks"}], "children": [{"content": "#hacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "onlineshopping"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/onlineshopping"}], "children": [{"content": "#onlineshopping", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bathroomcheck"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bathroomcheck"}], "children": [{"content": "#bathroomcheck", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "NotOneThing"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/NotOneThing"}], "children": [{"content": "#NotOneThing", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "lifetips"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/lifetips"}], "children": [{"content": "#lifetips", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bathroom"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bathroom"}], "children": [{"content": "#bathroom", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foryou"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foryou"}], "children": [{"content": "#foryou", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Stay At Home - Kyler Fisher"}, {"key": "href", "value": "https://www.tiktok.com/music/Stay-At-Home-6813520664037689345"}], "children": [{"content": "\u266c Stay At Home - Kyler Fisher", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/53f8b3011516e4841f796ccc04e7abd9?x-expires=1601935200\u0026x-signature=dKTu9PFgyF0s3Bm4rp2xfsdo2OI%3D", "thumbnail_width": 576, "title": "Cool bathroom finds!\u2728 #amazon #amazonfinds #founditonamazon #lifehacks #hacks #onlineshopping #bathroomcheck #NotOneThing #lifetips #bathroom #foryou", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@toponlinefinds/video/6834331690282831110", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125706817"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@toponlinefinds/video/6834331690282831110' data-video-id='6834331690282831110' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@toponlinefinds' href='https://www.tiktok.com/@toponlinefinds'>@toponlinefinds</a> <p>Cool bathroom finds!✨ <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='lifehacks' target='_blank' href='https://www.tiktok.com/tag/lifehacks'>#lifehacks</a> <a title='hacks' target='_blank' href='https://www.tiktok.com/tag/hacks'>#hacks</a> <a title='onlineshopping' target='_blank' href='https://www.tiktok.com/tag/onlineshopping'>#onlineshopping</a> <a title='bathroomcheck' target='_blank' href='https://www.tiktok.com/tag/bathroomcheck'>#bathroomcheck</a> <a title='NotOneThing' target='_blank' href='https://www.tiktok.com/tag/NotOneThing'>#NotOneThing</a> <a title='lifetips' target='_blank' href='https://www.tiktok.com/tag/lifetips'>#lifetips</a> <a title='bathroom' target='_blank' href='https://www.tiktok.com/tag/bathroom'>#bathroom</a> <a title='foryou' target='_blank' href='https://www.tiktok.com/tag/foryou'>#foryou</a></p> <a target='_blank' title='♬ Stay At Home - Kyler Fisher' href='https://www.tiktok.com/music/Stay-At-Home-6813520664037689345'>♬ Stay At Home - Kyler Fisher</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125587585" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125587585
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">2.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B086ZFLSZV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877799" data-vars-keywords="cleaning" data-vars-link-id="14877799" data-vars-price.currency="USD" data-vars-price.value="10.99" href="https://www.amazon.com/dp/B086ZFLSZV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877799" rel="nofollow" target="_blank">soap dispenser and sponge caddy</a>, because no one likes doing the dishes, but this makes it a little bit quicker, easier, and fun TBH.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg?resize=990:1320","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg?resize=990:1320","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3PJ7OQJY4O6XH?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"10.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3PJ7OQJY4O6XH?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125587587","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/a1e0aeb39aa5\/sub-buzz-6991-1600104951-2.jpg?crop=1224:1632;0,0","alt_text":"the top of the dispenser also acts as a caddy for the dish sponge "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30_preview.gif","width":"320"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","width":"320"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","width":"320"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","width":"320"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","width":"320"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30.gif","width":320,"height":480,"attribution":"@toponlinefinds \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6833841350060805382\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"10.99\" href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6833841350060805382\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689338","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"320","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/1d2bfe201483\/anigif_sub-buzz-2088-1601574137-30_preview.gif?crop=320:480;0,0","alt_text":"TikTok of a person using the caddy to dispense soap from the top and then rub the sponge on it "}],
          "id": 125587585,
          "bfa": {"e":"{idx:0,subbuzzId:125587585}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125587587">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/a1e0aeb39aa5/sub-buzz-6991-1600104951-2.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/a1e0aeb39aa5/sub-buzz-6991-1600104951-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125587587:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the top of the dispenser also acts as a caddy for the dish sponge "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/a1e0aeb39aa5/sub-buzz-6991-1600104951-2.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6667;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689338">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/1d2bfe201483/anigif_sub-buzz-2088-1601574137-30_preview.gif?crop=320%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.0%;"
                data-aratio="150.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/1d2bfe201483/anigif_sub-buzz-2088-1601574137-30.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689338:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125587585" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125587585">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: TikTok of a person using the caddy to dispense soap from the top and then rub the sponge on it "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/1d2bfe201483/anigif_sub-buzz-2088-1601574137-30.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/1d2bfe201483/anigif_sub-buzz-2088-1601574137-30_preview.gif?crop=320%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/1d2bfe201483/anigif_sub-buzz-2088-1601574137-30.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3PJ7OQJY4O6XH?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.99" href="https://www.amazon.com/gp/customer-reviews/R3PJ7OQJY4O6XH?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @toponlinefinds / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@toponlinefinds/video/6833841350060805382" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.99" href="https://www.tiktok.com/@toponlinefinds/video/6833841350060805382" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I absolutely love this! I leave my sponge on top and do not have to reach under the sink to get my bulky Dawn dish soap bottle from under the sink every time I need it. It looks clean and my friends that have noticed it said something about it. I highly recommend it." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3PJRHAIWUN4FQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877816" data-vars-keywords="cleaning" data-vars-link-id="14877816" data-vars-price.currency="USD" data-vars-price.value="10.99" href="https://www.amazon.com/gp/customer-reviews/R3PJRHAIWUN4FQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877816" rel="nofollow" target="_blank">Lisa Camarena</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B086ZFLSZV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877799" data-vars-keywords="cleaning" data-vars-link-id="14877799" data-vars-price.currency="USD" data-vars-price.value="10.99" href="https://www.amazon.com/dp/B086ZFLSZV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C3%2C48%2Cmobile_web%2C0%2C0%2C14877799" rel="nofollow" target="_blank">$10.99+</a> (available in two colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125706833" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "toponlinefinds", "author_url": "https://www.tiktok.com/@toponlinefinds", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@toponlinefinds/video/6833841350060805382"}, {"key": "data-video-id", "value": "6833841350060805382"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@toponlinefinds"}, {"key": "href", "value": "https://www.tiktok.com/@toponlinefinds"}], "children": [{"content": "@toponlinefinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "A kitchen must have!\u2728 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bestpurchaseever"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bestpurchaseever"}], "children": [{"content": "#bestpurchaseever", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchenhacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchenhacks"}], "children": [{"content": "#kitchenhacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchentips"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchentips"}], "children": [{"content": "#kitchentips", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "letscook"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/letscook"}], "children": [{"content": "#LetsCook", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "momsoftiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/momsoftiktok"}], "children": [{"content": "#momsoftiktok", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokmom"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokmom"}], "children": [{"content": "#tiktokmom", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "over30"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/over30"}], "children": [{"content": "#over30", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Savage Love (Laxed - Siren Beat) - Jawsh 685 \u0026 Jason Derulo"}, {"key": "href", "value": "https://www.tiktok.com/music/Savage-Love-Laxed-Siren-Beat-6825494114277100293"}], "children": [{"content": "\u266c Savage Love (Laxed - Siren Beat) - Jawsh 685 \u0026 Jason Derulo", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/1787ce507506fb19d6704c5e3b7a80c0?x-expires=1601935200\u0026x-signature=k6KAxAtDywtoABmAEWSkTDz5YC0%3D", "thumbnail_width": 576, "title": "A kitchen must have!\u2728 #amazon #amazonfinds #founditonamazon #bestpurchaseever #kitchenhacks #kitchentips #LetsCook #momsoftiktok #tiktokmom #over30", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@toponlinefinds/video/6833841350060805382", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125706833"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@toponlinefinds/video/6833841350060805382' data-video-id='6833841350060805382' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@toponlinefinds' href='https://www.tiktok.com/@toponlinefinds'>@toponlinefinds</a> <p>A kitchen must have!✨ <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='bestpurchaseever' target='_blank' href='https://www.tiktok.com/tag/bestpurchaseever'>#bestpurchaseever</a> <a title='kitchenhacks' target='_blank' href='https://www.tiktok.com/tag/kitchenhacks'>#kitchenhacks</a> <a title='kitchentips' target='_blank' href='https://www.tiktok.com/tag/kitchentips'>#kitchentips</a> <a title='letscook' target='_blank' href='https://www.tiktok.com/tag/letscook'>#LetsCook</a> <a title='momsoftiktok' target='_blank' href='https://www.tiktok.com/tag/momsoftiktok'>#momsoftiktok</a> <a title='tiktokmom' target='_blank' href='https://www.tiktok.com/tag/tiktokmom'>#tiktokmom</a> <a title='over30' target='_blank' href='https://www.tiktok.com/tag/over30'>#over30</a></p> <a target='_blank' title='♬ Savage Love (Laxed - Siren Beat) - Jawsh 685 & Jason Derulo' href='https://www.tiktok.com/music/Savage-Love-Laxed-Siren-Beat-6825494114277100293'>♬ Savage Love (Laxed - Siren Beat) - Jawsh 685 & Jason Derulo</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125586992" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125586992
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">3.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00013K8OO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.29" href="https://www.amazon.com/dp/B00013K8OO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">cereal dispenser</a> perfect for kids (and adults) to get the perfect serving of cereal. It helps keep the cereal fresh and it looks super chic too.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg","images":{"mobile":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg?resize=990:*","width":"990"},"original":{"height":"1224","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg","width":"1632"},"standard":{"height":"469","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg?resize=625:*","width":"625"},"wide":{"height":"743","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg","width":1632,"height":1224,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"14877804\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.29\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125689264","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1224","width":"1225","x_offset":"265","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/16\/asset\/d7dc3bb716c4\/sub-buzz-6858-1600101214-41.jpg?crop=1225:1224;265,0","alt_text":"reviewer's white and clear cereal dispenser with silver knobs on their kitchen counter  "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14_preview.gif","width":"278"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","width":"278"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","width":"278"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","width":"278"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","width":"278"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14.gif","width":278,"height":480,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6822694507797040389\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.29\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6822694507797040389\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689266","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"278","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-2122-1601573348-14_preview.gif?crop=278:480;0,0","alt_text":"TikTok of a person using the dispenser to get cereal in a bowl"}],
          "id": 125586992,
          "bfa": {"e":"{idx:0,subbuzzId:125586992}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0008;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125689264">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/d7dc3bb716c4/sub-buzz-6858-1600101214-41.jpg?crop=1225%3A1224%3B265%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 99.92%;"
                data-aratio="99.92">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/d7dc3bb716c4/sub-buzz-6858-1600101214-41.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125689264:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s white and clear cereal dispenser with silver knobs on their kitchen counter  "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/16/asset/d7dc3bb716c4/sub-buzz-6858-1600101214-41.jpg?crop=1225%3A1224%3B265%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.5792;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689266">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/cf2b33b07adb/anigif_sub-buzz-2122-1601573348-14_preview.gif?crop=278%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 172.66%;"
                data-aratio="172.66">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/cf2b33b07adb/anigif_sub-buzz-2122-1601573348-14.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689266:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125586992" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125586992">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: TikTok of a person using the dispenser to get cereal in a bowl"
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/cf2b33b07adb/anigif_sub-buzz-2122-1601573348-14.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/cf2b33b07adb/anigif_sub-buzz-2122-1601573348-14_preview.gif?crop=278%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/cf2b33b07adb/anigif_sub-buzz-2122-1601573348-14.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804" data-vars-keywords="cleaning" data-vars-link-id="14877804" data-vars-price.currency="USD" data-vars-price.value="14.29" href="https://www.amazon.com/gp/customer-reviews/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804" rel="nofollow" target="_blank">amazon.com</a>, @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6822694507797040389" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.29" href="https://www.tiktok.com/@teresalauracaruso/video/6822694507797040389" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "We have three kids and a very small kitchen with very little cabinet/counter space!!! We used to keep our cereal boxes on top of our refrigerator, but I've been trying to de-clutter, and also come up with a solution for our kids to be able to get their own cereal in the mornings. THIS IS IT!!!! It looks great on our counter and we have very little space, so it fits just right! This has been the perfect solution to giving our kids the independence they need to get their own breakfast! It has been a lifesaver!!! Love it!!!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804" data-vars-keywords="cleaning" data-vars-link-id="14877804" data-vars-price.currency="USD" data-vars-price.value="14.29" href="https://www.amazon.com/gp/customer-reviews/R1JPJ7FUUBHQ8I?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C14877804" rel="nofollow" target="_blank">tenle</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00013K8OO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.29" href="https://www.amazon.com/dp/B00013K8OO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C5%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$14.29+</a> (available in a single or dual dispenser and four colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125706970" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6822694507797040389"}, {"key": "data-video-id", "value": "6822694507797040389"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "My favorite Amazon products: part 27! \ud83d\ude0d which is your fave? ", "type": "text"}, {"attributes": [{"key": "title", "value": "retailtherapy"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/retailtherapy"}], "children": [{"content": "#retailtherapy", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokreviews"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokreviews"}], "children": [{"content": "#tiktokreviews", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6822694496287853317"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/fa14fa0a9a461d3f21e0515c79c26370?x-expires=1601938800\u0026x-signature=REUe8K3vU%2FgawQJi%2BUsOja82WL0%3D", "thumbnail_width": 576, "title": "My favorite Amazon products: part 27! \ud83d\ude0d which is your fave? #retailtherapy #amazon #amazonfinds #founditonamazon #amazonmusthaves #tiktokreviews", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6822694507797040389", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125706970"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6822694507797040389' data-video-id='6822694507797040389' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>My favorite Amazon products: part 27! 😍 which is your fave? <a title='retailtherapy' target='_blank' href='https://www.tiktok.com/tag/retailtherapy'>#retailtherapy</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='tiktokreviews' target='_blank' href='https://www.tiktok.com/tag/tiktokreviews'>#tiktokreviews</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6822694496287853317'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125596578" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125596578
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">4.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01BYRMGCC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877807" data-vars-link-id="14877807" data-vars-price.currency="USD" data-vars-price.value="12.99" href="https://www.amazon.com/dp/B01BYRMGCC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877807" rel="nofollow" target="_blank">TubShroom</a> to prevent annoying blockage in your tub. Just place it in your drain and let it catch all of your hair <i>before</i> it gets caught in the pipes.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg","images":{"mobile":{"height":"1761","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg?resize=990:1761","width":"990"},"original":{"height":"1885","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg","width":"1060"},"standard":{"height":"1111","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg?resize=625:1111","width":"625"},"wide":{"height":"1761","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg?resize=990:1761","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg","width":1060,"height":1885,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1HICK6J6SW3SI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1HICK6J6SW3SI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125596580","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1590","width":"1060","x_offset":"0","y_offset":"233"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-01\/2\/16\/asset\/6b104667e1d1\/sub-buzz-326-1577981456-1.jpg?crop=1060:1590;0,233","alt_text":"Same reviewer holding the TubShroom covered in hair "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19_preview.gif","width":"302"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","width":"302"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","width":"302"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","width":"302"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","width":"302"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19.gif","width":302,"height":480,"attribution":"@toponlinefinds \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6863855219550309638\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.99\" href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6863855219550309638\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689384","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"302","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/748327a98064\/anigif_sub-buzz-2204-1601574798-19_preview.gif?crop=302:480;0,0","alt_text":"tiktok of a person showing the hair that was caught by the TubShroom "}],
          "id": 125596578,
          "bfa": {"e":"{idx:0,subbuzzId:125596578}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6667;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125596580">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-01/2/16/asset/6b104667e1d1/sub-buzz-326-1577981456-1.jpg?crop=1060%3A1590%3B0%2C233&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.0%;"
                data-aratio="150.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-01/2/16/asset/6b104667e1d1/sub-buzz-326-1577981456-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125596580:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Same reviewer holding the TubShroom covered in hair "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-01/2/16/asset/6b104667e1d1/sub-buzz-326-1577981456-1.jpg?crop=1060%3A1590%3B0%2C233&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6292;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689384">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2204-1601574798-19_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 158.94%;"
                data-aratio="158.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2204-1601574798-19.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689384:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125596578" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125596578">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok of a person showing the hair that was caught by the TubShroom "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2204-1601574798-19.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2204-1601574798-19_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/748327a98064/anigif_sub-buzz-2204-1601574798-19.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1HICK6J6SW3SI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.99" href="https://www.amazon.com/gp/customer-reviews/R1HICK6J6SW3SI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @toponlinefinds / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@toponlinefinds/video/6863855219550309638" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.99" href="https://www.tiktok.com/@toponlinefinds/video/6863855219550309638" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I was skeptical about this little rubber strainer, but I needed something to save my drains from the piles of hair that fall out of my head. I tried others and they all failed miserably. This thing is amazing! <b>It fit into my standard drain perfectly, and I don't think a single hair slipped by it. It was pretty gross to see how much hair I lost in just one shower, but it was comforting to know it wasn't clogging my drain.</b> Cleanup is super easy, too. I just took a tissue and wiped it from top to bottom, grabbing all the hair as the soft rubber strainer released it all easily. Not a hair was caught in it. Best strainer I've ever had. I strongly recommend it!!!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R22B2TYO58BXY6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877819" data-vars-link-id="14877819" data-vars-price.currency="USD" data-vars-price.value="12.99" href="https://www.amazon.com/gp/customer-reviews/R22B2TYO58BXY6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877819" rel="nofollow" target="_blank">Lawyer For Justice</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01BYRMGCC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877807" data-vars-link-id="14877807" data-vars-price.currency="USD" data-vars-price.value="12.99" href="https://www.amazon.com/dp/B01BYRMGCC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C7%2C48%2Cmobile_web%2C0%2C0%2C14877807" rel="nofollow" target="_blank">$12.99</a> (available in six colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning"
  >
  
  <div id="125596718" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125596718
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">5.</span>
    

    
      <span class="js-subbuzz__title-text">A handy <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00VTSPAVQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.8" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00VTSPAVQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">outlet shelf</a> for setting down any small bathroom necessities, such as your face cream, shaver, hairspray, or whatever you need that won't quite fit in the medicine cabinet.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg?resize=990:*","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg","width":"1500"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg?resize=625:*","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg","width":1500,"height":1500,"attribution":"Amazon","id":"125689401","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2018-05\/16\/14\/asset\/buzzfeed-prod-web-03\/sub-buzz-15707-1526496249-2.jpg?crop=1500:1500;0,0","alt_text":"Shaver resting on outlet shelf "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17_preview.gif","width":"302"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","width":"302"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","width":"302"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","width":"302"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","width":"302"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17.gif","width":302,"height":480,"attribution":"@toponlinefinds \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6863855219550309638\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"5.8\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6863855219550309638\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689403","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"302","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/17\/asset\/8cc393f40df6\/anigif_sub-buzz-2160-1601575078-17_preview.gif?crop=302:480;0,0","alt_text":"tiktok user installing the shelf and using it for their toothbrush and beauty products"}],
          "id": 125596718,
          "bfa": {"e":"{idx:0,subbuzzId:125596718}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125689401">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2018-05/16/14/asset/buzzfeed-prod-web-03/sub-buzz-15707-1526496249-2.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2018-05/16/14/asset/buzzfeed-prod-web-03/sub-buzz-15707-1526496249-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125689401:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Shaver resting on outlet shelf "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2018-05/16/14/asset/buzzfeed-prod-web-03/sub-buzz-15707-1526496249-2.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6292;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689403">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/8cc393f40df6/anigif_sub-buzz-2160-1601575078-17_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 158.94%;"
                data-aratio="158.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/8cc393f40df6/anigif_sub-buzz-2160-1601575078-17.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689403:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125596718" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125596718">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user installing the shelf and using it for their toothbrush and beauty products"
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/8cc393f40df6/anigif_sub-buzz-2160-1601575078-17.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/8cc393f40df6/anigif_sub-buzz-2160-1601575078-17_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/17/asset/8cc393f40df6/anigif_sub-buzz-2160-1601575078-17.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @toponlinefinds / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@toponlinefinds/video/6863855219550309638" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.8" data-vars-retailers="Amazon" href="https://www.tiktok.com/@toponlinefinds/video/6863855219550309638" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I have been looking for a small shelf for my bathroom to put my mini speaker on, and this is the BEST! The size is perfect; I love it." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3U9RZ2XXATO7X?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.8" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3U9RZ2XXATO7X?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Kimberly MacNeill</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00VTSPAVQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.8" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00VTSPAVQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C8%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$5.80</a> (available in three colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125706990" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "See the TubShroom, the outlet shelf, and a few other cool products in this TikTok: ", "oembed_data": {"author_name": "toponlinefinds", "author_url": "https://www.tiktok.com/@toponlinefinds", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@toponlinefinds/video/6863855219550309638"}, {"key": "data-video-id", "value": "6863855219550309638"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@toponlinefinds"}, {"key": "href", "value": "https://www.tiktok.com/@toponlinefinds"}], "children": [{"content": "@toponlinefinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Cool bathroom finds pt.2! \u2728 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "lifehacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/lifehacks"}], "children": [{"content": "#lifehacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "hacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/hacks"}], "children": [{"content": "#hacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "onlineshopping"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/onlineshopping"}], "children": [{"content": "#onlineshopping", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bathroom"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bathroom"}], "children": [{"content": "#bathroom", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "shower"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/shower"}], "children": [{"content": "#shower", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "choresinthishouse"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/choresinthishouse"}], "children": [{"content": "#ChoresInThisHouse", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foryou"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foryou"}], "children": [{"content": "#foryou", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Renee - Sales"}, {"key": "href", "value": "https://www.tiktok.com/music/Renee-6733693538464287493"}], "children": [{"content": "\u266c Renee - Sales", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/2d16b0f33f6c76971ce82db42ecd9086?x-expires=1601938800\u0026x-signature=Ioe42xBo7nmSqLzT4bbL%2F%2F%2F%2F17g%3D", "thumbnail_width": 576, "title": "Cool bathroom finds pt.2! \u2728 #amazon #amazonfinds #founditonamazon #lifehacks #hacks #onlineshopping #bathroom #shower #ChoresInThisHouse #foryou", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@toponlinefinds/video/6863855219550309638", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125706990"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    See the TubShroom, the outlet shelf, and a few other cool products in this TikTok:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@toponlinefinds/video/6863855219550309638' data-video-id='6863855219550309638' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@toponlinefinds' href='https://www.tiktok.com/@toponlinefinds'>@toponlinefinds</a> <p>Cool bathroom finds pt.2! ✨ <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='lifehacks' target='_blank' href='https://www.tiktok.com/tag/lifehacks'>#lifehacks</a> <a title='hacks' target='_blank' href='https://www.tiktok.com/tag/hacks'>#hacks</a> <a title='onlineshopping' target='_blank' href='https://www.tiktok.com/tag/onlineshopping'>#onlineshopping</a> <a title='bathroom' target='_blank' href='https://www.tiktok.com/tag/bathroom'>#bathroom</a> <a title='shower' target='_blank' href='https://www.tiktok.com/tag/shower'>#shower</a> <a title='choresinthishouse' target='_blank' href='https://www.tiktok.com/tag/choresinthishouse'>#ChoresInThisHouse</a> <a title='foryou' target='_blank' href='https://www.tiktok.com/tag/foryou'>#foryou</a></p> <a target='_blank' title='♬ Renee - Sales' href='https://www.tiktok.com/music/Renee-6733693538464287493'>♬ Renee - Sales</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125587759" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125587759
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">6.</span>
    

    
      <span class="js-subbuzz__title-text">A sleek <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07NSP641W?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877823" data-vars-link-id="14877823" data-vars-price.currency="USD" data-vars-price.value="19.59" href="https://www.amazon.com/dp/B07NSP641W?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877823" rel="nofollow" target="_blank">mirrored digital alarm clock</a> with USB ports that'll look way better on your nightstand than a typical alarm clock and plus it can charge your devices while you sleep.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.59\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125689432","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/14\/17\/asset\/d7dc3bb716c4\/sub-buzz-6991-1600106173-7.jpg?crop=1224:1632;0,0","alt_text":"the alarm clock on a reviewer's nightstand "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7_preview.gif","width":"302"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","width":"302"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","width":"302"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","width":"302"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","width":"302"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7.gif","width":302,"height":480,"attribution":"@miriam. gin1 \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@miriam.gin1\/video\/6845307881462516998\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.59\" href=\"https:\/\/www.tiktok.com\/@miriam.gin1\/video\/6845307881462516998\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125689434","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"302","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/18\/asset\/8c467491c54b\/anigif_sub-buzz-2195-1601575555-7_preview.gif?crop=302:480;0,0","alt_text":"tiktok of the alarm clock showing the ports on the side "}],
          "id": 125587759,
          "bfa": {"e":"{idx:0,subbuzzId:125587759}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125689432">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/d7dc3bb716c4/sub-buzz-6991-1600106173-7.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/d7dc3bb716c4/sub-buzz-6991-1600106173-7.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125689432:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the alarm clock on a reviewer&#39;s nightstand "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/14/17/asset/d7dc3bb716c4/sub-buzz-6991-1600106173-7.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6292;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125689434">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/18/asset/8c467491c54b/anigif_sub-buzz-2195-1601575555-7_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 158.94%;"
                data-aratio="158.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/18/asset/8c467491c54b/anigif_sub-buzz-2195-1601575555-7.gif"
                     data-bfa="@a:click:photoset;@d:gif:125689434:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125587759" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125587759">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok of the alarm clock showing the ports on the side "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/18/asset/8c467491c54b/anigif_sub-buzz-2195-1601575555-7.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/18/asset/8c467491c54b/anigif_sub-buzz-2195-1601575555-7_preview.gif?crop=302%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/18/asset/8c467491c54b/anigif_sub-buzz-2195-1601575555-7.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.59" href="https://www.amazon.com/gp/customer-reviews/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @miriam. gin1 / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@miriam.gin1/video/6845307881462516998" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.59" href="https://www.tiktok.com/@miriam.gin1/video/6845307881462516998" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Love love love this clock... sleek and definitely a statement piece. Alarm is subtle it will definitely wake you up however it will not scare the B-Jesus out of you. Love the extra ports on the side to charge other things with it." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877828" data-vars-link-id="14877828" data-vars-price.currency="USD" data-vars-price.value="19.59" href="https://www.amazon.com/gp/customer-reviews/R2ECG8UFXL1XEJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877828" rel="nofollow" target="_blank">Meika B.</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07NSP641W?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877823" data-vars-link-id="14877823" data-vars-price.currency="USD" data-vars-price.value="19.59" href="https://www.amazon.com/dp/B07NSP641W?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C10%2C48%2Cmobile_web%2C0%2C0%2C14877823" rel="nofollow" target="_blank">$19.59+</a> (available in two colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125706999" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here: ", "oembed_data": {"author_name": "simply ML", "author_url": "https://www.tiktok.com/@miriam.gin1", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@miriam.gin1/video/6845307881462516998"}, {"key": "data-video-id", "value": "6845307881462516998"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@miriam.gin1"}, {"key": "href", "value": "https://www.tiktok.com/@miriam.gin1"}], "children": [{"content": "@miriam.gin1", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "HealthyHabits6Step"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/HealthyHabits6Step"}], "children": [{"content": "#HealthyHabits6Step", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazoncodes"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazoncodes"}], "children": [{"content": "#amazoncodes", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonhaul"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhaul"}], "children": [{"content": "#amazonhaul", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "musthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/musthaves"}], "children": [{"content": "#musthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "gadgets"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/gadgets"}], "children": [{"content": "#gadgets", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "haul"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/haul"}], "children": [{"content": "#haul", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "beauty"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/beauty"}], "children": [{"content": "#beauty", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - simply ML"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6845307875959606021"}], "children": [{"content": "\u266c original sound - simply ML", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/193350411e57a0ee9da00917d459be44?x-expires=1601938800\u0026x-signature=REPEC7CWUf6Pyma6AxJcPwfEmhA%3D", "thumbnail_width": 576, "title": "#amazon #amazonfinds #HealthyHabits6Step #amazoncodes #amazonmusthaves #amazonprime #amazonhaul #amazonfavorites #musthaves #gadgets #haul #beauty", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@miriam.gin1/video/6845307881462516998", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125706999"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@miriam.gin1/video/6845307881462516998' data-video-id='6845307881462516998' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@miriam.gin1' href='https://www.tiktok.com/@miriam.gin1'>@miriam.gin1</a> <p><a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='HealthyHabits6Step' target='_blank' href='https://www.tiktok.com/tag/HealthyHabits6Step'>#HealthyHabits6Step</a> <a title='amazoncodes' target='_blank' href='https://www.tiktok.com/tag/amazoncodes'>#amazoncodes</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='amazonhaul' target='_blank' href='https://www.tiktok.com/tag/amazonhaul'>#amazonhaul</a> <a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a> <a title='musthaves' target='_blank' href='https://www.tiktok.com/tag/musthaves'>#musthaves</a> <a title='gadgets' target='_blank' href='https://www.tiktok.com/tag/gadgets'>#gadgets</a> <a title='haul' target='_blank' href='https://www.tiktok.com/tag/haul'>#haul</a> <a title='beauty' target='_blank' href='https://www.tiktok.com/tag/beauty'>#beauty</a></p> <a target='_blank' title='♬ original sound - simply ML' href='https://www.tiktok.com/music/original-sound-6845307875959606021'>♬ original sound - simply ML</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125697840" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697840
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">7.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B078MMXJPC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877779" data-vars-keywords="cleaning" data-vars-link-id="14877779" data-vars-price.currency="USD" data-vars-price.value="6.95" href="https://www.amazon.com/dp/B078MMXJPC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877779" rel="nofollow" target="_blank">dishwasher magnet</a> to prevent you from accidentally putting your dirty dinner plate in with all the clean dishes and then rerunning the whole thing.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625:*","images":{"gif_preview":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625:*","width":"625"},"mobile":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif?resize=990:*","width":"990"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif","width":"318"},"standard":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif?resize=625:*","width":"625"},"wide":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625:*","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625%3A%2A&output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25.gif","width":625,"height":943,"attribution":"@jessicalynn727 \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.tiktok.com\/@jessicalynn727\/video\/6824196220399996165\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"6.95\" href=\"https:\/\/www.tiktok.com\/@jessicalynn727\/video\/6824196220399996165\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697852","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625:*?crop=318:480;0,0","alt_text":"tiktok user moving a sliver slider from covering the word \"clean\" to covering the word \"dirty\" "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg?resize=990:1320","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1EHT7DH71HCK3?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"6.95\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1EHT7DH71HCK3?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125697853","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1532","width":"1022","x_offset":"88","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/690bc2095fe0\/sub-buzz-4355-1601677290-2.jpg?crop=1022:1532;88,0","alt_text":"reviewer switching their magnet from \"clean\" to \"dirty\" "}],
          "id": 125697840,
          "bfa": {"e":"{idx:0,subbuzzId:125697840}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697852">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/anigif_sub-buzz-4331-1601677228-25.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697852:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697840" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697840">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user moving a sliver slider from covering the word &#34;clean&#34; to covering the word &#34;dirty&#34; "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/anigif_sub-buzz-4331-1601677228-25.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/anigif_sub-buzz-4331-1601677228-25_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/anigif_sub-buzz-4331-1601677228-25.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6671;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697853">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/sub-buzz-4355-1601677290-2.jpg?crop=1022%3A1532%3B88%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 149.9%;"
                data-aratio="149.9">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/sub-buzz-4355-1601677290-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697853:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer switching their magnet from &#34;clean&#34; to &#34;dirty&#34; "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/690bc2095fe0/sub-buzz-4355-1601677290-2.jpg?crop=1022%3A1532%3B88%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @jessicalynn727 / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.tiktok.com/@jessicalynn727/video/6824196220399996165" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="6.95" href="https://www.tiktok.com/@jessicalynn727/video/6824196220399996165" rel="nofollow" target="_blank">tiktok.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1EHT7DH71HCK3?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="6.95" href="https://www.amazon.com/gp/customer-reviews/R1EHT7DH71HCK3?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Very sturdy! Although it comes with two two-sided adhesive pads (in case your washer door isn't metal), we used the magnet feature. It stays put...doesn't slide around on the dishwasher door!! Easy to slide from "clean" to "dirty" but not so easy that it changes by itself! Great product and well worth the money. Very prompt delivery!!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1BPDB6RLTQQ52?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877797" data-vars-keywords="cleaning" data-vars-link-id="14877797" data-vars-price.currency="USD" data-vars-price.value="6.95" href="https://www.amazon.com/gp/customer-reviews/R1BPDB6RLTQQ52?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877797" rel="nofollow" target="_blank">sdiver</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B078MMXJPC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877779" data-vars-keywords="cleaning" data-vars-link-id="14877779" data-vars-price.currency="USD" data-vars-price.value="6.95" href="https://www.amazon.com/dp/B078MMXJPC?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C12%2C48%2Cmobile_web%2C0%2C0%2C14877779" rel="nofollow" target="_blank">$6.95</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707009" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here: ", "oembed_data": {"author_name": "jessicalynn727", "author_url": "https://www.tiktok.com/@jessicalynn727", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@jessicalynn727/video/6824196220399996165"}, {"key": "data-video-id", "value": "6824196220399996165"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@jessicalynn727"}, {"key": "href", "value": "https://www.tiktok.com/@jessicalynn727"}], "children": [{"content": "@jessicalynn727", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"attributes": [{"key": "title", "value": "MakeBakeShake"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/MakeBakeShake"}], "children": [{"content": "#MakeBakeShake", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "familytime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/familytime"}], "children": [{"content": "#familytime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "ScoobDance"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/ScoobDance"}], "children": [{"content": "#ScoobDance", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "gonnabefriends"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/gonnabefriends"}], "children": [{"content": "#gonnabefriends", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "healthheroes"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/healthheroes"}], "children": [{"content": "#healthheroes", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "fyp"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/fyp"}], "children": [{"content": "#fyp", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foryoupage"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foryoupage"}], "children": [{"content": "#foryoupage", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokmademebuyit"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokmademebuyit"}], "children": [{"content": "#tiktokmademebuyit", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "quarantinelife"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/quarantinelife"}], "children": [{"content": "#quarantinelife", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - jessicalynn727"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6824196208731376390"}], "children": [{"content": "\u266c original sound - jessicalynn727", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/38a3fbed794e10dcb8e589660a50564f?x-expires=1601938800\u0026x-signature=lmTVBpRbqiAeBFCJI7Rr1gf%2BiPs%3D", "thumbnail_width": 576, "title": "#MakeBakeShake #familytime #ScoobDance #gonnabefriends #healthheroes #fyp #foryoupage #amazonfinds #tiktokmademebuyit #amazonprime #quarantinelife", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@jessicalynn727/video/6824196220399996165", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707009"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@jessicalynn727/video/6824196220399996165' data-video-id='6824196220399996165' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@jessicalynn727' href='https://www.tiktok.com/@jessicalynn727'>@jessicalynn727</a> <p><a title='MakeBakeShake' target='_blank' href='https://www.tiktok.com/tag/MakeBakeShake'>#MakeBakeShake</a> <a title='familytime' target='_blank' href='https://www.tiktok.com/tag/familytime'>#familytime</a> <a title='ScoobDance' target='_blank' href='https://www.tiktok.com/tag/ScoobDance'>#ScoobDance</a> <a title='gonnabefriends' target='_blank' href='https://www.tiktok.com/tag/gonnabefriends'>#gonnabefriends</a> <a title='healthheroes' target='_blank' href='https://www.tiktok.com/tag/healthheroes'>#healthheroes</a> <a title='fyp' target='_blank' href='https://www.tiktok.com/tag/fyp'>#fyp</a> <a title='foryoupage' target='_blank' href='https://www.tiktok.com/tag/foryoupage'>#foryoupage</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='tiktokmademebuyit' target='_blank' href='https://www.tiktok.com/tag/tiktokmademebuyit'>#tiktokmademebuyit</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='quarantinelife' target='_blank' href='https://www.tiktok.com/tag/quarantinelife'>#quarantinelife</a></p> <a target='_blank' title='♬ original sound - jessicalynn727' href='https://www.tiktok.com/music/original-sound-6824196208731376390'>♬ original sound - jessicalynn727</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125690185" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125690185
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">8.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07F17DZM9?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/dp/B07F17DZM9?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">pet hair roller</a> sure to amaze you with how much hair it picks up from your carpet and furniture. Furry friends are the best, but a couch full of fur is not.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1_preview.gif","width":"304"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","width":"304"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","width":"304"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","width":"304"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","width":"304"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1.gif","width":304,"height":480,"attribution":"@alyssa. marzke \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.tiktok.com\/@alyssa.marzke\/video\/6824940273030761734\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.95\" href=\"https:\/\/www.tiktok.com\/@alyssa.marzke\/video\/6824940273030761734\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125690536","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"304","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/21\/asset\/52c11188ae60\/anigif_sub-buzz-2561-1601586938-1_preview.gif?crop=304:480;0,0","alt_text":"tiktok of a person rolling their carpet and then showing all the hair inside "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg","images":{"mobile":{"height":"1319","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg?resize=990:*","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg","width":"1126"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg?resize=625:*","width":"625"},"wide":{"height":"1319","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg","width":1126,"height":1500,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RBK04B67UW653?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.95\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RBK04B67UW653?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125690535","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1126","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/1\/19\/asset\/375ba930d95b\/sub-buzz-2353-1601582303-9.jpg?crop=1126:1500;0,0","alt_text":"reviewer showing all of the pet hair in their roller "}],
          "id": 125690185,
          "bfa": {"e":"{idx:0,subbuzzId:125690185}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6333;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125690536">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/21/asset/52c11188ae60/anigif_sub-buzz-2561-1601586938-1_preview.gif?crop=304%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 157.89%;"
                data-aratio="157.89">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/21/asset/52c11188ae60/anigif_sub-buzz-2561-1601586938-1.gif"
                     data-bfa="@a:click:photoset;@d:gif:125690536:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125690185" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125690185">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok of a person rolling their carpet and then showing all the hair inside "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/21/asset/52c11188ae60/anigif_sub-buzz-2561-1601586938-1.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/21/asset/52c11188ae60/anigif_sub-buzz-2561-1601586938-1_preview.gif?crop=304%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/21/asset/52c11188ae60/anigif_sub-buzz-2561-1601586938-1.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.7507;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125690535">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/19/asset/375ba930d95b/sub-buzz-2353-1601582303-9.jpg?crop=1126%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.21%;"
                data-aratio="133.21">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/19/asset/375ba930d95b/sub-buzz-2353-1601582303-9.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125690535:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer showing all of the pet hair in their roller "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/1/19/asset/375ba930d95b/sub-buzz-2353-1601582303-9.jpg?crop=1126%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @alyssa. marzke / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.tiktok.com/@alyssa.marzke/video/6824940273030761734" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.tiktok.com/@alyssa.marzke/video/6824940273030761734" rel="nofollow" target="_blank">tiktok.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RBK04B67UW653?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/gp/customer-reviews/RBK04B67UW653?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>This particular version is the super cute limited edition doggy design!</p><p><b>Promising review:</b> "This product removes an embarrassingly large amount of pet hair from couch and seat covers, upholstered furniture, car seats, cushions, and surprisingly, clothing. It is easy to use and requires very little elbow grease to operate, making it ideal for seniors. The money you will save on sticky tape refills will pay for this little wonder many times over!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R6SVGX32CXW1G?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C14877791" data-vars-keywords="cleaning" data-vars-link-id="14877791" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/gp/customer-reviews/R6SVGX32CXW1G?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C14877791" rel="nofollow" target="_blank">timekeeper</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07F17DZM9?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/dp/B07F17DZM9?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$29.95</a> (also available in a <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07F178K9N?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/dp/B07F178K9N?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">limited edition cat design</a> or the original design for <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00BAGTNAQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.95" href="https://www.amazon.com/dp/B00BAGTNAQ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C14%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$24.95</a>)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707014" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "alyssamarzke", "author_url": "https://www.tiktok.com/@alyssa.marzke", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@alyssa.marzke/video/6824940273030761734"}, {"key": "data-video-id", "value": "6824940273030761734"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@alyssa.marzke"}, {"key": "href", "value": "https://www.tiktok.com/@alyssa.marzke"}], "children": [{"content": "@alyssa.marzke", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Had to go more in depth and really show off my new ChomChom roller! ", "type": "text"}, {"attributes": [{"key": "title", "value": "chomchomroller"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/chomchomroller"}], "children": [{"content": "#chomchomroller", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokmademebuyit"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokmademebuyit"}], "children": [{"content": "#tiktokmademebuyit", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "productreview"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/productreview"}], "children": [{"content": "#productreview", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - alyssamarzke"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6824940322666089221"}], "children": [{"content": "\u266c original sound - alyssamarzke", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/6d8f3a688808b2096c79c2c9fda11fbb?x-expires=1601938800\u0026x-signature=6uvIjjN6ikxoV3YLjfJIfasdesM%3D", "thumbnail_width": 576, "title": "Had to go more in depth and really show off my new ChomChom roller! #chomchomroller #amazonfinds #tiktokmademebuyit #productreview", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@alyssa.marzke/video/6824940273030761734", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707014"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@alyssa.marzke/video/6824940273030761734' data-video-id='6824940273030761734' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@alyssa.marzke' href='https://www.tiktok.com/@alyssa.marzke'>@alyssa.marzke</a> <p>Had to go more in depth and really show off my new ChomChom roller! <a title='chomchomroller' target='_blank' href='https://www.tiktok.com/tag/chomchomroller'>#chomchomroller</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='tiktokmademebuyit' target='_blank' href='https://www.tiktok.com/tag/tiktokmademebuyit'>#tiktokmademebuyit</a> <a title='productreview' target='_blank' href='https://www.tiktok.com/tag/productreview'>#productreview</a></p> <a target='_blank' title='♬ original sound - alyssamarzke' href='https://www.tiktok.com/music/original-sound-6824940322666089221'>♬ original sound - alyssamarzke</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125695056" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125695056
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">9.</span>
    

    
      <span class="js-subbuzz__title-text">A pack of <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01GDOYDTK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.95" href="https://www.amazon.com/dp/B01GDOYDTK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">clear glass straws</a> that come with four bent, four straight, and two cleaning brushes so you can be environmentally conscious, while also serving up a very aesthetically pleasing beverage.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg","images":{"mobile":{"height":"1087","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg?resize=990:*","width":"990"},"original":{"height":"1098","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg","width":"1000"},"standard":{"height":"686","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1087","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg","width":1000,"height":1098,"attribution":"Amazon","id":"125695058","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1098","width":"1000","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8cc393f40df6\/sub-buzz-3755-1601655096-1.jpg?crop=1000:1098;0,0","alt_text":"a bent glass straw in a drink "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29_preview.gif","width":"306"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","width":"306"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","width":"306"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","width":"306"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","width":"306"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29.gif","width":306,"height":480,"attribution":"@annamoraan \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@annamoraan\/video\/6844234291535154438\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"7.95\" href=\"https:\/\/www.tiktok.com\/@annamoraan\/video\/6844234291535154438\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125695060","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"306","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/8c467491c54b\/anigif_sub-buzz-3800-1601655107-29_preview.gif?crop=306:480;0,0","alt_text":"tiktok of a person showing the pack of glass straws and then using one in a drink "}],
          "id": 125695056,
          "bfa": {"e":"{idx:0,subbuzzId:125695056}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.9107;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125695058">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8cc393f40df6/sub-buzz-3755-1601655096-1.jpg?crop=1000%3A1098%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 109.8%;"
                data-aratio="109.8">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8cc393f40df6/sub-buzz-3755-1601655096-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125695058:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="a bent glass straw in a drink "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8cc393f40df6/sub-buzz-3755-1601655096-1.jpg?crop=1000%3A1098%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6375;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125695060">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8c467491c54b/anigif_sub-buzz-3800-1601655107-29_preview.gif?crop=306%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 156.86%;"
                data-aratio="156.86">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8c467491c54b/anigif_sub-buzz-3800-1601655107-29.gif"
                     data-bfa="@a:click:photoset;@d:gif:125695060:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125695056" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125695056">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok of a person showing the pack of glass straws and then using one in a drink "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8c467491c54b/anigif_sub-buzz-3800-1601655107-29.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8c467491c54b/anigif_sub-buzz-3800-1601655107-29_preview.gif?crop=306%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/8c467491c54b/anigif_sub-buzz-3800-1601655107-29.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @annamoraan / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@annamoraan/video/6844234291535154438" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.95" href="https://www.tiktok.com/@annamoraan/video/6844234291535154438" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "There is always a concern with glass — is it sharp? Is it too small or too large? I have to say, I was very impressed. The ends are rolled and polished for smoothness and durability. I can detect no difference in size between the straws — all are uniform and well made. I bought the 10-inch version straws with four bent and the rest straight. A very good purchase!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R26R3GPM2M5TCR?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C14877835" data-vars-keywords="cleaning" data-vars-link-id="14877835" data-vars-price.currency="USD" data-vars-price.value="7.95" href="https://www.amazon.com/gp/customer-reviews/R26R3GPM2M5TCR?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C14877835" rel="nofollow" target="_blank">Ron C</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01GDOYDTK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.95" href="https://www.amazon.com/dp/B01GDOYDTK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C16%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$7.95</a> (also available in multicolor)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707023" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Anna", "author_url": "https://www.tiktok.com/@annamoraan", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@annamoraan/video/6844234291535154438"}, {"key": "data-video-id", "value": "6844234291535154438"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@annamoraan"}, {"key": "href", "value": "https://www.tiktok.com/@annamoraan"}], "children": [{"content": "@annamoraan", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "PART 23 of my amazon addiction !!! ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfashion"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfashion"}], "children": [{"content": "#amazonfashion", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " LINKS ARE IN MY BIO", "type": "text"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Anna"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6844234293754006277"}], "children": [{"content": "\u266c original sound - Anna", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/6ec693512e74391e6bf1b75967db400f?x-expires=1601938800\u0026x-signature=TeNKPPzgtwti9s4yBdlAVFDS6rM%3D", "thumbnail_width": 576, "title": "PART 23 of my amazon addiction !!! #amazonfinds #amazonmusthaves #amazonfashion #amazon LINKS ARE IN MY BIO", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@annamoraan/video/6844234291535154438", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707023"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@annamoraan/video/6844234291535154438' data-video-id='6844234291535154438' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@annamoraan' href='https://www.tiktok.com/@annamoraan'>@annamoraan</a> <p>PART 23 of my amazon addiction !!! <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='amazonfashion' target='_blank' href='https://www.tiktok.com/tag/amazonfashion'>#amazonfashion</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> LINKS ARE IN MY BIO</p> <a target='_blank' title='♬ original sound - Anna' href='https://www.tiktok.com/music/original-sound-6844234293754006277'>♬ original sound - Anna</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="fast fashion"
  >
  
  <div id="125695300" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125695300
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">10.</span>
    

    
      <span class="js-subbuzz__title-text">A two-pack of <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01I5I5CDS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877809" data-vars-keywords="fast fashion" data-vars-link-id="14877809" data-vars-price.currency="USD" data-vars-price.value="24.99" href="https://www.amazon.com/dp/B01I5I5CDS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877809" rel="nofollow" target="_blank">clear shelf dividers</a> you won't even notice are there, yet they'll make a HUGE difference to your shelves. Use them to divide folded sweaters, pants, towels, books, and more for a much tidier look.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg?resize=990:990","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg","width":"1500"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg?resize=625:625","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg?resize=990:990","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg","width":1500,"height":1500,"attribution":"Amazon","id":"125695302","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/52c11188ae60\/sub-buzz-3927-1601657572-44.jpg?crop=1500:1500;0,0","alt_text":"clear dividers holding up sweaters on a shelf "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625:*","images":{"gif_preview":{"height":"980","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625:*","width":"625"},"mobile":{"height":"1553","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif?resize=990:*","width":"990"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif","width":"306"},"standard":{"height":"980","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif?resize=625:*","width":"625"},"wide":{"height":"1553","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625:*","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625%3A%2A&output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43.gif","width":625,"height":980,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6794818258483662086\" data-vars-keywords=\"fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"24.99\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6794818258483662086\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125695301","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"306","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/16\/asset\/a47d43dbc642\/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625:*?crop=306:480;0,0","alt_text":"tiktok of someone using the clear dividers to organize folded tops and sweaters "}],
          "id": 125695300,
          "bfa": {"e":"{idx:0,subbuzzId:125695300}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125695302">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/52c11188ae60/sub-buzz-3927-1601657572-44.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/52c11188ae60/sub-buzz-3927-1601657572-44.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125695302:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="clear dividers holding up sweaters on a shelf "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/52c11188ae60/sub-buzz-3927-1601657572-44.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6375;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125695301">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/a47d43dbc642/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625%3A%2A%3Fcrop%3D306%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 156.86%;"
                data-aratio="156.86">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/a47d43dbc642/anigif_sub-buzz-3805-1601657565-43.gif"
                     data-bfa="@a:click:photoset;@d:gif:125695301:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125695300" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125695300">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok of someone using the clear dividers to organize folded tops and sweaters "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/a47d43dbc642/anigif_sub-buzz-3805-1601657565-43.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/a47d43dbc642/anigif_sub-buzz-3805-1601657565-43_preview.gif?resize=625%3A%2A%3Fcrop%3D306%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/16/asset/a47d43dbc642/anigif_sub-buzz-3805-1601657565-43.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6794818258483662086" data-vars-keywords="fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="24.99" href="https://www.tiktok.com/@teresalauracaruso/video/6794818258483662086" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "These dividers were perfect for our needs. Easy to install, and almost invisible to the eye. We used them as dividers on shelves in our closet to separate pants, T-shirts, sweat shirts etc." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R38OSG8BTDUWMF?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877793" data-vars-keywords="fast fashion" data-vars-link-id="14877793" data-vars-price.currency="USD" data-vars-price.value="24.99" href="https://www.amazon.com/gp/customer-reviews/R38OSG8BTDUWMF?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877793" rel="nofollow" target="_blank">Rogue</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01I5I5CDS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877809" data-vars-keywords="fast fashion" data-vars-link-id="14877809" data-vars-price.currency="USD" data-vars-price.value="24.99" href="https://www.amazon.com/dp/B01I5I5CDS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C18%2C48%2Cmobile_web%2C0%2C0%2C14877809" rel="nofollow" target="_blank">$24.99</a> (also available in a six-pack)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707056" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6794818258483662086"}, {"key": "data-video-id", "value": "6794818258483662086"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Six organization must-haves from Amazon! ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "organization"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/organization"}], "children": [{"content": "#organization", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "fyp"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/fyp"}], "children": [{"content": "#fyp", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foryoupage"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foryoupage"}], "children": [{"content": "#foryoupage", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "xyzbca"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/xyzbca"}], "children": [{"content": "#xyzbca", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "homedecor"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/homedecor"}], "children": [{"content": "#homedecor", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6794752767849450246"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1280, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/af57042797d96e3ef03948ef2620b624?x-expires=1601938800\u0026x-signature=Mx7A%2BYFEXudLjHjM65ZpvExY1wA%3D", "thumbnail_width": 720, "title": "Six organization must-haves from Amazon! #founditonamazon #amazonprime #organization #fyp #foryoupage #xyzbca #homedecor #amazonfinds", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6794818258483662086", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707056"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6794818258483662086' data-video-id='6794818258483662086' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>Six organization must-haves from Amazon! <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='organization' target='_blank' href='https://www.tiktok.com/tag/organization'>#organization</a> <a title='fyp' target='_blank' href='https://www.tiktok.com/tag/fyp'>#fyp</a> <a title='foryoupage' target='_blank' href='https://www.tiktok.com/tag/foryoupage'>#foryoupage</a> <a title='xyzbca' target='_blank' href='https://www.tiktok.com/tag/xyzbca'>#xyzbca</a> <a title='homedecor' target='_blank' href='https://www.tiktok.com/tag/homedecor'>#homedecor</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6794752767849450246'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning"
  >
  
  <div id="125697916" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697916
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">11.</span>
    

    
      <span class="js-subbuzz__title-text">A pack of eco-friendly <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07GX6TRQX?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07GX6TRQX?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">sponge cloths</a> for cleaning up spills and messes over and over again. They're highly absorbent and once they get dirty, you can just stick them in the dishwasher and they're good to go.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14_preview.gif","images":{"gif_preview":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14_preview.gif","width":"250"},"mobile":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","width":"250"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif?output-format=mp4"},"original":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","width":"250"},"standard":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","width":"250"},"wide":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","width":"250"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14.gif","width":250,"height":306,"attribution":"@lindsayroggenbuck \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@lindsayroggenbuck\/video\/6842817252102835462\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.95\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@lindsayroggenbuck\/video\/6842817252102835462\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697920","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"306","width":"250","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/a1e0aeb39aa5\/anigif_sub-buzz-30173-1601335739-14_preview.gif?crop=250:306;0,0","alt_text":"tiktok user testing the clothes on a counter"},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg","images":{"mobile":{"height":"1183","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg?resize=990:*","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg","width":"1255"},"standard":{"height":"747","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg?resize=625:*","width":"625"},"wide":{"height":"1183","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg","width":1255,"height":1500,"attribution":"Amazon","id":"125697923","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1255","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/55acbfad1d41\/sub-buzz-29550-1601308539-39.jpg?crop=1255:1500;0,0","alt_text":"the sponge clothes in pink "}],
          "id": 125697916,
          "bfa": {"e":"{idx:0,subbuzzId:125697916}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.817;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697920">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/a1e0aeb39aa5/anigif_sub-buzz-30173-1601335739-14_preview.gif?crop=250%3A306%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 122.4%;"
                data-aratio="122.4">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/a1e0aeb39aa5/anigif_sub-buzz-30173-1601335739-14.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697920:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697916" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697916">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user testing the clothes on a counter"
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/a1e0aeb39aa5/anigif_sub-buzz-30173-1601335739-14.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/a1e0aeb39aa5/anigif_sub-buzz-30173-1601335739-14_preview.gif?crop=250%3A306%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/a1e0aeb39aa5/anigif_sub-buzz-30173-1601335739-14.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.8367;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697923">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/55acbfad1d41/sub-buzz-29550-1601308539-39.jpg?crop=1255%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 119.52%;"
                data-aratio="119.52">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/55acbfad1d41/sub-buzz-29550-1601308539-39.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697923:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the sponge clothes in pink "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/55acbfad1d41/sub-buzz-29550-1601308539-39.jpg?crop=1255%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @lindsayroggenbuck / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@lindsayroggenbuck/video/6842817252102835462" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.95" data-vars-retailers="Amazon" href="https://www.tiktok.com/@lindsayroggenbuck/video/6842817252102835462" rel="nofollow" target="_blank">tiktok.com</a>, Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I rarely write reviews, but these deserve a shoutout. SO much more substantial than <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B004X8P1UO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C14877805" data-vars-keywords="cleaning" data-vars-link-id="14877805" data-vars-price.currency="USD" data-vars-price.value="19.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B004X8P1UO?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C14877805" rel="nofollow" target="_blank">Handiwipes</a> and you can really, really scrub with them but they never feel yucky like a sponge does. I have soaked them in bleach, thrown them in the washer, and they come out great every time. I've used the same two for a month now and they still look great! When they go downhill, I can compost them. I only wish they had a few other colors, maybe a royal blue or sage green?" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3B3Q25N8URXDI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C14877785" data-vars-keywords="cleaning" data-vars-link-id="14877785" data-vars-price.currency="USD" data-vars-price.value="19.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3B3Q25N8URXDI?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C14877785" rel="nofollow" target="_blank">Amazon Customer</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07GX6TRQX?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07GX6TRQX?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C20%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$19.95</a> for a pack of 10 (available in 10 colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707103" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Lindsay Roggenbuck", "author_url": "https://www.tiktok.com/@lindsayroggenbuck", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@lindsayroggenbuck/video/6842817252102835462"}, {"key": "data-video-id", "value": "6842817252102835462"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@lindsayroggenbuck"}, {"key": "href", "value": "https://www.tiktok.com/@lindsayroggenbuck"}], "children": [{"content": "@lindsayroggenbuck", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Amazon favs part 3 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "musthavesfromamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/musthavesfromamazon"}], "children": [{"content": "#musthavesfromamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "momhacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/momhacks"}], "children": [{"content": "#momhacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "momsover40"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/momsover40"}], "children": [{"content": "#momsover40", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "musthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/musthaves"}], "children": [{"content": "#musthaves", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Roses - Imanbek Remix - SAINt JHN"}, {"key": "href", "value": "https://www.tiktok.com/music/Roses-Imanbek-Remix-6754296561716447233"}], "children": [{"content": "\u266c Roses - Imanbek Remix - SAINt JHN", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/0ded82c0393d5437c154254c46bf6807?x-expires=1601938800\u0026x-signature=4%2FeGpEo4mlq1jig8j4vUsy2Kfyg%3D", "thumbnail_width": 576, "title": "Amazon favs part 3 #amazonfinds #amazonprime #amazonfavorites #amazonmusthaves #founditonamazon #musthavesfromamazon #momhacks #momsover40 #musthaves", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@lindsayroggenbuck/video/6842817252102835462", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707103"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@lindsayroggenbuck/video/6842817252102835462' data-video-id='6842817252102835462' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@lindsayroggenbuck' href='https://www.tiktok.com/@lindsayroggenbuck'>@lindsayroggenbuck</a> <p>Amazon favs part 3 <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='musthavesfromamazon' target='_blank' href='https://www.tiktok.com/tag/musthavesfromamazon'>#musthavesfromamazon</a> <a title='momhacks' target='_blank' href='https://www.tiktok.com/tag/momhacks'>#momhacks</a> <a title='momsover40' target='_blank' href='https://www.tiktok.com/tag/momsover40'>#momsover40</a> <a title='musthaves' target='_blank' href='https://www.tiktok.com/tag/musthaves'>#musthaves</a></p> <a target='_blank' title='♬ Roses - Imanbek Remix - SAINt JHN' href='https://www.tiktok.com/music/Roses-Imanbek-Remix-6754296561716447233'>♬ Roses - Imanbek Remix - SAINt JHN</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="skincare"
  >
  
  <div id="125695398" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125695398
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">12.</span>
    

    
      <span class="js-subbuzz__title-text">An <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07193RGD6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877811" data-vars-keywords="skincare" data-vars-link-id="14877811" data-vars-price.currency="USD" data-vars-price.value="29.99" href="https://www.amazon.com/dp/B07193RGD6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877811" rel="nofollow" target="_blank">LED touch lamp</a> equipped with four USB charging ports and three brightness levels — whether you need some light for reading, or you just need somewhere convenient to plug in your phone, this will be your new bedside bestie. Just give the top a tap to turn it on, off, or make it brighter.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44_preview.gif","width":"306"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","width":"306"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","width":"306"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","width":"306"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","width":"306"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44.gif","width":306,"height":480,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6850887402475605253\" data-vars-keywords=\"skincare\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.99\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6850887402475605253\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125695401","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"306","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/cf2b33b07adb\/anigif_sub-buzz-3854-1601658730-44_preview.gif?crop=306:480;0,0","alt_text":"tiktok user tapping the top of the lamp to make it brighter "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg?resize=990:*","width":"990"},"original":{"height":"1414","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg","width":"1414"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg?resize=625:*","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg","width":1414,"height":1414,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768\" data-vars-keywords=\"skincare\" data-vars-link-id=\"14877768\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125695400","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1194","width":"1194","x_offset":"2","y_offset":"105"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/748327a98064\/sub-buzz-3944-1601658712-30.jpg?crop=1194:1194;2,105","alt_text":"reviewer's lamp on a bedside table with a couple chargers plugged into it "}],
          "id": 125695398,
          "bfa": {"e":"{idx:0,subbuzzId:125695398}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6375;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125695401">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/cf2b33b07adb/anigif_sub-buzz-3854-1601658730-44_preview.gif?crop=306%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 156.86%;"
                data-aratio="156.86">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/cf2b33b07adb/anigif_sub-buzz-3854-1601658730-44.gif"
                     data-bfa="@a:click:photoset;@d:gif:125695401:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125695398" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125695398">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user tapping the top of the lamp to make it brighter "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/cf2b33b07adb/anigif_sub-buzz-3854-1601658730-44.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/cf2b33b07adb/anigif_sub-buzz-3854-1601658730-44_preview.gif?crop=306%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/cf2b33b07adb/anigif_sub-buzz-3854-1601658730-44.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125695400">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/748327a98064/sub-buzz-3944-1601658712-30.jpg?crop=1194%3A1194%3B2%2C105&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/748327a98064/sub-buzz-3944-1601658712-30.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125695400:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s lamp on a bedside table with a couple chargers plugged into it "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/748327a98064/sub-buzz-3944-1601658712-30.jpg?crop=1194%3A1194%3B2%2C105&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6850887402475605253" data-vars-keywords="skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.99" href="https://www.tiktok.com/@teresalauracaruso/video/6850887402475605253" rel="nofollow" target="_blank">tiktok.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768" data-vars-keywords="skincare" data-vars-link-id="14877768" data-vars-price.currency="USD" data-vars-price.value="29.99" href="https://www.amazon.com/gp/customer-reviews/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I loveeee this little light. It’s small, but it charges my phone and watch well. It also puts off some pretty bright light for something so small! Love it! Definitely recommend." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768" data-vars-keywords="skincare" data-vars-link-id="14877768" data-vars-price.currency="USD" data-vars-price.value="29.99" href="https://www.amazon.com/gp/customer-reviews/R1AS8SIADLU1BP?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877768" rel="nofollow" target="_blank">Tara</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07193RGD6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877811" data-vars-keywords="skincare" data-vars-link-id="14877811" data-vars-price.currency="USD" data-vars-price.value="29.99" href="https://www.amazon.com/dp/B07193RGD6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C22%2C48%2Cmobile_web%2C0%2C0%2C14877811" rel="nofollow" target="_blank">$29.99</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707141" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6850887402475605253"}, {"key": "data-video-id", "value": "6850887402475605253"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Super cool gadgets from Amazon you NEED!\ud83d\udcf1 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "homedecor"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/homedecor"}], "children": [{"content": "#homedecor", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "hometour"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/hometour"}], "children": [{"content": "#hometour", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6850887400445610757"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/3adcf0b0c37a6ce8a6768f7290f0dd71?x-expires=1601938800\u0026x-signature=cpm0%2BJGG%2F1ntT76n%2Bpx0KAy3n7g%3D", "thumbnail_width": 576, "title": "Super cool gadgets from Amazon you NEED!\ud83d\udcf1 #amazon #amazonfinds #amazonprime #founditonamazon #homedecor #hometour", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6850887402475605253", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707141"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6850887402475605253' data-video-id='6850887402475605253' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>Super cool gadgets from Amazon you NEED!📱 <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='homedecor' target='_blank' href='https://www.tiktok.com/tag/homedecor'>#homedecor</a> <a title='hometour' target='_blank' href='https://www.tiktok.com/tag/hometour'>#hometour</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6850887400445610757'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125695442" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125695442
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">13.</span>
    

    
      <span class="js-subbuzz__title-text">An adorable <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B016C1ULHM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.98" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B016C1ULHM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">magnetic cloud-shaped key holder</a> to ensure you don't lose your keys anymore. Just put this by the door and you'll look forward to sticking your keys to it when you walk in.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg?resize=990:*","width":"990"},"original":{"height":"1414","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg","width":"1414"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg?resize=625:*","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg","width":1414,"height":1414,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"14877773\" data-vars-price.currency=\"USD\" data-vars-price.value=\"9.98\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125695755","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1414","width":"942","x_offset":"243","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/14bcefeb67ab\/sub-buzz-3932-1601659131-32.jpg?crop=942:1414;243,0","alt_text":"reviewer's key ring hanging from the key holder "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8_preview.gif","width":"296"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","width":"296"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","width":"296"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","width":"296"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","width":"296"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8.gif","width":296,"height":480,"attribution":"@briannaxliv \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@briannaxliv\/video\/6856507541912849670\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"9.98\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@briannaxliv\/video\/6856507541912849670\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125695756","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"296","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/52c11188ae60\/anigif_sub-buzz-4017-1601660487-8_preview.gif?crop=296:480;0,0","alt_text":"tiktok user showing how her heavy key rings stick to the magnetic cloud "}],
          "id": 125695442,
          "bfa": {"e":"{idx:0,subbuzzId:125695442}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6662;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125695755">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/14bcefeb67ab/sub-buzz-3932-1601659131-32.jpg?crop=942%3A1414%3B243%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.11%;"
                data-aratio="150.11">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/14bcefeb67ab/sub-buzz-3932-1601659131-32.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125695755:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s key ring hanging from the key holder "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/14bcefeb67ab/sub-buzz-3932-1601659131-32.jpg?crop=942%3A1414%3B243%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6167;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125695756">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/52c11188ae60/anigif_sub-buzz-4017-1601660487-8_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 162.16%;"
                data-aratio="162.16">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/52c11188ae60/anigif_sub-buzz-4017-1601660487-8.gif"
                     data-bfa="@a:click:photoset;@d:gif:125695756:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125695442" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125695442">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user showing how her heavy key rings stick to the magnetic cloud "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/52c11188ae60/anigif_sub-buzz-4017-1601660487-8.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/52c11188ae60/anigif_sub-buzz-4017-1601660487-8_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/52c11188ae60/anigif_sub-buzz-4017-1601660487-8.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877773" data-vars-price.currency="USD" data-vars-price.value="9.98" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773" rel="nofollow" target="_blank">amazon.com</a>, @briannaxliv / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@briannaxliv/video/6856507541912849670" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.98" data-vars-retailers="Amazon" href="https://www.tiktok.com/@briannaxliv/video/6856507541912849670" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "One of the most useful purchases I've ever made on Amazon. I use it every single day to hang my keys. I've had it for at least half a year now it seems. Hasn't lost any magnetism and it holds my car keys, remote start, USB, rewards/gift cards, house and work keys, etc. In love. One of the best purchases I've made." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877773" data-vars-price.currency="USD" data-vars-price.value="9.98" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R14VTTTFCT0Z53?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C14877773" rel="nofollow" target="_blank">Makenah</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B016C1ULHM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.98" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B016C1ULHM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C24%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$9.98</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707151" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Brianna", "author_url": "https://www.tiktok.com/@briannaxliv", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@briannaxliv/video/6856507541912849670"}, {"key": "data-video-id", "value": "6856507541912849670"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@briannaxliv"}, {"key": "href", "value": "https://www.tiktok.com/@briannaxliv"}], "children": [{"content": "@briannaxliv", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "My amazon fav\u2019s! Should I continue this series? ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "momsoftiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/momsoftiktok"}], "children": [{"content": "#momsoftiktok", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonhome"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhome"}], "children": [{"content": "#amazonhome", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonhaul"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhaul"}], "children": [{"content": "#amazonhaul", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Brianna"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6856507549915679493"}], "children": [{"content": "\u266c original sound - Brianna", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/c3be6c00c16e8c9e1597b4d7a0de2dae?x-expires=1601938800\u0026x-signature=JzeHP84v9Rkc4sUP5LZ9GYlFPVk%3D", "thumbnail_width": 576, "title": "My amazon fav\u2019s! Should I continue this series? #amazonfavorites #amazonfinds #founditonamazon #momsoftiktok #amazonhome #amazonmusthaves #amazonhaul", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@briannaxliv/video/6856507541912849670", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707151"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@briannaxliv/video/6856507541912849670' data-video-id='6856507541912849670' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@briannaxliv' href='https://www.tiktok.com/@briannaxliv'>@briannaxliv</a> <p>My amazon fav’s! Should I continue this series? <a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='momsoftiktok' target='_blank' href='https://www.tiktok.com/tag/momsoftiktok'>#momsoftiktok</a> <a title='amazonhome' target='_blank' href='https://www.tiktok.com/tag/amazonhome'>#amazonhome</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='amazonhaul' target='_blank' href='https://www.tiktok.com/tag/amazonhaul'>#amazonhaul</a></p> <a target='_blank' title='♬ original sound - Brianna' href='https://www.tiktok.com/music/original-sound-6856507549915679493'>♬ original sound - Brianna</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125696227" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125696227
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">14.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07RQQTJ3P?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877801" data-vars-link-id="14877801" data-vars-price.currency="USD" data-vars-price.value="13.99" href="https://www.amazon.com/dp/B07RQQTJ3P?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877801" rel="nofollow" target="_blank">silicone ice cube trays</a> with lids, helpful for stacking and avoiding spillage. Get ready to throw those old plastic ones away because the flexibly of these makes it much easier to get the ice out.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3PBSYZQ6ABYU6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"13.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3PBSYZQ6ABYU6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125696233","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/375ba930d95b\/sub-buzz-3943-1601662661-16.jpg?crop=1224:1632;0,0","alt_text":"reviewer's teal ice cube tray with ice in it "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4_preview.gif","width":"296"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","width":"296"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","width":"296"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","width":"296"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","width":"296"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4.gif","width":296,"height":480,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6831230248789544197\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"13.99\" href=\"https:\/\/www.tiktok.com\/@toponlinefinds\/video\/6831230248789544197\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125696234","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"296","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/690bc2095fe0\/anigif_sub-buzz-3968-1601662695-4_preview.gif?crop=296:480;0,0","alt_text":"tiktok user popping ice cubes out of the tray and into a glass "}],
          "id": 125696227,
          "bfa": {"e":"{idx:0,subbuzzId:125696227}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125696233">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/375ba930d95b/sub-buzz-3943-1601662661-16.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/375ba930d95b/sub-buzz-3943-1601662661-16.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125696233:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s teal ice cube tray with ice in it "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/375ba930d95b/sub-buzz-3943-1601662661-16.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6167;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125696234">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/690bc2095fe0/anigif_sub-buzz-3968-1601662695-4_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 162.16%;"
                data-aratio="162.16">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/690bc2095fe0/anigif_sub-buzz-3968-1601662695-4.gif"
                     data-bfa="@a:click:photoset;@d:gif:125696234:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125696227" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125696227">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user popping ice cubes out of the tray and into a glass "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/690bc2095fe0/anigif_sub-buzz-3968-1601662695-4.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/690bc2095fe0/anigif_sub-buzz-3968-1601662695-4_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/690bc2095fe0/anigif_sub-buzz-3968-1601662695-4.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3PBSYZQ6ABYU6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="13.99" href="https://www.amazon.com/gp/customer-reviews/R3PBSYZQ6ABYU6?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@toponlinefinds/video/6831230248789544197" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="13.99" href="https://www.tiktok.com/@toponlinefinds/video/6831230248789544197" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "What a huge upgrade to those rigid plastic trays that spill water all over your freezer, as you try to refill and stack them! It's incredibly easy to snap the cubes out of the trays, and the cubes are a great size. I love that the lids keep everything in and out of the trays. Great buy!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2QBR4C4KACBWR?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877821" data-vars-link-id="14877821" data-vars-price.currency="USD" data-vars-price.value="13.99" href="https://www.amazon.com/gp/customer-reviews/R2QBR4C4KACBWR?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877821" rel="nofollow" target="_blank">Christen N.</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07RQQTJ3P?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877801" data-vars-link-id="14877801" data-vars-price.currency="USD" data-vars-price.value="13.99" href="https://www.amazon.com/dp/B07RQQTJ3P?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C26%2C48%2Cmobile_web%2C0%2C0%2C14877801" rel="nofollow" target="_blank">$13.99</a> for a pack of two (available in two designs)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707158" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "toponlinefinds", "author_url": "https://www.tiktok.com/@toponlinefinds", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@toponlinefinds/video/6831230248789544197"}, {"key": "data-video-id", "value": "6831230248789544197"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@toponlinefinds"}, {"key": "href", "value": "https://www.tiktok.com/@toponlinefinds"}], "children": [{"content": "@toponlinefinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Kitchen gadgets pt.3!\u2728 ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchenhacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchenhacks"}], "children": [{"content": "#kitchenhacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchentips"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchentips"}], "children": [{"content": "#kitchentips", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchengadget"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchengadget"}], "children": [{"content": "#kitchengadget", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktoklifehacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktoklifehacks"}], "children": [{"content": "#tiktoklifehacks", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "ratethings"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/ratethings"}], "children": [{"content": "#ratethings", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "cookinghacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/cookinghacks"}], "children": [{"content": "#cookinghacks", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Lemons - Demo - Brye"}, {"key": "href", "value": "https://www.tiktok.com/music/Lemons-Demo-6800298291880790018"}], "children": [{"content": "\u266c Lemons - Demo - Brye", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/a23fea1bbf68c9b03114f2959bcf0db7?x-expires=1601938800\u0026x-signature=4K1eHkE19B8Y45UkYwuPvFwSbJw%3D", "thumbnail_width": 576, "title": "Kitchen gadgets pt.3!\u2728 #kitchenhacks #kitchentips #kitchengadget #amazon #amazonfinds #amazonfavorites #tiktoklifehacks #ratethings #cookinghacks", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@toponlinefinds/video/6831230248789544197", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707158"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@toponlinefinds/video/6831230248789544197' data-video-id='6831230248789544197' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@toponlinefinds' href='https://www.tiktok.com/@toponlinefinds'>@toponlinefinds</a> <p>Kitchen gadgets pt.3!✨ <a title='kitchenhacks' target='_blank' href='https://www.tiktok.com/tag/kitchenhacks'>#kitchenhacks</a> <a title='kitchentips' target='_blank' href='https://www.tiktok.com/tag/kitchentips'>#kitchentips</a> <a title='kitchengadget' target='_blank' href='https://www.tiktok.com/tag/kitchengadget'>#kitchengadget</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a> <a title='tiktoklifehacks' target='_blank' href='https://www.tiktok.com/tag/tiktoklifehacks'>#tiktoklifehacks</a> <a title='ratethings' target='_blank' href='https://www.tiktok.com/tag/ratethings'>#ratethings</a> <a title='cookinghacks' target='_blank' href='https://www.tiktok.com/tag/cookinghacks'>#cookinghacks</a></p> <a target='_blank' title='♬ Lemons - Demo - Brye' href='https://www.tiktok.com/music/Lemons-Demo-6800298291880790018'>♬ Lemons - Demo - Brye</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125696613" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125696613
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">15.</span>
    

    
      <span class="js-subbuzz__title-text">A pack of <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B072JM6M26?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="11.99" href="https://www.amazon.com/dp/B072JM6M26?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">artificial vines</a> for adding a touch of lovely greenery to your space. No plant parent skills required.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789\" data-vars-link-id=\"14877789\" data-vars-price.currency=\"USD\" data-vars-price.value=\"11.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125696688","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/9232fa5697f6\/sub-buzz-4098-1601665584-34.jpg?crop=1224:1632;0,0","alt_text":"reviewer with the vines hanging on the wall next to their bed "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4_preview.gif","width":"296"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","width":"296"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","width":"296"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","width":"296"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","width":"296"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4.gif","width":296,"height":480,"attribution":"@kaelimaee \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@kaelimaee\/video\/6847920272033598725\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"11.99\" href=\"https:\/\/www.tiktok.com\/@kaelimaee\/video\/6847920272033598725\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125696707","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"296","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/1d2bfe201483\/anigif_sub-buzz-4080-1601666401-4_preview.gif?crop=296:480;0,0","alt_text":"tiktok user showing the vines on their bedroom wall and draped over their vanity "}],
          "id": 125696613,
          "bfa": {"e":"{idx:0,subbuzzId:125696613}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125696688">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/9232fa5697f6/sub-buzz-4098-1601665584-34.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/9232fa5697f6/sub-buzz-4098-1601665584-34.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125696688:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer with the vines hanging on the wall next to their bed "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/9232fa5697f6/sub-buzz-4098-1601665584-34.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6167;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125696707">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/1d2bfe201483/anigif_sub-buzz-4080-1601666401-4_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 162.16%;"
                data-aratio="162.16">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/1d2bfe201483/anigif_sub-buzz-4080-1601666401-4.gif"
                     data-bfa="@a:click:photoset;@d:gif:125696707:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125696613" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125696613">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user showing the vines on their bedroom wall and draped over their vanity "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/1d2bfe201483/anigif_sub-buzz-4080-1601666401-4.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/1d2bfe201483/anigif_sub-buzz-4080-1601666401-4_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/1d2bfe201483/anigif_sub-buzz-4080-1601666401-4.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789" data-vars-link-id="14877789" data-vars-price.currency="USD" data-vars-price.value="11.99" href="https://www.amazon.com/gp/customer-reviews/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789" rel="nofollow" target="_blank">amazon.com</a>, @kaelimaee / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@kaelimaee/video/6847920272033598725" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="11.99" href="https://www.tiktok.com/@kaelimaee/video/6847920272033598725" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I decided to make my room very earthy and zen. My room is covered in succulents and faux plants, and... these vines! I’ve bought them three times now and I love them. They are perfect and can be used for anything. The leaves on the vines don’t fall off — unlike other vines I’ve purchased. Perfect for whatever the occasion is, and I’m sure these would be beautiful for wedding decorating or other stuff. Regardless, I highly recommend and will probably buy another pack for my room." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789" data-vars-link-id="14877789" data-vars-price.currency="USD" data-vars-price.value="11.99" href="https://www.amazon.com/gp/customer-reviews/R3D7X9L8HTW7VE?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C14877789" rel="nofollow" target="_blank">Amei Ayuel</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B072JM6M26?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="11.99" href="https://www.amazon.com/dp/B072JM6M26?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C28%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$11.99</a> for a 12-pack</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707166" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "kae", "author_url": "https://www.tiktok.com/@kaelimaee", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@kaelimaee/video/6847920272033598725"}, {"key": "data-video-id", "value": "6847920272033598725"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@kaelimaee"}, {"key": "href", "value": "https://www.tiktok.com/@kaelimaee"}], "children": [{"content": "@kaelimaee", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "some of my amazon favs!! comment for a pt 2\ud83e\udd0d ", "type": "text"}, {"attributes": [{"key": "title", "value": "fyp"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/fyp"}], "children": [{"content": "#fyp", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foryoupage"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foryoupage"}], "children": [{"content": "#foryoupage", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "foodreview"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/foodreview"}], "children": [{"content": "#FoodReview", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "hungergames"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/hungergames"}], "children": [{"content": "#HungerGames", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " TheOldGuard ", "type": "text"}, {"attributes": [{"key": "title", "value": "viral"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/viral"}], "children": [{"content": "#viral", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Renee - Sales"}, {"key": "href", "value": "https://www.tiktok.com/music/Renee-6733693538464287493"}], "children": [{"content": "\u266c Renee - Sales", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/35ac52fb77b2f3b26f85c4eda65ed525?x-expires=1601938800\u0026x-signature=jX7z9%2BDNli2jFxgOXTdvlyNGaIw%3D", "thumbnail_width": 576, "title": "some of my amazon favs!! comment for a pt 2\ud83e\udd0d #fyp #foryoupage #amazon #amazonfinds #FoodReview #HungerGames #TheOldGuard #viral", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@kaelimaee/video/6847920272033598725", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707166"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@kaelimaee/video/6847920272033598725' data-video-id='6847920272033598725' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@kaelimaee' href='https://www.tiktok.com/@kaelimaee'>@kaelimaee</a> <p>some of my amazon favs!! comment for a pt 2🤍 <a title='fyp' target='_blank' href='https://www.tiktok.com/tag/fyp'>#fyp</a> <a title='foryoupage' target='_blank' href='https://www.tiktok.com/tag/foryoupage'>#foryoupage</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='foodreview' target='_blank' href='https://www.tiktok.com/tag/foodreview'>#FoodReview</a> <a title='hungergames' target='_blank' href='https://www.tiktok.com/tag/hungergames'>#HungerGames</a> TheOldGuard <a title='viral' target='_blank' href='https://www.tiktok.com/tag/viral'>#viral</a></p> <a target='_blank' title='♬ Renee - Sales' href='https://www.tiktok.com/music/Renee-6733693538464287493'>♬ Renee - Sales</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  >
  
  <div id="125695907" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125695907
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">16.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00A3VJ7UK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.5" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00A3VJ7UK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">waterproof notepad</a> to keep in the shower, because let's face it, that's where some of our most genius ideas strike! It has suctions to stick to the wall and a pencil holder as well.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg","images":{"mobile":{"height":"946","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg?resize=990:*","width":"990"},"original":{"height":"1434","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg","width":"1500"},"standard":{"height":"598","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg?resize=625:*","width":"625"},"wide":{"height":"946","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg","width":1500,"height":1434,"attribution":"Amazon","id":"125696086","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1434","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/17\/asset\/1d2bfe201483\/sub-buzz-3913-1601661014-1.jpg?crop=1500:1434;0,0","alt_text":"the note pad comes with suction cups to hold it to the wall, a pencil, and a pencil holder "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8_preview.gif","width":"296"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","width":"296"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","width":"296"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","width":"296"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","width":"296"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8.gif","width":296,"height":480,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6865804783169637637\" data-vars-keywords=\"cleaning,fast fashion,skincare\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"9.5\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6865804783169637637\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125696088","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"296","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/18\/asset\/cf2b33b07adb\/anigif_sub-buzz-3956-1601661651-8_preview.gif?crop=296:480;0,0","alt_text":"tiktok user writing a note on the pad and then putting it under running water and nothing happens to it "}],
          "id": 125695907,
          "bfa": {"e":"{idx:0,subbuzzId:125695907}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.046;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125696086">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/1d2bfe201483/sub-buzz-3913-1601661014-1.jpg?crop=1500%3A1434%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 95.6%;"
                data-aratio="95.6">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/1d2bfe201483/sub-buzz-3913-1601661014-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125696086:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the note pad comes with suction cups to hold it to the wall, a pencil, and a pencil holder "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/17/asset/1d2bfe201483/sub-buzz-3913-1601661014-1.jpg?crop=1500%3A1434%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6167;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125696088">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/cf2b33b07adb/anigif_sub-buzz-3956-1601661651-8_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 162.16%;"
                data-aratio="162.16">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/cf2b33b07adb/anigif_sub-buzz-3956-1601661651-8.gif"
                     data-bfa="@a:click:photoset;@d:gif:125696088:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125695907" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125695907">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user writing a note on the pad and then putting it under running water and nothing happens to it "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/cf2b33b07adb/anigif_sub-buzz-3956-1601661651-8.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/cf2b33b07adb/anigif_sub-buzz-3956-1601661651-8_preview.gif?crop=296%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/18/asset/cf2b33b07adb/anigif_sub-buzz-3956-1601661651-8.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6865804783169637637" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.5" data-vars-retailers="Amazon" href="https://www.tiktok.com/@teresalauracaruso/video/6865804783169637637" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "We absolutely love this — working from home, you forget things and so it’s nice to write down ideas. We got this version to leave each other notes in the shower and LOVE the idea. Pencils work well and the paper is definitely waterproof. Will buy again." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2QUBYO6TFK1CM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C14877813" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14877813" data-vars-price.currency="USD" data-vars-price.value="9.5" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2QUBYO6TFK1CM?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C14877813" rel="nofollow" target="_blank">Katie</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00A3VJ7UK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.5" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00A3VJ7UK?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C30%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$9.50</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707169" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6865804783169637637"}, {"key": "data-video-id", "value": "6865804783169637637"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Random but awesome things you need from Amazon! \ud83d\ude02\ud83d\ude4c\ud83c\udffc ", "type": "text"}, {"attributes": [{"key": "title", "value": "learnontiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/learnontiktok"}], "children": [{"content": "#learnontiktok", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "todayilearned"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/todayilearned"}], "children": [{"content": "#TodayILearned", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokpartner"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokpartner"}], "children": [{"content": "#tiktokpartner", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6865804778639739654"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/27cb155408cb17790a0ca294120c27c2?x-expires=1601938800\u0026x-signature=KlYWe%2B9cNfpmFuPBCEpOhVUuyD0%3D", "thumbnail_width": 576, "title": "Random but awesome things you need from Amazon! \ud83d\ude02\ud83d\ude4c\ud83c\udffc #learnontiktok #TodayILearned #amazon #amazonfinds #tiktokpartner", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6865804783169637637", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707169"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6865804783169637637' data-video-id='6865804783169637637' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>Random but awesome things you need from Amazon! 😂🙌🏼 <a title='learnontiktok' target='_blank' href='https://www.tiktok.com/tag/learnontiktok'>#learnontiktok</a> <a title='todayilearned' target='_blank' href='https://www.tiktok.com/tag/todayilearned'>#TodayILearned</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='tiktokpartner' target='_blank' href='https://www.tiktok.com/tag/tiktokpartner'>#tiktokpartner</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6865804778639739654'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125697917" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697917
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">17.</span>
    

    
      <span class="js-subbuzz__title-text">An <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B0852VJ6RD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877771" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877771" data-vars-price.currency="USD" data-vars-price.value="13.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0852VJ6RD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877771" rel="nofollow" target="_blank">electric lighter</a> that's rechargeable, portable, and windproof. It has a flexible neck, making it helpful for lighting everything from candles to gas stoves.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26_preview.gif","images":{"gif_preview":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26_preview.gif","width":"250"},"mobile":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","width":"250"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif?output-format=mp4"},"original":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","width":"250"},"standard":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","width":"250"},"wide":{"height":"306","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","width":"250"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26.gif","width":250,"height":306,"attribution":"@lindsayroggenbuck \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@lindsayroggenbuck\/video\/6843582955458153734\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"13.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@lindsayroggenbuck\/video\/6843582955458153734\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697921","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"306","width":"250","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/54050ad9e3b6\/anigif_sub-buzz-30128-1601335300-26_preview.gif?crop=250:306;0,0","alt_text":"tiktok user turning on the lighter and lighting a candle and stove with it "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg","images":{"mobile":{"height":"956","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg?resize=990:*","width":"990"},"original":{"height":"1301","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg","width":"1347"},"standard":{"height":"604","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg?resize=625:*","width":"625"},"wide":{"height":"956","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg","width":1347,"height":1301,"attribution":"Amazon","id":"125697924","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1301","width":"1347","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/15\/asset\/348ba8bac7a5\/sub-buzz-29616-1601306332-22.jpg?crop=1347:1301;0,0","alt_text":"the electric lighter "}],
          "id": 125697917,
          "bfa": {"e":"{idx:0,subbuzzId:125697917}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.817;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697921">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/54050ad9e3b6/anigif_sub-buzz-30128-1601335300-26_preview.gif?crop=250%3A306%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 122.4%;"
                data-aratio="122.4">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/54050ad9e3b6/anigif_sub-buzz-30128-1601335300-26.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697921:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697917" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697917">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user turning on the lighter and lighting a candle and stove with it "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/54050ad9e3b6/anigif_sub-buzz-30128-1601335300-26.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/54050ad9e3b6/anigif_sub-buzz-30128-1601335300-26_preview.gif?crop=250%3A306%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/54050ad9e3b6/anigif_sub-buzz-30128-1601335300-26.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0354;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697924">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/348ba8bac7a5/sub-buzz-29616-1601306332-22.jpg?crop=1347%3A1301%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 96.59%;"
                data-aratio="96.59">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/348ba8bac7a5/sub-buzz-29616-1601306332-22.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697924:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the electric lighter "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/15/asset/348ba8bac7a5/sub-buzz-29616-1601306332-22.jpg?crop=1347%3A1301%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @lindsayroggenbuck / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@lindsayroggenbuck/video/6843582955458153734" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="13.99" data-vars-retailers="Amazon" href="https://www.tiktok.com/@lindsayroggenbuck/video/6843582955458153734" rel="nofollow" target="_blank">tiktok.com</a>, Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I love this little gadget. I’m so tired of wasting my money on throw away things like lighters and I wanted a more sustainable product to reduce the waste I produce. I don’t know how hot this gets, I’m not going to touch the little spark it produces but it lights my candles and fires without me having to get too close to the flame and burning myself. The charge lasts pretty long and it charges really fast. The blue lights indicate how much charge is remaining making it easy to tell if it needs a charge or not. Portable and the flexible tip makes it easy to get into some of those bigger candles that you can’t reach." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R6KGLZLX5YNAY?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877814" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877814" data-vars-price.currency="USD" data-vars-price.value="13.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R6KGLZLX5YNAY?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877814" rel="nofollow" target="_blank">Sara Ursitti</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B0852VJ6RD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877771" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877771" data-vars-price.currency="USD" data-vars-price.value="13.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0852VJ6RD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C32%2C48%2Cmobile_web%2C0%2C0%2C14877771" rel="nofollow" target="_blank">$13.99</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707176" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Lindsay Roggenbuck", "author_url": "https://www.tiktok.com/@lindsayroggenbuck", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@lindsayroggenbuck/video/6843582955458153734"}, {"key": "data-video-id", "value": "6843582955458153734"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@lindsayroggenbuck"}, {"key": "href", "value": "https://www.tiktok.com/@lindsayroggenbuck"}], "children": [{"content": "@lindsayroggenbuck", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Link in bio: Amazon favs - Outdoor finds ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonhaul"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhaul"}], "children": [{"content": "#amazonhaul", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavs"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavs"}], "children": [{"content": "#amazonfavs", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazoncodes"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazoncodes"}], "children": [{"content": "#amazoncodes", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "musthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/musthaves"}], "children": [{"content": "#musthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Buttercup - Jack Stauber"}, {"key": "href", "value": "https://www.tiktok.com/music/Buttercup-6758172399012677634"}], "children": [{"content": "\u266c Buttercup - Jack Stauber", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/4d1d960f7d742c9467642715066cf092?x-expires=1601938800\u0026x-signature=42sWQXxH457jyPP4qMhUZ6UusSo%3D", "thumbnail_width": 576, "title": "Link in bio: Amazon favs - Outdoor finds #amazonfinds #amazonhaul #founditonamazon #amazonmusthaves #amazonfavs #amazoncodes #musthaves #amazon", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@lindsayroggenbuck/video/6843582955458153734", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707176"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@lindsayroggenbuck/video/6843582955458153734' data-video-id='6843582955458153734' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@lindsayroggenbuck' href='https://www.tiktok.com/@lindsayroggenbuck'>@lindsayroggenbuck</a> <p>Link in bio: Amazon favs - Outdoor finds <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonhaul' target='_blank' href='https://www.tiktok.com/tag/amazonhaul'>#amazonhaul</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='amazonfavs' target='_blank' href='https://www.tiktok.com/tag/amazonfavs'>#amazonfavs</a> <a title='amazoncodes' target='_blank' href='https://www.tiktok.com/tag/amazoncodes'>#amazoncodes</a> <a title='musthaves' target='_blank' href='https://www.tiktok.com/tag/musthaves'>#musthaves</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a></p> <a target='_blank' title='♬ Buttercup - Jack Stauber' href='https://www.tiktok.com/music/Buttercup-6758172399012677634'>♬ Buttercup - Jack Stauber</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="fast fashion"
  >
  
  <div id="125696859" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125696859
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">18.</span>
    

    
      <span class="js-subbuzz__title-text">A gorge <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B078M1JVJ8?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877826" data-vars-keywords="fast fashion" data-vars-link-id="14877826" data-vars-price.currency="USD" data-vars-price.value="12.68" href="https://www.amazon.com/dp/B078M1JVJ8?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877826" rel="nofollow" target="_blank">heart-shaped mirror</a> to help bring your Barbie Dream House fantasies to life. It's two-sided and has a 360-degree swivel, making it perfect for doing makeup, trying on accessories, and more.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36_preview.gif","width":"318"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","width":"318"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","width":"318"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","width":"318"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","width":"318"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36.gif","width":318,"height":480,"attribution":"@the. navarose \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.tiktok.com\/@the.navarose\/video\/6860628525536398597\" data-vars-keywords=\"fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.68\" href=\"https:\/\/www.tiktok.com\/@the.navarose\/video\/6860628525536398597\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125696861","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/80a44771aaab\/anigif_sub-buzz-4189-1601667950-36_preview.gif?crop=318:480;0,0","alt_text":"tiktok user placing the mirror on a table "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg","images":{"mobile":{"height":"1286","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg?resize=990:*","width":"990"},"original":{"height":"974","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg","width":"750"},"standard":{"height":"812","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg?resize=625:*","width":"625"},"wide":{"height":"1286","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg","width":750,"height":974,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1C03DEY8ARYAZ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.68\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1C03DEY8ARYAZ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125696860","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"748","width":"748","x_offset":"0","y_offset":"142"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/19\/asset\/14bcefeb67ab\/sub-buzz-4197-1601667933-93.jpg?crop=748:748;0,142","alt_text":"reviewer's mirror on a decorated surface "}],
          "id": 125696859,
          "bfa": {"e":"{idx:0,subbuzzId:125696859}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125696861">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/80a44771aaab/anigif_sub-buzz-4189-1601667950-36_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/80a44771aaab/anigif_sub-buzz-4189-1601667950-36.gif"
                     data-bfa="@a:click:photoset;@d:gif:125696861:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125696859" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125696859">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user placing the mirror on a table "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/80a44771aaab/anigif_sub-buzz-4189-1601667950-36.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/80a44771aaab/anigif_sub-buzz-4189-1601667950-36_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/80a44771aaab/anigif_sub-buzz-4189-1601667950-36.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125696860">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/14bcefeb67ab/sub-buzz-4197-1601667933-93.jpg?crop=748%3A748%3B0%2C142&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/14bcefeb67ab/sub-buzz-4197-1601667933-93.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125696860:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s mirror on a decorated surface "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/19/asset/14bcefeb67ab/sub-buzz-4197-1601667933-93.jpg?crop=748%3A748%3B0%2C142&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @the. navarose / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.tiktok.com/@the.navarose/video/6860628525536398597" data-vars-keywords="fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.68" href="https://www.tiktok.com/@the.navarose/video/6860628525536398597" rel="nofollow" target="_blank">tiktok.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1C03DEY8ARYAZ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.68" href="https://www.amazon.com/gp/customer-reviews/R1C03DEY8ARYAZ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Love my little mirror!! I use it for eyelash extensions, to show them their new set! The design is SO cute and it’s extremely lightweight and perfect for travel. I bought the pink one and it matches my logo color perfectly. Five stars hands down." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RGYVXOIM73AVA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877833" data-vars-keywords="fast fashion" data-vars-link-id="14877833" data-vars-price.currency="USD" data-vars-price.value="12.68" href="https://www.amazon.com/gp/customer-reviews/RGYVXOIM73AVA?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877833" rel="nofollow" target="_blank">Brooklynn</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B078M1JVJ8?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877826" data-vars-keywords="fast fashion" data-vars-link-id="14877826" data-vars-price.currency="USD" data-vars-price.value="12.68" href="https://www.amazon.com/dp/B078M1JVJ8?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C34%2C48%2Cmobile_web%2C0%2C0%2C14877826" rel="nofollow" target="_blank">$12.68</a> (available in 13 styles)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707198" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "thenavarose", "author_url": "https://www.tiktok.com/@the.navarose", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@the.navarose/video/6860628525536398597"}, {"key": "data-video-id", "value": "6860628525536398597"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@the.navarose"}, {"key": "href", "value": "https://www.tiktok.com/@the.navarose"}], "children": [{"content": "@the.navarose", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "aesthetic \u003e function for me \ud83d\udc97 ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "daiso"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/daiso"}], "children": [{"content": "#daiso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "aesthetics"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/aesthetics"}], "children": [{"content": "#aesthetics", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c She Share Story (for Vlog) - \u5915\u4f9d"}, {"key": "href", "value": "https://www.tiktok.com/music/She-Share-Story-for-Vlog-6722656094272883458"}], "children": [{"content": "\u266c She Share Story (for Vlog) - \u5915\u4f9d", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/35f498425e1b1c8e0bd8249fad81078b?x-expires=1601938800\u0026x-signature=w9XbcqdJzSNBVSFZQwWFx88XfV4%3D", "thumbnail_width": 576, "title": "aesthetic \u003e function for me \ud83d\udc97 #amazonfinds #daiso #aesthetics", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@the.navarose/video/6860628525536398597", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707198"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@the.navarose/video/6860628525536398597' data-video-id='6860628525536398597' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@the.navarose' href='https://www.tiktok.com/@the.navarose'>@the.navarose</a> <p>aesthetic > function for me 💗 <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='daiso' target='_blank' href='https://www.tiktok.com/tag/daiso'>#daiso</a> <a title='aesthetics' target='_blank' href='https://www.tiktok.com/tag/aesthetics'>#aesthetics</a></p> <a target='_blank' title='♬ She Share Story (for Vlog) - 夕依' href='https://www.tiktok.com/music/She-Share-Story-for-Vlog-6722656094272883458'>♬ She Share Story (for Vlog) - 夕依</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="cleaning"
  >
  
  <div id="125697333" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697333
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">19.</span>
    

    
      <span class="js-subbuzz__title-text"><a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01LYJAT5Z?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877822" data-vars-keywords="cleaning" data-vars-link-id="14877822" data-vars-price.currency="USD" data-vars-price.value="27.95" href="https://www.amazon.com/dp/B01LYJAT5Z?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877822" rel="nofollow" target="_blank">Multipurpose silicone mats</a> you can use for tons of things — grabbing hot dishes, storing hot hair tools, getting a grip on hard-to-open jars, etc. They're definitely a household must-have.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625:*","images":{"gif_preview":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625:*","width":"625"},"mobile":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif?resize=990:*","width":"990"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif","width":"318"},"standard":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif?resize=625:*","width":"625"},"wide":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625:*","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625%3A%2A&output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1.gif","width":625,"height":943,"attribution":"@amazonsbest \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@amazonsbest\/video\/6862375982527974661\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"27.95\" href=\"https:\/\/www.tiktok.com\/@amazonsbest\/video\/6862375982527974661\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697343","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/690bc2095fe0\/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625:*?crop=318:480;0,0","alt_text":"tiktok user using the round mat to grab a hot dish and a pan "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg","images":{"mobile":{"height":"1484","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg?resize=990:1484","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg","width":"1001"},"standard":{"height":"937","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg?resize=625:937","width":"625"},"wide":{"height":"1484","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg?resize=990:1484","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg","width":1001,"height":1500,"attribution":"Amazon","id":"125697345","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1001","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/20\/asset\/8cc393f40df6\/sub-buzz-4232-1601671583-19.jpg?crop=1001:1500;0,0","alt_text":"hot hair tools on the mat "}],
          "id": 125697333,
          "bfa": {"e":"{idx:0,subbuzzId:125697333}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697343">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/690bc2095fe0/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/690bc2095fe0/anigif_sub-buzz-4234-1601671494-1.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697343:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697333" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697333">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user using the round mat to grab a hot dish and a pan "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/690bc2095fe0/anigif_sub-buzz-4234-1601671494-1.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/690bc2095fe0/anigif_sub-buzz-4234-1601671494-1_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/690bc2095fe0/anigif_sub-buzz-4234-1601671494-1.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6673;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697345">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/8cc393f40df6/sub-buzz-4232-1601671583-19.jpg?crop=1001%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 149.85%;"
                data-aratio="149.85">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/8cc393f40df6/sub-buzz-4232-1601671583-19.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697345:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="hot hair tools on the mat "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/20/asset/8cc393f40df6/sub-buzz-4232-1601671583-19.jpg?crop=1001%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @amazonsbest / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@amazonsbest/video/6862375982527974661" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="27.95" href="https://www.tiktok.com/@amazonsbest/video/6862375982527974661" rel="nofollow" target="_blank">tiktok.com</a>, Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I use these all the time! I leave one in the microwave to pick up hot bowls and the small one gets used as a multi-tool; trivet, handle grabber, jar opener, lid. They clean up really well, but can get stained in the microwave (popcorn oil for instance)." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1K6OI02UX635E?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877777" data-vars-keywords="cleaning" data-vars-link-id="14877777" data-vars-price.currency="USD" data-vars-price.value="27.95" href="https://www.amazon.com/gp/customer-reviews/R1K6OI02UX635E?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877777" rel="nofollow" target="_blank">Aryoch</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B01LYJAT5Z?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877822" data-vars-keywords="cleaning" data-vars-link-id="14877822" data-vars-price.currency="USD" data-vars-price.value="27.95" href="https://www.amazon.com/dp/B01LYJAT5Z?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C36%2C48%2Cmobile_web%2C0%2C0%2C14877822" rel="nofollow" target="_blank">$27.95</a> for a two-pack (available in seven colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707204" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Favorite Finds", "author_url": "https://www.tiktok.com/@amazonsbest", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@amazonsbest/video/6862375982527974661"}, {"key": "data-video-id", "value": "6862375982527974661"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@amazonsbest"}, {"key": "href", "value": "https://www.tiktok.com/@amazonsbest"}], "children": [{"content": "@amazonsbest", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "LINK IN COMMENTS \u0026 BIO! ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorite"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorite"}], "children": [{"content": "#amazonfavorite", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonproduct"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonproduct"}], "children": [{"content": "#amazonproduct", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Up Beat (Married Life) - Kenyi"}, {"key": "href", "value": "https://www.tiktok.com/music/Up-Beat-Married-Life-6831843160709138433"}], "children": [{"content": "\u266c Up Beat (Married Life) - Kenyi", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/4d9d28bef1703dca70adb9c1206c9c05?x-expires=1601938800\u0026x-signature=%2BShZMFFnUrbK%2FuvswY%2BIY%2BAPj6Q%3D", "thumbnail_width": 576, "title": "LINK IN COMMENTS \u0026 BIO! #amazon #amazonprime #founditonamazon #amazonfinds #amazonfavorite #amazonmusthaves #amazonproduct", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@amazonsbest/video/6862375982527974661", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707204"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@amazonsbest/video/6862375982527974661' data-video-id='6862375982527974661' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@amazonsbest' href='https://www.tiktok.com/@amazonsbest'>@amazonsbest</a> <p>LINK IN COMMENTS & BIO! <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonfavorite' target='_blank' href='https://www.tiktok.com/tag/amazonfavorite'>#amazonfavorite</a> <a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a> <a title='amazonproduct' target='_blank' href='https://www.tiktok.com/tag/amazonproduct'>#amazonproduct</a></p> <a target='_blank' title='♬ Up Beat (Married Life) - Kenyi' href='https://www.tiktok.com/music/Up-Beat-Married-Life-6831843160709138433'>♬ Up Beat (Married Life) - Kenyi</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125697486" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697486
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">20.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07B9X9WPV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877795" data-vars-link-id="14877795" data-vars-price.currency="USD" data-vars-price.value="119.95" href="https://www.amazon.com/dp/B07B9X9WPV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877795" rel="nofollow" target="_blank">standing desk riser</a> guaranteed to take your WFH station ~up a notch~. It's easily adjustable for your preferred height and it has plenty of room for a monitor, laptop, keyboard, mouse, and more.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg?resize=990:990","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg","width":"1500"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg?resize=625:625","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg?resize=990:990","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg","width":1500,"height":1500,"attribution":"Amazon","id":"125697490","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/14bcefeb67ab\/sub-buzz-4356-1601673210-8.jpg?crop=1500:1500;0,0","alt_text":"the two-level standing desk in white "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625:*","images":{"gif_preview":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625:*","width":"625"},"mobile":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif?resize=990:*","width":"990"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif","width":"318"},"standard":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif?resize=625:*","width":"625"},"wide":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif?resize=990:*","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625:*","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625%3A%2A&output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26.gif","width":625,"height":943,"attribution":"@bymichellelei \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@bymichellelei\/video\/6847011782633065733\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"119.95\" href=\"https:\/\/www.tiktok.com\/@bymichellelei\/video\/6847011782633065733\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697489","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625:*?crop=318:480;0,0","alt_text":"tiktok user raising her desktop up "}],
          "id": 125697486,
          "bfa": {"e":"{idx:0,subbuzzId:125697486}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697490">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/14bcefeb67ab/sub-buzz-4356-1601673210-8.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/14bcefeb67ab/sub-buzz-4356-1601673210-8.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697490:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="the two-level standing desk in white "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/14bcefeb67ab/sub-buzz-4356-1601673210-8.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697489">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4373-1601673131-26.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697489:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697486" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697486">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user raising her desktop up "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4373-1601673131-26.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4373-1601673131-26_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4373-1601673131-26.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @bymichellelei / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@bymichellelei/video/6847011782633065733" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="119.95" href="https://www.tiktok.com/@bymichellelei/video/6847011782633065733" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I love my new standing desk! It was very easy to set up, the only thing I had to do was screw in the keyboard tray, everything else was already put together. I am now standing 80% of my workday instead of sitting down for all of it, it feels so nice to be on my feet. Everyone in my office has commented how nice this is and how they want to purchase one now. <b>Very sturdy, enough room for my large monitor, phone, calculator and other misc. items. Love it!</b>" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3IT50M1VG6NP1?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877806" data-vars-link-id="14877806" data-vars-price.currency="USD" data-vars-price.value="119.95" href="https://www.amazon.com/gp/customer-reviews/R3IT50M1VG6NP1?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877806" rel="nofollow" target="_blank">deadpool</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07B9X9WPV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877795" data-vars-link-id="14877795" data-vars-price.currency="USD" data-vars-price.value="119.95" href="https://www.amazon.com/dp/B07B9X9WPV?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C38%2C48%2Cmobile_web%2C0%2C0%2C14877795" rel="nofollow" target="_blank">$119.95+</a> (available in three colors)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707207" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Michelle Pinlac", "author_url": "https://www.tiktok.com/@bymichellelei", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@bymichellelei/video/6847011782633065733"}, {"key": "data-video-id", "value": "6847011782633065733"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@bymichellelei"}, {"key": "href", "value": "https://www.tiktok.com/@bymichellelei"}], "children": [{"content": "@bymichellelei", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Amazon favorites: office edition! Pt. 1 \u2728 ", "type": "text"}, {"attributes": [{"key": "title", "value": "homedecor"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/homedecor"}], "children": [{"content": "#homedecor", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "officedecor"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/officedecor"}], "children": [{"content": "#officedecor", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "workfromhome"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/workfromhome"}], "children": [{"content": "#workfromhome", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "happyathome"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/happyathome"}], "children": [{"content": "#happyathome", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "learnontiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/learnontiktok"}], "children": [{"content": "#learnontiktok", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c The Office (Main Theme) - TV Sounds Unlimited"}, {"key": "href", "value": "https://www.tiktok.com/music/The-Office-Main-Theme-6709415901000648706"}], "children": [{"content": "\u266c The Office (Main Theme) - TV Sounds Unlimited", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/2f3568fc5823c5ecacdc5128798c7e0e?x-expires=1601938800\u0026x-signature=hr70xfSXrOgN6XucGSqFpcHLIF4%3D", "thumbnail_width": 576, "title": "Amazon favorites: office edition! Pt. 1 \u2728 #homedecor #officedecor #workfromhome #amazon #amazonfinds #amazonprime #happyathome #learnontiktok", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@bymichellelei/video/6847011782633065733", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707207"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@bymichellelei/video/6847011782633065733' data-video-id='6847011782633065733' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@bymichellelei' href='https://www.tiktok.com/@bymichellelei'>@bymichellelei</a> <p>Amazon favorites: office edition! Pt. 1 ✨ <a title='homedecor' target='_blank' href='https://www.tiktok.com/tag/homedecor'>#homedecor</a> <a title='officedecor' target='_blank' href='https://www.tiktok.com/tag/officedecor'>#officedecor</a> <a title='workfromhome' target='_blank' href='https://www.tiktok.com/tag/workfromhome'>#workfromhome</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a> <a title='happyathome' target='_blank' href='https://www.tiktok.com/tag/happyathome'>#happyathome</a> <a title='learnontiktok' target='_blank' href='https://www.tiktok.com/tag/learnontiktok'>#learnontiktok</a></p> <a target='_blank' title='♬ The Office (Main Theme) - TV Sounds Unlimited' href='https://www.tiktok.com/music/The-Office-Main-Theme-6709415901000648706'>♬ The Office (Main Theme) - TV Sounds Unlimited</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125697571" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697571
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">21.</span>
    

    
      <span class="js-subbuzz__title-text">A pack of two self-adhesive <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07GB1T2XD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877808" data-vars-link-id="14877808" data-vars-price.currency="USD" data-vars-price.value="7.99" href="https://www.amazon.com/dp/B07GB1T2XD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877808" rel="nofollow" target="_blank">razor holders</a> that'll make it easier to keep your razor separated from your partner's or roommate's and you won't have to worry about it constantly falling off the side of the tub.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg","images":{"mobile":{"height":"1439","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg?resize=990:*","width":"990"},"original":{"height":"1983","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg","width":"1008"},"standard":{"height":"1230","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg?resize=625:*","width":"625"},"wide":{"height":"1948","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg","width":1008,"height":1983,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RNBQ9I6YOT0HU?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"7.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RNBQ9I6YOT0HU?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125697573","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1512","width":"1008","x_offset":"0","y_offset":"466"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-05\/4\/18\/asset\/b63c0ba5ec86\/sub-buzz-389-1588617058-5.jpg?crop=1008:1512;0,466","alt_text":"Two razors hanging on the silver razor holders "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24_preview.gif","width":"318"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","width":"318"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","width":"318"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","width":"318"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","width":"318"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24.gif","width":318,"height":480,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6872056509082258693\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"7.99\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6872056509082258693\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697574","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/690bc2095fe0\/anigif_sub-buzz-4268-1601674261-24_preview.gif?crop=318:480;0,0","alt_text":"tiktok user hanging a razor and loofah on the small hook"}],
          "id": 125697571,
          "bfa": {"e":"{idx:0,subbuzzId:125697571}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6667;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697573">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-05/4/18/asset/b63c0ba5ec86/sub-buzz-389-1588617058-5.jpg?crop=1008%3A1512%3B0%2C466&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.0%;"
                data-aratio="150.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-05/4/18/asset/b63c0ba5ec86/sub-buzz-389-1588617058-5.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697573:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Two razors hanging on the silver razor holders "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-05/4/18/asset/b63c0ba5ec86/sub-buzz-389-1588617058-5.jpg?crop=1008%3A1512%3B0%2C466&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697574">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/690bc2095fe0/anigif_sub-buzz-4268-1601674261-24_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/690bc2095fe0/anigif_sub-buzz-4268-1601674261-24.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697574:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697571" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697571">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user hanging a razor and loofah on the small hook"
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/690bc2095fe0/anigif_sub-buzz-4268-1601674261-24.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/690bc2095fe0/anigif_sub-buzz-4268-1601674261-24_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/690bc2095fe0/anigif_sub-buzz-4268-1601674261-24.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/RNBQ9I6YOT0HU?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.99" href="https://www.amazon.com/gp/customer-reviews/RNBQ9I6YOT0HU?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6872056509082258693" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.99" href="https://www.tiktok.com/@teresalauracaruso/video/6872056509082258693" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I tried the first one out in the shower to hang my razor and it works great! It definitely holds up against the water and I can see how it would easily work for hanging keys or even a phone while it's charging." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/RCFTGPLWCM4JD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877829" data-vars-link-id="14877829" data-vars-price.currency="USD" data-vars-price.value="7.99" href="https://www.amazon.com/gp/customer-reviews/RCFTGPLWCM4JD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877829" rel="nofollow" target="_blank">Steve D</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07GB1T2XD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877808" data-vars-link-id="14877808" data-vars-price.currency="USD" data-vars-price.value="7.99" href="https://www.amazon.com/dp/B07GB1T2XD?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C40%2C48%2Cmobile_web%2C0%2C0%2C14877808" rel="nofollow" target="_blank">$7.99</a> (also available in a four-pack)</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707229" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6872056509082258693"}, {"key": "data-video-id", "value": "6872056509082258693"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Must-haves for your bathroom from Amazon \ud83d\ude0d ", "type": "text"}, {"attributes": [{"key": "title", "value": "learnontiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/learnontiktok"}], "children": [{"content": "#learnontiktok", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bathroom"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bathroom"}], "children": [{"content": "#bathroom", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokpartner"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokpartner"}], "children": [{"content": "#tiktokpartner", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6872056447644011270"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/5ac2e3e972fb660f84d4e092893537aa?x-expires=1601938800\u0026x-signature=SGfUN%2FwFo5RYfyOR3Y%2B2tjachiI%3D", "thumbnail_width": 576, "title": "Must-haves for your bathroom from Amazon \ud83d\ude0d #learnontiktok #amazon #amazonfinds #bathroom #tiktokpartner", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6872056509082258693", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707229"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6872056509082258693' data-video-id='6872056509082258693' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>Must-haves for your bathroom from Amazon 😍 <a title='learnontiktok' target='_blank' href='https://www.tiktok.com/tag/learnontiktok'>#learnontiktok</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='bathroom' target='_blank' href='https://www.tiktok.com/tag/bathroom'>#bathroom</a> <a title='tiktokpartner' target='_blank' href='https://www.tiktok.com/tag/tiktokpartner'>#tiktokpartner</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6872056447644011270'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125697600" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697600
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">22.</span>
    

    
      <span class="js-subbuzz__title-text">An <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00PY05VMS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/dp/B00PY05VMS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">indoor s'more maker</a> so the family can enjoy delicious gooey s'mores on a cold, rainy or snowy day. Use the electric flameless heater to roast the marshmallows and keep the graham crackers and chocolate ready to go in the side compartments. It even comes with two little roasting forks.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1DRY4ECER1N9B?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1DRY4ECER1N9B?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125697612","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/80a44771aaab\/sub-buzz-4376-1601674877-37.jpg?crop=1224:1632;0,0","alt_text":"reviewer's family roasting marshmallows "},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35_preview.gif","images":{"gif_preview":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35_preview.gif","width":"318"},"mobile":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","width":"318"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","width":"318"},"standard":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","width":"318"},"wide":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","width":"318"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35.gif","width":318,"height":480,"attribution":"@stuffyouactuallyneed \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@stuffyouactuallyneed\/video\/6847999328565366021\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"19.99\" href=\"https:\/\/www.tiktok.com\/@stuffyouactuallyneed\/video\/6847999328565366021\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697613","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/21\/asset\/748327a98064\/anigif_sub-buzz-4404-1601675124-35_preview.gif?crop=318:480;0,0","alt_text":"tiktok user cooking the marshmallow and then making a s'more "}],
          "id": 125697600,
          "bfa": {"e":"{idx:0,subbuzzId:125697600}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697612">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/80a44771aaab/sub-buzz-4376-1601674877-37.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/80a44771aaab/sub-buzz-4376-1601674877-37.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697612:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s family roasting marshmallows "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/80a44771aaab/sub-buzz-4376-1601674877-37.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697613">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4404-1601675124-35_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4404-1601675124-35.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697613:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697600" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697600">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user cooking the marshmallow and then making a s&#39;more "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4404-1601675124-35.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4404-1601675124-35_preview.gif?crop=318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/21/asset/748327a98064/anigif_sub-buzz-4404-1601675124-35.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1DRY4ECER1N9B?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/gp/customer-reviews/R1DRY4ECER1N9B?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, @stuffyouactuallyneed / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@stuffyouactuallyneed/video/6847999328565366021" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.tiktok.com/@stuffyouactuallyneed/video/6847999328565366021" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "<b>We have been really enjoy this little s'mores maker — it's not big, doesn't take up a lot of space, but does exactly what it's meant to do.</b> We can't build fires or anything like that around where I live so this was our next best option. It's worked out great for us, only thing is it only has two of the little roaster sticks, so if you have multiple people roasting you would need something else to use to stick your marshmallow on." —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R19MLBZBUQBAX0?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C14877830" data-vars-link-id="14877830" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/gp/customer-reviews/R19MLBZBUQBAX0?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C14877830" rel="nofollow" target="_blank">Debb</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B00PY05VMS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="19.99" href="https://www.amazon.com/dp/B00PY05VMS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C42%2C48%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$19.99</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707249" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Jared Andersen", "author_url": "https://www.tiktok.com/@stuffyouactuallyneed", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@stuffyouactuallyneed/video/6847999328565366021"}, {"key": "data-video-id", "value": "6847999328565366021"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@stuffyouactuallyneed"}, {"key": "href", "value": "https://www.tiktok.com/@stuffyouactuallyneed"}], "children": [{"content": "@stuffyouactuallyneed", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "LINK IN BIO!! ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "fyp"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/fyp"}], "children": [{"content": "#fyp", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "bestofamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/bestofamazon"}], "children": [{"content": "#bestofamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds2020"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds2020"}], "children": [{"content": "#amazonfinds2020", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "finditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/finditonamazon"}], "children": [{"content": "#finditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "onlineshopping"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/onlineshopping"}], "children": [{"content": "#onlineshopping", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c \uc544\ubb34\ub178\ub798(Any song) - \uc9c0\ucf54 (ZICO)"}, {"key": "href", "value": "https://www.tiktok.com/music/\uc544\ubb34\ub178\ub798-Any-song-6781294369593886721"}], "children": [{"content": "\u266c \uc544\ubb34\ub178\ub798(Any song) - \uc9c0\ucf54 (ZICO)", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/7c90c4487062835f53d3dc28f3194b27?x-expires=1601938800\u0026x-signature=mIZbjZn0blZXi7aZ5zUxCFbs7xs%3D", "thumbnail_width": 576, "title": "LINK IN BIO!! #amazonfinds #amazon #fyp #bestofamazon #founditonamazon #amazonfavorites #amazonfinds2020 #finditonamazon #onlineshopping", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@stuffyouactuallyneed/video/6847999328565366021", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707249"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@stuffyouactuallyneed/video/6847999328565366021' data-video-id='6847999328565366021' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@stuffyouactuallyneed' href='https://www.tiktok.com/@stuffyouactuallyneed'>@stuffyouactuallyneed</a> <p>LINK IN BIO!! <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='fyp' target='_blank' href='https://www.tiktok.com/tag/fyp'>#fyp</a> <a title='bestofamazon' target='_blank' href='https://www.tiktok.com/tag/bestofamazon'>#bestofamazon</a> <a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a> <a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a> <a title='amazonfinds2020' target='_blank' href='https://www.tiktok.com/tag/amazonfinds2020'>#amazonfinds2020</a> <a title='finditonamazon' target='_blank' href='https://www.tiktok.com/tag/finditonamazon'>#finditonamazon</a> <a title='onlineshopping' target='_blank' href='https://www.tiktok.com/tag/onlineshopping'>#onlineshopping</a></p> <a target='_blank' title='♬ 아무노래(Any song) - 지코 (ZICO)' href='https://www.tiktok.com/music/아무노래-Any-song-6781294369593886721'>♬ 아무노래(Any song) - 지코 (ZICO)</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  
  data-keywords="fast fashion"
  >
  
  <div id="125697696" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125697696
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">23.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0815VWZST?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877824" data-vars-keywords="fast fashion" data-vars-link-id="14877824" data-vars-price.currency="USD" data-vars-price.value="14.99" href="https://www.amazon.com/dp/B0815VWZST?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877824" rel="nofollow" target="_blank">bag sealer</a> to keep your opened bags of chips and cereal nice and fresh. Just press and slide the sealer slowly across the bag to create an airtight seal using heat. It also has a little knife attached to help you open bags up again.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625:*","images":{"gif_preview":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625:*","width":"625"},"mobile":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif?resize=990:*","width":"990"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif?output-format=mp4"},"original":{"height":"480","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif","width":"318"},"standard":{"height":"943","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif?resize=625:*","width":"625"},"wide":{"height":"1494","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625:*","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625%3A%2A&output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16.gif","width":625,"height":943,"attribution":"@teresalauracaruso \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6860172935835946246\" data-vars-keywords=\"fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.99\" href=\"https:\/\/www.tiktok.com\/@teresalauracaruso\/video\/6860172935835946246\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125697728","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"480","width":"318","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/14bcefeb67ab\/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625:*?crop=318:480;0,0","alt_text":"tiktok user using the device to seal a bag of cereal "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg?resize=990:1320","width":"990"},"original":{"height":"1600","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg","width":"1200"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg","width":1200,"height":1600,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769\" data-vars-keywords=\"fast fashion\" data-vars-link-id=\"14877769\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.99\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125697729","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1600","width":"1200","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-10\/2\/22\/asset\/9232fa5697f6\/sub-buzz-4377-1601676478-31.jpg?crop=1200:1600;0,0","alt_text":"reviewer's pink bag sealer "}],
          "id": 125697696,
          "bfa": {"e":"{idx:0,subbuzzId:125697696}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.6625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125697728">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/14bcefeb67ab/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 150.94%;"
                data-aratio="150.94">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/14bcefeb67ab/anigif_sub-buzz-4426-1601676153-16.gif"
                     data-bfa="@a:click:photoset;@d:gif:125697728:1;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125697696" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125697696">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: tiktok user using the device to seal a bag of cereal "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/14bcefeb67ab/anigif_sub-buzz-4426-1601676153-16.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/14bcefeb67ab/anigif_sub-buzz-4426-1601676153-16_preview.gif?resize=625%3A%2A%3Fcrop%3D318%3A480%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/14bcefeb67ab/anigif_sub-buzz-4426-1601676153-16.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125697729">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/9232fa5697f6/sub-buzz-4377-1601676478-31.jpg?crop=1200%3A1600%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/9232fa5697f6/sub-buzz-4377-1601676478-31.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125697729:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&#39;s pink bag sealer "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-10/2/22/asset/9232fa5697f6/sub-buzz-4377-1601676478-31.jpg?crop=1200%3A1600%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  @teresalauracaruso / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.tiktok.com/@teresalauracaruso/video/6860172935835946246" data-vars-keywords="fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.99" href="https://www.tiktok.com/@teresalauracaruso/video/6860172935835946246" rel="nofollow" target="_blank">tiktok.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769" data-vars-keywords="fast fashion" data-vars-link-id="14877769" data-vars-price.currency="USD" data-vars-price.value="14.99" href="https://www.amazon.com/gp/customer-reviews/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Wish I would’ve bought this sooner! Not only is it so cute but it’s so easy to use — I can finally close my bag of chips after picking at it! It’s magnetic so I can stick it right on my fridge and it has a little sharp knife that you can unlock to use to open the bag again! So great!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769" data-vars-keywords="fast fashion" data-vars-link-id="14877769" data-vars-price.currency="USD" data-vars-price.value="14.99" href="https://www.amazon.com/gp/customer-reviews/RKLQT7DE4TFJ?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877769" rel="nofollow" target="_blank">JB</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0815VWZST?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877824" data-vars-keywords="fast fashion" data-vars-link-id="14877824" data-vars-price.currency="USD" data-vars-price.value="14.99" href="https://www.amazon.com/dp/B0815VWZST?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C44%2C48%2Cmobile_web%2C0%2C0%2C14877824" rel="nofollow" target="_blank">$14.99</a></p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707254" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here: ", "oembed_data": {"author_name": "Teresa Caruso", "author_url": "https://www.tiktok.com/@teresalauracaruso", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@teresalauracaruso/video/6860172935835946246"}, {"key": "data-video-id", "value": "6860172935835946246"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@teresalauracaruso"}, {"key": "href", "value": "https://www.tiktok.com/@teresalauracaruso"}], "children": [{"content": "@teresalauracaruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "Must-have gadgets for your kitchen from Amazon: part 3! ", "type": "text"}, {"attributes": [{"key": "title", "value": "learnontiktok"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/learnontiktok"}], "children": [{"content": "#learnontiktok", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazon"}], "children": [{"content": "#amazon", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "kitchen"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/kitchen"}], "children": [{"content": "#kitchen", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "title", "value": "tiktokpartner"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/tiktokpartner"}], "children": [{"content": "#tiktokpartner", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c original sound - Teresa Caruso"}, {"key": "href", "value": "https://www.tiktok.com/music/original-sound-6860172953309432581"}], "children": [{"content": "\u266c original sound - Teresa Caruso", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/4bdd737fc4570e5598a5153f3b4103d4?x-expires=1601938800\u0026x-signature=wgqvKpJE2z2%2Fn92thOacLE7gLok%3D", "thumbnail_width": 576, "title": "Must-have gadgets for your kitchen from Amazon: part 3! #learnontiktok #amazon #kitchen #amazonfinds #tiktokpartner", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@teresalauracaruso/video/6860172935835946246", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707254"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@teresalauracaruso/video/6860172935835946246' data-video-id='6860172935835946246' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@teresalauracaruso' href='https://www.tiktok.com/@teresalauracaruso'>@teresalauracaruso</a> <p>Must-have gadgets for your kitchen from Amazon: part 3! <a title='learnontiktok' target='_blank' href='https://www.tiktok.com/tag/learnontiktok'>#learnontiktok</a> <a title='amazon' target='_blank' href='https://www.tiktok.com/tag/amazon'>#amazon</a> <a title='kitchen' target='_blank' href='https://www.tiktok.com/tag/kitchen'>#kitchen</a> <a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a> <a title='tiktokpartner' target='_blank' href='https://www.tiktok.com/tag/tiktokpartner'>#tiktokpartner</a></p> <a target='_blank' title='♬ original sound - Teresa Caruso' href='https://www.tiktok.com/music/original-sound-6860172953309432581'>♬ original sound - Teresa Caruso</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125698088" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125698088
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">24.</span>
    

    
      <span class="js-subbuzz__title-text">And a cotton <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07YR28XNS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877803" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877803" data-vars-price.currency="USD" data-vars-price.value="49.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07YR28XNS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877803" rel="nofollow" target="_blank">weighted blanket</a> that'll feel like a warm, comforting hug at night. Some say they can even help with stress and anxiety.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg?resize=990:*","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg","width":"1500"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg?resize=625:*","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg","width":1500,"height":1500,"attribution":"Amazon","id":"125698089","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/18\/asset\/c514e5765bc3\/sub-buzz-30024-1601319051-38.jpg?crop=1500:1500;0,0","alt_text":"Queen size weighted blanket in gray"},{"index":1,"number":2,"has_caption":false,"image_type":"gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12_preview.gif","images":{"gif_preview":{"height":"320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12_preview.gif","width":"261"},"mobile":{"height":"320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","width":"261"},"mp4":{"url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif?output-format=mp4"},"original":{"height":"320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","width":"261"},"standard":{"height":"320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","width":"261"},"wide":{"height":"320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","width":"261"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12_preview.gif","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12_preview.gif?output-quality=auto&output-format=auto&downsize=360%3A%2A","mp4_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif?output-format=mp4"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12.gif","width":261,"height":320,"attribution":"@rebekkablue \/ Via <a data-affiliate=\"true\" data-skimlinks-tracking=\"5708762\" data-vars-affiliate=\"www.tiktok.com\" data-vars-href=\"https:\/\/www.tiktok.com\/@rebekkablue\/video\/6819422356482641157\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"49.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.tiktok.com\/@rebekkablue\/video\/6819422356482641157\" rel=\"nofollow\" target=\"_blank\">tiktok.com<\/a>","id":"125698090","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"320","width":"261","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/23\/asset\/348ba8bac7a5\/anigif_sub-buzz-30467-1601336712-12_preview.gif?crop=261:320;0,0","alt_text":"Tiktok user testing out the blanket"}],
          "id": 125698088,
          "bfa": {"e":"{idx:0,subbuzzId:125698088}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125698089">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/18/asset/c514e5765bc3/sub-buzz-30024-1601319051-38.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/18/asset/c514e5765bc3/sub-buzz-30024-1601319051-38.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125698089:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Queen size weighted blanket in gray"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/18/asset/c514e5765bc3/sub-buzz-30024-1601319051-38.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720"
  data-mobile-src=""
  data-crop=""
  data-mobile-crop=""
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.8156;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125698090">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/348ba8bac7a5/anigif_sub-buzz-30467-1601336712-12_preview.gif?crop=261%3A320%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 122.61%;"
                data-aratio="122.61">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/348ba8bac7a5/anigif_sub-buzz-30467-1601336712-12.gif"
                     data-bfa="@a:click:photoset;@d:gif:125698090:2;">
                     
                      




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125698088" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125698088">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: Tiktok user testing out the blanket"
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop=""
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/348ba8bac7a5/anigif_sub-buzz-30467-1601336712-12.gif"
  data-mobile-crop=""
  data-mobile-gif-src=""
  data-mobile-src=""
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/348ba8bac7a5/anigif_sub-buzz-30467-1601336712-12_preview.gif?crop=261%3A320%3B0%2C0&amp;resize=720%3A720"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/23/asset/348ba8bac7a5/anigif_sub-buzz-30467-1601336712-12.gif?output-format=mp4" type="video/mp4">
</video>
                     
                  </a>
              </div>


              

            </figure>
          </div>
          
        </div>
      
      </div>
      
      
      <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon, @rebekkablue / Via <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.tiktok.com/@rebekkablue/video/6819422356482641157" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="49.99" data-vars-retailers="Amazon" href="https://www.tiktok.com/@rebekkablue/video/6819422356482641157" rel="nofollow" target="_blank">tiktok.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>When choosing the weight of your blanket, it's best to go with one that is 7%-12% of your body weight for the most comfort. </p><p><b>Promising review:</b> "I bought this blanket because I had heard that it can help you get to sleep faster, and keep you deeply asleep for longer. I don't know if it actually helps me to get to a deeper level of sleep, but I can say that it definitely helps me to get to sleep faster. I am a person who normally has trouble turning my brain off at night and it can really cut into my sleep time. But I have noticed that I fall asleep faster with this blanket, and I feel that I wake up more refreshed in the morning. Overall, I think this blanket is worth the money and I am very happy with it!" —<a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2VRAZQRCMHSR0?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877775" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877775" data-vars-price.currency="USD" data-vars-price.value="49.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2VRAZQRCMHSR0?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877775" rel="nofollow" target="_blank">Kelly Finochiaro</a></p><p><b>Price:</b> <a data-affiliate="true" data-skimlinks-tracking="5708762" data-vars-affiliate="www.tiktok.com" data-vars-href="https://www.amazon.com/dp/B07YR28XNS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877803" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14877803" data-vars-price.currency="USD" data-vars-price.value="49.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07YR28XNS?tag=bfkaylaboyd-20&amp;ascsubtag=5708762%2C46%2C48%2Cmobile_web%2C0%2C0%2C14877803" rel="nofollow" target="_blank">$49.99+</a> (available in 13 sizes/weights and two colors).</p>
</div>
  
</div>
      </figure>

    </div>
    
    <svg style="display:none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <svg viewBox="0 0 512 512" id="close">
  <path d="M133.874 227.048L19.198 108.276C-6.4 82.68-6.4 44.796 19.198 19.198c25.597-25.597 63.48-25.597 89.078 0l114.676 114.676L337.628 19.198c25.597-25.597 68.09-25.597 93.174 0 25.597 25.597 25.597 68.09 0 93.174L316.126 227.048l114.676 114.676c25.597 25.597 25.597 63.48 0 89.078-25.597 25.597-63.48 25.597-89.078 0L227.048 316.126 112.372 430.802c-25.597 25.597-68.09 25.597-93.174 0-25.597-25.597-25.597-68.09 0-93.174l114.676-110.58z"/>
</svg>

      <symbol id="arrow-right" viewBox="0 0 512 512">
        <path d="M374 243.082l-211.818-211.542c-2.727-2.724-6.818-4.54-10.455-4.54-3.636 0-7.727 1.816-10.455 4.54l-22.727 22.698c-2.727 2.724-4.545 6.809-4.545 10.441 0 3.632 1.818 7.717 4.545 10.441l178.637 178.404-178.637 178.404c-2.727 2.724-4.545 6.809-4.545 10.441 0 4.086 1.818 7.717 4.545 10.441l22.727 22.698c2.727 2.724 6.818 4.54 10.455 4.54 3.636 0 7.727-1.816 10.455-4.54l211.818-211.542c2.727-2.724 4.545-6.809 4.545-10.441 0-3.632-1.818-7.717-4.545-10.441z"/>
      </symbol>

      <symbol id="arrow-left" viewBox="0 0 38 38">
        <path d="M26.5 36c-.5 0-1-.2-1.4-.6L8.7 19 25.1 2.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L14.3 19l13.6 13.6c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6z"/>
      </symbol>
    </svg>

  </div></div><div></div></div><div class="js-subbuzz-wrapper"><div><div class="subbuzz subbuzz-bfp
  
  
  
  xs-mb4 xs-relative "
  
  
  >
  
  <div id="125707306" class="subbuzz-anchor"></div>


<div data-module="bfp">
  <script type="text/x-config">
    {
      "data": {"heading": "Check out the full TikTok here:", "oembed_data": {"author_name": "Rebekka Blue", "author_url": "https://www.tiktok.com/@rebekkablue", "height": "100%", "html": [{"attributes": [{"key": "class", "value": "tiktok-embed"}, {"key": "cite", "value": "https://www.tiktok.com/@rebekkablue/video/6819422356482641157"}, {"key": "data-video-id", "value": "6819422356482641157"}, {"key": "style", "value": "max-width: 605px;min-width: 325px;"}], "children": [{"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "@rebekkablue"}, {"key": "href", "value": "https://www.tiktok.com/@rebekkablue"}], "children": [{"content": "@rebekkablue", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [], "children": [{"content": "amazon.com/shop/missmothership \ud83e\uddda ", "type": "text"}, {"attributes": [{"key": "title", "value": "amazonhacks"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhacks"}], "children": [{"content": "#amazonhacks", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonprime"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonprime"}], "children": [{"content": "#amazonprime", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonfinds"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfinds"}], "children": [{"content": "#amazonfinds", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "founditonamazon"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/founditonamazon"}], "children": [{"content": "#founditonamazon", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonchallenge"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonchallenge"}], "children": [{"content": "#amazonchallenge", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonfavorites"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonfavorites"}], "children": [{"content": "#amazonfavorites", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonmusthaves"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonmusthaves"}], "children": [{"content": "#amazonmusthaves", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "amazonhaul"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/amazonhaul"}], "children": [{"content": "#amazonhaul", "type": "text"}], "tagName": "a", "type": "element"}, {"attributes": [{"key": "title", "value": "fyp"}, {"key": "target", "value": "_blank"}, {"key": "href", "value": "https://www.tiktok.com/tag/fyp"}], "children": [{"content": "#fyp", "type": "text"}], "tagName": "a", "type": "element"}], "tagName": "p", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "target", "value": "_blank"}, {"key": "title", "value": "\u266c Easy Jazz Music - Easy Jazz Music"}, {"key": "href", "value": "https://www.tiktok.com/music/Easy-Jazz-Music-6763810333384509441"}], "children": [{"content": "\u266c Easy Jazz Music - Easy Jazz Music", "type": "text"}], "tagName": "a", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "section", "type": "element"}, {"content": " ", "type": "text"}], "tagName": "blockquote", "type": "element"}, {"content": " ", "type": "text"}, {"attributes": [{"key": "async", "value": null}, {"key": "src", "value": "https://www.tiktok.com/embed.js"}], "children": [], "tagName": "script", "type": "element"}], "provider_name": "TikTok", "provider_url": "https://www.tiktok.com", "thumbnail_height": 1024, "thumbnail_url": "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/8d3e047a6236cea2148c672c85c7188b?x-expires=1601938800\u0026x-signature=jF26KMHARUYNUqpZDeze6N4TADk%3D", "thumbnail_width": 576, "title": "amazon.com/shop/missmothership \ud83e\uddda #amazonhacks#amazonprime#amazonfinds#founditonamazon#amazonchallenge#amazonfavorites#amazonmusthaves#amazonhaul#fyp", "type": "video", "version": "1.0", "width": "100%"}, "oembed_url": "https://www.tiktok.com/oembed?url=https://www.tiktok.com/@rebekkablue/video/6819422356482641157", "type": "oembed", "vendor": "tiktok_v2"},
      "buzzId": "5708762",
      "editorialStatus": "Editorial",
      "formatName": "client_embed",
      "renderKitUrl": "https://www.buzzfeed.com/static-assets/buzz-format-platform/client_embed/js/render_kit.590dd7012926a71cf934.js",
      "id": "125707306"
    }
  </script>
  <h2 class="subbuzz__title xs-mb1 bold">
    
    Check out the full TikTok here:
</h2>


<blockquote class='tiktok-embed' cite='https://www.tiktok.com/@rebekkablue/video/6819422356482641157' data-video-id='6819422356482641157' style='max-width: 605px;min-width: 325px;'> <section> <a target='_blank' title='@rebekkablue' href='https://www.tiktok.com/@rebekkablue'>@rebekkablue</a> <p>amazon.com/shop/missmothership 🧚 <a title='amazonhacks' target='_blank' href='https://www.tiktok.com/tag/amazonhacks'>#amazonhacks</a><a title='amazonprime' target='_blank' href='https://www.tiktok.com/tag/amazonprime'>#amazonprime</a><a title='amazonfinds' target='_blank' href='https://www.tiktok.com/tag/amazonfinds'>#amazonfinds</a><a title='founditonamazon' target='_blank' href='https://www.tiktok.com/tag/founditonamazon'>#founditonamazon</a><a title='amazonchallenge' target='_blank' href='https://www.tiktok.com/tag/amazonchallenge'>#amazonchallenge</a><a title='amazonfavorites' target='_blank' href='https://www.tiktok.com/tag/amazonfavorites'>#amazonfavorites</a><a title='amazonmusthaves' target='_blank' href='https://www.tiktok.com/tag/amazonmusthaves'>#amazonmusthaves</a><a title='amazonhaul' target='_blank' href='https://www.tiktok.com/tag/amazonhaul'>#amazonhaul</a><a title='fyp' target='_blank' href='https://www.tiktok.com/tag/fyp'>#fyp</a></p> <a target='_blank' title='♬ Easy Jazz Music - Easy Jazz Music' href='https://www.tiktok.com/music/Easy-Jazz-Music-6763810333384509441'>♬ Easy Jazz Music - Easy Jazz Music</a> </section> </blockquote> <script async src='https://www.tiktok.com/embed.js'></script>


</div>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>

<div class="subbuzz subbuzz-text
  
  
  
  xs-mb4 xs-relative "
  
  
  data-module="subbuzz-text">
  
  <div id="125698219" class="subbuzz-anchor"></div>




<script type="text/x-config">
  {
    "id": 125698219
  }
</script>
<p><i>Some reviews have been edited for length and/or clarity.</i></p>
