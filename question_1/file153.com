<!DOCTYPE html><html lang="en" class="enhanced-ux"><head><meta charSet="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/><link rel="preconnect" href="https://polyfill.io/"/><link rel="preconnect" href="//quantcast.mgr.consensu.org"/><link rel="preconnect" href="https://img.buzzfeed.com/buzzfeed-static"/><link rel="preconnect" crossorigin="true" href="https://recsys-api.buzzfeed.com/web"/><link rel="preconnect" href="https://pixiedust.buzzfeed.com"/><link rel="preconnect" crossorigin="true" href="https://abeagle-public.buzzfeed.com"/><link rel="dns-prefetch" href="https://cdn.permutive.com"/><link rel="dns-prefetch" href="https://tagan.adlightning.com"/><script>(function (buzz) {var d = document,w = window,n = navigator,wp = w.performance,os,osMap,getCookie;if (w.__trackAbandons || !n || !n.sendBeacon || !wp || !wp.now) return;osMap = {'Win':'Windows','Mac':'MacOs','X11':'Unix','Linux':'Linux' };os = navigator.appVersion.match(/Win|Mac|X11|Linux/);getCookie = function (cookie) {var re = new RegExp('(?:(?:^|.*;\\s*)' + cookie + '\\s*\\=\\s*([^;]*).*$)|^.*$');return d.cookie.replace(re,'$1');};w.__trackAbandons = function () {d.removeEventListener('visibilitychange',w.__trackAbandons);n.sendBeacon('https://pixiedust.buzzfeed.com/events',w.JSON.stringify([{client_session_id:getCookie('bf-xdomain-session-uuid') || '00000000-0000-0000-0000-000000000000',client_uuid:getCookie('bf_visit') || '00000000-0000-0000-0000-000000000000',context_page_id:buzz.id,context_page_type:'buzz',destination:'buzzfeed',event_ts:Math.round(w.Date.now() / 1000),event_uri:w.location.href,event_uuid:'00000000-0000-0000-0000-000000000000',metric_name:'load-abandonment',metric_type:'custom',metric_value:wp.now(),mode:w.matchMedia && w.matchMedia('screen and (max-width:51.9rem)').matches ? 'mobile' :'desktop',os:os ? osMap[os[0]] :'Unknown',page_edition:buzz.country_code,page_session_id:'00000000-0000-0000-0000-000000000000',referrer_uri:d.referrer,source:'web_bf',type:'web_performance_metric',viewport_size:{width:w.screen.width,height:w.screen.height }}]));};d.addEventListener('visibilitychange',w.__trackAbandons);})({"id":"5723477","country_code":"en-us"});</script><script>
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
  })();</script><script src="https://polyfill.io/v3/polyfill.min.js?flags=gated&amp;features=default,es2015,es2016,es2017,fetch,NodeList.prototype.forEach,Element.prototype.remove,Element.prototype.classList,Object.values,Object.getOwnPropertyDescriptors,IntersectionObserver,ResizeObserver,MutationObserver,Intl"></script><link rel="preload" as="script" href="https://polyfill.io/v3/polyfill.min.js?flags=gated&amp;features=default,es2015,es2016,es2017,fetch,NodeList.prototype.forEach,Element.prototype.remove,Element.prototype.classList,Object.values,Object.getOwnPropertyDescriptors,IntersectionObserver,ResizeObserver,MutationObserver,Intl"/><link rel="preload" href="/static-assets/js/vendor.152ed2ba91382c4dce0a.js?brotli=allow" as="script"/><link rel="preload" href="/static-assets/js/subbuzzes.40b2c15caf92148f3f1e.js?brotli=allow" as="script"/><link rel="preload" href="https://run.adrizer.com/track.min.js" as="script"/><link rel="preload" href="https://securepubads.g.doubleclick.net/tag/js/gpt.js" as="script"/><link rel="preload" href="https://www.buzzfeed.com/static-assets/bf-header-ui/app.4a6264fdfbe98b852e37.js?brotli=allow" as="script"/><script src="/static-assets/js/vendor.152ed2ba91382c4dce0a.js?brotli=allow" async=""></script><script src="/static-assets/js/subbuzzes.40b2c15caf92148f3f1e.js?brotli=allow" async=""></script><meta name="copyright" content="Copyright BuzzFeed, Inc. All rights reserved."/><meta name="apple-mobile-web-app-capable" content="yes"/><meta name="apple-mobile-web-app-title" content="BuzzFeed"/><meta name="theme-color" content="#ee3322"/><link rel="shortcut icon" crossorigin="" href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/favicon.5a0c77a8815cfcc67c710199054a55c6.ico" type="image/x-icon"/><link rel="manifest" crossorigin="use-credentials" href="/manifest.json"/><title>41 Products That Helped Reviewers After They Almost Gave Up On A Problem</title><meta name="title" content="41 Products That Helped Reviewers After They Almost Gave Up On A Problem"/><meta name="description" content="&quot;It&#x27;s never too late&quot; — people in rom coms, but also that wine stain on your carpet, your plantar fasciitis, and your favorite succulent that&#x27;s been circling the drain."/><meta property="bf:buzzid" content="5723477"/><meta property="bf:userid" content="9078237"/><link rel="canonical" href="https://www.buzzfeed.com/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><link rel="image_src" href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/17/tmp/748327a98064/tmp-name-2-265-1601487259-10_dblbig.jpg"/><meta name="robots" content="all"/><meta property="author" content="Emma Lord"/><link rel="amphtml" href="https://www.buzzfeed.com/amphtml/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta property="pin:media" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/17/tmp/748327a98064/tmp-name-2-265-1601487259-10_dblbig.jpg"/><meta property="pin:description" content="41 Products That Helped Reviewers After They Almost Gave Up On A Problem"/><meta property="fb:smart_publish:robots" content="noauto"/><meta property="fb:app_id" content="862012947269736"/><meta property="article:section" content="Shopping"/><meta property="article:publisher" content="https://www.facebook.com/BuzzFeed"/><meta property="article:content_tier" content="free"/><meta property="article:opinion" content="false"/><meta property="article:tag" content="comtent"/><meta property="article:tag" content="shopping-hp-featured"/><meta property="og:url" content="https://www.buzzfeed.com/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta property="og:site_name" content="BuzzFeed"/><meta property="og:image" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/17/enhanced/1d2bfe201483/original-251-1601487207-6.jpg?crop=1581:830;0,0%26downsize=1250:*"/><meta property="og:image:alt" content="wine and compression sock "/><meta property="og:title" content="41 Problem-Solving Products That Worked For Reviewers After They Almost Gave Up"/><meta property="og:description" content="&quot;It&#x27;s never too late&quot; — people in rom coms, but also that wine stain on your carpet, your plantar fasciitis, and your favorite succulent that&#x27;s been circling the drain."/><meta property="og:type" content="article"/><meta name="twitter:app:id:iphone" content="352969997"/><meta name="twitter:app:url:iphone" content="buzzfeed://buzz/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta name="twitter:app:id:ipad" content="352969997"/><meta name="twitter:app:url:ipad" content="buzzfeed://buzz/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta name="twitter:site" content="@buzzfeed"/><meta name="twitter:creator" content="@{twitterAuthorHandle}"/><meta name="twitter:url" content="https://www.buzzfeed.com/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta name="twitter:title" content="41 Problem-Solving Products That Worked For Reviewers After They Almost Gave Up"/><meta name="twitter:description" content="&quot;It&#x27;s never too late&quot; — people in rom coms, but also that wine stain on your carpet, your plantar fasciitis, and your favorite succulent that&#x27;s been circling the drain."/><meta name="twitter:app:id:googleplay" content="com.buzzfeed.android"/><meta name="twitter:app:url:googleplay" content="https://www.buzzfeed.com/emmalord9/problem-solving-products-that-worked-for-reviewers-after"/><meta name="twitter:card" content="summary_large_image"/><meta name="twitter:image" content="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/17/enhanced/52c11188ae60/original-265-1601487223-12.png?crop=1488:744;0,0%26downsize=1250:*"/><meta itemProp="articleSection" content="US"/><script type="application/ld+json">{"@context":"http://schema.org","@type":"Article","isAccessibleForFree":true,"mainEntityOfPage":"https://www.buzzfeed.com/emmalord9/problem-solving-products-that-worked-for-reviewers-after","description":"\"It's never too late\" — people in rom coms, but also that wine stain on your carpet, your plantar fasciitis, and your favorite succulent that's been circling the drain.","headline":"41 Products That Helped Reviewers After They Almost Gave Up On A Problem","datePublished":"2020-10-11T00:01:06.000Z","dateModified":"2020-10-16T21:25:35.000Z","author":"[{\"@type\":\"Person\",\"name\":\"Emma Lord\",\"url\":\"https://www.buzzfeed.com/emmalord9\",\"jobTitle\":\"BuzzFeed Staff\"}]","publisher":{"@type":"Organization","name":"BuzzFeed","url":"https://www.buzzfeed.com","sameAs":["https://www.twitter.com/buzzfeed","https://www.facebook.com/BuzzFeed","https://www.pinterest.com/buzzfeed","https://www.youtube.com/user/buzzfeedvideo"],"logo":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/images/amp/buzzfeed-60px-high.png","width":341,"height":60}},"image":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/17/tmp/748327a98064/tmp-name-2-265-1601487259-10_dblbig.jpg?resize=1200:*","representativeOfPage":true}}</script><script type="application/ld+json" data-schema="Organization">{"@context":"http://schema.org","@type":"Organization","name":"BuzzFeed","url":"https://www.buzzfeed.com","sameAs":["https://www.twitter.com/buzzfeed","https://www.facebook.com/BuzzFeed","https://www.pinterest.com/buzzfeed","https://www.youtube.com/user/buzzfeedvideo"],"logo":{"@type":"ImageObject","url":"https://img.buzzfeed.com/buzzfeed-static/static/images/amp/buzzfeed-60px-high.png","width":341,"height":60}}</script><meta name="next-head-count" content="72"/><style data-href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/css/styles.5f23a5f5.chunk.css">.promoPopup__12-zqUJhLS{background-color:#fff;box-shadow:0 -2px 4px #d7d7d7;display:block;user-select:none;pointer-events:none;width:100%;max-height:0;overflow:hidden;position:fixed;bottom:0;left:0;right:0;transition:max-height .5s ease;z-index:400}.promoPopup__12-zqUJhLS:focus{outline:none}.visible__3GcAYa1I19{user-select:inherit;pointer-events:inherit;max-height:100%}.closeButton___UCY4Iofor{cursor:pointer;appearance:none;border:none;background:none;color:#fff;opacity:.75;padding:0;position:absolute;right:10px;top:10px;z-index:10}.closeButton___UCY4Iofor:focus,.closeButton___UCY4Iofor:hover{opacity:1}.closeButton___UCY4Iofor svg{height:25px;width:25px}.promoPopup__2a9IRYxpA4{background-color:#fff;box-shadow:0 -2px 4px #d7d7d7;display:block;user-select:none;pointer-events:none;width:100%;max-height:0;overflow:hidden;position:fixed;bottom:0;left:0;right:0;transition:max-height .5s ease;z-index:400}.promoPopup__2a9IRYxpA4:before{border-top:9px solid #fff;border-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/svg/airmail.4debf21d89d1ff1ef21b71ccdd2de2dd.svg) 100% 5 0 0 repeat;content:"";display:block}.promoPopup__2a9IRYxpA4:focus{outline:none}.visible__31Tz74t0OI{user-select:inherit;pointer-events:inherit;max-height:100%}.closeButton__3k6-Lil_J-{cursor:pointer;appearance:none;border:none;background:none;color:#fff;opacity:.75;padding:0;position:absolute;right:10px;top:20px;z-index:10}.closeButton__3k6-Lil_J-:focus,.closeButton__3k6-Lil_J-:hover{opacity:1}.closeButton__3k6-Lil_J- svg{height:25px;width:25px;fill:#6645dd}.container__1nc6gRuh9g{padding:1rem 1rem 2rem}.form__3IyMu8oRJa button{background-color:#0f65ef}@media (min-width:52rem){.form__3IyMu8oRJa button{margin-left:.5rem}}.form__3IyMu8oRJa button:hover{background-color:#093c8f}.form__3IyMu8oRJa p[role=alert]{font-weight:400;font-size:.875rem}.form__3IyMu8oRJa p[class^=success]{color:#68af15}.form__3IyMu8oRJa p[class^=error]{color:#e32}@media (min-width:52rem){.container__1nc6gRuh9g{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.container__1nc6gRuh9g:before{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/three_gifts.ff4abf8e188ab1df8bf1ae97945f2ae3.png);background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";margin-right:30px;opacity:1;position:relative;min-width:140px}.copy__3CpdxxvAOX{margin-right:30px;width:50%}.form__3IyMu8oRJa{min-width:260px;width:50%}.form__3IyMu8oRJa div[class^=submitBox]{flex-direction:column}.form__3IyMu8oRJa button{margin-left:0}}@media (min-width:64rem){.container__1nc6gRuh9g{max-width:1000px;padding:1rem 0!important}.form__3IyMu8oRJa div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__3IyMu8oRJa input[id^=newsletter-email-signup]{flex-grow:5}.form__3IyMu8oRJa button{margin-left:.5rem}}.wrapper__2Bz22x4Zzx:before{content:" ";top:0;left:0;right:0;bottom:0;position:absolute;background-color:#f8e4ca;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/pets-newsletter-pattern.54ce1f842e8d9a51ddd9222fdc831897.png);opacity:.5;z-index:-1}.container__1jHKqkFcR5{padding:1rem 1rem 2rem}.copy__21_j_uXYaN{display:flex;flex-direction:column;justify-content:center}.copy__21_j_uXYaN h2{color:#e74a4a}.form__W_rM5a0Uis button{background-color:#e74a4a;border:0}@media (min-width:52rem){.form__W_rM5a0Uis button{margin-left:.5rem}}.form__W_rM5a0Uis button:hover{background-color:#fff;color:#222}.form__W_rM5a0Uis button:hover svg{fill:#222}.form__W_rM5a0Uis p[role=alert]{font-weight:400;font-size:.875rem}.form__W_rM5a0Uis p[class^=success]{color:#e74a4a}.form__W_rM5a0Uis p[class^=error]{color:#000}@media (min-width:52rem){.container__1jHKqkFcR5{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.copy__21_j_uXYaN{margin-right:30px;width:50%}.form__W_rM5a0Uis{min-width:260px;width:50%}.form__W_rM5a0Uis div[class^=submitBox]{flex-direction:column}.form__W_rM5a0Uis button{margin-left:0}}@media (min-width:64rem){.container__1jHKqkFcR5{max-width:1000px;padding:1rem 0!important}.form__W_rM5a0Uis div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__W_rM5a0Uis input[id^=newsletter-email-signup]{flex-grow:5}.form__W_rM5a0Uis button{margin-left:.5rem}}.container__27q6pMABty{color:#e40c78;padding:1rem 1rem 2rem}.form__386zevMJ2t button{background-color:#e40c78}@media (min-width:52rem){.form__386zevMJ2t button{margin-left:.5rem}}.form__386zevMJ2t button:hover{background-color:#830745}.form__386zevMJ2t p[role=alert]{font-weight:400;font-size:.875rem}.form__386zevMJ2t p[class^=success]{color:#222}.form__386zevMJ2t p[class^=error]{color:#e32}@media (min-width:52rem){.container__27q6pMABty{display:flex;margin-left:auto;margin-right:auto;max-width:90%}.container__27q6pMABty:before{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/prime-day-stamp2020.76b0a32a616e7e50d8374bb6d011daa4.png);background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";margin-right:40px;opacity:1;position:relative;min-width:140px}.copy__2RU5XPdeO9{margin-right:30px;width:50%}.form__386zevMJ2t{min-width:260px;width:50%}.form__386zevMJ2t div[class^=submitBox]{flex-direction:column}.form__386zevMJ2t button{margin-left:0}}@media (min-width:64rem){.container__27q6pMABty{max-width:1000px;padding:1rem 0!important}.form__386zevMJ2t div[class^=submitBox]{flex-direction:row;margin-right:30px}.form__386zevMJ2t input[id^=newsletter-email-signup]{flex-grow:5}.form__386zevMJ2t button{margin-left:.5rem}}.hidden__2kYVyNCw0T{display:none}.cookieBanner__ApRj6ChJqE{-webkit-box-align:center;-ms-flex-align:center;align-items:center;background-color:#fff;border-top:1px solid rgba(0,0,0,.2);bottom:0;padding:1rem;position:fixed;z-index:300;display:block}@media (min-width:52rem){.cookieBanner__ApRj6ChJqE{display:flex;padding:1rem 1rem 0}}.textContainer__2co_PthkOC{display:block}@media (min-width:52rem){.textContainer__2co_PthkOC{margin-right:1rem}}.text__1MtibY7nyi{font-size:16px;line-height:24px;padding-bottom:1rem}.buttonBox__1doNxhWRyn{-webkit-box-align:center;ms-flex-align:center;align-items:center}.button__3K1VMzBg6D{background-color:#0f65ef;border:1px solid #0f65ef;border-radius:3px;color:#fff;cursor:pointer;display:inline-block;font-size:.875rem;font-family:inherit;line-height:1.25rem;padding:.3125rem .625rem;text-align:center;text-decoration:none;white-space:nowrap;-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-o-user-select:none;user-select:none;-webkit-transition:background-color .1s ease 0s;-o-transition:background-color .1s ease 0s;transition:background-color .1s ease 0s}.Ad .ad-awareness.ad-fadedown{background:#f4f4f4;opacity:1}.alt-text-display{display:block;background:#fff;border:2px solid #e40c78;color:#000;padding:5px;text-align:center;font-weight:400;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;position:relative;z-index:9999999}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Reg-webfont.5d5b6593c3948d364e163d9d1ab28b8b.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Reg-webfont.4821b151c61817c43ae72d96e1b42c89.woff) format("woff");font-weight:400;font-style:normal;font-display:swap}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Bold-webfont.e158c358d666d6ce173707c7dfa9fa1b.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Bold-webfont.2e96ee83f9a26845a46a414f3c2c9907.woff) format("woff");font-weight:700;font-style:normal;font-display:swap}@font-face{font-family:Proxima Nova;src:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Xbold-webfont.71b0bae0dd01bdf9ef8f3c71863be8ed.woff2) format("woff2"),url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/fonts/ProximaNova-Xbold-webfont.7042087a2bbabf6eed2deb7cd5731cb3.woff) format("woff");font-weight:800;font-style:normal;font-display:swap}a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,textarea,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}b,strong{font-weight:700}u{text-decoration:underline}em,i{font-style:italic}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:"";content:none}table{border-collapse:collapse;border-spacing:0}small,sub{font-size:smaller}sub{vertical-align:sub}sup{vertical-align:super;font-size:smaller}.col{float:left}.xs-col-2{width:16.66667%}.xs-col-3{width:25%}.xs-col-8{width:66.66667%}.xs-col-9{width:75%}.xs-col-10{width:83.33333%}.xs-col-11{width:91.66667%}.xs-col-12{width:100%}@media (min-width:40rem){.sm-col-3{width:25%}}@media (min-width:40rem){.sm-col-4{width:33.33333%}}@media (min-width:40rem){.sm-col-8{width:66.66667%}}@media (min-width:40rem){.sm-col-9{width:75%}}@media (min-width:52rem){.md-col-5{width:41.66667%}}@media (min-width:52rem){.md-col-8{width:66.66667%}}@media (min-width:64rem){.lg-col-4{width:33.33333%}}@media (min-width:64rem){.lg-col-8{width:66.66667%}}.block-grid__item{display:inline-block;margin:.5rem;font-size:16px;vertical-align:top}.xs-block-grid-1{font-size:0;margin:-.5rem;padding:0}.xs-block-grid-1 .block-grid__item{width:100%}@media (min-width:40rem){.sm-block-grid-3{font-size:0!important;margin:-.5rem!important;padding:0!important}}.sm-block-grid-3 .block-grid__item{width:calc(33.33333% - 1rem)}.flex{display:flex}.xs-flex-align-center{align-items:center}.xs-flex-column{flex-direction:column}.xs-flex-grow-1{flex-grow:1}.xs-flex-justify-center{justify-content:center}.xs-flex-justify-space-between{justify-content:space-between}.xs-flex-shrink-0{flex-shrink:0}@media (min-width:40rem){.sm-flex-justify-space-between{justify-content:space-between}}.xs-m0{margin:0}.xs-mb0{margin-bottom:0}.xs-mb05{margin-bottom:.25rem}.xs-mb1{margin-bottom:.5rem}.xs-mb2{margin-bottom:1rem}.xs-mb3{margin-bottom:1.5rem}.xs-mb4{margin-bottom:2rem}.xs-ml0{margin-left:0}.xs-ml05{margin-left:.25rem}.xs-ml1{margin-left:.5rem}.xs-mr1{margin-right:.5rem}.xs-mr2{margin-right:1rem}.xs-mt0{margin-top:0}.xs-mt1{margin-top:.5rem}.xs-mt2{margin-top:1rem}.xs-mt3{margin-top:1.5rem}.xs-mx05{margin-left:.25rem;margin-right:.25rem}.xs-mx2{margin-left:1rem;margin-right:1rem}.xs-mx-auto{margin-left:auto;margin-right:auto}@media (min-width:40rem){.sm-mb0{margin-bottom:0}}@media (min-width:40rem){.sm-mb2{margin-bottom:1rem}}@media (min-width:40rem){.sm-mb3{margin-bottom:1.5rem}}@media (min-width:40rem){.sm-mr3{margin-right:1.5rem}}@media (min-width:40rem){.sm-mt0{margin-top:0}}@media (min-width:40rem){.sm-mt05{margin-top:.25rem}}@media (min-width:52rem){.md-m4{margin:2rem}}@media (min-width:52rem){.md-mb4{margin-bottom:2rem}}.xs-p0{padding:0}.xs-p2{padding:1rem}.xs-pb1{padding-bottom:.5rem}.xs-pl2{padding-left:1rem}.xs-pr0{padding-right:0}.xs-pr1{padding-right:.5rem}.xs-pt0{padding-top:0}.xs-px2{padding-left:1rem;padding-right:1rem}.xs-px4{padding-left:2rem;padding-right:2rem}.xs-py1{padding-top:.5rem;padding-bottom:.5rem}.xs-py3{padding-top:1.5rem;padding-bottom:1.5rem}@media (min-width:40rem){.sm-pl1{padding-left:.5rem}}@media (min-width:40rem){.sm-pl2{padding-left:1rem}}@media (min-width:40rem){.sm-pr0{padding-right:0}}@media (min-width:40rem){.sm-pr3{padding-right:1.5rem}}@media (min-width:52rem){.md-p4{padding:2rem}}@media (min-width:52rem){.md-pl4{padding-left:2rem}}.xs-b0{bottom:0}.xs-r0{right:0}.xs-t0{top:0}.xs-absolute{position:absolute}.xs-relative{position:relative}.xs-z1{z-index:100}.xs-z2{z-index:200}.xs-z3{z-index:300}.xs-float-left{float:left}.xs-float-right{float:right}@media (min-width:52rem){.md-float-right{float:right}}.xs-block{display:block}.xs-hide{display:none}.xs-inline-block{display:inline-block}.xs-flex{display:flex}@media (min-width:40rem){.sm-flex{display:flex}}@media (min-width:40rem){.sm-block{display:block}}@media (min-width:40rem){.sm-hide{display:none}}@media (min-width:40rem){.sm-inline-block{display:inline-block}}@media (min-width:52rem){.md-block{display:block}}@media (min-width:52rem){.md-hide{display:none}}@media (min-width:40rem){.sm-align-middle{vertical-align:middle}}.italic{font-style:italic}.caps{text-transform:uppercase}.xs-text-2{font-size:1.625rem;line-height:1.2}html[lang=ja] main .xs-text-2{font-size:1.5rem;line-height:1.2}.xs-text-3{font-size:1.375rem;line-height:1.27}html[lang=ja] main .xs-text-3{font-size:1.25rem;line-height:1.27}.xs-text-4{font-size:1.125rem;line-height:1.2}html[lang=ja] main .xs-text-4{font-size:1rem;line-height:1.2}.xs-text-5,html[lang=ja] main .xs-text-5{font-size:.875rem;line-height:1.21}.xs-text-6{font-size:.75rem;line-height:1.25}.xs-text-center{text-align:center}@media (min-width:40rem){.sm-text-left{text-align:left}}@media (min-width:52rem){.md-text-1{font-size:2rem;line-height:1.28}html[lang=ja] main .md-text-1{font-size:1.5rem;line-height:1.28}}@media (min-width:52rem){.md-text-3{font-size:1.625rem;line-height:1.2}html[lang=ja] main .md-text-3{font-size:1.5rem;line-height:1.2}}@media (min-width:52rem){.md-text-center{text-align:center}}.nowrap{white-space:nowrap}.xs-full-height{height:100%}.xs-overflow-hidden{overflow:hidden}.link-gray{color:#222}.link-gray path{fill:#222}.link-gray:hover{color:#0f65ef}.link-gray:hover path{transition:fill .15s ease 0s;fill:#0f65ef;cursor:pointer}.svg-white{fill:#fff}.text-gray{color:#222}.text-gray-lighter,.text-gray-lightest{color:#757575}.text-white{color:#fff}.fill-gray-lighter{background-color:#f4f4f4}.fill-white{background-color:#fff}.svg-2{width:1.625rem;height:1.625rem}.svg-2,.svg-4{vertical-align:middle}.svg-4{width:1.125rem;height:1.125rem}.xs-border{border:1px solid rgba(0,0,0,.2)}.xs-border-none{border:none}.button,.button--small,.button--transparent{cursor:pointer;background-color:rgba(0,0,0,0);background-image:none;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:.5rem .875rem;font-size:1rem;line-height:1.5rem;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;background-color:#0f65ef;color:#fff;border:1px solid #0f65ef;transition:background-color .1s ease 0s}.button--small:focus,.button--small:hover,.button--transparent:focus,.button--transparent:hover,.button:focus,.button:hover{background-color:#093c8f}.button--small:active,.button--transparent:active,.button:active{background-color:#041e47}.button--icon>svg{width:1rem;height:1rem;fill:#fff;position:relative;top:.125rem;margin-right:.5rem}.button--icon.button--small>svg{width:.875rem;height:.875rem;position:relative;margin-right:.3125rem}.button--small{padding:.3125rem .625rem;font-size:.875rem;line-height:1.25rem}.button--transparent{background-color:rgba(0,0,0,0);color:#0f65ef;border:1px solid rgba(0,0,0,0)}.button--transparent:not(.button--disabled):not(:disabled):hover{background-color:rgba(0,0,0,0);color:#093c8f}.button--copy.js-sharing-btn{background-color:#0f65ef;border:1px solid #0f65ef}.button--copy.js-sharing-btn:hover{background-color:#0c51bf;border:1px solid #0c51bf}.button--facebook.js-sharing-btn{background-color:#3b5998;border:1px solid #3b5998}.button--facebook.js-sharing-btn:hover{background-color:#2d4373;border:1px solid #2d4373}.button--pinterest.js-sharing-btn{background-color:#e60019;border:1px solid #e60019}.button--pinterest.js-sharing-btn:hover{background-color:#b30013;border:1px solid #b30013}.button--twitter.js-sharing-btn{background-color:#55acee;border:1px solid #55acee}.button--twitter.js-sharing-btn:hover{background-color:#2795e9;border:1px solid #2795e9}.button--whatsapp.js-sharing-btn{background-color:#075e54!important;border:1px solid #075e54}.button--whatsapp.js-sharing-btn:not(.button--disabled):not(:disabled):hover{background-color:#032f2a!important;border:1px solid #032f2a}.button--lineapp.js-sharing-btn{background-color:#0f65ef!important;border:1px solid #0f65ef}.button--lineapp.js-sharing-btn:not(.button--disabled):not(:disabled):hover{background-color:#0c51bf!important;border:1px solid #0c51bf}.text-input{font-family:inherit;background:#fff;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid #d7d7d7;border-radius:3px}.text-input--small:disabled,.text-input:disabled{opacity:.3}.card{box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border:1px solid rgba(0,0,0,.1);background-color:#fff;border-radius:3px}.circle{border-radius:50%}.rounded{border-radius:3px}.clearfix:after,.clearfix:before{content:" ";display:table}.clearfix:after{clear:both}.enhanced-ux .js-unsupported-fallback{display:none}.js-hidden{display:none!important}.qc-cmp2-footer.qc-cmp2-footer-overlay.qc-cmp2-footer-scrolled{margin:auto}.subHeading__2z9yXeHyaC{margin-bottom:1rem}.container__2DUPXFf5iH{margin-bottom:3rem}.container__2DUPXFf5iH p{margin-bottom:.5rem}.container__2DUPXFf5iH .note__3mT5aX9hRh{font-size:1.125rem;margin-bottom:1.5rem}.subHeading__3C1KoSm1nD{margin-bottom:1rem}.container__28lULuBnu8{margin-bottom:2rem}.container__28lULuBnu8 p{margin-bottom:.5rem}.fontList__1CO9rEO3Wc{display:flex;justify-content:space-between;width:300px;padding:0}.fontListItem__3SQJ1zKXwK{list-style:none}.fontListItem__3SQJ1zKXwK span{font-size:2.5rem}.fontListItem__3SQJ1zKXwK p{font-size:1.125rem}.subHeading__lpWbt9Jicd{margin-bottom:1rem}.container__13-K50kiCR{margin-bottom:3rem}.container__13-K50kiCR p{margin-bottom:.5rem}.colorsContainer__tqjN5bE7Ng ul{display:flex;justify-content:space-between;width:100%;padding:0}@media (min-width:40rem){.colorsContainer__tqjN5bE7Ng ul{width:500px}}.colorsContainer__tqjN5bE7Ng li{flex:0 0 33.333333%;list-style:none}.colorsContainer__tqjN5bE7Ng li span{font-size:2.5rem}.colorsContainer__tqjN5bE7Ng li p{font-size:1.125rem}.colorsContainer__tqjN5bE7Ng .colorName__2UmBMYIkJ3{margin-bottom:0;font-weight:700}.colorsContainer__tqjN5bE7Ng .colorBlock__1Nf3G5jPMT{margin-bottom:.5rem;width:150px;height:150px}.colorsContainer__tqjN5bE7Ng .colorHexCode__1Sg7l-_Cir{margin-top:0}.container__2HDnWa848o{margin-bottom:3rem}.container__2HDnWa848o p{margin-bottom:.5rem}.note__1uJmWhnYxN{font-size:1.125rem;margin-bottom:1.5rem}.textContainer__2wgz9zdl0e{margin-bottom:1.5rem;background-color:#f4f4f4;display:flex;align-items:center;min-height:25px;padding:1rem}@media (min-width:40rem){.textContainer__2wgz9zdl0e{width:600px}}*{box-sizing:border-box}body{font-size:1.125rem;line-height:1.2;font-family:Proxima Nova,Helvetica,Arial,sans-serif;color:#222;line-height:1.25}html[lang=ja] main body{font-size:1rem;line-height:1.2}h1{font-size:1.625rem;line-height:1.2;font-weight:700}html[lang=ja] main h1{font-size:1.5rem;line-height:1.2}@media (min-width:40rem){h1{font-size:2.5rem;line-height:1.025;line-height:1.05}html[lang=ja] main h1{font-size:1.5rem;line-height:1.025}}h2{font-size:1.375rem;line-height:1.27;font-weight:700}html[lang=ja] main h2{font-size:1.25rem;line-height:1.27}@media (min-width:40rem){h2{font-size:1.625rem;line-height:1.2}html[lang=ja] main h2{font-size:1.5rem;line-height:1.2}}.regular{font-weight:400}.bold{font-weight:700}.metadata-link{font-weight:700;color:#222;text-decoration:underline}.metadata-link,html[lang=ja] main .metadata-link{font-size:.875rem;line-height:1.21}.metadata-link:hover{color:#0f65ef;cursor:pointer}.image-credit{font-style:italic}.image-credit,html[lang=ja] main .image-credit{font-size:.75rem;line-height:1.25}.blue-link{color:#0f65ef;text-decoration:none}.blue-link:hover{color:#093c8f;transition:color .15s ease 0s}main{padding:1em}.heading__3c0_UyxPqO{margin-bottom:3rem}.scrollActions__2I050LJbIs{background:#fff;display:flex;justify-content:space-between;opacity:0;position:fixed;height:0;z-index:398;top:0;left:0;right:0;transform:translate3d(0,-100%,300px)}@media (min-width:500px){.scrollActions__2I050LJbIs{display:none}}.scrollActions__2I050LJbIs.hidden__Gm-u2fdgQu,.scrollActions__2I050LJbIs.visible__HzdSuuPiUH{height:44px;border-bottom:1px solid #f4f4f4;min-height:44px}.scrollActions__2I050LJbIs.visible__HzdSuuPiUH{transform:translateZ(300px);transition:transform .5s ease 10ms;opacity:1}.scrollActions__2I050LJbIs.hidden__Gm-u2fdgQu{transform:translate3d(0,-100%,300px);transition:transform .5s ease 10ms,opacity 0ms ease .5s;opacity:0}.scrollActions__2I050LJbIs .shareBar__iBmPqMVnmz{display:flex;margin:10px 12px}.scrollActions__2I050LJbIs .shareBar__iBmPqMVnmz li:not(:last-child){margin-right:20px}.home__aXLUdij-BH{padding:13px 16px;height:44px}.home__aXLUdij-BH svg{fill:#e32;width:90px;height:16px}.drawerShareBar__1NRYWryu2T li,.drawerShareBar__1NRYWryu2T li>div{display:block}.drawerShareBar__1NRYWryu2T li a{padding:.8rem 0}.drawerShareBar__1NRYWryu2T li [class^=shareText]{margin-left:.75rem}.drawerTitle__14pWrfvudo{margin-bottom:.8rem}.drawerClose__p8Cm-yEhej{-webkit-appearance:none;background:none;border:0;margin:0;padding:5px;position:absolute;right:15px;top:15px}.drawerClose__p8Cm-yEhej svg{height:1.5rem;width:1.5rem;fill:#aaa}.drawerClose__p8Cm-yEhej:focus svg,.drawerClose__p8Cm-yEhej:hover svg{fill:#757575}.drawerContent__1eHz4I8iRb{transition-property:all;transition-duration:.3s;transition-timing-function:cubic-bezier(0,1,.5,1);transform:translateY(100%)}.drawerContent__1eHz4I8iRb.ReactModal__Content--after-open{transform:translateY(0);transition-delay:.3s}.drawerContent__1eHz4I8iRb.ReactModal__Content--before-close{transform:translateY(100%);transition-delay:0ms}.ReactModal__Overlay{opacity:0;transition:opacity .1s ease}.ReactModal__Overlay--after-open{opacity:1}.ReactModal__Overlay--before-close{opacity:0}.reaction__3UIWmmjH6i{display:flex;flex-direction:column;flex-grow:1;margin:0 1rem 0 0}.bar__1EUh5MAL5B{background-color:#fff78d;margin-bottom:.25rem;transition:height .2s ease}.button__2KR2HFhtGd{background-color:#fe0;display:flex;align-items:center;justify-content:center;padding:.5rem;border-radius:3px;border:none;font-weight:700}.button__2KR2HFhtGd.disabled__2sxcAkjguY{opacity:.5}.button__2KR2HFhtGd:hover:not(.disabled__2sxcAkjguY){background-color:#f5e400;cursor:pointer}.count__3wZo7oEMVq{text-align:center;font-weight:600;margin-bottom:.25rem;font-size:.875rem}.label__TzBvZAAyDP{min-width:38px;display:flex;justify-content:center;white-space:nowrap}.label__TzBvZAAyDP img{fill:#e32;height:14px}.section__3LnZPm01lv{margin:3rem auto;max-width:1100px}@media (min-width:500px){.section__3LnZPm01lv{margin:4rem auto}}.list__2eOE_a4AqA{max-height:200px;display:flex;align-items:flex-end;list-style:none;width:100%;overflow-x:auto}.error__GGTc4PutC8{color:#e32;margin-bottom:.5rem;font-weight:600}.recircList__2RSSznd__V{margin:0 auto;max-width:1100px;padding-top:1rem}@media (min-width:40rem){.recircList__2RSSznd__V{padding-top:2rem}}.recircList__2RSSznd__V ul{list-style:none}.grid__3XmGcmlEGh,.gridNarrow__2cthJytrZK{display:flex;flex-flow:row wrap;justify-content:space-between}.grid__3XmGcmlEGh li,.gridNarrow__2cthJytrZK li{margin-bottom:1rem;width:calc(50% - .75rem)}.grid__3XmGcmlEGh li.fullWidth__qcC23zcaGz,.gridNarrow__2cthJytrZK li.fullWidth__qcC23zcaGz{width:100%}.grid__3XmGcmlEGh li.collapsed__NTp0UopbhO,.gridNarrow__2cthJytrZK li.collapsed__NTp0UopbhO{display:none}@supports (display:grid){.grid__3XmGcmlEGh,.gridNarrow__2cthJytrZK{display:grid;grid-template-columns:1fr 1fr [right-edge];grid-auto-flow:dense;grid-column-gap:1.5rem;grid-row-gap:1rem;margin-bottom:2rem}.grid__3XmGcmlEGh li,.gridNarrow__2cthJytrZK li{margin:0;width:100%}.grid__3XmGcmlEGh li.fullWidth__qcC23zcaGz,.gridNarrow__2cthJytrZK li.fullWidth__qcC23zcaGz{grid-column:1/span right-edge}}@media (min-width:40rem){.grid__3XmGcmlEGh{grid-template-columns:1fr 1fr 1fr [right-edge];grid-column-gap:1rem}.grid__3XmGcmlEGh li{width:calc(33.33333% - .625rem)}}@supports (display:grid){@media (min-width:40rem){.grid__3XmGcmlEGh{grid-template-columns:1fr 1fr 1fr [right-edge];grid-column-gap:1rem;grid-row-gap:1.5rem}.grid__3XmGcmlEGh li{margin:0;width:100%}}}.list__l2C0ChLAgI,.list__l2C0ChLAgI li{margin-bottom:1rem}@media (min-width:40rem){.list__l2C0ChLAgI li{margin-bottom:1.5rem}}.nextButton__1j59Ru3avF{-webkit-appearance:none;background:#0f65ef;border:0;border-radius:3px;box-sizing:border-box;color:#fff;cursor:pointer;display:block;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;line-height:1.5;margin:0 auto 2rem;padding:.5rem 1rem;transition:background-color .1s ease 0s;width:100%}@media (min-width:40rem){.nextButton__1j59Ru3avF{width:auto}}.nextButton__1j59Ru3avF:focus,.nextButton__1j59Ru3avF:hover{background:#093c8f}.nextButton__1j59Ru3avF:active{background:#041e47}.recircItemLink__3DkqDpHOOg{color:#222;text-decoration:none}.recircItemLink__3DkqDpHOOg:focus,.recircItemLink__3DkqDpHOOg:hover{color:#0f65ef}.recircItemLink__3DkqDpHOOg:focus .watchCta__1N5_TQCuJf,.recircItemLink__3DkqDpHOOg:hover .watchCta__1N5_TQCuJf{transform:rotateX(90deg)}.imageWrap__AydCvX7UZ-{background:#f4f4f4;overflow:hidden;position:relative;flex:0 0 auto}.imageWrap__AydCvX7UZ- img{display:block;position:absolute;top:0;left:0;height:100%;width:100%;object-fit:cover}.imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx:before,.imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi:before{content:"";display:block;width:100%;height:0}.imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx:before{padding-bottom:66.4%}.imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi:before{padding-bottom:35.2%}.text__2Qa_tI4Mbz{display:block;font-weight:700}.text__2Qa_tI4Mbz,html[lang=ja] main .text__2Qa_tI4Mbz{font-size:.875rem;line-height:1.21}@media (min-width:52rem){.text__2Qa_tI4Mbz{font-size:1.125rem;line-height:1.2}html[lang=ja] main .text__2Qa_tI4Mbz{font-size:1rem;line-height:1.2}}.stacked__2HXQGZ37eK .imageWrap__AydCvX7UZ-{border-radius:4px;margin-bottom:.5rem}@media (min-width:40rem){.stacked__2HXQGZ37eK .imageWrap__AydCvX7UZ-{border-radius:8px}}.inline__9vn9C56M2H{display:flex}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-{border-radius:4px;margin-right:.5rem;width:115px}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-.big__2Mb7XjGCTx{height:75px}.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-.wide__3z_ldTD4pi{height:40px}@media (min-width:52rem){.inline__9vn9C56M2H .imageWrap__AydCvX7UZ-{margin-right:1rem}}.playButton__1vaYFayxSj{border-radius:100%;position:absolute;top:50%;left:50%;width:27%;transform:translate(-50%,-50%);background-color:rgba(228,12,120,.9);z-index:2}.playButton__1vaYFayxSj:before{content:"";display:block;height:0;padding-bottom:100%;width:100%}.playButton__1vaYFayxSj svg{fill:#fff;height:auto;width:40%;position:absolute;left:50%;top:50%;transform:translate(-40%,-50%)}.watchCta__1N5_TQCuJf{position:absolute;bottom:8px;right:8px;height:22px;transition:transform .2s;transform-style:preserve-3d;font-size:.8rem;line-height:1.5;text-align:center;cursor:pointer;z-index:2}.watchCta__1N5_TQCuJf .watchCtaActive__1DAEw30fNm,.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT{box-sizing:border-box;height:22px;padding:2px 8px;color:#fff;border-radius:3px}.watchCta__1N5_TQCuJf .watchCtaActive__1DAEw30fNm{transform:rotateX(-90deg) translateZ(-11px);background-color:#0f65ef}.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT{transform:translateZ(11px);background-color:rgba(0,0,0,.6)}.watchCta__1N5_TQCuJf .watchCtaInactive__RYmEzxhrqT svg{fill:#fff;height:.75rem;transform:translate(-1px,-1px);width:.75rem;vertical-align:middle}.watchCta__1N5_TQCuJf .watchCtaDuration__2ZcaE9TdjD{padding-left:2px}.watchCta__1N5_TQCuJf .watchCtaHelper__3ANeO5OCoA{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.index__1MpR3iMGVy{display:block;padding:4px 10px;position:absolute;text-align:center;bottom:0;left:0;color:#fff;background:#e40c78;border-radius:0 8px 0 0;min-width:2rem}.trendingShoppingCarousel__3xzlMOP3Yu{margin-bottom:1.5rem}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu{max-width:1132px;padding:0 16px}}@media (min-width:64rem){.trendingShoppingCarousel__3xzlMOP3Yu{display:none}}.trendingShoppingCarousel__3xzlMOP3Yu .listWrapper__111C44xSTb{overflow-x:auto;overflow-y:hidden;-webkit-overflow-scrolling:touch}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu .listWrapper__111C44xSTb{margin:0 -16px;padding:0 16px}}.trendingShoppingCarousel__3xzlMOP3Yu .list__31b-fXTFwR{display:flex;padding-bottom:.5rem}@media (min-width:40rem){.trendingShoppingCarousel__3xzlMOP3Yu .list__31b-fXTFwR:after{content:"";display:block;width:16px;height:1px;flex:0 0 auto}}.trendingShoppingCarousel__3xzlMOP3Yu .item__1k8gSnWlgl{width:270px;flex:0 0 auto}.trendingShoppingCarousel__3xzlMOP3Yu .item__1k8gSnWlgl:not(:last-child){margin-right:.5rem}@media (min-width:40rem){.bottomRecircList__1e6Bk1T9uH{max-width:1132px;padding:0 16px}}.internetPoints__3tGtXF2v1K{display:flex;align-items:center;justify-content:center;-webkit-appearance:none;margin-left:.5rem;border-radius:1rem;border:0;position:relative;padding:0 .5rem;background-image:linear-gradient(90deg,#e40c78,#6645dd);font-size:10px;font-family:Proxima Nova,Helvetica,Arial,sans-serif;color:#fff;z-index:2}@media (min-width:40rem){.internetPoints__3tGtXF2v1K{font-size:.75rem}}.internetPoints__3tGtXF2v1K span{line-height:1.8}.internetPoints__3tGtXF2v1K:focus+.tooltipContainer__3GHzqtXb2w,.internetPoints__3tGtXF2v1K:focus-within+.tooltipContainer__3GHzqtXb2w,.internetPoints__3tGtXF2v1K:hover+.tooltipContainer__3GHzqtXb2w{outline:none;visibility:visible}.sparklesIcon__3nUrQxEhJI{width:1rem;height:1rem;margin-right:.25rem}.tooltipContainer__3GHzqtXb2w{padding-top:30px;position:absolute;top:calc(100% - 20px);left:50%;transform:translateX(-50%);transition:all 10ms ease 0s;margin-left:-.5rem;z-index:1;visibility:hidden}.tooltipContainer__3GHzqtXb2w:after,.tooltipContainer__3GHzqtXb2w:before{content:" ";pointer-events:none;position:absolute;height:0;width:0;right:100%;left:50%;bottom:calc(100% - 30px);border-left:7px solid rgba(0,0,0,0);border-right:7px solid rgba(0,0,0,0);border-bottom:10px solid #222}.tooltipContainer__3GHzqtXb2w:focus-within,.tooltipContainer__3GHzqtXb2w:hover{visibility:visible}.tooltip__2lzgNtElq_{text-align:center;background-color:#222;border:none;color:#fff;display:inline-block;width:220px;position:relative;padding:.5rem;font-size:.875rem;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border-radius:3px;margin-bottom:1rem!important;z-index:2}.tooltip__2lzgNtElq_ a{color:#fff;margin-left:.25rem}.video__playing__11I2bO5PCX .bg__38hP-qpDRD,.video__playing__11I2bO5PCX .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX .cta___yh8ge03Eo,.video__playing__11I2bO5PCX .pauseCta__3MF11M1psI{opacity:0}.video__playing__11I2bO5PCX:focus .bg__38hP-qpDRD,.video__playing__11I2bO5PCX:focus .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX:focus .pauseCta__3MF11M1psI,.video__playing__11I2bO5PCX:hover .bg__38hP-qpDRD,.video__playing__11I2bO5PCX:hover .circle__1yvC-QqE7g,.video__playing__11I2bO5PCX:hover .pauseCta__3MF11M1psI{opacity:1;animation:fadeout-pause__3Fdr3Gl9Mj .3s 2s;animation-fill-mode:forwards}.bg__38hP-qpDRD,.circle__1yvC-QqE7g,.cta___yh8ge03Eo{opacity:1;transition:opacity .1s ease-out}.pauseCta__3MF11M1psI{opacity:0;margin-top:2px;transition:opacity .1s ease-out}.videoPlayButton__2nEO1XfKSJ{appearance:none;background:none;border:0;display:block;width:100%;height:100%;padding:0;position:absolute;left:0;top:0;z-index:10}.icon__1NAgKqH9X7{display:block;height:48px;width:48px;position:absolute;top:50%;left:50%;margin:-1.5rem 0 0 -1.5rem}.cta___yh8ge03Eo{position:absolute;z-index:4;margin-top:2px;margin-left:1px}.cta___yh8ge03Eo,.pauseCta__3MF11M1psI{fill:#fff}@keyframes fadeout-pause__3Fdr3Gl9Mj{0%{opacity:1}to{opacity:0}}</style><style data-href="https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/css/07f259ac0b753643973237766cc129fec1cc8f7c_CSS.39aafaad.chunk.css">.xs-fixed{position:fixed}.xs-z4{z-index:400}.xs-t1{top:.5rem}.xs-r1{right:.5rem}.xs-flex-order-1{order:1}.xs-flex-order-2{order:2}.xs-flex-row{flex-direction:row}.xs-flex-align-start{align-items:flex-start}.xs-float-none{float:none}.xs-fit{max-width:100%}.clearfix:after,.clearfix:before{content:" ";display:table}.xs-mr0,.xs-mx0{margin-right:0}.xs-mx0{margin-left:0}.xs-my0{margin-top:0;margin-bottom:0}.xs-mt05{margin-top:.25rem}.xs-mr05{margin-right:.25rem}.xs-my3{margin-top:1.5rem;margin-bottom:1.5rem}.xs-my4{margin-top:2rem;margin-bottom:2rem}.xs-pl0,.xs-px0{padding-left:0}.xs-px0{padding-right:0}.xs-py0{padding-top:0;padding-bottom:0}.xs-pt05{padding-top:.25rem}.xs-pl05,.xs-px05{padding-left:.25rem}.xs-px05{padding-right:.25rem}.xs-p1{padding:.5rem}.xs-pt1{padding-top:.5rem}.xs-px1{padding-left:.5rem;padding-right:.5rem}.xs-pt2{padding-top:1rem}.xs-pb2{padding-bottom:1rem}.align-top{vertical-align:top}.align-bottom{vertical-align:bottom}.xs-col-1{width:8.33333%}.xs-col-5{width:41.66667%}.xs-col-7{width:58.33333%}.xs-text-right{text-align:right}.normal,.regular{font-weight:400}.bold{font-weight:600}.xbold{font-weight:700}.xs-text-3{font-size:1.125rem;line-height:1.2}.xs-text-4{font-size:1rem;line-height:1.3}.xs-text-5{font-size:.875rem;line-height:1.3}.xs-text-6{font-size:.75rem;line-height:1.3}.text-gray{color:#222}.text-white{color:#fff}.text-gray-lighter{color:#666}.text-gray-lightest{color:#757575}.text-promoted-orange{color:#f7ad19}.link-gray{color:#222}.link-gray:hover{color:#0f65ef}.link-gray-lighter{color:#757575}.link-gray-lighter:hover{color:#222}.fill-blue{background-color:#0f65ef}.fill-yellow{background-color:#fe0}.fill-yellow-lighter{background-color:#fffab6}.fill-gray{background-color:#aaa}.fill-gray-darker{background-color:#222}@media (min-width:40rem){.sm-absolute{position:absolute}.sm-r0{right:0}.sm-b0{bottom:0}.sm-overflow-auto{overflow:auto}.sm-inline{display:inline}.sm-float-left{float:left}.sm-float-right{float:right}.sm-full-height{height:100%}.sm-pt0{padding-top:0}.sm-pb0{padding-bottom:0}.sm-pl0{padding-left:0}.sm-pb05{padding-bottom:.25rem}.sm-pl05{padding-left:.25rem}.sm-pt1{padding-top:.5rem}.sm-p2{padding:1rem}.sm-px2{padding-left:1rem;padding-right:1rem}.sm-py2{padding-top:1rem;padding-bottom:1rem}.sm-col-5{width:41.66667%}.sm-col-7{width:58.33333%}.sm-text-2{font-size:1.375rem;line-height:1.2}.sm-text-4{font-size:1rem;line-height:1.3}}@media (min-width:52rem){.md-float-none{float:none}.md-mt0{margin-top:0}.md-mt05{margin-top:.25rem}.md-mb2{margin-bottom:1rem}.md-pt1{padding-top:.5rem}.md-px2{padding-left:1rem;padding-right:1rem}.md-col-1{width:8.33333%}.md-col-4{width:33.33333%}.md-col-12{width:100%}.md-text-left{text-align:left}.md-flex{display:flex}}@media (min-width:64rem){.lg-mx2{margin-left:1rem;margin-right:1rem}.lg-pl0{padding-left:0}}.ad-advertise-wrapper{position:absolute;font-size:.75rem;right:0}.ad-advertise-link{color:#707070;text-decoration:none}.ad-hidden{display:none}.clearfix:after{clear:both;display:table;content:" "}.promoted-header--orange{border-top:8px solid #bf5608!important}.bf-item:hover{cursor:pointer}.bf-image-widestory{display:block;transition:max-height .2s ease-in;border:1px solid #f7f7f7}.xs-mt-n1{margin-top:-20px}.line-height0{line-height:0}.xs-lh-1{line-height:1}.media__body{overflow:hidden;zoom:1}.videos .partner-area{margin-bottom:30px}.videos .partner-area .campaign-big-thumb{width:100%}.ad--wide-promo__post{display:none}.promo-app-banner__img{background-size:cover}.ad-test-label{opacity:.4}.ad-slot{width:100%}.ad-slot-invisible{overflow:hidden;position:absolute;z-index:-1;height:5px!important;width:5px!important}[id^=div-gpt-ad-]{font-size:0;line-height:0}.ad-scroll-sub--enabled{padding-bottom:44px}.ad-button{border:1px solid #0f65ef}.ad-button:hover{color:#fff;background:#0f65ef}.ad-card{background-color:#fff;border:1px solid rgba(0,0,0,.1);border-radius:3px;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);clear:both;position:relative}.ad-card.ad-flexible--programmatic{background-color:rgba(0,0,0,0);box-shadow:0 0 0}.partner-sash{position:absolute;background-color:#bf5608;color:#fff;top:0;left:7px;padding:3px 2px;line-height:1;margin-left:-15px;font-size:7px;letter-spacing:1px;display:inline-block;text-transform:uppercase;z-index:1;transform:rotate(-15deg)}.ad-promotion--other__MTb1ChEDqn .partner-sash,.ad-promotion--sponsorship__1hvUVxP057 .partner-sash,.f_other__3jPBhaKR3l .partner-sash,.f_sponsorship__2d_td0N75D .partner-sash{display:none}.partner-sash--horizontal{margin:0;position:inherit;transform:none}.partner-sash--no-caps{text-transform:none;letter-spacing:normal}.f_sponsorship .bf-display_name{display:block}.f-ad-disclosure{line-height:1.3;align-items:start}.f-ad-disclosure .ad-user--image--big{height:2.4rem;width:auto;border:1px solid #f7f7f7}.ad-user--image{width:2rem;border-radius:3px}.ad-promotion--other .bf-byline_prefix,.f_other .bf-byline_prefix{display:none!important}.ad-promotion--other .ad__promoted,.ad-promotion--other .ad__promoted-by,.f_other .ad__promoted,.f_other .ad__promoted-by{display:none}.ad-promotion--other .ad__disclosure,.ad-promotion--other .f-ad-disclosure,.f_other .ad__disclosure,.f_other .f-ad-disclosure{align-items:center}.ad-promotion--other .ad-user--image,.f_other .ad-user--image{width:1.375rem;border-radius:50%!important;vertical-align:middle}.ad-promotion--other .ad-user--name,.f_other .ad-user--name{font-size:.75rem!important;color:#999!important;font-weight:400!important}.ad-promotion--other .ad-user--name:hover,.f_other .ad-user--name:hover{color:#222!important;transition:color .15s ease 0s;outline-width:0}.ad-animated{-webkit-transition:opacity .25s,height .25s,max-height .25s,width .25s;-moz-transition:opacity .25s,height .25s,max-height .25s,width .25s;-ms-transition:opacity .25s,height .25s,max-height .25s,width .25s;-o-transition:opacity .25s,height .25s,max-height .25s,width .25s;transition:opacity .25s,height .25s,max-height .25s,width .25s}.ad-fade{opacity:0;transition:opacity .5s ease-in-out}.ad-fadeleft{opacity:1}.ad-fadeup{max-height:275px;opacity:1;transition:max-height .25s ease-out,opacity .25s ease-out,margin-top .25s ease-out}.ad-fadedown,.ad-fadeup{margin-top:0;overflow:hidden}.ad-fadedown{max-height:0;opacity:0;transition:max-height .5s ease-in,opacity .75s ease-in,margin-top .75s ease-in}.ad-fadedown--visible{opacity:1;max-height:none}.ad--collapse-vertical,.ad-wireframe--collapse-vertical{overflow:hidden;height:0;min-height:0!important;max-height:0!important;opacity:0;transition:max-height .25s ease-out,opacity .25s ease-out,margin-top .25s ease-out;margin:0!important;padding:0!important}.ad--collapse-horizontal,.ad--collapse-horizontal.ad-fadeleft,.ad-wireframe--collapse-horizontal,.ad-wireframe--collapse-horizontal.ad-fadeleft{overflow:hidden;width:0!important;opacity:0;transition:width .25s ease-out,opacity .25s ease-out;margin:0!important;padding:0!important}.ad-animated-wireframe,.ad-animated-wireframe--horizontal,.ad-animated-wireframe--vertical{-webkit-transition:height .1s,width .1s,background-color .1s,opacity .1s;-moz-transition:height .1s,width .1s,background-color .1s,opacity .1s;-ms-transition:height .1s,width .1s,background-color .1s,opacity .1s;-o-transition:height .1s,width .1s,background-color .1s,opacity .1s;transition:height .1s,width .1s,background-color .1s,opacity .1s}.ad-animated-wireframe--horizontal:not(.ad-wireframe),.ad-animated-wireframe--vertical:not(.ad-wireframe),.ad-animated-wireframe:not(.ad-wireframe){margin:0!important;opacity:0;background-color:rgba(0,0,0,0)}.ad-animated-wireframe--vertical:not(.ad-wireframe){height:0}.ad-animated-wireframe--horizontal:not(.ad-wireframe){width:0}.ad__wireframe-container:not(.ad-wireframe){display:none!important}.ad-wireframe-text{background-color:#f4f4f4;height:12px}.ad-wireframe-image{background-color:#e2e2e2!important}.ad-wireframe-programmatic{background-color:#f4f4f4}.ad-wireframe-wrapper{margin-left:auto;margin-right:auto;transition:min-height .75s ease-out,height .75s ease-out,opacity .75s ease-out}.ad-wireframe-wrapper.ad--collapse-vertical,.ad-wireframe-wrapper.ad-wireframe-wrapper--hidden{height:0;margin:0;min-height:0!important;min-width:0!important;opacity:0;overflow:hidden;width:0}.ad-wireframe-wrapper.ad-wireframe-wrapper--labeled>.js-ad:not(.ad--loaded):not(.ad-ex):before{content:"advertisement";display:block;font-size:.75rem;line-height:.75rem;margin-bottom:.25rem;text-align:center;text-transform:uppercase}.ad-wireframe-wrapper:not(.ad-wireframe-wrapper--nostick) .ad--loaded{position:static!important;position:sticky!important;top:0;transform:none}.ad-wireframe-wrapper iframe{transition:opacity 1s ease-in;opacity:1;background-color:rgba(0,0,0,0)}.ad-wireframe-wrapper .js-ad:not(.ad--loaded) .ad-slot{background-color:#f4f4f4;margin-left:auto;margin-right:auto}.ad-wireframe-wrapper .js-ad:not(.ad--loaded) .ad-slot iframe{background-color:#f4f4f4;opacity:.1}@media (min-width:1px){.ad-wireframe-wrapper[data-wireframe-width="1"]{min-width:1px}.ad-wireframe-wrapper[data-wireframe-width="1"] .js-ad:not(.ad--loaded) .ad-slot{width:1px}.ad-wireframe-wrapper[data-wireframe-height="1"]{min-height:1px}.ad-wireframe-wrapper[data-wireframe-height="1"] .js-ad:not(.ad--loaded) .ad-slot{height:1px}}@media (min-width:300px){.ad-wireframe-wrapper[data-wireframe-width="300"]{min-width:300px}.ad-wireframe-wrapper[data-wireframe-width="300"] .js-ad:not(.ad--loaded) .ad-slot{width:300px}.ad-wireframe-wrapper[data-wireframe-height="250"]{min-height:250px}.ad-wireframe-wrapper[data-wireframe-height="250"] .js-ad:not(.ad--loaded) .ad-slot{height:250px}.ad-wireframe-wrapper[data-wireframe-height="600"]{min-height:600px}.ad-wireframe-wrapper[data-wireframe-height="600"] .js-ad:not(.ad--loaded) .ad-slot{height:600px}}@media (min-width:320px){.ad-wireframe-wrapper[data-wireframe-width="320"]{min-width:320px}.ad-wireframe-wrapper[data-wireframe-width="320"] .js-ad:not(.ad--loaded) .ad-slot{width:320px}.ad-wireframe-wrapper[data-wireframe-height="50"]{min-height:50px}.ad-wireframe-wrapper[data-wireframe-height="50"] .js-ad:not(.ad--loaded) .ad-slot{height:50px}}@media (min-width:728px){.ad-wireframe-wrapper[data-wireframe-width="728"]{min-width:728px}.ad-wireframe-wrapper[data-wireframe-width="728"] .js-ad:not(.ad--loaded) .ad-slot{width:728px}.ad-wireframe-wrapper[data-wireframe-height="90"]{min-height:90px}.ad-wireframe-wrapper[data-wireframe-height="90"] .js-ad:not(.ad--loaded) .ad-slot{height:90px}}@media (min-width:970px){.ad-wireframe-wrapper[data-wireframe-width="970"]{min-width:970px}.ad-wireframe-wrapper[data-wireframe-width="970"] .js-ad:not(.ad--loaded) .ad-slot{width:970px}.ad-wireframe-wrapper[data-wireframe-height="90"]{min-height:90px}.ad-wireframe-wrapper[data-wireframe-height="90"] .js-ad:not(.ad--loaded) .ad-slot{height:90px}.ad-wireframe-wrapper[data-wireframe-height="250"]{min-height:250px}.ad-wireframe-wrapper[data-wireframe-height="250"] .js-ad:not(.ad--loaded) .ad-slot{height:250px}}.ad-flexible--dfp_native_video .ad-user--image,.card--video .ad-user--image{width:40px}.ad-flexible--media-video .ad-slot{position:absolute;top:0}.ad-flexible--media-video .ad-slot,.ad-flexible--media-video .ad-slot [id^=google_ads_iframe]{width:1px;min-width:100%;*width:100%;height:100%!important}.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ad-slot-media-placeholder--1\:1,.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ad-slot-media-placeholder--4\:3,.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ad-slot-media-placeholder--16\:9{display:block}.ad-ex,.ad-flexible.ad-flexible--programmatic{margin-left:auto;margin-right:auto;padding-top:.5rem}.ad-ex:not(.ad-card),.ad-ex:not(.card),.ad-flexible.ad-flexible--programmatic:not(.ad-card),.ad-flexible.ad-flexible--programmatic:not(.card){padding-bottom:1rem;border:none}.ad-ex.card,.ad-flexible.ad-flexible--programmatic.card{padding-bottom:.5rem}.ad-ex.ad-ex--sidebar-top,.ad-flexible.ad-flexible--programmatic.ad-ex--sidebar-top{padding-bottom:0}.ad-ex.ad--partner,.ad-flexible.ad-flexible--programmatic.ad--partner{padding-top:0}.ad-ex.ad--partner .ad__disclosure--ex,.ad-flexible.ad-flexible--programmatic.ad--partner .ad__disclosure--ex{display:none}.ad-ex .ad__disclosure--ex,.ad-flexible.ad-flexible--programmatic .ad__disclosure--ex{color:#757575;font-size:.75rem;font-weight:300;line-height:1.3;margin-bottom:.5rem;text-align:center;text-transform:uppercase;letter-spacing:1px}.ad-ex .ad-slot,.ad-flexible.ad-flexible--programmatic .ad-slot{margin-left:auto;margin-right:auto;text-align:center}.ad-ex.ad-flexible--programmatic .ad__disclosure--programmatic{display:none}.ad-content-ready.ad--loaded.ad-flexible--impression_pixel{padding:0;margin:0;border:none}.ad-research-pixel{position:absolute;margin:0;padding:0}.ix-invite{height:375px!important}.ix-invite .question-label{margin-top:.3em!important;margin-bottom:.75em!important}.ix-invite .ixai-survey-container img:first-of-type{position:relative;left:-2px}.ix-invite .form-ui{margin-top:0!important}.ix-invite #survey-container{padding:1.5em!important}.ix-invite .closeLink{right:.35em!important;top:.5em!important}.ix-invite #submit-row{bottom:1.25em!important}@keyframes spotlight-content-crossfade__OxaRpqDaRd{0%{opacity:.5}40%{opacity:0;transform:translateY(-10%)}50%{transform:translateY(30%)}to{opacity:1;transform:translateY(0)}}@keyframes spotlight-content-crossfade2__2XP__7lcab{0%{opacity:.1}20%{opacity:0;transform:translateY(30%)}30%{opacity:0;transform:translateY(0)}to{opacity:1}}.ad-flexible--spotlight .awareness-bg-animator{display:none}@media (min-width:52rem){.ad-flexible--spotlight.sticky{top:0;left:0;transition:transform .2s;position:relative;max-height:250px;min-height:90px;height:250px;transition:width .2s ease-out,max-width .2s ease-out,height .2s ease-out,max-height .2s ease-out,box-shadow .2s ease-out;z-index:400}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x,.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x .mobile-close{display:none}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x svg{width:1.5rem}.ad-flexible--spotlight.sticky .ad-awareness__dismiss.ad-awareness__dismiss--x:hover{transition:opacity .1s;opacity:1}.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x{display:block;position:absolute;right:1rem;top:calc(50% - 12px);line-height:1;z-index:10;opacity:.5;transition:opacity .25s linear;cursor:pointer}.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x:active,.ad-flexible--spotlight.sticky.sticky--show .ad-awareness__dismiss.ad-awareness__dismiss--x:hover{opacity:1;margin-top:1px}}@media (min-width:52rem){.ad-flexible--spotlight.sticky.sticky--show .awareness-bg-animator{display:block;border-radius:5px;position:absolute;margin:0 auto;top:0;left:50%;max-width:71rem;width:100%;height:100%;transform-origin:50% 50%;transform:scale(1) translateX(-50%);transition:height .2s ease-out,max-height .2s ease-out,transform .3s ease-in-out}.ad-flexible--spotlight.sticky .awareness-inner{transition:width .2s ease-out,max-width .2s ease-out .1s,height .2s ease-out,max-height .2s ease-out .1s}.ad-flexible--spotlight.sticky:not(.sticky--first-time){animation-duration:.4s;animation-timing-function:ease-out;animation-name:spotlight-content-crossfade2}.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{transition:width .2s ease-out,max-width .2s ease-out,height .2s ease-out,max-height .2s ease-out .3s;animation-duration:.3s;animation-timing-function:ease-out;animation-name:spotlight-content-crossfade;border-radius:0}.ad-flexible--spotlight.sticky.sticky--fixed .awareness-bg-animator{border-radius:0;transform:scaleX(3) translateX(0);transition:height .2s ease-out,max-height .2s ease-out,transform .4s ease-out}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--hide{top:-250px;transition:top .5s ease-out,transform .2s;box-shadow:0 1px 3px rgba(34,34,34,0)}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--hide .ad-awareness__dismiss.ad-awareness__dismiss--x{opacity:0}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show{top:0;transition:top .5s ease-out,transform .2s;box-shadow:0 1px 3px rgba(34,34,34,.4)}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show.mobile-share--adjust{top:43px;transition:top .5s ease 10ms}.ad-flexible--spotlight.sticky.sticky--fixed.sticky--show .awareness-inner{box-shadow:none}}.ad-awareness.ad-dest--bfnews.sticky{z-index:400;top:0;left:0;transition:transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed{width:100%;top:-250px}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__dismiss.ad-awareness__dismiss--x{display:block}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__content{flex-wrap:nowrap}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer{width:auto;position:static}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer.active .ad-awareness__disclaimer-text,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer.active .display-info{opacity:1}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer .display-info{display:block;margin:0 20px 0 10px;transition:opacity .5s ease-in-out;opacity:.4}@media (min-width:52rem){.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer:hover .ad-awareness__disclaimer-text,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer:hover .display-info{opacity:1}}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__disclaimer .ad-awareness__disclaimer-text{opacity:0;transition:opacity .5s ease-in-out;background-color:#fff;color:#222;position:absolute;top:50%;right:40px;transform:translateY(-50%);border-radius:5px;border:1px solid #d7d7d7;padding:0 5px;pointer-events:none;font-size:.875rem;box-shadow:none;max-width:450px;line-height:1.3}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--hide{top:-250px;transition:top .75s ease-in-out,transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--hide .ad-awareness__dismiss.ad-awareness__dismiss--x{opacity:0}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--show{top:0;transition:top .75s ease-in-out,transform .2s}.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed.sticky--show.mobile-share--adjust{top:43px;transition:top .5s ease 10ms}.ad-awareness__dismiss.ad-awareness__dismiss--x{display:none;position:absolute;right:0;top:0;opacity:.5;transition:opacity .25s linear;cursor:pointer}.ad-awareness__dismiss.ad-awareness__dismiss--x svg{width:1.5rem}.ad-awareness__dismiss.ad-awareness__dismiss--x:hover{transition:opacity .1s;opacity:1}.ad-awareness__dismiss.ad-awareness__dismiss--caret{display:none}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss.ad-awareness__dismiss--caret{display:flex;align-items:center;justify-content:center;width:0;height:3rem;padding:0;border:none;background:#fff;opacity:0;transition:width .2s,bottom .2s,margin-left .2s,opacity .2s}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss.ad-awareness__dismiss--caret svg{width:14px;height:14px;transform:rotate(-90deg);fill:#aaa}@media (max-width:39.999rem){body.sticky-ad-exp .Ad--awareness-bp{transition:top .2s ease-out,min-height .75s ease-out,height .75s ease-out,opacity .75s ease-out}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness{display:flex;justify-content:center}body.sticky-ad-exp .Ad--awareness-bp .awareness-inner{max-width:320px;max-height:50px;overflow:hidden}body.sticky-ad-exp .sticky.Ad--awareness-bp{position:sticky;z-index:400}body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness,body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness.ad-dest--bfnews.ad-flexible--programmatic,body.sticky-ad-exp .sticky.Ad--awareness-bp .ad-awareness.ad-flexible.ad-flexible--programmatic{background:#fff}body.sticky-ad-exp .sticky.Ad--awareness-bp .awareness-inner{flex-shrink:0}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness{justify-content:space-evenly;box-shadow:0 1px 3px 0 rgba(0,0,0,.1)}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness__dismiss{width:3rem;opacity:1}body.sticky-ad-exp .sticky--dismissed.Ad--awareness-bp{top:-150px!important}}@media (max-width:39.999rem) and (max-width:367px){body.sticky-ad-exp .Ad--awareness-bp .awareness-inner{z-index:1}body.sticky-ad-exp .Ad--awareness-bp .ad-awareness__dismiss{position:absolute;right:0;bottom:0;z-index:0;width:3rem}body.sticky-ad-exp .sticky--fixed.Ad--awareness-bp .ad-awareness__dismiss{bottom:-3rem;box-shadow:-1px 1px 3px 0 rgba(0,0,0,.1)}}.ad-awareness-anchor{position:sticky;z-index:-1;height:1px;margin-bottom:-1px}.ad-awareness{position:relative}.ad-awareness.ad-fadedown{min-height:108px;max-height:275px}.ad-awareness.ad-wireframe--collapse-vertical{min-height:0;max-height:0;transition:min-height .75s ease-out}.ad-awareness.ad-flexible.ad-flexible--programmatic{padding-top:1rem;margin-top:0;background-color:#f4f4f4}.ad-awareness.ad-flexible.ad-flexible--programmatic.sticky--fixed{margin-top:0}.ad-awareness.ad-flexible--programmatic .ad__disclosure--ex{display:none}@media (max-width:39.999rem){.ad-awareness.ad-flexible{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-awareness .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}}.ad-awareness .mobile-close{display:none}.ad-awareness .ad-slot-media-inner{width:100%;height:100%;position:relative}.ad-awareness .ad-awareness-content:empty,.ad-awareness .ad-awareness__dismiss--x{display:none}.ad-awareness-component,.ad-awareness-component .ad-disclosure{align-items:center;display:flex;flex-grow:1;flex-direction:column;position:relative;z-index:9}.ad-awareness-component .ad-disclosure{flex-grow:0;flex-direction:row}.ad-awareness-component .ad-disclosure .ad-disclosure-text{font-weight:600;margin-right:1rem}.ad-awareness.ad-flexible--spotlight .awareness-inner{box-shadow:0 1px 4px -2px rgba(34,34,34,.9)}@media (min-width:52rem){.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner,.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thin:not(.sticky--show) .awareness-inner{box-shadow:none;border-width:1px;border-style:solid}.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner{border-width:8px;border-radius:0}.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner .ad-awareness-content,.ad-awareness.ad-flexible--spotlight.ad-spotlight-border--thick:not(.sticky--show) .awareness-inner .ad-slot-media-inner{border-radius:0}.ad-awareness.ad-flexible--spotlight.ad-spotlight-font--large:not(.sticky--show) .awareness-inner .ad-awareness-dek{font-size:1.5rem;line-height:2rem}}.ad-flexible--media-img img:not(.ad-hidden){display:block;width:100%;height:100%;object-fit:cover;object-position:center}.ad-display-card__image,.ad-display-card__vidslot{display:block;overflow:hidden;width:100%}@media (min-width:40rem) and (max-width:51rem){.ad-display-card__image,.ad-display-card__vidslot{float:left;width:41.66667%}}.ad-display-card__image{background-color:#e2e2e2;border-top-left-radius:3px;border-top-right-radius:3px;position:relative;z-index:200}.ad-display-card__asset-cover,.ad-display-card__asset-overlay,.ad-display-card__asset-player,.ad-display-card__asset-wrapper,.ad-display-feed-story{display:block;position:relative;margin:0;padding:0}.ad-display-card__asset-overlay,.ad-display-card__asset-player{height:auto;left:0;position:absolute;top:0;width:100%;z-index:200}.ad-display-card__asset-overlay{height:100%;z-index:300}.ad-display-card__asset-cover{width:100%;z-index:100}.ad-display-card__controls{position:absolute;right:0;bottom:0;width:40px;height:40px;z-index:400}.ad-display-card__button{background:rgba(0,0,0,0);border:none;width:40px;height:40px;margin:0;padding:10px 0 0 10px;text-align:center;outline:none;position:absolute}.ad-display-card__button:focus{outline:none}.ad-display-card__button path,.ad-display-card__button svg{display:inline-block;fill:#fff;width:14px;height:14px}.ad-display-card__cta{align-items:center;background:#0f65ef;color:#fff;display:flex;font-size:.875rem;font-weight:600;justify-content:space-between;padding:.5rem 1rem;text-decoration:none}.ad-display-card__cta:hover{color:#fff}.ad-display-card__cta-arrow{fill:#fff;height:.875rem;vertical-align:middle;width:.875rem}.ad-display-card__dek{display:block;font-size:.875rem;margin-top:.25rem;padding:.5rem 1rem 0;width:100%}@media (min-width:40rem) and (max-width:51rem){.ad-display-card__dek{float:right;width:50%}}.ad-display-feed-story .ad-disclosure{display:flex;padding-left:0;padding-right:0;margin-top:.5rem}.ad-display-feed-story .ad-disclosure .ad-disclosure-image{order:1}.ad-display-feed-story .ad-disclosure .ad-disclosure-text{order:2}.ad-display-feed-story .ad-display-card__image{border-radius:0}@media (min-width:40rem){.ad-display-feed-story .ad-display-card__image{width:58.33333%}}.ad-display-feed-story .ad-display-card__dek{padding:1rem}.ad-display-feed-story .ad-display-card__dek h2{font-weight:600;margin-top:0}@media (min-width:40rem){.ad-display-feed-story .ad-display-card__dek{float:right;height:100%;width:41.66667%}}.ad-bigstory{position:relative;margin-bottom:1.5rem}.ad-bigstory.ad--loaded.ad-flexible--dfp_native_video,.ad-bigstory.ad--loaded.ad-flexible--display_card,.ad-bigstory.ad--loaded.ad-flexible--display_card_native_video,.ad-bigstory.ad--loaded.ad-flexible--video{padding:0}.ad-bigstory.ad--loaded.ad-flexible--dfp_native_video .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--display_card .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--display_card_native_video .ad__wireframe-container,.ad-bigstory.ad--loaded.ad-flexible--video .ad__wireframe-container{padding:1rem}.ad-bigstory.ad-flexible--programmatic .ad-slot{margin-left:calc(-50vw + 50%);margin-right:calc(-50vw + 50%);width:100vw}@media (min-width:52rem){.ad-bigstory.ad-flexible--programmatic .ad-slot{margin-left:auto;margin-right:auto;width:inherit}}.ad-bigstory.ad-bigstory--simple{transition:height .1s,background-color .1s;height:auto;background:rgba(0,0,0,0)}.ad-bigstory.ad-bigstory--simple.ad-wireframe{height:425px;background:#f4f4f4}.ad-bigstory .ad-buzz-thumbnail{border:1px solid rgba(0,0,0,.1);float:none;display:block;margin:0;overflow:hidden;width:100%}.ad-bigstory .ad-buzz-thumbnail img{display:block;width:100%}.ad-bigstory .ad-buzz-title h2{font-size:1.125rem;font-weight:600;margin-bottom:0}.ad-disclosure,.ad-disclosure--horizontal,.ad-disclosure-link,.ad-disclosure-text{display:flex}.ad-disclosure-link{display:flex;align-items:center;flex-shrink:0;text-decoration:none}.ad-disclosure-image{border-radius:3px;margin-right:.5rem;width:2rem}.ad-disclosure-text{flex-direction:column;font-size:.75rem;line-height:1.3}.ad-disclosure-text--orange{color:#f7ad19}.ad-disclosure-promo-text{color:#222}.ad-disclosure-name{font-size:.875rem;font-weight:600}.ad-disclosure--horizontal{align-items:center;float:none;padding:1rem}.ad-disclosure--horizontal .ad-disclosure-image{border:1px solid rgba(0,0,0,.1);margin-right:.25rem;order:1}.ad-disclosure--horizontal .ad-disclosure-text{flex-direction:column;font-size:.875rem;order:2}.ad-disclosure--horizontal .ad-disclosure-text span{display:inline-block;margin-right:.25rem}.ad-disclosure--horizontal .ad-disclosure-name{font-size:inherit}.ad-buzz-format,.ad-buzz-format article{display:flex}.ad-buzz-format a,.ad-buzz-format article a{text-decoration:none}.ad-buzz-format.ad-card{padding:1rem}.ad-buzz-thumbnail{border-right:1px solid rgba(0,0,0,.1);cursor:pointer}.ad-buzz-content,.ad-buzz-thumbnail{display:block;float:left;width:41.66667%}@media (min-width:52rem){.ad-buzz-content,.ad-buzz-thumbnail{width:33.33333%}}.ad-buzz-image,.ad__post-image{background-color:#e2e2e2;object-fit:cover;object-position:center center;height:100%;width:100%}.ad-buzz-content{padding:.5rem;width:58.33333%}@media (min-width:40rem){.ad-buzz-content{padding:1rem}}@media (min-width:52rem){.ad-buzz-content{width:66.66667%}}.ad-buzz-content--inner{padding-left:.25rem;padding-right:.25rem}.ad-buzz-title{color:#222;display:block;text-decoration:none}.ad-buzz-title h2{font-size:1rem;font-weight:600;margin:0;padding:.5rem 0}@media (min-width:40rem){.ad-buzz-title h2{font-size:1.375rem}}.ad-buzz-summary{color:#666;display:none;font-size:1rem;padding-bottom:.5rem}@media (min-width:40rem){.ad-buzz-summary{display:block}}.ad-bigstory .ad-buzz-format{position:relative;display:block}.ad-ex--wide{width:100%;min-width:970px;clear:both}@media (max-width:39.999rem){.bfp-ad-placeholder .ad-wireframe-programmatic{max-height:50px}}.ad-wireframe-programmatic{margin:0 auto;max-width:100%}.ad-ex--grid .ad-wireframe-programmatic,.ad-ex--rail .ad-wireframe-programmatic{width:300px;height:250px}@media (min-width:52rem){.ad-ex--grid .ad-wireframe-programmatic{width:970px}}.ad-story-video__inner{display:flex;align-items:flex-start;justify-content:space-between;padding:1rem}@media (max-width:39.999rem){.ad-story-video__inner{padding-right:4rem}}.ad-story-video__inner a{text-decoration:none}.ad-story-video__inner .ad-disclosure-image{min-width:40px;height:auto}.ad-story-video__inner .promo-text{font-weight:400;color:#222}.ad-story-video__inner .ad-disclosure-text{text-align:right;margin-right:.5rem;min-width:25%}@media (max-width:51rem){.ad-story-video__inner{display:block;align-items:normal}.ad-story-video__inner .ad-disclosure-text{flex-direction:row}.ad-story-video__inner .ad-disclosure-image{position:absolute;top:.5rem;right:.5rem}}.ad-story-video__title-cta{display:block;font-size:.875rem;color:#222;max-width:80%}.ad-story-video__title-cta:hover{color:#222}.ad-story-video__title-cta h2{font-size:1.125rem;font-weight:600}@media (min-width:40rem){.ad-story-video__title-cta h2{font-size:1.375rem}}.ad-story-video__footer{display:block;text-align:right}@media (min-width:40rem){.ad-story-video__text,.ad-story-video__text a{display:flex}}@media (max-width:39.999rem){.ad-story-video__text .ad-disclosure-text{display:inline-block;text-align:left}}.ad-bpage-story.ad-flexible--programmatic_responsive .ad__disclosure--ex{display:none}.ad-buzz-summary{margin-bottom:0}.ad-bpage-story.ad-card .ad-story-video__cta,.ad-bpage-story.ad-card .ad-story-video__inner,.ad-grid.ad-card .ad-story-video__cta,.ad-grid.ad-card .ad-story-video__inner{padding:1rem}.ad-bpage-story.ad-card .ad-story-video__title-cta,.ad-grid.ad-card .ad-story-video__title-cta{width:70%}.ad-bpage-story.ad-card .ad-disclosure-text,.ad-grid.ad-card .ad-disclosure-text{padding-right:.5rem}.ad-grid{-webkit-transition:width 10ms;-moz-transition:width 10ms;-ms-transition:width 10ms;-o-transition:width 10ms;transition:width 10ms}.ad-grid-thumbnail,.ad-grid-thumbnail img{display:block;width:100%;position:relative}.ad-grid .ad-buzz-title h2{font-size:.875rem}@media (min-width:40rem){.ad-grid .ad-buzz-title h2{font-size:1rem}}.ad-flexible.ad-awareness.ad-awareness--full-width,.ad-flexible.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-awareness.ad-awareness--full-width .awareness-inner,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}@media (min-width:52rem){.ad-awareness.ad-awareness--full-width .ad-awareness__content,.ad-awareness.ad-dest--bfnews.sticky.sticky--fixed .ad-awareness__content{padding-right:0}}.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{display:flex;margin:0 auto;max-width:71rem;min-height:90px;position:relative}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{display:flex;max-height:90px}}@media (min-width:52rem){.ad-flexible--awareness_card .awareness-inner,.ad-flexible--spotlight .awareness-inner{border-radius:3px}}.ad-flexible--awareness_card .awareness-inner{overflow:hidden;border:1px solid rgba(0,0,0,.1)}.ad-flexible--awareness_card .awareness-inner .ad-slot-media{flex-shrink:0;width:30%}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner .ad-slot-media{width:18%}}@media (min-width:52rem){.ad-flexible--awareness_card .awareness-inner .ad-slot-media{width:15%}}.ad-flexible--awareness_card .awareness-inner .caret{position:relative;width:15px}.ad-flexible--awareness_card .awareness-inner .caret>svg{height:15px;position:absolute;right:0}@media (min-width:40rem){.ad-flexible--awareness_card .awareness-inner .caret{display:none}}.ad-awareness-content{flex-direction:row;padding:1rem}@media (min-width:52rem){.ad-awareness-headline{display:flex;align-items:center}}.ad-awareness-dek{font-size:.875rem;line-height:1.3}@media (min-width:40rem){.ad-awareness-dek{font-size:1rem}}@media (min-width:52rem){.ad-awareness-dek{font-size:1.125rem;line-height:1.2}}.ad-awareness-cta{display:none}@media (min-width:40rem){.ad-awareness-cta{display:block;padding-top:.25rem}}@media (min-width:52rem){.ad-awareness-cta{text-align:center;margin-left:1.5rem;padding-top:0}}.ad-awareness-cta .ad-button{position:relative;margin:0 auto}.ad-awareness-cta .ad-button:hover{top:2px}.ad-awareness-card-body{display:block}@media (min-width:40rem){.ad-awareness-card-body{align-items:center;display:flex;flex-grow:1;flex-direction:row}}.ad-flexible--awareness_card .ad-disclosure,.ad-flexible--spotlight .ad-disclosure{flex-shrink:0;text-align:center}@media (min-width:40rem){.ad-flexible--awareness_card .ad-disclosure,.ad-flexible--spotlight .ad-disclosure{padding-left:1rem;margin-left:auto}}.ad-flexible--awareness_card .ad-advertiser-link,.ad-flexible--spotlight .ad-advertiser-link{display:inline-block;height:35px;text-align:center}.ad-flexible--awareness_card .ad-advertiser-link img,.ad-flexible--spotlight .ad-advertiser-link img{width:auto}@media (min-width:52rem){.ad-flexible--awareness_card .ad-advertiser-link,.ad-flexible--spotlight .ad-advertiser-link{height:40px}}.ad-awareness-disclaimer{display:block;font-size:.5rem;margin-top:1rem;position:relative;opacity:.7;z-index:1}.ad-awareness-disclaimer .icon{display:none;background-color:rgba(0,0,0,0);border:none;color:inherit;padding:0;margin:0}@media (min-width:40rem){.ad-awareness.sticky--fixed .ad-awareness-disclaimer{font-size:.7rem;margin:0 -.25rem;position:absolute;right:.5rem;top:40%}.ad-awareness.sticky--fixed .ad-awareness-disclaimer .icon{font-size:1rem;display:inline-block;position:static}.ad-awareness.sticky--fixed .ad-awareness-disclaimer span{display:none}.ad-awareness.sticky--fixed .ad-awareness-disclaimer.show-tooltip,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:active,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:hover{opacity:1}.ad-awareness.sticky--fixed .ad-awareness-disclaimer.show-tooltip span,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:active span,.ad-awareness.sticky--fixed .ad-awareness-disclaimer:hover span{display:block;position:absolute;top:0;left:0;width:25rem;transform-origin:top left;transform:translate(-25.5rem,-30%);background:#fff;padding:.25rem;color:#222;border-radius:3px;z-index:2;font-weight:600}}.ad-wireframe-image--big{padding-top:66.4%}.ad-wireframe-image--wide{padding-top:35.2%}.ad--centered,.ad-ex--wide{position:relative;left:50%;-webkit-transform:translateX(-50%);-moz-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%)}.scrollbar--overlay__1fh8lNs35S .ad--fullwidth{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}.scrollbar--10px__1NPZk0NN6Q .ad--fullwidth{width:calc(100vw - 10px);margin-left:calc(50% - 50vw + 5px);margin-right:calc(50% - 50vw + 5px)}.scrollbar--11px__8A_wakdOjq .ad--fullwidth{width:calc(100vw - 11px);margin-left:calc(50% - 50vw + 5.5px);margin-right:calc(50% - 50vw + 5.5px)}.scrollbar--12px__3xQNPEQaZR .ad--fullwidth{width:calc(100vw - 12px);margin-left:calc(50% - 50vw + 6px);margin-right:calc(50% - 50vw + 6px)}.scrollbar--13px__13nO1_ceqp .ad--fullwidth{width:calc(100vw - 13px);margin-left:calc(50% - 50vw + 6.5px);margin-right:calc(50% - 50vw + 6.5px)}.scrollbar--14px__1c3rmUcc-A .ad--fullwidth{width:calc(100vw - 14px);margin-left:calc(50% - 50vw + 7px);margin-right:calc(50% - 50vw + 7px)}.scrollbar--15px__11pvRecC4A .ad--fullwidth{width:calc(100vw - 15px);margin-left:calc(50% - 50vw + 7.5px);margin-right:calc(50% - 50vw + 7.5px)}.scrollbar--16px__HiTLBkWCbF .ad--fullwidth{width:calc(100vw - 16px);margin-left:calc(50% - 50vw + 8px);margin-right:calc(50% - 50vw + 8px)}.scrollbar--17px__UBAkRDWHzN .ad--fullwidth{width:calc(100vw - 17px);margin-left:calc(50% - 50vw + 8.5px);margin-right:calc(50% - 50vw + 8.5px)}@media (max-width:40rem){.ad--fullwidth,.ad-promo-inline.ad-flexible,.Ad .ad-awareness.ad-flexible{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}}.ad-button{display:inline-block;padding:.3125rem 1.5rem;border-radius:3px;font-family:inherit;white-space:nowrap;font-size:.875rem;line-height:1.25rem;text-decoration:none;text-align:center;cursor:pointer}.ad-button:hover{box-shadow:inset 0 0 0 99999px rgba(0,0,0,.2)}.spotlight-countdown{display:flex;flex-direction:row;text-align:center;justify-content:center;margin:0}@media (min-width:40rem){.spotlight-countdown{justify-content:flex-start}}.countdown-unit{color:#fff;border-radius:5px;display:inline-block;background-color:rgba(0,0,0,.7);border:1px solid rgba(0,0,0,.9);margin:0 .25rem;padding:.5rem;text-align:center;min-width:4rem}.countdown-unit:first-child{margin-left:0}.countdown-unit .digit,.countdown-unit .label{display:block}.countdown-unit .digit{font-size:1.375rem;font-weight:600;line-height:1.375rem;margin-bottom:.25rem}.countdown-unit .label{font-size:.875rem;font-weight:400;line-height:.875rem}@media (min-width:40rem) and (max-width:51.999rem){.countdown-unit{min-width:3.5rem}.countdown-unit .digit{font-size:1.125rem;line-height:1.125rem}}.spotlight-countdown--light .countdown-unit{color:#222;background-color:hsla(0,0%,100%,.8);border-color:hsla(0,0%,100%,.9)}:root .ad-flexible--spotlight .ad-slot-media-inner,_::-webkit-full-page-media,_:future{display:inline-block!important}.ad-flexible--spotlight{font-weight:400;width:100%}.ad-flexible--spotlight .ad__disclosure--ex{display:none}@media (min-width:40rem){.ad-flexible--spotlight{display:flex}}.ad-flexible--spotlight .ad-awareness-component .ad-disclosure-text{font-weight:400}.ad-flexible--spotlight .ad-format-clickable{display:none}.ad-flexible--spotlight .awareness-inner{width:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .ad-button{display:block;font-size:1rem;font-weight:600}.ad-flexible--spotlight .awareness-inner .ad-button{padding:0;line-height:48px;font-size:1.125rem;min-height:48px;height:48px;vertical-align:middle}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek{font-size:1.125rem;font-weight:600}.ad-flexible--spotlight .awareness-inner .ad-advertiser-link img{height:100%;width:auto}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .ad-slot-media{position:relative;width:100%;z-index:1}.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper{position:relative;padding-bottom:56.25%}@media (min-width:52rem){.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper{min-width:440px;max-height:250px}}.ad-flexible--spotlight .awareness-inner .ad-slot-media-embed-wrapper iframe{position:absolute;top:0;left:0;width:100%;height:100%}.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin:1rem 0 0}@media (max-width:39.999rem){.ad-flexible--spotlight .awareness-inner,.ad-flexible--spotlight .awareness-inner .ad-awareness-content,.ad-flexible--spotlight .awareness-inner .ad-slot-media{display:block}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .ad-awareness-cta{margin:0 auto}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body{padding:0 1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-headline,.ad-flexible--spotlight .awareness-inner .ad-disclosure{text-align:center}.ad-flexible--spotlight .awareness-inner .ad-disclosure{margin:1.5rem 0 0;justify-content:center}}@media (min-width:40rem){.ad-flexible--spotlight .awareness-inner{max-height:200px;max-width:800px}.ad-flexible--spotlight .awareness-inner .ad-slot-media{flex-shrink:0;height:100%;width:auto;max-width:45%}.ad-flexible--spotlight .awareness-inner .ad-slot-media-inner{border-radius:3px 0 0 3px;overflow:hidden}.ad-flexible--spotlight .awareness-inner .ad-disclosure{flex-direction:column;text-align:left}.ad-flexible--spotlight .awareness-inner .ad-disclosure-text{margin:0 0 .25rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-disclaimer{margin-left:-.5rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-content{background-position:0 0;background-repeat:no-repeat;background-size:cover;border-radius:0 3px 3px 0;overflow:hidden;flex-direction:column;padding:0;flex-basis:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta{margin-left:0}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body{padding:1rem 2rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body.has-countdown{padding:.5rem 1rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-content:before{content:"";display:block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:0;transition:opacity .3s}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .ad-awareness-headline{display:flex;flex-direction:column;align-items:flex-start;flex-basis:100%}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:.5rem}.ad-flexible--spotlight .awareness-inner .ad-button{display:inline-block;padding:0 1.5rem;max-width:20ex}}@media (min-width:52rem){.ad-flexible--spotlight .awareness-inner{border-radius:3px;max-width:71rem;max-height:none}}@media (min-width:56rem){.ad-flexible--spotlight .awareness-inner .ad-awareness-content{padding:1rem 2rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,.ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body{padding:0}.ad-flexible--spotlight .awareness-inner .ad-awareness-card-body ::-ms-backdrop,.ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body ::-ms-backdrop,:root .ad-flexible--spotlight .awareness-inner .ad-awareness-card-body,:root .ad-flexible--spotlight .awareness-inner .has-countdown.ad-awareness-card-body{margin-top:-2rem}.ad-flexible--spotlight .awareness-inner .ad-slot-media{max-width:35%}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek{box-decoration-break:clone;align-self:stretch}.ad-flexible--spotlight .awareness-inner .ad-awareness-dek span{display:inline;border-color:rgba(0,0,0,0);border-style:solid;border-width:.25rem 0;line-height:1.5rem}.ad-flexible--spotlight .awareness-inner .ad-awareness-cta,.ad-flexible--spotlight .awareness-inner .spotlight-countdown{margin-top:1rem;margin-left:-.5rem}}@media (min-width:64rem){.ad-flexible--spotlight .awareness-inner .ad-button{max-width:none}}@media (min-width:40rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-awareness-component .ad-disclosure-text{font-size:1rem;margin:0 0 1rem}}@media (min-width:56rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-advertiser-link{height:50px}}@media (min-width:64rem){.ad-flexible--spotlight:not(.sticky--fixed) .ad-advertiser-link{height:60px}}@media (min-width:40rem){.ad-flexible--spotlight.ad-flexible--media-embed .ad-slot-media{max-width:none}}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot,.ad-flexible--spotlight.ad-flexible--media-video .ad-slot [id^=google_ads_iframe],.ad-flexible--spotlight.ad-flexible--media-video:not(.ad--loaded) .ad-slot,.ad-flexible--spotlight.ad-flexible--media-video:not(.ad--loaded) .ad-slot [id^=google_ads_iframe]{overflow:hidden;opacity:1;background-color:rgba(0,0,0,0)}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ratio--16\:9{display:block;width:auto;height:100%}@media (max-width:39.999rem){.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ratio--16\:9{width:100%;height:auto}}@media (min-width:40rem){.ad-flexible--spotlight.ad-flexible--media-video.ad-awareness:not(.sticky--fixed) .awareness-inner{height:250px}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot-media{flex-shrink:0;display:flex;width:auto;height:100%;max-width:none}.ad-flexible--spotlight.ad-flexible--media-video .ad-slot-media-inner{position:relative;width:auto;display:flex;flex-grow:1}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1 .ad-slot-media-inner{min-width:90px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1.sticky--show .ad-slot-media-inner{width:90px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3 .ad-slot-media-inner{min-width:120px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3.sticky--show .ad-slot-media-inner{width:120px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9 .ad-slot-media-inner{min-width:160px}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9.sticky--show .ad-slot-media-inner{width:160px}}@media (min-width:40rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed{overflow:hidden}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-format-clickable{display:block;position:absolute;top:0;left:0;width:calc(100% - 3rem);height:100%;cursor:pointer;z-index:20}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-format-clickable span{visibility:hidden}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none;max-height:90px}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner{max-width:80rem}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-slot-media{max-width:20%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-content,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-slot-media-inner{border-radius:0}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-cta{display:none}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-disclosure{padding-right:2rem}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed.ad-flexible--media-video .awareness-inner .ad-slot-media{max-width:none}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-content{align-items:stretch;height:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body{height:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-headline{flex-direction:row;width:100%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-dek,.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .spotlight-countdown{align-self:center}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-dek{padding-right:1rem;max-width:60%}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .spotlight-countdown{margin:.5rem 0}.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-card-body.has-countdown .ad-awareness-cta{display:none}}@media (min-width:40rem) and (max-width:51.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-advertiser-link{height:28px}}@media (min-width:40rem) and (max-width:55.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-card-body.has-countdown .ad-awareness-dek{font-size:.875rem}}@media (min-width:40rem) and (max-width:63.999rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .awareness-inner .ad-awareness-card-body.has-countdown .countdown-unit{padding:.5rem .25rem;min-width:3rem}}@media (min-width:64rem){.ad-awareness.ad-flexible--spotlight.sticky.sticky--fixed .ad-awareness-content{padding-left:1rem;padding-right:1rem}}.ad-promo-inline .ad-awareness-content:empty{display:none}.ad-flexible--spotlight.ad-promo-inline .ad-slot-media-inner{width:100%;height:100%}.ad-flexible--spotlight.ad-promo-inline .awareness-inner{max-height:none;min-height:250px}@media (min-width:40rem){.ad-flexible--spotlight.ad-promo-inline .awareness-inner{display:block}.ad-flexible--spotlight.ad-promo-inline .awareness-inner .ad-awareness-card-body{padding:1rem}.ad-flexible--spotlight.ad-promo-inline .awareness-inner .ad-slot-media{display:block;max-width:none;width:100%;height:auto}.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-1\:1.ad-promo-inline .ratio--1\:1,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-4\:3.ad-promo-inline .ratio--4\:3,.ad-flexible--spotlight.ad-flexible--media-video.ad-flexible--aspect-16\:9.ad-promo-inline .ratio--16\:9{display:block;width:100%;height:auto}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--media-video,.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{height:50vh}.ad-spotlight--jumbo.ad-awareness.ad-flexible--media-video.ad-flexible--spotlight .awareness-inner{height:auto}.ad-spotlight--jumbo.ad-awareness .awareness-inner{max-width:none}.ad-spotlight--jumbo.ad-awareness .awareness-inner .ad-slot-media{height:100%;max-width:60%}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{max-height:360px}}@media (min-height:500px) and (min-width:72rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--spotlight{max-height:460px}}@media (min-height:500px) and (min-width:64rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:300px}}@media (min-height:500px) and (min-width:72rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:390px}}@media (min-height:500px) and (min-width:84rem){.ad-spotlight--jumbo.ad-awareness.ad-flexible--aspect-16\:9{max-height:460px}}.ad-promo-inline{margin-bottom:1.5rem;clear:both;background:#f4f4f4}.ad-promo-inline.ad-flexible--bfp_promo{background-color:rgba(0,0,0,0)}@media (max-width:39.999rem){.ad-promo-inline.ad-flexible{max-width:100vw;padding-left:0;padding-right:0;border-radius:0;border-left:none;border-right:none}.ad-promo-inline .awareness-inner{border-left:none;border-right:none;border-radius:0;box-shadow:none}.ad-promo-inline .ad-slot{min-width:100%}}@media (min-width:40rem){.ad-promo-inline{background:rgba(0,0,0,0)}}@media (min-width:52rem){.ad-promo-inline.ad-flexible--programmatic{padding-top:0}}.ad-promo-inline.ad-flexible.ad-flexible--spotlight{padding:0;background:rgba(0,0,0,0)}.ad-inline .ad-wireframe-wrapper[data-wireframe-width="728"][data-wireframe-height="90"]{min-height:250px}.ad-inline .ad-wireframe-wrapper[data-wireframe-width="728"][data-wireframe-height="90"] .ad-promo-inline:not(.ad--loaded) .ad-slot{height:250px}@media (min-width:40rem){.Ad .ad-awareness{padding-left:1rem;padding-right:1rem}}.Ad .ad-flexible--spotlight{font-weight:400}.Ad .ad-awareness.ad--rendered,.Ad .ad-awareness.ad--rendered+.sticky-filler{margin-top:0;margin-bottom:.5rem}@media (min-width:52rem){.Ad .ad-awareness.ad--rendered,.Ad .ad-awareness.ad--rendered+.sticky-filler{margin-bottom:0}}@media (min-width:40rem){.Ad .ad-awareness.ad--rendered.ad-awareness--full-width.sticky--show,.Ad .ad-awareness.ad--rendered.ad-awareness--full-width.sticky--show+.sticky-filler,.Ad .ad-awareness.ad--rendered.sticky--fixed.sticky--show,.Ad .ad-awareness.ad--rendered.sticky--fixed.sticky--show+.sticky-filler{margin:0}.Ad .ad-awareness.ad--rendered.sticky--fixed{position:fixed}.Ad .ad-awareness.ad--rendered.ad-flexible--programmatic{margin-top:0}}.Ad .ad-bpage-story{margin-bottom:2rem}.Ad .ad-bpage-story.ad-flexible--programmatic{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}.Ad .ad-wireframe-wrapper--inline{position:relative}@media (min-width:40rem){.Ad .ad-wireframe-wrapper--inline{left:50%;transform:translateX(-50%)}}.Ad .ad-advertise-link{text-decoration:none}.Ad .ad-wireframe-image{background:#f4f4f4}.Ad .ad-grid-thumbnail,.Ad .ad__wireframe-container{border-radius:4px;overflow:hidden}.Ad .ad-grid-thumbnail+.ad-buzz-title h2,.Ad .ad-grid-thumbnail+.ad-buzz-title span,.Ad .ad__wireframe-container+.ad-buzz-title h2,.Ad .ad__wireframe-container+.ad-buzz-title span{font-size:.875rem;line-height:1.21;display:block;font-weight:600}@media (min-width:52rem){.Ad .ad-grid-thumbnail+.ad-buzz-title h2,.Ad .ad-grid-thumbnail+.ad-buzz-title span,.Ad .ad__wireframe-container+.ad-buzz-title h2,.Ad .ad__wireframe-container+.ad-buzz-title span{font-size:1.125rem;line-height:1.2}html[lang=ja] main .Ad .ad-grid-thumbnail+.ad-buzz-title h2,html[lang=ja] main .Ad .ad-grid-thumbnail+.ad-buzz-title span,html[lang=ja] main .Ad .ad__wireframe-container+.ad-buzz-title h2,html[lang=ja] main .Ad .ad__wireframe-container+.ad-buzz-title span{font-size:1rem;line-height:1.5}}@media (min-width:40rem){.adJapanChumbox__3Yg-CcTByD{margin:auto;max-width:1132px;padding:0 16px 16px}}.adJapanLinks__2Wk9-s-s5x{margin-bottom:2rem}.footerCommunity__1zHyaU8rAw{border:3px solid #007c7c;padding:1.5rem 1rem;margin-bottom:2rem;border-radius:3px}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw{text-align:center}}.footerCommunity__1zHyaU8rAw .header__3DndYskf7D{margin-bottom:.5rem;font-weight:800;font-size:40px;line-height:1}.footerCommunity__1zHyaU8rAw .text__3jWn18jAta{margin-bottom:.5rem;line-height:1.5}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .text__3jWn18jAta{margin-bottom:1.5rem}}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .secondRow__1nOhmDG3yr{display:inline-block}}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:.5rem .875rem;font-size:1.125rem;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;background-color:#007c7c;color:#fff;border:1px solid rgba(0,0,0,0);transition:background-color .1s ease 0s;width:100%}@media (min-width:52rem){.footerCommunity__1zHyaU8rAw .button__TmEknui0kN{width:auto}}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN:hover{background-color:#001616;transition:background-color .15s ease 0s}.footerCommunity__1zHyaU8rAw .button__TmEknui0kN:active{background-color:#000}.label__3gtOdKh6xR{font-size:1.125rem;line-height:1.2;cursor:pointer;display:block;position:relative;padding-left:1.5rem}html[lang=ja] main .label__3gtOdKh6xR{font-size:1rem;line-height:1.2}.label__3gtOdKh6xR:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:.75rem;height:.75rem;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #d7d7d7;border-radius:3px}.checkbox__1hupQvVcV0{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__1hupQvVcV0:disabled+.label__3gtOdKh6xR{opacity:.3}.checkbox__1hupQvVcV0:checked+.label__3gtOdKh6xR:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.5rem}.checkbox__1hupQvVcV0:focus+.label__3gtOdKh6xR:before{box-shadow:0 0 0 2px #7a9ff3}.form__16pquGAWkg{margin-top:1rem}.fieldset__10rchbRxpA{border:0;margin:0;padding:0}.legend__XkMDgfhD_7{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.submitBox___Bw7C8Xeij{display:flex;margin-top:1rem;position:relative;flex-wrap:wrap}.label__3_XnpS6vTD{position:absolute;color:#757575;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid rgba(0,0,0,0);transition:transform .15s ease-out,color .15s ease-out}@media (-ms-high-contrast:none){.label__3_XnpS6vTD{transform:translate(-.75rem,-80%);font-size:14px;color:inherit;left:0}}.input__2Df9koY-l3{flex-grow:3;font-family:inherit;background:#fff;font-size:1rem;line-height:1.5rem;padding:.5rem .75rem;border:1px solid #d7d7d7;border-radius:3px;margin:0 0 .5rem;flex-basis:100%}@media (min-width:52rem){.input__2Df9koY-l3{flex-basis:0}}.input__2Df9koY-l3::placeholder{color:rgba(0,0,0,0)}.input__2Df9koY-l3:-ms-input-placeholder{color:rgba(0,0,0,0)!important}.input__2Df9koY-l3:not(:placeholder-shown)+label{transform:translate(-.75rem,-80%);font-size:14px;color:inherit}.button__3YKvmqlaCA{flex-grow:1;border:1px solid #fff;background:none;-webkit-appearance:none;padding:.5rem 1rem;margin-bottom:.5rem;margin-left:0;border-radius:3px;box-sizing:border-box;color:#fff;cursor:pointer;display:block;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem;transition:background-color .1s ease 0s;font-weight:700}@media (min-width:52rem){.button__3YKvmqlaCA{margin-left:.25rem}}.error__Z-JHwpfKJf,.success__2dICwRGsNi{font-weight:700}.loading__3WFS6Ne9pK{opacity:.6}.checkmarkIcon__3AvmVRVqBd{height:1rem;fill:#fff;width:1rem}.spinner__1hr0WyUkd5{position:absolute;border-radius:50%;width:40px;height:40px;top:50%;left:50%;margin:-20px 0 0 -20px;z-index:9999;animation:loader1__rnn1dpuL62 1s linear infinite}@keyframes loader1__rnn1dpuL62{0%{transform:rotate(20deg)}to{transform:rotate(380deg)}}@keyframes loader2__1z7AvurqkF{0%{transform:scale(0)}to{transform:scale(1)}}.spinner__1hr0WyUkd5 span{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.spinner__1hr0WyUkd5:after,.spinner__1hr0WyUkd5:before{position:absolute;content:" ";width:80%;height:80%;background-color:#fff;top:5%;left:0;border-radius:50%}.spinner__1hr0WyUkd5:before{left:-6%;animation:loader2__1z7AvurqkF 1s ease-in-out infinite alternate;transform-origin:10% 50%}.spinner__1hr0WyUkd5:after{left:auto;right:-6%;animation:loader2__1z7AvurqkF 1s ease-in-out 1s infinite alternate;transform:scale(0);transform-origin:90% 50%}.container__1c1IOFaqtw{position:relative;padding:1rem 1.5rem;border-radius:3px}.title__2ek57mlBUO{font-size:1.625rem;line-height:1.2;font-weight:700;margin-bottom:.5rem}html[lang=ja] main .title__2ek57mlBUO{font-size:1.5rem;line-height:1.2}.text__x5HVulrvof{font-size:1.125rem;line-height:1.2;margin-bottom:1rem}html[lang=ja] main .text__x5HVulrvof{font-size:1rem;line-height:1.2}.title__39k5sf58no{font-size:1.125rem;line-height:1.2;margin:0 0 1rem;font-weight:700;width:100%}html[lang=ja] main .title__39k5sf58no{font-size:1rem;line-height:1.2}@media (min-width:52rem){.title__39k5sf58no{font-size:1.375rem;line-height:1.27}html[lang=ja] main .title__39k5sf58no{font-size:1.25rem;line-height:1.27}}@media (min-width:64rem){.title__39k5sf58no{width:75%}}.container__3mJ1rcZaea{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/newsletter-pattern.19d345113652155b8ac91517fcbd191c.png);background-color:#e32;color:#fff;margin-bottom:2rem}.container__3mJ1rcZaea .logo__2N5aw-HaRq{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quizzes-logo.4243a8e776b2c992cdf8438f8e37e508.png);background-repeat:no-repeat;background-size:120px 50px;height:50px;width:160px}.container__3mJ1rcZaea .title__3b5Kcx4fkQ{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.container__3mJ1rcZaea .description__9qj86GlcTG{line-height:1.5;margin-top:.5rem}.container__3mJ1rcZaea .button__22sSCUvP9W{background:#000;margin-left:0;border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.container__3mJ1rcZaea .button__22sSCUvP9W{margin-left:1rem}}.container__3mJ1rcZaea .submitBox__3Wu4b9RvPe{display:flex;flex-direction:column}@media (min-width:52rem){.container__3mJ1rcZaea .submitBox__3Wu4b9RvPe{flex-direction:row}}.caret__BbAkeREjW5{width:.5rem;height:.5rem;margin-left:.25rem}.caret__BbAkeREjW5,.comma__3GSv9Y6V7O{margin-right:.25rem}.breadcrumbItem__3iHtMjln58{list-style:none;display:inline-block}.timestamp__12oPwMqFR8{font-size:.875rem}.headlineByline__1xvw0GX5iL{text-decoration:none;font-size:.875rem;color:#222;margin-right:2rem;display:inline-block}.headlineByline__1xvw0GX5iL:hover .bylineName__8t-CbLgGCD{color:#0f65ef}@media (max-width:40rem){.headlineByline__1xvw0GX5iL.twoAuthors__37jqERqOI3{margin-right:.25rem}}.bylineContainer__1SFDfwq6X5{display:inline-flex;align-items:center}.avatar__18myM8WuAj{border-radius:50%;height:40px;margin-right:.5rem;width:40px;overflow:hidden}@media (min-width:40rem){.avatar__18myM8WuAj{height:56px;width:56px}}.avatar__18myM8WuAj img,.avatar__18myM8WuAj picture{display:block;width:100%;height:100%}.avatar__18myM8WuAj.isAdvertiser__39PV0CmC-7{border-radius:4px;border:1px solid #d7d7d7}.text__16CLiglqRL{font-size:.875rem;text-decoration:none}.text__16CLiglqRL.isAdvertiser__39PV0CmC-7{display:none}@media (min-width:40rem){.desktopHide__2c3cZqbyoR{display:none}}@media (max-width:40rem){.desktopShow__1pfulPcufi{display:none}}.badge__2tlCuv1qM-{display:inline-block;margin-right:.5rem}.badge__2tlCuv1qM- img,.badge__2tlCuv1qM- picture,.badge__2tlCuv1qM- svg{display:block;height:30px;width:30px}@media (min-width:40rem){.badge__2tlCuv1qM- img,.badge__2tlCuv1qM- picture,.badge__2tlCuv1qM- svg{height:40px;width:40px}}.badgeList__1LHbcTIq2k{display:flex}.trendingBadgeContainer__3r-n48OwI8{display:inline-flex;align-items:center}.trendingText__1g3uLDFb1X{display:inline-flex;flex-direction:column}.trendingTitle__KRorkcBZDd{font-size:.75rem}@media (min-width:40rem){.trendingTitle__KRorkcBZDd{font-size:.875rem}}.trendingViewCount__1nq1Blc-zw{color:#e32}.trendingLink__3xW9coA7mb{display:inline-block}.headline__2V6cg6yv2y{margin:.5rem 0 1.5rem}@media (min-width:40rem){.headline__2V6cg6yv2y{margin:1.5rem 0}}.container__1xi1X6X2jr{margin-bottom:1rem}.title__2wEoS_Bqpp{margin-bottom:.5rem}@media (min-width:40rem){.hideTitle__2G2Wc7pA_Y{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}}.description__1bzzdbaw8q{font-size:1.125rem;line-height:1.2}html[lang=ja] main .description__1bzzdbaw8q{font-size:1rem;font-size:1.125rem;line-height:1.2}html[lang=ja] main html[lang=ja] main .description__1bzzdbaw8q{font-size:1rem;line-height:1.2}.description__1bzzdbaw8q a{color:#0f65ef;text-decoration:none}.description__1bzzdbaw8q a:hover{color:#093c8f;transition:color .15s ease 0s}.paidPostBreadcrumb__3U8rya1XzZ{background-color:#f4f4f4;font-size:.875rem;font-weight:700;padding:.25rem 1rem;border-radius:12px;margin-right:.5rem}.breadcrumbContainer__3MGXwlDSV3,.breadcrumbContainer__3MGXwlDSV3 ol{display:inline-block}@media (max-width:40rem){.breadcrumbContainer__3MGXwlDSV3{display:block}}.middot__3mWhYWQBOt{margin:0 .5rem}@media (max-width:40rem){.middot__3mWhYWQBOt{display:none}}.disclaimer__1AWcZ4UCcC{background-color:#fdebe9;padding:1rem;font-size:.875rem}.sharedResultHeadline__ASF3LX_Ob_{display:flex;font-size:14px;line-height:20px;align-items:center;margin-bottom:21px}.sharedResultTitle__2LHBgGnC-T{flex:1;font-size:14px;line-height:20px}.sharedResultTitle__2LHBgGnC-T a{font-weight:700}.newsFooter__3OzkRh0eVK{margin-bottom:2rem;background-color:#f4f4f4}.newsFooterText__3ozi7kZ6VA{color:#666;font-size:.875rem;line-height:1.3}.newsFooterText__3ozi7kZ6VA>a{color:#0f65ef;text-decoration:none}.userBio__3uoJ0WJjCK{padding:1rem 1rem 0}.newsFooterConfidentialTip__2qRtwBM_uH{padding:1rem;margin-bottom:1.5rem}.container__3IbfSEcdwH{background:linear-gradient(270deg,#e32,#e40c78);color:#fff}.checkbox__11-iiikvxZ{margin-bottom:1rem}.form__5mbJlQ2iPt button:hover{background-color:#fff;color:#222}.submitBox__32lvHJ80SZ{margin-top:2rem}.container__3pMTf_O2I3{color:#222;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border:1px solid rgba(0,0,0,.1)}.container__3pMTf_O2I3:after,.container__3pMTf_O2I3:before{content:" ";top:0;left:0;right:0;bottom:0;position:absolute;z-index:-2}.container__3pMTf_O2I3:before{background-color:#fcd70f;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/yellow-background.0f6f3c54a5c863574ccbe9324264c2a2.png);background-position:right 0;background-repeat:no-repeat;background-size:100% auto;z-index:-1}@media (min-width:370px){.container__3pMTf_O2I3:before{background-position:right -10px}}@media (min-width:430px){.container__3pMTf_O2I3:before{background-position:right -20px}}@media (min-width:470px){.container__3pMTf_O2I3:before{background-position:right -30px}}@media (min-width:620px){.container__3pMTf_O2I3:before{background-position:right -20px}}@media (min-width:620px){.container__3pMTf_O2I3 .description__z-2UCI8K6e{max-width:85%}}@media (min-width:620px){.container__3pMTf_O2I3 .form__3gwGXYz7xq{margin-top:40px}}.container__3pMTf_O2I3 .form__3gwGXYz7xq button{background-color:#e32;border:none}.container__3pMTf_O2I3 .form__3gwGXYz7xq button:hover{background-color:#9e180c}.container__3pMTf_O2I3 .logo__RctS6jT6Qm{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/shopping-logo.36e1636a9997916734493f24da8e0f3c.png);background-repeat:no-repeat;background-size:160px 40px;height:40px;margin-bottom:15%;width:160px}@media (min-width:620px){.container__3pMTf_O2I3 .logo__RctS6jT6Qm{margin-bottom:10px}}.container__3pMTf_O2I3 .success__1HuwpWTrci{background:#fcd70f;margin:-16px -24px;padding:24px}.container__3pMTf_O2I3 .text__TA7mm2jPB_{background-color:red}.container__3pMTf_O2I3 .title__FH1MHzJVdI{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.container__DucLZy4CZL{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/newsletter-pattern.19d345113652155b8ac91517fcbd191c.png);background-size:30rem;background-color:#0f65ef;color:#fff;margin-bottom:2rem}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4{background:#fe0;color:#000;font-weight:600}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7{border-color:rgba(0,0,0,0);background:#18c1ee;color:#fff}.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7:focus,.container__DucLZy4CZL.newsletter-tasty__8GLhzFgaF4 .newsletter-tasty-submit__2mchNMhvX7:hover{background:#0b7895}.text__3MQGtwpdIc{font-weight:700}.link__21amnfM_Z6{text-decoration:none;color:#222}.link__21amnfM_Z6:hover{color:#0f65ef}.img__16muQLf5Hn{width:100%;background-color:#e2e2e2}.img__16muQLf5Hn picture{display:block;width:100%;height:100%}.img__16muQLf5Hn img{height:100%;width:100%;object-fit:cover}.package__fTJxTFE5iG{width:100%;font-family:Proxima Nova,Helvetica,Arial,sans-serif;box-sizing:border-box;padding-bottom:.5rem;margin-bottom:1rem}.wrap__2G-4rPhxsp{padding:1rem;border:1px solid rgba(0,0,0,.2);background-color:#fff}.header__3fFtmgBLyb{border:1px solid rgba(0,0,0,0);padding:1rem;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;flex-direction:column}@media (min-width:40rem){.header__3fFtmgBLyb{flex-direction:row}}.content__2sbl3fHGob{display:flex;flex-direction:column;justify-content:space-between}@media (min-width:40rem){.content__2sbl3fHGob{flex-direction:row}}.splash__M5LzZ_56sW{width:100%}@media (min-width:40rem){.splash__M5LzZ_56sW{width:calc(49% - 1px)}}.splash__M5LzZ_56sW .img__16muQLf5Hn{height:8rem}.splash__M5LzZ_56sW .text__3MQGtwpdIc{font-size:1.625rem;padding-top:.5rem}.splash__M5LzZ_56sW .dek__2gceJ1OSOo{font-size:.875rem;color:#757575;padding-top:.5rem;padding-bottom:1rem}@media (min-width:40rem){.splash__M5LzZ_56sW .dek__2gceJ1OSOo{padding-top:.25rem}}.items__27QTcVhFED{width:100%;padding-top:1.5rem}@media (min-width:40rem){.items__27QTcVhFED{width:calc(49% - 1px);padding-top:0}}.item__IodWxaSlNV{margin-top:.25rem;padding-bottom:.5rem}@media (min-width:40rem){.item__IodWxaSlNV{margin-top:0;padding-bottom:0}}.item__IodWxaSlNV .text__3MQGtwpdIc{width:62%;padding-right:1rem;padding-left:1rem;font-size:.875rem}.item__IodWxaSlNV .img__16muQLf5Hn{width:38%;min-height:70px;max-height:110px}.item__IodWxaSlNV .link__21amnfM_Z6{display:flex;flex-direction:row;margin-bottom:.5rem}.headerWrap__bHd3yG_xJE{align-items:center;display:flex;flex-flow:column}@media (min-width:40rem){.headerWrap__bHd3yG_xJE{align-items:flex-start}}.headerText__2TsVG9FbUZ{color:#fff;font-weight:700;text-align:center;line-height:42px;font-size:26px;margin-bottom:.25rem}@media (min-width:40rem){.headerText__2TsVG9FbUZ{text-align:left;line-height:52px;font-size:42px}}.fireIcon__3w-h_kwQpL{margin-bottom:-7px;margin-right:-4px;margin-left:-9px;height:38px}@media (min-width:40rem){.fireIcon__3w-h_kwQpL{height:53px;margin-bottom:-12px;margin-right:0}}.packageSubTitle__32aGYxFtm1{font-size:.875rem;padding-bottom:.25rem}.ctaTopWrap__1CVyDzWJxt{display:none}@media (min-width:40rem){.ctaTopWrap__1CVyDzWJxt{display:flex;justify-content:end}}.rightArrow__4p4xsr8WmP{vertical-align:middle;width:14px;height:14px}.ctaTop__1MZPHIyqia{text-shadow:0 1px 2px rgba(0,0,0,.15);white-space:nowrap}.ctaBottom__2PSLviuAI1,.ctaTop__1MZPHIyqia{align-items:center;font-weight:700;display:flex;text-decoration:none}.ctaBottom__2PSLviuAI1{justify-content:center;font-size:1.125rem;width:100%;padding:.5rem .875rem;line-height:1.5rem;border:1px solid rgba(0,0,0,.2);cursor:pointer;border-radius:3px;user-select:none;background-color:#fff;white-space:normal;text-align:center}@media (min-width:40rem){.ctaBottom__2PSLviuAI1{display:none}}.yellow__2oAnAfQtpz{border-top:none;background-color:#ffee02;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.yellow__2oAnAfQtpz .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.yellow__2oAnAfQtpz .ctaTop__1MZPHIyqia,.yellow__2oAnAfQtpz .headerText__2TsVG9FbUZ,.yellow__2oAnAfQtpz .packageSubTitle__32aGYxFtm1{color:#222}.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1{color:#222;border-color:#222}.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1:active,.yellow__2oAnAfQtpz .ctaBottom__2PSLviuAI1:hover{background-color:#ffee02;color:#fff;background:#222}.yellow__2oAnAfQtpz .countdownNum__1oxf-WJGb6,.yellow__2oAnAfQtpz .countdownUnit__2mB5w4oBO2{color:#222}.yellow__2oAnAfQtpz .countdownItem__3-RIEYiuQa:before{background:#fff;opacity:.5;border-color:hsla(0,0%,100%,.2)}.blue__1-4arfFtlb{border-top:none;background-color:#1581ff;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.blue__1-4arfFtlb .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.blue__1-4arfFtlb .ctaTop__1MZPHIyqia{color:#fff}.blue__1-4arfFtlb .rightArrow__4p4xsr8WmP{fill:#fff}.blue__1-4arfFtlb .headerText__2TsVG9FbUZ,.blue__1-4arfFtlb .packageSubTitle__32aGYxFtm1{color:#fff}.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1{border-color:#1581ff;color:#1581ff}.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1:active,.blue__1-4arfFtlb .ctaBottom__2PSLviuAI1:hover{background-color:#1581ff;color:#fff}.blue__1-4arfFtlb .countdownNum__1oxf-WJGb6,.blue__1-4arfFtlb .countdownUnit__2mB5w4oBO2{color:#fff}.blue__1-4arfFtlb .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.green__2lr2ylOD4L{border-top:none;background-color:#69af14;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.green__2lr2ylOD4L .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.green__2lr2ylOD4L .ctaTop__1MZPHIyqia{color:#fff}.green__2lr2ylOD4L .rightArrow__4p4xsr8WmP{fill:#fff}.green__2lr2ylOD4L .headerText__2TsVG9FbUZ,.green__2lr2ylOD4L .packageSubTitle__32aGYxFtm1{color:#fff}.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1{border-color:#69af14;color:#69af14}.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1:active,.green__2lr2ylOD4L .ctaBottom__2PSLviuAI1:hover{background-color:#69af14;color:#fff}.green__2lr2ylOD4L .countdownNum__1oxf-WJGb6,.green__2lr2ylOD4L .countdownUnit__2mB5w4oBO2{color:#fff}.green__2lr2ylOD4L .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.pink__32LYL_sA-p{border-top:none;background-color:#f43192;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.pink__32LYL_sA-p .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.pink__32LYL_sA-p .ctaTop__1MZPHIyqia{color:#fff}.pink__32LYL_sA-p .rightArrow__4p4xsr8WmP{fill:#fff}.pink__32LYL_sA-p .headerText__2TsVG9FbUZ,.pink__32LYL_sA-p .packageSubTitle__32aGYxFtm1{color:#fff}.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1{border-color:#f43192;color:#f43192}.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1:active,.pink__32LYL_sA-p .ctaBottom__2PSLviuAI1:hover{background-color:#f43192;color:#fff}.pink__32LYL_sA-p .countdownNum__1oxf-WJGb6,.pink__32LYL_sA-p .countdownUnit__2mB5w4oBO2{color:#fff}.pink__32LYL_sA-p .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.black__OPJLf-XRz8{border-top:none;background-color:#222;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.black__OPJLf-XRz8 .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.black__OPJLf-XRz8 .ctaTop__1MZPHIyqia{color:#fff}.black__OPJLf-XRz8 .rightArrow__4p4xsr8WmP{fill:#fff}.black__OPJLf-XRz8 .headerText__2TsVG9FbUZ,.black__OPJLf-XRz8 .packageSubTitle__32aGYxFtm1{color:#fff}.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1{border-color:#222;color:#222}.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1:active,.black__OPJLf-XRz8 .ctaBottom__2PSLviuAI1:hover{background-color:#222;color:#fff}.black__OPJLf-XRz8 .countdownNum__1oxf-WJGb6,.black__OPJLf-XRz8 .countdownUnit__2mB5w4oBO2{color:#fff}.black__OPJLf-XRz8 .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.orange__3JvPXiLYZO{border-top:none;background-color:#f99126;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/themed-backgroud.afb951651a22cb5751ab2c28da03ab45.png)}.orange__3JvPXiLYZO .splash__M5LzZ_56sW .img__16muQLf5Hn{height:180px}.orange__3JvPXiLYZO .ctaTop__1MZPHIyqia{color:#fff}.orange__3JvPXiLYZO .rightArrow__4p4xsr8WmP{fill:#fff}.orange__3JvPXiLYZO .headerText__2TsVG9FbUZ,.orange__3JvPXiLYZO .packageSubTitle__32aGYxFtm1{color:#fff}.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1{border-color:#f99126;color:#f99126}.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1:active,.orange__3JvPXiLYZO .ctaBottom__2PSLviuAI1:hover{background-color:#f99126;color:#fff}.orange__3JvPXiLYZO .countdownNum__1oxf-WJGb6,.orange__3JvPXiLYZO .countdownUnit__2mB5w4oBO2{color:#fff}.orange__3JvPXiLYZO .countdownItem__3-RIEYiuQa:before{background:#222;opacity:.2;border-color:rgba(0,0,0,.2)}.default__yn_LCxrffG{border:1px solid rgba(0,0,0,.2);border-top:8px solid #e40c78;border-radius:3px;padding-bottom:1rem}.default__yn_LCxrffG .headerText__2TsVG9FbUZ{color:#e40c78;font-size:1.125rem;line-height:1.3rem}.default__yn_LCxrffG .wrap__2G-4rPhxsp{border:none;padding:0}@media (min-width:40rem){.default__yn_LCxrffG .wrap__2G-4rPhxsp{padding-left:1rem;padding-right:1rem}}@media (min-width:40rem){.default__yn_LCxrffG .content__2sbl3fHGob{flex-direction:column}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW{width:100%;margin-bottom:1rem}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .img__16muQLf5Hn{width:calc(50% - .5rem)}}.default__yn_LCxrffG .splash__M5LzZ_56sW .text__3MQGtwpdIc{font-size:1.375rem;padding-top:1rem}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .text__3MQGtwpdIc{padding-top:0}}.default__yn_LCxrffG .splash__M5LzZ_56sW .textWrap__3W5B7Yg0PQ{padding-left:1rem;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .textWrap__3W5B7Yg0PQ{width:calc(50% - .5rem);padding-left:0;padding-right:0}}@media (min-width:40rem){.default__yn_LCxrffG .splash__M5LzZ_56sW .link__21amnfM_Z6{display:flex;justify-content:space-between}}.default__yn_LCxrffG .items__27QTcVhFED{overflow-x:auto;overflow-y:hidden;display:flex}@media (min-width:40rem){.default__yn_LCxrffG .items__27QTcVhFED{overflow-x:hidden;width:100%;justify-content:space-between}}.default__yn_LCxrffG .item__IodWxaSlNV{flex-basis:11.25rem;flex-shrink:0;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .item__IodWxaSlNV{width:calc(25% - 11px);flex-basis:calc(25% - 11px);flex-shrink:0;padding-right:0}}.default__yn_LCxrffG .item__IodWxaSlNV:first-child{margin-left:1rem}@media (min-width:40rem){.default__yn_LCxrffG .item__IodWxaSlNV:first-child{margin-left:0}}.default__yn_LCxrffG .item__IodWxaSlNV .link__21amnfM_Z6{flex-direction:column}.default__yn_LCxrffG .item__IodWxaSlNV .text__3MQGtwpdIc{width:100%;padding:0}.default__yn_LCxrffG .item__IodWxaSlNV .img__16muQLf5Hn{width:100%;margin-bottom:.5rem}.default__yn_LCxrffG .ctaWrap__1dUZoWsqHP{padding-left:1rem;padding-right:1rem}@media (min-width:40rem){.default__yn_LCxrffG .ctaWrap__1dUZoWsqHP{padding:1rem 0 0;display:flex;justify-content:flex-end}}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1{color:#0f65ef;border-color:#0f65ef}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:active,.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:hover{color:#fff;background-color:#0f65ef}@media (min-width:40rem){.default__yn_LCxrffG .ctaBottom__2PSLviuAI1{display:flex;align-items:center;border:0;justify-content:flex-end;padding:0;background:none}.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:active,.default__yn_LCxrffG .ctaBottom__2PSLviuAI1:hover{background:none;color:#093c8f}}.countdown__3dIiT2aUyq{display:flex;justify-content:space-between;text-align:center;margin-top:1rem}@media (min-width:40rem){.countdown__3dIiT2aUyq{margin-top:0}}.countdownItem__3-RIEYiuQa{position:relative;border-radius:5px;overflow:hidden;margin-left:.3rem;margin-right:.3rem;padding:.3rem 0 .5rem}.countdownItem__3-RIEYiuQa:first-of-type{margin-left:0;padding-left:0}.countdownItem__3-RIEYiuQa:last-of-type{margin-right:0;padding-right:0}.countdownItem__3-RIEYiuQa:before{position:absolute;z-index:1;top:0;left:0;content:"";width:100%;height:100%;border-radius:5px;border:1px solid}.countdownNum__1oxf-WJGb6{display:block;position:relative;z-index:2;text-shadow:1px 1px 1px rgba(0,0,0,.25);min-width:50px;font-size:18px;line-height:30px;font-weight:600}@media (min-width:40rem){.countdownNum__1oxf-WJGb6{font-size:24px;line-height:36px}}.countdownUnit__2mB5w4oBO2{display:block;position:relative;z-index:2;text-shadow:1px 1px 1px rgba(0,0,0,.25);line-height:17px;font-size:14px;text-align:center;letter-spacing:.1em}.heading__Fach8WFXS_{display:none;font-size:2rem;line-height:1.2;margin-bottom:1rem;font-weight:700}@media (min-width:500px){.heading__Fach8WFXS_{display:block}}.shareBar__1LkDEJbHxX{opacity:0;transition:opacity .2s ease;list-style-type:none}.shareBar__1LkDEJbHxX.loaded__1lIGsoyXF4{opacity:1}.shareBar__1LkDEJbHxX.subbuzz__2iAU-v551S{display:flex}.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu,.shareBar__1LkDEJbHxX.pagelevelSticky__2JhDecN-vh{justify-content:flex-end;width:auto;height:30px;flex:1;display:flex}@media (min-width:500px){.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu.large__FujNh1GueW,.shareBar__1LkDEJbHxX.pagelevelSticky__2JhDecN-vh.large__FujNh1GueW{height:42px}}.shareBar__1LkDEJbHxX li{display:inline-block}.shareBar__1LkDEJbHxX.subbuzz__2iAU-v551S:first-child{height:40px;margin-top:.5rem;padding-left:0}.shareBar__1LkDEJbHxX.pagelevelList__428i6fskv5 li{display:block}.shareButton__OK7kWx2ECc.pagelevel__iT1zf_Mmzu.top_share_bar__1n8-atTmu7{margin-left:10px;margin-right:.25rem}.shareButton__OK7kWx2ECc.pagelevel__iT1zf_Mmzu.bottom_share_bar__2qB_WODjDB{margin-right:13px}.heading__Fach8WFXS_+.shareBar__1LkDEJbHxX.pagelevel__iT1zf_Mmzu{justify-content:flex-start}.shareButton__OK7kWx2ECc.subbuzz__2iAU-v551S{margin-right:.5rem}.shareBarContainer__3jThu8f2ls{position:absolute;right:15px;top:8px}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u{padding:0 8px;background:#e60019;display:flex;align-items:center;justify-content:center;border:none;border-radius:20px;height:40px;z-index:200;opacity:0;transition:opacity .3s}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:hover{cursor:pointer;background:#b30013}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:hover a:first-child span{color:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u:active{background:#9a0011}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child span{color:#fff;margin:0 10px;font-size:14px;font-weight:600}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child span:hover{color:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u a:first-child svg:first-child{fill:#fff}.shareButton__OK7kWx2ECc.pinterestOverlay__3m1WvQqc1u.show__14Sg3KhPi5{opacity:1}.tooltipContainer__2CWb6115CM{width:100%;height:100%;position:absolute;bottom:0;left:0}.messageWrapper__3-OOA-TNDK{width:100%;border:1px solid #68af15;padding:4px 16px;border-radius:3px;margin:16px 0;min-width:280px;overflow:hidden}@media (min-width:52rem){.messageWrapper__3-OOA-TNDK{display:inline-block;width:auto}}.messageWrapper__3-OOA-TNDK .messageSvg__30mLWhm7a5{width:16px;float:left;display:inline-block;margin-right:8px;vertical-align:bottom;position:relative;top:2px}.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7{float:left;display:inline-block;color:#68af15;font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:16px;line-height:18px;padding:0 0 4px;position:relative;top:2px;width:90%}@media (min-width:52rem){.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7{width:auto}}.messageWrapper__3-OOA-TNDK .messageText__3Gj7rXABC7 a{color:#68af15;text-decoration:underline}.dialogWindow__1uVNzOmiQu{position:fixed;overflow:hidden;z-index:999;width:100%;height:394px;bottom:0;left:0;border-radius:0}@media (min-width:52rem){.dialogWindow__1uVNzOmiQu{width:520px;top:50%;left:50%;transform:translate(-50%,-50%);border-radius:3px}}.dialog___SVAjxp_h_{background:#fff;position:relative}@media (min-width:52rem){.dialog___SVAjxp_h_{border-radius:3px}}.productPicker__hh4CvXDIr0{position:relative;width:100%;height:394px}@media (min-width:52rem){.productPicker__hh4CvXDIr0{height:312px;width:520px}}.headerText__2BXSXdVDzr{font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:16px;line-height:20px;color:#222;padding:12px 20px;border-bottom:1px solid #d7d7d7;margin-bottom:24px}.productsWrapper__CoEtE5sDXg{overflow-x:scroll;scrollbar-width:none;-ms-overflow-style:none;width:100%;height:394px;padding-bottom:176px}.productsWrapper__CoEtE5sDXg::-webkit-scrollbar{width:0;background:rgba(0,0,0,0)}@media (min-width:52rem){.productsWrapper__CoEtE5sDXg{width:520px;height:248px;padding-bottom:0}}.productWrapper__29wP88oACJ{display:flex;color:#222;font-family:Proxima Nova;font-style:normal;padding:2px 24px 24px}.productWrapper__29wP88oACJ:last-of-type{padding-bottom:72px}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5{margin-left:12px}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5 .image__hlOM1tjEhS{border:1px solid #d7d7d7;width:112px;height:112px;border-radius:3px;object-fit:cover}.productWrapper__29wP88oACJ .imageWrapper__2Rb6n42CX5 .imageError__13v2TqeP66{opacity:.3}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP{margin-left:12px;max-width:310px;overflow:hidden}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP .productTitle__3c1uiVhuD_{margin-top:4px;text-transform:capitalize;display:block;margin-bottom:12px;font-weight:700;font-size:14px;line-height:16px}.productWrapper__29wP88oACJ .productInfo__QL1tStjffP .productDesc__2eCHTRoZQv{font-size:16px;line-height:20px}.buttonWrapper__3ieYpB0O3j{bottom:0;position:absolute;background:linear-gradient(180deg,hsla(0,0%,100%,.85),hsla(0,0%,100%,.75));padding:16px 20px;width:100%;height:132px}@media (min-width:52rem){.buttonWrapper__3ieYpB0O3j{padding:16px 24px;width:520px;height:76px}}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7{background-color:#fff;color:#0f65ef;border:1px solid #0f65ef}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7:hover{color:#093c8f;border-color:#093c8f;transition:background-color .15s ease 0s}.buttonWrapper__3ieYpB0O3j .cancelButton__1OKN8fN1m7:active{color:#093c8f;border-color:#041e47}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F{float:right;background-color:#0f65ef;color:#fff;border:1px solid rgba(0,0,0,0);margin-bottom:12px}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F:hover{background-color:#093c8f;transition:background-color .15s ease 0s}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F:active{background-color:#041e47}.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F.disabled__2EjXHmdwaJ,.buttonWrapper__3ieYpB0O3j .submitButton__126HzJuZ5F.disabled__2EjXHmdwaJ:hover{background-color:#b7d1fa}.checkbox__19y9pVx17P{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__19y9pVx17P:disabled+.label__1-iz5as5wc{opacity:.3}.checkbox__19y9pVx17P:checked+.label__1-iz5as5wc:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.8rem}@media (min-width:52rem){.checkbox__19y9pVx17P:checked+.label__1-iz5as5wc:before{background-size:.5rem}}.checkbox__19y9pVx17P:focus+.label__1-iz5as5wc:before{box-shadow:0 0 0 2px #7a9ff3}.checkbox__19y9pVx17P+.label__1-iz5as5wc{cursor:pointer;display:block;position:relative;padding-left:2.5rem;font-size:16px;line-height:24px}@media (min-width:52rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc{line-height:17px;font-size:14px;padding-left:1.6rem;letter-spacing:-.2px}}.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:24px;height:24px;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #222;border-radius:3px}@media (min-width:40rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{top:0}}@media (min-width:52rem){.checkbox__19y9pVx17P+.label__1-iz5as5wc:before{width:16px;height:16px}}.button__27NGkhbsQa{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 16px;font-size:1.125rem;font-weight:700;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:100%;transition:background-color .1s ease 0s}@media (min-width:52rem){.button__27NGkhbsQa{width:auto}}.overlay__2UPrjR8WcE{position:fixed;width:100%;height:100%;top:0;left:0;right:0;bottom:0;background-color:rgba(0,0,0,.2);z-index:9}.button__3mv4k7gt2O{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 24px 8px 16px;font-size:14px;font-weight:700;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:auto;transition:background-color .1s ease 0s;border:1px solid rgba(0,0,0,0)}.button__3mv4k7gt2O:focus{outline:0}@media (min-width:52rem){.button__3mv4k7gt2O{padding:8px 24px 8px 16px}}.wishButton__3TOGVbsy91{margin-top:16px;background-color:#f43192;color:#fff}@media (min-width:52rem){.wishButton__3TOGVbsy91:hover{background-color:#b50a5f;transition:background-color .15s ease 0s}}.isSelected__23aXtE4nsm .emptyHeart__7rdfsei3Q5{display:none}.isSelected__23aXtE4nsm .heart__3itx0cFrN1{display:inline-block}.isSelected__23aXtE4nsm .clearHeart__2lv4RXIB7Q{display:inline-block;opacity:0}.animate__h9Sn7lxwsx .heart__3itx0cFrN1{transform-origin:center;animation:heart__size__1__MptptWM .6s ease-out}.animate__h9Sn7lxwsx .clearHeart__2lv4RXIB7Q{animation:heart__clear__34xOcz2QwJ .6s ease-out}.heartWrapper__guEeFH8lM5{height:21px;display:inline-block;float:left;position:relative}.wordWrapper__3MgE84r3P3{padding-left:5px;width:80%;float:right;display:inline-block;position:relative;top:2px}.isSelected__23aXtE4nsm .wordWrapper__3MgE84r3P3{width:85%}.heart__3itx0cFrN1{display:none;fill:#fff}.clearHeart__2lv4RXIB7Q{display:none;position:absolute;left:-7px;top:-8px}.emptyHeart__7rdfsei3Q5,.heart__3itx0cFrN1{height:16px;width:16px}@keyframes heart__size__1__MptptWM{0%{transform:scale(1)}33%{transform:scale(.8)}66%{transform:scale(1.2)}to{transform:scale(1)}}@keyframes heart__clear__34xOcz2QwJ{0%,50%{opacity:0}51%{opacity:.1}66%{opacity:.8}to{opacity:0}}.tooltip__vdz04VzJDF{position:absolute;z-index:99;padding:20px;box-shadow:0 1px 1px hsla(0,3%,66.9%,.1);border-radius:3px;width:311px;transform:translate(-50%);margin-top:15px;background-color:#fff;border:1px solid rgba(0,0,0,.1);left:-80px;top:32px}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{content:" ";display:block;position:absolute;width:0;height:0;left:50%;bottom:100%}.tooltip__vdz04VzJDF:before{border:10px solid rgba(0,0,0,0);border-bottom-color:#ddd;margin-left:10px}.tooltip__vdz04VzJDF:after{border:9px solid rgba(0,0,0,0);border-bottom-color:#fff;margin-left:11px}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{left:75%}@media (min-width:52rem){.tooltip__vdz04VzJDF{top:42px;left:auto}.tooltip__vdz04VzJDF:after,.tooltip__vdz04VzJDF:before{left:50%}}.tooltipText__2v1LfjO8vw{color:#222;width:100%;position:relative;white-space:normal;text-align:left;font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:20px}.okButton__2s4X8gl84V{float:right;background-color:#0f65ef;color:#fff;border:1px solid rgba(0,0,0,0);margin-top:24px;width:auto}.okButton__2s4X8gl84V:hover{background-color:#093c8f;transition:background-color .15s ease 0s}.okButton__2s4X8gl84V:active{background-color:#041e47}@media (min-width:52rem){.subbuzz-image--align-left,.subbuzz-image--align-right,.subbuzz-image--outset-left,.subbuzz-image--outset-right{margin-bottom:1rem}.subbuzz-image--align-left,.subbuzz-image--outset-left{float:left;padding-right:1.5rem}.subbuzz-image--align-right,.subbuzz-image--outset-right{float:right;padding-left:1.5rem}.subbuzz-image--align-left,.subbuzz-image--align-right{width:50%}.subbuzz-image--outset-left,.subbuzz-image--outset-right{width:66.66667%}}.subbuzz.photo-set,.subbuzz__media{position:relative}.subbuzz__media-container>picture>img,.subbuzz__media-image{border-radius:4px}@media (min-width:40rem){.subbuzz__media-container>picture>img,.subbuzz__media-image{border-radius:8px}}.photo-set__media img{border-radius:0;object-fit:cover}.subbuzz-photoset__container{overflow:hidden;border-radius:10px}@media (min-width:40rem){.subbuzz-photoset__container{border-radius:14px}}.media__credit{color:#222;margin-top:.5rem}.media__credit a{color:#222}.media__credit a:focus,.media__credit a:hover{color:#0f65ef}.buzz--long .subbuzz-image .js-inline-share-bar{order:3}.buzz--long .subbuzz-image .subbuzz__description p{font-size:.75rem!important}.buzz--long .subbuzz-image .subbuzz__description{order:1}.buzz--long .subbuzz-image .subbuzz__description p{margin-bottom:.25rem!important}.buzz--long .subbuzz-image .subbuzz__attribution{margin-bottom:.5rem;order:2}@media (min-width:52rem){.buzz--long .subbuzz-image--outset-both .js-inline-share-bar{margin-left:-16px}}.subbuzz-tweet__tweet{border-radius:4px}.subbuzz-tweet__display-name{font-size:1.375rem;text-decoration:none}.subbuzz-tweet__created-at,.subbuzz-tweet__username{font-size:.75rem;font-style:italic;text-decoration:none}.subbuzz-tweet__text{margin:.5rem 0}.subbuz-tweet__meta{margin-top:1rem}.instagram__container{border-radius:4px!important;border:2px solid #f4f4f4!important;border-bottom:0!important;box-shadow:0 2px 0 0 #f4f4f4!important}@media (min-width:40rem){.instagram__container{border-radius:8px!important;border:4px solid #f4f4f4!important;border-bottom:0!important;box-shadow:0 4px 0 0 #f4f4f4!important}}[fb-xfbml-state=rendered]+.js-placeholder{display:none}.subbuzz__caption{margin-top:.5rem}.subbuzz a{text-decoration:none}.subbuzz p{line-height:1.5;margin-bottom:1.5rem}.subbuzz blockquote{line-height:1.375;margin:1.5rem 0;display:block;width:auto;padding:1rem;background:#f4f4f4;border-left:5px solid #aaa;overflow:hidden}.subbuzz blockquote p:last-child{margin-bottom:0}.subbuzz-text ol:not(.bfp-related-links__list){padding-left:2rem;list-style:decimal}.subbuzz-text ul:not(.bfp-related-links__list){padding-left:2rem;list-style:unset}.subbuzz-text h2:not(.subbuzz__title):not(.ad__disclosure--ex){margin:2.5rem 0 1rem}html[lang=ja] main h2.subbuzz__title span{line-height:1.5}.subbuzz .subbuzz__description{font-size:1.125rem;line-height:1.2}html[lang=ja] main .subbuzz .subbuzz__description{font-size:1rem;line-height:1.2}.subbuzz .subbuzz__description p{line-height:1.44}html[lang=ja] main .subbuzz .subbuzz__description p{line-height:1.5}.shoppable-photoset-product a:not(.link-gray),.subbuzz-pullquote a,.subbuzz-text a,.subbuzz__description a,.subbuzz__title a{color:#0f65ef}.shoppable-photoset-product a:not(.link-gray):focus,.shoppable-photoset-product a:not(.link-gray):hover,.subbuzz-pullquote a:focus,.subbuzz-pullquote a:hover,.subbuzz-text a:focus,.subbuzz-text a:hover,.subbuzz__description a:focus,.subbuzz__description a:hover,.subbuzz__title a:focus,.subbuzz__title a:hover{color:#093c8f;transition:color .15s ease 0s}.subbuzz-link{font-size:1.375rem;line-height:1.27}html[lang=ja] main .subbuzz-link{font-size:1.25rem;line-height:1.27}.subbuzz__link-name{color:#222}.subbuzz .subbuzz-quiz__result-card ul.subbuzz-quiz__share-container{padding-left:1rem}@media (min-width:40rem){.subbuzz .subbuzz-quiz__result-card ul.subbuzz-quiz__share-container{padding-left:0}}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake p{font-size:.875rem;line-height:1.3;margin-bottom:0}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake{padding-top:1rem}@media (min-width:40rem){.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__button-retake{padding-top:0}}.subbuzz .subbuzz-quiz__result-card .subbuzz-quiz__result-buzz-title{padding-top:2px}.subbuzz-quiz__answer-body.xs-flex-align-center{align-items:center}.quiz-results-carousel{margin-right:-1px;margin-left:-1px}.quiz-results-carousel .result-carousel__item--description{padding-bottom:45px}.quiz-results-carousel .results-carousel__pagination{margin-top:1rem}.quiz-results-carousel .card{border:none}.compare-results .compare-results__graph{width:41.66667%}.js-share-button--copy{position:relative}@media (min-width:40rem){.result-card .result-card__gradient-card .result-card__result-img-container,.result-card .result-card__gradient-card .result-card__result-img-container img{min-height:14.6rem}}@media (max-width:40rem){.result-card .result-card__gradient-card .result-card__result-img-container{max-height:14.6rem}}.result-card .result-card__gradient-card .button--small{border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.quiz-v3-question .tile{max-width:600px}}@media (min-width:52rem){.quiz-v3-question .tile--text{transform:scale(.8)}}.quiz-v3-answer .tile--text--proxima-xbold,.quiz-v3-question .tile--text--proxima-xbold{font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-weight:800}.featured-post .subbuzz p{font-size:1.125rem;line-height:1.2;line-height:1.375}html[lang=ja] main .featured-post .subbuzz p{font-size:1rem;line-height:1.2;line-height:1.5}.featured-post .subbuzz ul:not(.bfp-related-links__list){padding-left:2rem;list-style:unset}.featured-post .subbuzz .js-inline-share-bar ul:not(.bfp-related-links__list){padding-left:0}.featured-post .subbuzz.subbuzz-pullquote{margin-bottom:2rem}.featured-post .subbuzz.subbuzz-text p{margin-bottom:1.5rem}.shoppable-photoset-product img{max-width:100%;height:auto}.subbuzz.subbuzz-bfp .iq-container{overflow-x:visible}.subbuzz-bfp .bfp-related-links .bfp-related-links__title{font-weight:700;font-size:1.625rem;letter-spacing:-.8px;line-height:1.2;margin-bottom:1.5rem;text-transform:capitalize}@media (min-width:40rem){.subbuzz-bfp .bfp-related-links .bfp-related-links__title{font-size:2rem;line-height:1.2815}}.subbuzz-bfp .bfp-related-links .bfp-related-links__title:before{content:"";background:linear-gradient(90deg,#e40c78,#6645dd);border-radius:4px;display:block;height:8px;margin-bottom:.5rem;width:72px}.subbuzz-bfp .bfp-related-links .bfp-related-links__list-item{list-style:none;margin-bottom:2rem}.subbuzz-bfp .bfp-related-links .bfp-related-links__author{font-weight:700;line-height:1.375}.subbuzz-bfp .bfp-related-links .bfp-related-links__link{font-weight:700;font-size:1.125rem;line-height:1.2;margin-bottom:.5rem}@media (min-width:40rem){.subbuzz-bfp .bfp-related-links .bfp-related-links__link{font-size:1.375rem;line-height:1.275}}.subbuzz-bfp .bfp-related-links .bfp-related-links__link:focus,.subbuzz-bfp .bfp-related-links .bfp-related-links__link:hover{color:#0f65ef;text-decoration:none}.subbuzz-bfp .bfp-related-links .bfp-related-links__meta{color:#222}.subbuzz-bfp .bfp-related-links .bfp-related-links__meta [aria-hidden=true]{font-weight:700;font-size:1.2em;display:inline-block;padding:0 5px}.featured-post .buzz__update .buzz-timestamp{display:flex;margin-bottom:1rem}@media (min-width:52rem){.featured-post .buzz__update .buzz-timestamp{margin-left:-1.5rem;margin-bottom:1rem}}.featured-post .buzz__update .buzz-timestamp__time{margin-left:4px}.featured-post .buzz__update .timestamp__icon-time svg{display:inline;fill:#757575;height:16px;width:16px}.featured-post .buzz__update .subbuzz.subbuzz-text p{font-size:1.125rem;line-height:1.2;line-height:1.4}html[lang=ja] main .featured-post .buzz__update .subbuzz.subbuzz-text p{font-size:1rem;line-height:1.2}.buzz__update-title{border-bottom:1px solid #d7d7d7;margin-bottom:1.5rem;padding-bottom:1rem}.subbuzz{margin-bottom:3rem}.subbuzz h2{font-size:1.125rem;line-height:1.2;font-weight:700}html[lang=ja] main .subbuzz h2{font-size:1rem;line-height:1.2}@media (min-width:40rem){.subbuzz h2{font-size:1.375rem;line-height:1.27}html[lang=ja] main .subbuzz h2{font-size:1.25rem;line-height:1.27}}.subbuzz h3{font-size:1rem;font-weight:700;margin-bottom:.25em}@media (min-width:40rem){.subbuzz h3{font-size:1.125rem;line-height:1.2}html[lang=ja] main .subbuzz h3{font-size:1rem;line-height:1.2}}.subbuzz .Ad .ad__disclosure--ex{font-size:.75rem}.trendingProducts__2L3zJTOIgQ{background:#fff;margin:2rem calc(50% - 50vw);padding:1rem 1rem 0;position:relative}.trendingProducts__2L3zJTOIgQ:after{background:linear-gradient(90deg,#e40c78 0,#6645dd);border-radius:0;bottom:-2px;content:"";left:0;position:absolute;right:0;top:-2px;z-index:-1}.trendingProducts__2L3zJTOIgQ a{font-weight:700;text-decoration:none;color:#0f65ef}.trendingProducts__2L3zJTOIgQ a:hover,.trendingProducts__2L3zJTOIgQ a:hover svg{color:#093c8f;fill:#093c8f;transition:color .15s ease 0s,fill .15s ease 0s}@media (min-width:64rem){.trendingProducts__2L3zJTOIgQ{margin-left:0;margin-right:0;padding:1.5rem 1.5rem 0}.trendingProducts__2L3zJTOIgQ:after{border-radius:3px;left:-2px;right:-2px}}.contentWrapper__URHospXLrV{max-width:600px;margin-left:auto;margin-right:auto}.trendingProduct__2fcu4-3mir{margin-bottom:1.5rem}.sponsoredItem__10lLKoqNoh{list-style-type:circle;color:#3594cd}.title__fyhpgrnJvD{align-items:center;display:flex;margin-bottom:1rem}.title__fyhpgrnJvD:before{content:"\1F3C6";font-size:.875rem;margin-left:-2px;padding-right:.25rem;vertical-align:middle}@media (min-width:64rem){.title__fyhpgrnJvD:before{font-size:1.125rem}}.productList__VakTjmMkoh{list-style:disc;margin-left:1rem}.productList__VakTjmMkoh:after{content:" ";display:table}.seeInList__hIEB6R3u-L{margin-top:.25rem}.caret__3Rtr7FhfDv{fill:#0f65ef;height:.75rem;margin-left:.25rem;vertical-align:middle;width:.75rem}.trending-product-label{margin-bottom:1rem;font-size:1rem;border:0;border-bottom:2px solid;border-image:linear-gradient(90deg,#e40c78,#6645dd);border-image-slice:1;display:inline-block;line-height:1.5;font-weight:600}@media (min-width:52rem){.trending-product-label{font-size:1.125rem;line-height:1.2}html[lang=ja] main .trending-product-label{font-size:1rem;line-height:1.2}}.trending-product-label [aria-hidden=true]{font-size:14px;vertical-align:middle}.actionBar__2QSgZuvpTs{display:flex;justify-content:space-between;align-items:flex-start}.featured-post .subbuzz{line-height:26px}.featured-post .subbuzz p{margin-bottom:1rem}.main__1WaNFImq55{padding:16px;position:relative}@media (min-width:40rem){.main__1WaNFImq55{padding:0}}.article__3UhoxMZjIh{display:flex;justify-content:center;width:100%}@media (min-width:64rem){.article__3UhoxMZjIh.default__1Wrp0h0Ou2{justify-content:flex-start;max-width:1000px;margin:0 auto}}@media (min-width:1100px){.article__3UhoxMZjIh.default__1Wrp0h0Ou2{max-width:calc(950px + 5.5rem)}}.content__rBlqJK1v6T{max-width:600px;width:100%}.comments__3zKlMrESV4{margin-top:2rem}.shareBottom__2wlG4S50-n{display:none}@media (min-width:500px){.shareBottom__2wlG4S50-n{display:block;margin:1rem 0 4rem}}.shareTop__3wO4DsSeyw{display:none}@media (min-width:500px){.shareTop__3wO4DsSeyw{display:block;margin:0 0 2rem}}.hideShares__s62FHRYlwi .subbuzz .js-inline-share-bar{display:none}.featureImageWrapper__1y6Wa-Y6RC{position:relative}.featureImagePlaceholder__j3VACt3j2v{position:relative;margin:-16px -16px 1rem}@media (min-width:40rem){.featureImagePlaceholder__j3VACt3j2v{margin:0}}.featureImagePlaceholder__j3VACt3j2v:not(:empty){padding-bottom:0!important}.featureImageShadow__29IPm_6nxZ:after{content:"";background:linear-gradient(0deg,rgba(0,0,0,.65) 0,rgba(0,0,0,0));position:absolute;left:0;top:0;width:100%;height:100%;z-index:1;display:none}@media (min-width:40rem){.featureImageShadow__29IPm_6nxZ:after{display:block}}.featureText__2orFq-Z1YD{position:absolute;z-index:4;width:100%;height:100%;left:0;top:0;display:none}@media (min-width:40rem){.featureText__2orFq-Z1YD{display:block}}.featureTextInner__3utJJy132L{color:#fff;bottom:0;position:absolute;left:50%;width:100%;max-width:600px;text-align:left;z-index:2;transform:translate3d(-50%,0,0);padding-bottom:2rem}.featureTextInner__3utJJy132L .title__1IUxKx-D_Q{font-size:2.5rem;line-height:1.025;line-height:1.05;font-weight:700;margin-bottom:.625rem}html[lang=ja] main .featureTextInner__3utJJy132L .title__1IUxKx-D_Q{font-size:1.5rem;line-height:1.025}.featureTextInner__3utJJy132L .description__1hBjUZQuEg{font-size:1.125rem;line-height:1.2}html[lang=ja] main .featureTextInner__3utJJy132L .description__1hBjUZQuEg{font-size:1rem;line-height:1.2}.featureImage__2kYOI7-zdW{height:0;position:relative;z-index:3}.featureImage__2kYOI7-zdW .image__2b96uIle_g,.featureImage__2kYOI7-zdW .video__2ShwZHocYy,.featureImage__2kYOI7-zdW img,.featureImage__2kYOI7-zdW video{position:absolute;object-fit:cover;width:100%;height:100%}.caption__3uHLNquuFi{margin:0 1rem;color:#757575;font-size:.75rem;font-style:italic;position:absolute;bottom:-1.5rem;left:0;width:100%;z-index:5}@media (min-width:40rem){.caption__3uHLNquuFi{margin:0;top:12px;right:12px;bottom:auto;left:auto;background:rgba(0,0,0,.5);padding:6px;width:auto}}.container__1lh0qsehqA{margin-bottom:1rem}.text__2dEPE8Oj2V{font-size:16px;font-weight:700;font-style:italic;line-height:1.5}@media (min-width:64rem){.text__2dEPE8Oj2V{font-size:17px}}.contentBorder__2X5J_wVf-L{padding:1px;background:rgba(0,0,0,.2);border-radius:3px;margin-bottom:32px}.contentBorder__2X5J_wVf-L.isDisabled__2_DCQTT6Kr{background:linear-gradient(0deg,#fff,rgba(0,0,0,.2))}.contentWrapper__S0Cji6EGiS{font-family:Proxima Nova;font-style:normal;background:#fcfcfc;position:relative;overflow:hidden;padding:24px 16px;box-sizing:border-box;border-radius:3px}@media (min-width:52rem){.contentWrapper__S0Cji6EGiS{padding:24px 32px}}.userReviewsTitle__13HylZPqyx{letter-spacing:0}.headerTitle__2SI8yTuK2i{font-weight:700;font-size:22px;line-height:28px;margin-bottom:8px}.headerTitle__2SI8yTuK2i .signIn__13zzPXH7JD{color:#0f65ef;text-decoration:none;font-weight:700}.headerDesc__14L4Zcvaem{font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:24px}@media (min-width:52rem){.headerDesc__14L4Zcvaem{font-size:14px}}.sectionTitle__2JQuYEnBmb{letter-spacing:0}.section__qbuJubPsSn{margin-bottom:24px;clear:both;overflow:hidden}@media (min-width:52rem){.section__qbuJubPsSn{margin-bottom:32px}}.legalSection__peYGMOYAYe{margin-bottom:16px}.imageSection__i9_DdQCsk-{margin-bottom:40px}.imageSection__i9_DdQCsk- .imagesWrapper__Qym_hk38lC{margin-top:24px}.button__34KmsdMGpF{cursor:pointer;white-space:nowrap;appearance:none;user-select:none;font-family:inherit;padding:8px 16px;font-size:1.125rem;font-weight:700;line-height:1.5;border-radius:3px;text-decoration:none;display:inline-block;text-align:center;box-sizing:border-box;width:100%;transition:background-color .1s ease 0s}@media (min-width:52rem){.button__34KmsdMGpF{width:auto}}.submitButton__KXMsQ0KK2d{background-color:#e50e78;color:#fff;border:1px solid rgba(0,0,0,0)}.submitButton__KXMsQ0KK2d:hover{background-color:#850846;transition:background-color .15s ease 0s}.submitButton__KXMsQ0KK2d:active{background-color:#3d0420}.submitButton__KXMsQ0KK2d:disabled{opacity:.3}.submitButton__KXMsQ0KK2d:disabled:hover{background-color:#e50e78}.signInButton__1eQg50oa1B{margin:0;background-color:#07e;color:#fff;border:1px solid rgba(0,0,0,0)}@media (min-width:52rem){.signInButton__1eQg50oa1B{margin-left:25%}}.signInButton__1eQg50oa1B:hover{background-color:#048;transition:background-color .15s ease 0s}.signInButton__1eQg50oa1B:active{background-color:#001e3c}.signInButton__1eQg50oa1B:disabled{opacity:.3}.signInButton__1eQg50oa1B:disabled:hover{background-color:#07e}.successMessage__1oUWuLfF_m{font-size:1.375rem;font-weight:700;line-height:1.25}.anotherReviewButton__13UqVrb0K6{width:190px;font-size:1rem;line-height:1.2;margin-top:2rem}.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textDescription__3YM0Nzt7Ou,.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textRequired__-RXYO_Puz0,.labelSection__2fw8XAYbYI.labelDisabled__3k0Pkyj_3E .textSectionTitle__39RFc61VDy{color:#757575}.labelSection__2fw8XAYbYI .sectionTitleWrapper__2S2HKALdeu{margin-bottom:4px}.labelSection__2fw8XAYbYI .textRequired__-RXYO_Puz0,.labelSection__2fw8XAYbYI .textSectionTitle__39RFc61VDy{margin-bottom:4px;font-family:Proxima Nova;font-style:normal;font-weight:700;font-size:18px;line-height:22px}.labelSection__2fw8XAYbYI .textRequired__-RXYO_Puz0{color:red;margin-left:5px}.labelSection__2fw8XAYbYI .textDescription__3YM0Nzt7Ou{display:block;font-family:Proxima Nova;font-style:normal;font-weight:400;font-size:16px;line-height:24px}@media (min-width:52rem){.labelSection__2fw8XAYbYI .textDescription__3YM0Nzt7Ou{font-size:12px}}.labelSection__2fw8XAYbYI .urLink__1eZWEamaL7{color:#0f65ef;text-decoration:none;font-weight:700}.imageButtonWrapper__2XgvpcI4tA{margin-top:16px}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee{display:inline-block;border:1px solid #0f65ef;box-sizing:border-box;border-radius:3px;cursor:pointer;padding:8px 16px;text-align:center;font-size:16px;line-height:17px;color:#0f65ef;width:100%}@media (min-width:52rem){.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee{width:auto;font-size:14px;padding:5px 10px}}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee:not(.buttonDisabled__2x-X9pNjMX):hover{color:#fff;background:#0f65ef}.imageButtonWrapper__2XgvpcI4tA .uploadButton__31kOJXaXee.buttonDisabled__2x-X9pNjMX{opacity:.3}.imageButtonWrapper__2XgvpcI4tA .addLabel__1mjT_OxQF1{margin:10px 0 0;font-size:12px;color:#757575;display:block}@media (min-width:52rem){.imageButtonWrapper__2XgvpcI4tA .addLabel__1mjT_OxQF1{margin:0 0 0 8px;display:inline-block}}.wrapper__2y-gJLplxP{width:140px;height:140px;display:inline-block;position:relative}.wrapper__2y-gJLplxP.even__39ADf6Uc0r{margin-right:19px}.wrapper__2y-gJLplxP.odd__26yXKHAUbe{margin-right:0}.wrapper__2y-gJLplxP:nth-child(3),.wrapper__2y-gJLplxP:nth-child(4){margin-top:16px}@media (min-width:52rem){.wrapper__2y-gJLplxP{width:112px;height:112px;margin-right:16px}.wrapper__2y-gJLplxP.even__39ADf6Uc0r,.wrapper__2y-gJLplxP.odd__26yXKHAUbe{margin-right:16px}.wrapper__2y-gJLplxP:last-child{margin-right:0}.wrapper__2y-gJLplxP:nth-child(3),.wrapper__2y-gJLplxP:nth-child(4){margin-top:0}}.wrapper__2y-gJLplxP .image__2mowbQcrGq{width:140px;height:140px;object-fit:cover;border-radius:3px;border:1px solid #f4f4f4;box-sizing:border-box}@media (min-width:52rem){.wrapper__2y-gJLplxP .image__2mowbQcrGq{width:112px;height:112px}}.wrapper__2y-gJLplxP .fileName__2pHWB7WADV{color:#222;font-size:14px;position:relative;top:-6px}@media (min-width:52rem){.wrapper__2y-gJLplxP .fileName__2pHWB7WADV{font-size:10px}}.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s{cursor:pointer;position:absolute;border:none;background:rgba(0,0,0,0);top:-13px;right:-20px}.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s .closeIcon__3AEmK-EMG2{width:36px;height:36px;fill:red}@media (min-width:52rem){.wrapper__2y-gJLplxP .closeBtn__3HeWXZfg0s .closeIcon__3AEmK-EMG2{width:28px;height:28px}}.descWarpper__JkXjYMlsPN{overflow:hidden;clear:both}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq{font-family:Proxima Nova;border:1px solid rgba(0,0,0,.1);border-radius:3px;padding:10px 12px;font-size:16px;line-height:1.3;resize:none;outline:none;width:100%;color:#222;-webkit-appearance:none;min-height:60px}@media (min-width:52rem){.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq{font-size:14px;min-height:40px}}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx{color:#aaa}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx::-webkit-input-placeholder{color:#aaa}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq.isDisabled__9P562OZuVx::-moz-placeholder{color:#aaa;opacity:1}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq::-webkit-input-placeholder{color:#757575}.descWarpper__JkXjYMlsPN .textarea__13r5k8Yteq::-moz-placeholder{color:#757575;opacity:1}.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN{float:right;font-size:12px;font-style:italic}@media (min-width:52rem){.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN{font-size:10px}}.descWarpper__JkXjYMlsPN .textCharsLeft__PWtysMllmN.textCharsLeftWarn__2a5Npza1p_{color:red}.select__1sT33f2MH4{-moz-appearance:none;-webkit-appearance:none;background:#fff;border:1px solid rgba(0,0,0,.1);background-image:url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38"><path d="M19 29.3L2.6 12.9c-.8-.8-.8-2 0-2.8.8-.8 2-.8 2.8 0L19 23.7l13.6-13.6c.8-.8 2-.8 2.8 0 .8.8.8 2 0 2.8L19 29.3z"/></svg>');background-repeat:no-repeat;background-position:calc(100% - 1rem) 50%;background-size:.6875rem;border-radius:3px;font-family:inherit;font-size:14px;padding:.3125rem 2rem .3125rem .625rem;color:#222;width:100%}@media (min-width:52rem){.select__1sT33f2MH4{width:auto}}.select__1sT33f2MH4:disabled{color:#aaa;background-color:#ebebe4}.select__1sT33f2MH4:focus{outline:none}.select__1sT33f2MH4.select__1sT33f2MH4::-ms-expand{display:none}.inputText__gsXAecoZkP{border:1px solid rgba(0,0,0,.1);border-radius:3px;padding:10px 12px;font-size:16px;line-height:1.6;resize:none;outline:none;width:100%;color:#222;font-family:Proxima Nova;-webkit-appearance:none}@media (min-width:52rem){.inputText__gsXAecoZkP{font-size:14px}}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk{color:#aaa}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk::-webkit-input-placeholder{color:#aaa}.inputText__gsXAecoZkP.isDisabled__2TzM2bVhuk::-moz-placeholder{color:#aaa;opacity:1}.inputText__gsXAecoZkP::-webkit-input-placeholder{color:#757575}.inputText__gsXAecoZkP::-moz-placeholder{color:#757575;opacity:1}.label__dQ1mGHfZYb{cursor:pointer;display:block;position:relative;padding-left:2.5rem;font-size:16px;line-height:24px}@media (min-width:52rem){.label__dQ1mGHfZYb{line-height:17px;font-size:14px;padding-left:1.6rem;letter-spacing:-.2px}}.label__dQ1mGHfZYb:before{content:"";position:absolute;top:3px;left:0;display:inline-block;width:24px;height:24px;margin-right:.375rem;bottom:-1px;background-color:#fff;border:1px solid #222;border-radius:3px}@media (min-width:40rem){.label__dQ1mGHfZYb:before{top:0}}@media (min-width:52rem){.label__dQ1mGHfZYb:before{width:16px;height:16px}}.checkbox__3XFa_XtLlE{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.checkbox__3XFa_XtLlE:disabled+.label__dQ1mGHfZYb{opacity:.3}.checkbox__3XFa_XtLlE:checked+.label__dQ1mGHfZYb:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='10' height='10' viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M491.185 120.619l-42.818-42.818c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815L199.015 284.65l-92.563-92.877c-5.667-5.667-13.538-8.815-21.409-8.815-7.871 0-15.742 3.148-21.409 8.815l-42.818 42.818c-5.667 5.667-8.815 13.538-8.815 21.409 0 7.871 3.148 15.742 8.815 21.409l113.972 113.972 42.818 42.818c5.667 5.667 13.538 8.815 21.409 8.815 7.871 0 15.742-3.148 21.409-8.815l42.818-42.818 227.943-227.943c5.667-5.667 8.815-13.538 8.815-21.409 0-7.871-3.148-15.742-8.815-21.409z' fill='%23f4419a'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:50%;background-size:.8rem}@media (min-width:52rem){.checkbox__3XFa_XtLlE:checked+.label__dQ1mGHfZYb:before{background-size:.5rem}}.checkbox__3XFa_XtLlE:focus+.label__dQ1mGHfZYb:before{box-shadow:0 0 0 2px #7a9ff3}.anchorTag__32XY7v-zKt{color:#0f65ef;text-decoration:none;font-weight:700}.errorWrapper__2zw5Vf6ndZ{background:#fdebe9;padding:8px 16px;margin-top:8px;border-radius:3px;position:relative}.errorWrapper__2zw5Vf6ndZ .dismissButton__3jWWpvKe3c{position:absolute;right:8px;cursor:pointer}.errorWrapper__2zw5Vf6ndZ.errorImage__PNQGv0uf9Y{margin-top:10px}.errorWrapper__2zw5Vf6ndZ .errorText__3UuGXu-Bca{font-size:14px;color:#ef3222}.errorWrapper__2zw5Vf6ndZ .errorSVG__35ZstXay6M{margin:0 10px 0 0;position:relative;top:2px}.loaderWrapper__3jj88EpzVE{text-align:center}.loaderText__94lXnTTbWK{font-size:.875rem;line-height:1.25;color:#222}.formBorder__3OszgYhSwl{stroke-dasharray:1000;stroke-dashoffset:1000;animation:border-draw__AfytZmY5-l 2.5s ease-in infinite forwards}.pageFlip__15iVSWg4vK{stroke-dasharray:120;stroke-dashoffset:120;animation:flip-draw__1y7pQ103zj 2.5s ease-in infinite forwards;animation-delay:.5s}.bullet1__2MTU4wdk4O,.bullet2__2NnJ4Tppz5,.bullet3__2p9D3VxAOW{stroke-dasharray:14;stroke-dashoffset:14;animation:bullet__7PNZ8HB2jn 2.5s ease-out infinite backwards}.point1__RWkYXO4wT_,.point2__2WKvdnE2O4,.point3__vqUotxpHT9{stroke-dasharray:150;stroke-dashoffset:150;animation:point__1Wv77_koT0 2.5s ease-in infinite backwards}.bullet1__2MTU4wdk4O{animation-delay:.5s}.point1__RWkYXO4wT_{animation-delay:.9s}.bullet2__2NnJ4Tppz5{animation-delay:1s}.point2__2WKvdnE2O4{animation-delay:1.4s}.bullet3__2p9D3VxAOW{animation-delay:1.5s}.point3__vqUotxpHT9{animation-delay:1.9s}@keyframes border-draw__AfytZmY5-l{to{stroke-dashoffset:0}}@keyframes bullet__7PNZ8HB2jn{0%{stroke-opacity:0}20%{stroke-opacity:1;stroke-dashoffset:0}to{stroke-opacity:1;stroke-dashoffset:0}}@keyframes point__1Wv77_koT0{20%{stroke-dashoffset:0}to{stroke-dashoffset:0}}@keyframes flip__JSkOR7Hd4z{0%{stroke-dashoffset:120}50%{stroke-dashoffset:0}to{stroke-dashoffset:120}}.sectionTitle__2ECNiaGMVO{font-size:1.625rem;line-height:1.2;font-weight:700;letter-spacing:-.8px;margin-bottom:1rem}html[lang=ja] main .sectionTitle__2ECNiaGMVO{font-size:1.5rem;line-height:1.2}.sectionTitle__2ECNiaGMVO:before{content:"";background:linear-gradient(90deg,#e40c78,#6645dd);border-radius:4px;display:block;height:8px;margin-bottom:.5rem;width:72px}@media (min-width:40rem){.sectionTitle__2ECNiaGMVO{font-size:2rem;line-height:1.28}html[lang=ja] main .sectionTitle__2ECNiaGMVO{font-size:1.5rem;line-height:1.28}}.quizPartyPromo__3RAG9vFLe7{display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;background-color:#fff;background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quiz-party-promo-bkgd.e145932f04d366b3991f485ac146b495.png);background-repeat:no-repeat;background-size:cover;background-position:top;border-radius:8px;border:1px solid #d7d7d7;padding:1rem;margin-bottom:1.5rem;-webkit-appearance:none;font-family:Proxima Nova,Helvetica,Arial,sans-serif;font-size:1rem}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7{font-size:1.125rem;padding:1.5rem 130px}}.quizPartyPromo__3RAG9vFLe7 .logo__2GNJhlTJjK{background-image:url(https://www.buzzfeed.com/static-assets/bf-bpage-ui/_next/static/img/quiz-party-logo.718cea2e1a4996ae4eefc8c42b3f2b33.png);background-repeat:no-repeat;background-size:cover;width:181px;height:42px;margin:.5rem 0}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7 .logo__2GNJhlTJjK{width:263px;height:61px;margin:1rem 0}}.quizPartyPromo__3RAG9vFLe7 .title__3a2IikcKs4{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.quizPartyPromo__3RAG9vFLe7 p{padding:0 1.75rem;font-weight:700;margin-bottom:1rem}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj{margin-bottom:10px;font-size:14px;line-height:16px;color:#222}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj a{font-weight:700;text-decoration:underline}.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj a:visited{color:#222}@media (min-width:40rem){.quizPartyPromo__3RAG9vFLe7 .sponsorLink__3D1u0MVCdj{margin-bottom:12px}}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc{display:block;width:100%;padding:.5rem .875rem;font-size:1rem;line-height:1.5rem;text-decoration:none;text-align:center;color:#fff;background-color:#0f65ef;border:1px solid rgba(0,0,0,0);border-radius:3px;transition:background-color .1s ease 0s}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:focus,.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:hover{background-color:#093c8f}.quizPartyPromo__3RAG9vFLe7 .quizPartyLink__25hnvIlSYc:active{background-color:#041e47}@media (min-width:40rem){.sponsored__1b8XzKQLYj .logo__2GNJhlTJjK{margin-bottom:10px}}.container__Enie-AsPOZ{position:-webkit-sticky;position:sticky;padding-top:1rem;opacity:1;transition:transform .3s,top .3s,opacity .3s;transform:translateY(0)}.container__Enie-AsPOZ.transitioning__2sWLIByVQE{opacity:0;transform:translateY(-2rem)}.container__3TFvvYiUhb>:not(:last-child){border-bottom:1px solid rgba(0,0,0,.2);padding-bottom:1rem;margin-bottom:1rem}.twitterTimelineFallback__1sX0fJ30iC,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child){align-items:center;background:#55acee;border-radius:3px;color:#fff;display:flex;padding:.5rem;text-decoration:none}.twitterTimelineFallback__1sX0fJ30iC:focus,.twitterTimelineFallback__1sX0fJ30iC:hover,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child):focus,.twitterTimelineFallback__1sX0fJ30iC:not(:last-child):hover{background:#51aaee}.twitterTimelineFallback__1sX0fJ30iC:not(:last-child) svg,.twitterTimelineFallback__1sX0fJ30iC svg{fill:#fff;margin-right:5px}.sidebar__1NohnJgwpb{display:none;flex:0 0 auto;width:300px;margin:.5rem 0}@media (min-width:64rem){.sidebar__1NohnJgwpb{display:block;margin-left:5.5em}}@media (min-width:1100px){.sidebar__1NohnJgwpb{width:350px}}.sidebarBranded__2YEnuvurAT{position:relative}.container__1Qe4_cMCWH{margin-bottom:3rem}.quizLink__2dYcBjyyXK{display:flex;align-items:center;cursor:pointer;text-decoration:none}.quizImg__gxOqkhS1OF{min-width:101px;max-width:101px;min-height:101px;max-height:101px;border-radius:3px;object-fit:cover;object-position:center;margin-right:12px}.quizTitle__3C_u0zXDWG{font-weight:700;font-size:18px;line-height:22px}a.backToTop__9eDH2PTKoc{display:none}@media (min-width:40rem){a.backToTop__9eDH2PTKoc{display:block}}.show-ccpa #CCPAModule{display:block}</style><style>.header__3OBcH{font-family:Proxima Nova,Helvetica,Arial,sans-serif;z-index:500;line-height:1.5}.wrapper__36hPD{margin:0 auto;max-width:71rem;padding:0 1rem;position:relative}@media (min-width:71rem){.wrapper__36hPD{padding:0}}.navIconToggles__1NrKY{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-ms-flex-flow:row nowrap;flex-flow:row nowrap;position:absolute;top:18px;right:0}@media (min-width:790px){.navIconToggles__1NrKY{position:static}}.navIconToggles__1NrKY.hasUserInfo__1jiUA{top:10px}.navLoginLink__yYYrw{font-size:14px;font-weight:590;text-decoration:none;white-space:nowrap;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}
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
    </script></div></div></div><main id="buzz-content" class="main__1WaNFImq55"><div class="article__3UhoxMZjIh default__1Wrp0h0Ou2"><div class="content__rBlqJK1v6T"><article><div class="headline__2V6cg6yv2y"><div class="container__1xi1X6X2jr"><ul class="badgeList__1LHbcTIq2k"></ul></div><div class="container__1xi1X6X2jr"><nav aria-label="Breadcrumb" class="breadcrumbContainer__3MGXwlDSV3"><ol><li class="breadcrumbItem__3iHtMjln58"><a class="metadata-link" href="/shopping">Shopping</a></li></ol><span class="bold middot__3mWhYWQBOt">·</span></nav><span class="timestamp__12oPwMqFR8">Updated<!-- --> <!-- -->4 minutes ago<!-- -->. </span><span class="timestamp__12oPwMqFR8">Posted on<!-- --> <!-- -->Oct 11, 2020</span></div><div class="container__1xi1X6X2jr "><h1 class="title__2wEoS_Bqpp">41 Products That Helped Reviewers After They Almost Gave Up On A Problem</h1><p class="description__1bzzdbaw8q">"It's never too late" — people in rom coms, but also that wine stain on your carpet, your plantar fasciitis, and your favorite succulent that's been circling the drain.</p></div><div style="position:relative"><a href="/emmalord9" class="headlineByline__1xvw0GX5iL"><div class="bylineContainer__1SFDfwq6X5"><div class="avatar__18myM8WuAj "><picture><source type="image/webp" srcSet="https://img.buzzfeed.com/buzzfeed-static/static/user_images/76j8WDOp_large.jpg?crop=410%3A412%3B1%2C14&amp;downsize=60:*&amp;output-format=webp&amp;output-quality=auto"/><img alt="Emma Lord" loading="eager" src="https://img.buzzfeed.com/buzzfeed-static/static/user_images/76j8WDOp_large.jpg?crop=410%3A412%3B1%2C14&amp;downsize=60:*&amp;output-format=jpg&amp;output-quality=auto"/></picture></div><div><span class="text__16CLiglqRL ">by </span><span class="metadata-link bylineName__8t-CbLgGCD">Emma Lord</span><span style="visibility:hidden;display:inline-block;min-height:13px" aria-hidden="true"></span><p>BuzzFeed Staff</p></div></div></a></div></div><div class="actionBar__2QSgZuvpTs"><div></div><div role="group" aria-label="Share" class="shareTop__3wO4DsSeyw"><ul class="shareBar__1LkDEJbHxX pagelevel__iT1zf_Mmzu "><li><div class="shareButton__Qwddr facebook__1CNms large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Facebook" class="shareLink__3GGa8" href="https://www.facebook.com/dialog/share?href=https%3A%2F%2Fwww.buzzfeed.com%2Femmalord9%2Fproblem-solving-products-that-worked-for-reviewers-after%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharefacebook&amp;app_id=862012947269736"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Facebook</title><path d="M38,19.12A19,19,0,1,0,16,38V24.64H11.21V19.12H16V14.9c0-4.79,2.84-7.43,7.18-7.43a29.21,29.21,0,0,1,4.25.37v4.7H25.07a2.76,2.76,0,0,0-3.1,3v3.59h5.27l-.84,5.52H22V38A19.08,19.08,0,0,0,38,19.12Z"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr pinterest__2XzXt large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Pinterest" class="shareLink__3GGa8" href="https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.buzzfeed.com%2Femmalord9%2Fproblem-solving-products-that-worked-for-reviewers-after%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharepinterest&amp;description=41%20Products%20That%20Helped%20Reviewers%20After%20They%20Almost%20Gave%20Up%20On%20A%20Problem&amp;media=https%3A%2F%2Fimg.buzzfeed.com%2Fbuzzfeed-static%2Fstatic%2F2020-09%2F30%2F17%2Ftmp%2F748327a98064%2Ftmp-name-2-265-1601487259-10_dblbig.jpg"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Pinterest</title><path d="M19 0C8.5 0 0 8.5 0 19c0 7.8 4.7 14.5 11.4 17.4-.1-1.3 0-2.9.3-4.4.4-1.5 2.4-10.4 2.4-10.4s-.6-1.2-.6-3c0-2.8 1.6-4.9 3.7-4.9 1.7 0 2.6 1.3 2.6 2.9 0 1.7-1.1 4.3-1.7 6.7-.5 2 1 3.7 3 3.7 3.6 0 6-4.6 6-10.1 0-4.2-2.8-7.3-7.9-7.3-5.8 0-9.4 4.3-9.4 9.1 0 1.7.5 2.8 1.3 3.7.4.4.4.6.3 1.1-.1.3-.3 1.2-.4 1.5-.1.5-.5.7-1 .5-2.7-1.1-3.9-4-3.9-7.3 0-5.4 4.6-11.9 13.6-11.9 7.3 0 12 5.3 12 10.9 0 7.5-4.1 13-10.3 13-2 0-4-1.1-4.6-2.4L15.5 33c-.4 1.5-1.2 2.9-1.9 4.1 1.7.5 3.5.8 5.4.8 10.5 0 19-8.5 19-19C38 8.5 29.5 0 19 0"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr twitter__2yyOE large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Share On Twitter" class="shareLink__3GGa8" href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fwww.buzzfeed.com%2Femmalord9%2Fproblem-solving-products-that-worked-for-reviewers-after%3Futm_source%3Ddynamic%26utm_campaign%3Dbfsharetwitter&amp;text=41%20Problem-Solving%20Products%20That%20Worked%20For%20Reviewers%20After%20They%20Almost%20Gave%20Up&amp;via=dilemmalord"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Twitter</title><path d="M37.9 8c-1.4.6-2.9 1-4.4 1.2 1.6-1 2.8-2.5 3.4-4.3-1.5.9-3.1 1.5-4.9 1.9-1.4-1.5-3.4-2.4-5.6-2.4-4.3 0-7.7 3.5-7.7 7.7 0 .6.1 1.2.2 1.8-6.4-.3-12.1-3.4-15.9-8.1-.7 1.1-1 2.5-1 3.9 0 2.7 1.2 5 3.2 6.4-1.3 0-2.3-.4-3.7-1v.1c0 3.7 2.9 6.9 6.4 7.6-.9.2-1.4.3-2.1.3-.5 0-.9 0-1.4-.1 1 3.1 3.9 5.3 7.2 5.4-2.6 2.1-6 3.3-9.6 3.3-.6 0-1.2 0-1.8-.1C3.6 33.7 7.7 35 12 35c14.2 0 22-11.8 22-22v-1c1.5-1.1 2.8-2.5 3.9-4"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr email__31fFX large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Email" class="shareLink__3GGa8" href="mailto:?body=https%3A%2F%2Fwww.buzzfeed.com%2Femmalord9%2Fproblem-solving-products-that-worked-for-reviewers-after%3Futm_source%3Ddynamic%26utm_campaign%3Dbfshareemail%0A%0AGet%20the%20BuzzFeed%20App%3A%20https%3A%2F%2Fbzfd.it%2Fbfmobileapps&amp;subject=41%20Products%20That%20Helped%20Reviewers%20After%20They%20Almost%20Gave%20Up%20On%20A%20Problem"><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Mail</title><path d="M0 7v24h38V7H0zm33.3 4l-11.9 8.1c-1.5 1-3.4 1-4.9 0L4.7 11h28.6zM4 27V14.2l10.9 7.4c1.3.9 2.7 1.3 4.1 1.3s2.9-.4 4.1-1.3L34 14.2V27H4z"></path></svg></div></div></a></div></li><li><div class="shareButton__Qwddr copy__YNF7L large__21RL4 shareButton__OK7kWx2ECc pagelevel__iT1zf_Mmzu top_share_bar__1n8-atTmu7"><a aria-label="Copy Link" class="shareLink__3GGa8" href=""><div aria-hidden="true" class="iconContainer__CG3z3"><div class="icon__3VYml"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38 38" class="svg__3re89"><title>Link</title><path d="M19.7 31.5l-3.8 3.8c-3.8 3.8-10 3.6-13.6-.5-3.3-3.7-2.9-9.4.7-12.9l7.1-7.1c3.1-3 7.8-3.9 11.6-1.8 1 .6 1.9 1.3 2.5 2.1.6.7.5 1.8-.1 2.4l-.2.2c-.8.8-2 .6-2.7-.2-.3-.3-.5-.6-.9-.8-2.2-1.6-5.3-1.3-7.2.7l-7.5 7.5c-2.2 2.2-2.1 5.9.4 8 2.2 1.8 5.4 1.5 7.4-.5l3.6-3.6c.5-.5 1.2-.7 1.8-.5h.1c1.4.3 1.9 2.1.8 3.2zM35.8 3.2C32.2-.9 26-1 22.2 2.7l-3.8 3.8c-1.1 1.1-.6 2.9.9 3.2h.1c.7.2 1.3 0 1.8-.5l3.6-3.6c2-2 5.2-2.3 7.4-.5 2.5 2 2.6 5.8.4 8l-7.5 7.5c-1.9 1.9-5 2.3-7.2.7-.3-.2-.6-.5-.9-.8-.7-.8-1.9-.9-2.7-.2l-.3.2c-.7.7-.7 1.7-.1 2.4.7.8 1.5 1.5 2.5 2.1 3.8 2.1 8.5 1.2 11.6-1.8l7.1-7.1c3.5-3.5 3.9-9.2.7-12.9z"></path></svg></div></div></a></div></li></ul></div></div><div class="container__1lh0qsehqA"><p class="text__2dEPE8Oj2V">We hope you love the products we recommend! All of them were independently selected by our editors. Just so you know, BuzzFeed may collect a share of sales or other compensation from the links on this page if you decide to shop from them. Oh, and FYI — prices are accurate and items in stock as of time of publication.</p></div><div><div class=" buzz--list"><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125666487" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125666487
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">1.</span>
    

    
      <span class="js-subbuzz__title-text">A set of super comfy <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B003LZQGN6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="3.96" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B003LZQGN6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">wax ear plugs</a> that mold to the shape of your inner ear like putty, fully blocking out snoring noises from your partner (or yelling noises from your neighbors fighting over the Xbox while you're working from home 🙃).</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png","images":{"mobile":{"height":"1295","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png?resize=990:*","width":"990"},"original":{"height":"874","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png","width":"668"},"standard":{"height":"818","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png?resize=625:*","width":"625"},"wide":{"height":"1295","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png","width":668,"height":874,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"3.96\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666488","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"874","width":"668","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/e5cf8466bc6f\/sub-buzz-355-1591202499-1.png?crop=668:874;0,0","alt_text":"A reviewer with the earplug in their ear"},{"index":1,"number":2,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","images":{"mobile":{"height":"874","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","width":"664"},"original":{"height":"874","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","width":"664"},"standard":{"height":"823","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png?resize=625:823","width":"625"},"wide":{"height":"874","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","width":"664"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png","width":664,"height":874,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"3.96\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666489","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"874","width":"664","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-06\/3\/16\/asset\/afa217c24da8\/sub-buzz-359-1591202502-1.png?crop=664:874;0,0","alt_text":"A reviewer holding up an earplug, showing how it can get reshaped"}],
          "id": 125666487,
          "bfa": {"e":"{idx:0,subbuzzId:125666487}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.7643;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125666488">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/e5cf8466bc6f/sub-buzz-355-1591202499-1.png?crop=668%3A874%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 130.84%;"
                data-aratio="130.84">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/e5cf8466bc6f/sub-buzz-355-1591202499-1.png"
                     data-bfa="@a:click:photoset;@d:png:125666488:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer with the earplug in their ear"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/e5cf8466bc6f/sub-buzz-355-1591202499-1.png?crop=668%3A874%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.7597;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125666489">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/afa217c24da8/sub-buzz-359-1591202502-1.png?crop=664%3A874%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 131.63%;"
                data-aratio="131.63">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/afa217c24da8/sub-buzz-359-1591202502-1.png"
                     data-bfa="@a:click:photoset;@d:png:125666489:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer holding up an earplug, showing how it can get reshaped"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-06/3/16/asset/afa217c24da8/sub-buzz-359-1591202502-1.png?crop=664%3A874%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="3.96" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RJD3D08AM0VOJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>TBH, I swear by these so aggressively that I have them on a subscription. They're like ear glue.</b> My apartment is on a busy street and my upstairs neighbor is a noisy human being (does this count as a subtweet??) and once I pop these babies in I can barely hear a thing. Plus, my ears never get sore with these in like they do with headphones or other earplugs. </p><p><b>Promising review:</b> "Quite simply the best product I've found that reduces my partner's snoring to a level that allows me to wake up in the morning next to her and not in the second bedroom. <b>I'd given up on ideas and was attempting to come to grips with a life of separation when I found these little gems, deciding 'what the heck' and with nothing to lose.</b> They are inexpensive, comfortable and EFFECTIVE. I can tell you with certainty that Macks earplugs work. Thanks Mack!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R7NXDG7EAANC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C14876681" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876681" data-vars-price.currency="USD" data-vars-price.value="3.96" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R7NXDG7EAANC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C14876681" rel="nofollow" target="_blank">Amazon Customer</a> </p><p>Get a pack of six pairs from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B003LZQGN6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="3.96" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B003LZQGN6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C1%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$3.96</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125665094" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">2.</span>
    

    
      <span class="js-subbuzz__title-text">A streak-free <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07P7J48VT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876746" data-vars-keywords="cleaning" data-vars-link-id="14876746" data-vars-price.currency="USD" data-vars-price.value="9.55" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07P7J48VT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876746" rel="nofollow" target="_blank">anti-fog spray</a> you can quickly apply to eyeglasses, sunglasses, and face shields to prevent them from fogging up while you're wearing a mask.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665094
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" subbuzz__media--full-width-container">
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
          "

          
          >

          
          

          
            

<picture>
  <source media="(min-width: 52rem)" srcset="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/18/asset/3ba5e0324a93/sub-buzz-9233-1595960356-14.png?downsize=700%3A%2A&amp;output-quality=auto&amp;output-format=auto 1600w">
  
  <source srcset="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/18/asset/3ba5e0324a93/sub-buzz-9233-1595960356-14.png?downsize=700%3A%2A&amp;output-quality=auto&amp;output-format=auto 800w">
  

  <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/18/asset/3ba5e0324a93/sub-buzz-9233-1595960356-14.png?downsize=700%3A%2A&amp;output-quality=auto&amp;output-format=auto&amp;output-quality=auto&amp;output-format=auto&amp;downsize=360:*"
    alt="A reviewer image of a person wearing unfogged glasses with their face mask holding up the spray "
    data-bfa="@o:{ignore:[bfaBinder]};"
    class="js-subbuzz__media js-pinnable xs-col-12 xs-block"
    
    >
</picture>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RRDRJEPOEN6O2?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.55" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RRDRJEPOEN6O2?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Since the pandemic we (essential workers) are obviously wearing masks. Now doing so, our glasses are fogging up from our breath so I had to take action for myself and fix this issue. <b>I have followed many ways to try and fix this issue but to avail — I gave up and thought I would give this product a try</b>. I am so glad that I did as this has fixed the problem with my safety glasses fogging up on me. I definitely would recommend this product!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2KAYQHGZQ8L05?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876683" data-vars-keywords="cleaning" data-vars-link-id="14876683" data-vars-price.currency="USD" data-vars-price.value="9.55" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2KAYQHGZQ8L05?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876683" rel="nofollow" target="_blank">Glen</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07P7J48VT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876746" data-vars-keywords="cleaning" data-vars-link-id="14876746" data-vars-price.currency="USD" data-vars-price.value="9.55" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07P7J48VT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C2%2C42%2Cmobile_web%2C0%2C0%2C14876746" rel="nofollow" target="_blank">$9.55</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning"
  >
  
  <div id="125665245" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125665245
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">3.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B002R0DXQE?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876726" data-vars-keywords="cleaning" data-vars-link-id="14876726" data-vars-price.currency="USD" data-vars-price.value="5.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B002R0DXQE?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876726" rel="nofollow" target="_blank">dishwasher cleaning tablets</a> you can pop into a cycle with your dirty dishes to wipe out all the extra grime and that funky smell you can never seem to get rid of no matter how hard you try. You don't even need to scrub — these do all the work for you!</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg","images":{"mobile":{"height":"1041","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg?resize=990:*","width":"990"},"original":{"height":"750","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg","width":"713"},"standard":{"height":"657","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg?resize=625:*","width":"625"},"wide":{"height":"1041","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg","width":713,"height":750,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"5.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125665246","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"750","width":"713","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/0cb713ced9d2\/sub-buzz-587-1582038933-2.jpg?crop=713:750;0,0","alt_text":"before image of grimy dishwasher"},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","images":{"mobile":{"height":"750","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","width":"709"},"original":{"height":"750","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","width":"709"},"standard":{"height":"661","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg?resize=625:661","width":"625"},"wide":{"height":"750","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","width":"709"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg","width":709,"height":750,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"5.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125665247","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"750","width":"709","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/15\/asset\/2f8cecfafe8d\/sub-buzz-514-1582038946-9.jpg?crop=709:750;0,0","alt_text":"after image of shiny dishwasher "}],
          "id": 125665245,
          "bfa": {"e":"{idx:0,subbuzzId:125665245}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.9507;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125665246">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/0cb713ced9d2/sub-buzz-587-1582038933-2.jpg?crop=713%3A750%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 105.19%;"
                data-aratio="105.19">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/0cb713ced9d2/sub-buzz-587-1582038933-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665246:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="before image of grimy dishwasher"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/0cb713ced9d2/sub-buzz-587-1582038933-2.jpg?crop=713%3A750%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.9453;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125665247">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/2f8cecfafe8d/sub-buzz-514-1582038946-9.jpg?crop=709%3A750%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 105.78%;"
                data-aratio="105.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/2f8cecfafe8d/sub-buzz-514-1582038946-9.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665247:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="after image of shiny dishwasher "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/15/asset/2f8cecfafe8d/sub-buzz-514-1582038946-9.jpg?crop=709%3A750%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RPG628FQOJ0Y0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Saved me from buying a new dishwasher!I have to admit that I was skeptical that this product was actually going to do anything. I’ve noticed my dishwasher wasn’t cleaning dishes very well lately, and <b>I did everything I could to get it working properly again, but was ready to finally give up and buy a new dishwasher</b>. I bought these tablets thinking they were designed to eliminate odors, but I was willing to give them a shot before buying a whole new dishwasher. <b>I put one in the bottom of the dishwasher last night per the instructions and woke up to completely clean dishes for the first time in weeks. They look perfect.</b> I don’t know why these tablets work but they absolutely did and I am a happy customer!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RLAZGCN0QSUDY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876688" data-vars-keywords="cleaning" data-vars-link-id="14876688" data-vars-price.currency="USD" data-vars-price.value="5.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RLAZGCN0QSUDY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876688" rel="nofollow" target="_blank">B. Turner</a> </p><p>Get a six-pack from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B002R0DXQE?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876726" data-vars-keywords="cleaning" data-vars-link-id="14876726" data-vars-price.currency="USD" data-vars-price.value="5.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B002R0DXQE?tag=bfemmalord-20&amp;ascsubtag=5723477%2C3%2C42%2Cmobile_web%2C0%2C0%2C14876726" rel="nofollow" target="_blank">$5.99</a>.</p>
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
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125665334" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125665334
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">4.</span>
    

    
      <span class="js-subbuzz__title-text">A ridiculously popular <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876677" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876677" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876677" rel="nofollow" target="_blank">"cat dancer" toy</a> so both you and your furry bud can break a sweat indoors chasing after it — even if your cat is the kind who usually responds to your attempts to play by being like, "Nice try, hoomon."</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg","images":{"mobile":{"height":"1761","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg?resize=990:*","width":"990"},"original":{"height":"1334","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg","width":"750"},"standard":{"height":"1112","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1761","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg","width":750,"height":1334,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RNDQEJ535PGGW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"2.09\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RNDQEJ535PGGW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125665335","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1334","width":"750","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/20c87eec07e7\/sub-buzz-3301-1584113804-1.jpg?crop=750:1334;0,0","alt_text":"A cat reaching for the toy "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg?resize=990:1320","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R4WW8QZXCL0E?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"2.09\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R4WW8QZXCL0E?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125665336","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/13\/15\/asset\/402c132ac789\/sub-buzz-3364-1584113977-1.jpg?crop=1224:1632;0,0","alt_text":"Another cat reaching for the toy "}],
          "id": 125665334,
          "bfa": {"e":"{idx:0,subbuzzId:125665334}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.5622;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125665335">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/20c87eec07e7/sub-buzz-3301-1584113804-1.jpg?crop=750%3A1334%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 177.87%;"
                data-aratio="177.87">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/20c87eec07e7/sub-buzz-3301-1584113804-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665335:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A cat reaching for the toy "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/20c87eec07e7/sub-buzz-3301-1584113804-1.jpg?crop=750%3A1334%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125665336">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/402c132ac789/sub-buzz-3364-1584113977-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/402c132ac789/sub-buzz-3364-1584113977-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665336:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Another cat reaching for the toy "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/13/15/asset/402c132ac789/sub-buzz-3364-1584113977-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RNDQEJ535PGGW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RNDQEJ535PGGW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R4WW8QZXCL0E?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R4WW8QZXCL0E?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>In fact, if you are looking for an immediate LOL, please head straight to the <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/product-reviews/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876667" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876667" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/product-reviews/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876667" rel="nofollow" target="_blank">review images of this little gizmo</a> — pages and pages of kitty cats losing their marbles. It is goodness and absurdity and light. </p><p><b>Promising review:</b> "After owning this product, and now finding others made by the same designe<b>r I'm convinced they know felines even better than this cat-guardian.</b> My feline is impossible to play with unless she decides something will be enjoyable to her! I've tried everything imaginable, and other feline owners have contributed to get her into 'play and exercise.' <b>Nothing worked at all. She's a determined, very OCD animal and smarter than most humans I know so I gave up until this seemingly silly thing came along — so I'm back for more</b>." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3JB185UE0JMSS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876673" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876673" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3JB185UE0JMSS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876673" rel="nofollow" target="_blank">Vivaldi</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876677" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876677" data-vars-price.currency="USD" data-vars-price.value="2.09" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0006N9I68?tag=bfemmalord-20&amp;ascsubtag=5723477%2C4%2C42%2Cmobile_web%2C0%2C0%2C14876677" rel="nofollow" target="_blank">$2.09</a>.</p>
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
  
  <div id="125681381" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125681381
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">5.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0711M55BY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876723" data-vars-keywords="cleaning" data-vars-link-id="14876723" data-vars-price.currency="USD" data-vars-price.value="14.18" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0711M55BY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876723" rel="nofollow" target="_blank">stainless-steel tongue scraper</a> to help take care of odor-causing bacteria and soft plaque without irritating your gag reflex the way a spoon might.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png","images":{"mobile":{"height":"1015","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png?resize=990:*","width":"990"},"original":{"height":"406","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png","width":"396"},"standard":{"height":"641","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png?resize=625:*","width":"625"},"wide":{"height":"1015","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png","width":396,"height":406,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.18\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125681382","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"406","width":"396","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/d7dc3bb716c4\/sub-buzz-22306-1600876685-54.png?crop=396:406;0,0","alt_text":"reviewer pic of yellow tinged tongue"},{"index":1,"number":2,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","images":{"mobile":{"height":"415","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","width":"362"},"original":{"height":"415","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","width":"362"},"standard":{"height":"415","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","width":"362"},"wide":{"height":"415","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","width":"362"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png","width":362,"height":415,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.18\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125681383","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"415","width":"362","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/23\/15\/asset\/a1e0aeb39aa5\/sub-buzz-22108-1600876694-69.png?crop=362:415;0,0","alt_text":"reviewer pic of same user's tongue now clean "}],
          "id": 125681381,
          "bfa": {"e":"{idx:0,subbuzzId:125681381}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.9754;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125681382">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/d7dc3bb716c4/sub-buzz-22306-1600876685-54.png?crop=396%3A406%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 102.53%;"
                data-aratio="102.53">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/d7dc3bb716c4/sub-buzz-22306-1600876685-54.png"
                     data-bfa="@a:click:photoset;@d:png:125681382:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer pic of yellow tinged tongue"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/d7dc3bb716c4/sub-buzz-22306-1600876685-54.png?crop=396%3A406%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.8723;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125681383">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/a1e0aeb39aa5/sub-buzz-22108-1600876694-69.png?crop=362%3A415%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 114.64%;"
                data-aratio="114.64">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/a1e0aeb39aa5/sub-buzz-22108-1600876694-69.png"
                     data-bfa="@a:click:photoset;@d:png:125681383:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer pic of same user&#39;s tongue now clean "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/23/15/asset/a1e0aeb39aa5/sub-buzz-22108-1600876694-69.png?crop=362%3A415%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.18" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1LO40E3887SJW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I have entered into a new era of oral hygiene with this product. <b>I've always brushed by tongue each time I brush my teeth but I couldn't help but feel that it was a futile attempt at controlling the growing white carpet on my tongue.</b> Enter cheap plastic tongue scrapers. They were clunky, broke easily, and produced minimal results. Soon, I gave up and returned to my tongue brushing. Then I spotted this product. It arrived and I immediately tried it out. <b>The design makes it easy to reach the back of the tongue with minimal gagging.</b> The first scrape produced particularly nasty results on the metal tool. After the first pass, you get diminishing returns. <b>Two or three swipes is all it takes to have a clean tongue.</b>" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2MVHBML2865JV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876679" data-vars-keywords="cleaning" data-vars-link-id="14876679" data-vars-price.currency="USD" data-vars-price.value="14.18" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2MVHBML2865JV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876679" rel="nofollow" target="_blank">The Yodler</a> </p><p>Get a two-pack from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0711M55BY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876723" data-vars-keywords="cleaning" data-vars-link-id="14876723" data-vars-price.currency="USD" data-vars-price.value="14.18" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0711M55BY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C5%2C42%2Cmobile_web%2C0%2C0%2C14876723" rel="nofollow" target="_blank">$14.18</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  data-module="subbuzz-image">
  
  <div id="125665471" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">6.</span>
    

    
      <span class="js-subbuzz__title-text">A bottle of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07R4BSY17?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876711" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876711" data-vars-price.currency="USD" data-vars-price.value="14.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07R4BSY17?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876711" rel="nofollow" target="_blank">Drop It</a>, a natural wine sulfate and tannin remover that works its magic on your glass in just 20 seconds, sparing you the infamous Post-Wine Headache and allergic reactions. It's also a lot more cost-effective and environmentally-friendly than wine wands or other competitors — a single bottle of this can be used to treat up to 55 glasses of wine, as opposed to wands that can only do a few glasses each before they get tossed.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665471
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/17/asset/ef509ef900c0/sub-buzz-6692-1598893390-19.png" alt="Reviewer image of glass of red wine with a bottle of Drop It, along with a caption explaining that it&amp;#x27;s been working " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 168.98%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer image of glass of red wine with a bottle of Drop It, along with a caption explaining that it&amp;#x27;s been working "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/17/asset/ef509ef900c0/sub-buzz-6692-1598893390-19.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/17/asset/ef509ef900c0/sub-buzz-6692-1598893390-19.png"
  data-crop="168.96"
  data-mobile-crop="168.98"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2F9GGL194JGY9?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2F9GGL194JGY9?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>Plus, this is a heck of a lot easier to use if you want to drink out at a restaurant without pulling out a "<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0771H8V5H?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876724" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876724" data-vars-price.currency="USD" data-vars-price.value="14.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0771H8V5H?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876724" rel="nofollow" target="_blank">wine wand</a>" and calling attention to yourself. Drop It recommends <b>1-2 drops for each glass of white wine, 2-3 for a glass of red, and 7-9 if you're treating the whole bottle at once</b>. Once it's in the glass, swirl lightly for 20 seconds, and you should be raring to go! </p><p><b>Promising review:</b> "For many years, I have been that friend that always says 'no thanks, I can't drink wine.' <b>Even one small small glass would give me the worst migraine. So I gave up</b>. Several weeks ago, I happened across an ad for Drop It and thought I might as well give it a shot. I took a big risk the day it arrived and had two huge glasses of red wine that I knew would give me a massive migraine the next day. It just so happened I had a midterm that next morning too — so the stakes were high. <b>I woke up feeling fantastic. Since then I have repeated the experiment (to make sure it wasn't a fluke) and found that no matter how much wine I drink, as long as I use the drops, I don't have a migraine the next day.</b> I'm so pleased to have found something that makes wine drinking possible and enjoyable again! I have nothing but great things to say about the product. <b>It's easy to use and very discreet. I visited some friends last week and we spent a few hours at a wine bar. It was easy to add my drops.</b> I took a small taste of the wine before adding the drops and found that it did not alter the taste at all. Thanks for a great product and a great buying experience. I will be back for more." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1HIFHF5OMF6O4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876745" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876745" data-vars-price.currency="USD" data-vars-price.value="14.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1HIFHF5OMF6O4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876745" rel="nofollow" target="_blank">Mackenzie</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07R4BSY17?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876711" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876711" data-vars-price.currency="USD" data-vars-price.value="14.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07R4BSY17?tag=bfemmalord-20&amp;ascsubtag=5723477%2C6%2C42%2Cmobile_web%2C0%2C0%2C14876711" rel="nofollow" target="_blank">$14.99</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  >
  
  <div id="125665106" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125665106
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">7.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0787GLBMV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0787GLBMV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">itty bitty dermaplaning razors</a> you can use to take care of those lil' unibrow hairs that keep dodging your tweezers or work whatever face fuzzies you might want to take care of in a gentle way — an especially handy tool when many of us can't head to a salon like we normally would.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png","images":{"mobile":{"height":"664","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png?resize=990:*","width":"990"},"original":{"height":"978","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png","width":"1458"},"standard":{"height":"419","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png?resize=625:*","width":"625"},"wide":{"height":"664","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png","width":1458,"height":978,"attribution":"Amazon","id":"125665107","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"978","width":"1458","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/5408d1c70953\/sub-buzz-6619-1598892915-11.png?crop=1458:978;0,0","alt_text":"Model using tool to shave hair above the eyebrow "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg","images":{"mobile":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg?resize=990:990","width":"990"},"original":{"height":"1500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg","width":"1500"},"standard":{"height":"625","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg?resize=625:625","width":"625"},"wide":{"height":"990","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg?resize=990:990","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg","width":1500,"height":1500,"attribution":"Amazon","id":"125665108","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1500","width":"1500","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/31\/16\/asset\/4b74ed238220\/sub-buzz-6676-1598892919-3.jpg?crop=1500:1500;0,0","alt_text":"Two thin razors "}],
          "id": 125665106,
          "bfa": {"e":"{idx:0,subbuzzId:125665106}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.4908;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125665107">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/5408d1c70953/sub-buzz-6619-1598892915-11.png?crop=1458%3A978%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 67.08%;"
                data-aratio="67.08">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/5408d1c70953/sub-buzz-6619-1598892915-11.png"
                     data-bfa="@a:click:photoset;@d:png:125665107:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Model using tool to shave hair above the eyebrow "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/5408d1c70953/sub-buzz-6619-1598892915-11.png?crop=1458%3A978%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125665108">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/4b74ed238220/sub-buzz-6676-1598892919-3.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/4b74ed238220/sub-buzz-6676-1598892919-3.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665108:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Two thin razors "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/31/16/asset/4b74ed238220/sub-buzz-6676-1598892919-3.jpg?crop=1500%3A1500%3B0%2C0&amp;resize=720%3A720"
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
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>This tool also helps soften skin by gently exfoliating as you use it! </p><p><b>Promising review:</b> "I gave up plucking my eyebrows a long time ago and accepted that my eyebrows were just going to look the way they did. Then I found these. <b>They make it easy and painless to sculpt your eyebrows to your liking.</b> I would 100% recommend." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RZ8H438BDBTCD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C14876732" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876732" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RZ8H438BDBTCD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C14876732" rel="nofollow" target="_blank">Izzy D.</a> </p><p>Get a set of three from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0787GLBMV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0787GLBMV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C7%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$4.99</a>.</p>
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
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125668151" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125668151
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">8.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07CGKT7F8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07CGKT7F8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">satin-lined cap</a> with a lightweight jersey cover to help preserve your curls *without* any added frizz at night, and keep your hair out of your face. It's designed to be nonslip but not too tight, either, so you'll barely notice it's there.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","images":{"mobile":{"height":"568","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","width":"453"},"original":{"height":"568","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","width":"453"},"standard":{"height":"568","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","width":"453"},"wide":{"height":"568","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","width":"453"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png","width":453,"height":568,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"15.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668153","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"453","width":"453","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/8947a1854cd1\/sub-buzz-952-1562792517-14.png?crop=453:453;0,0","alt_text":"Reviewer with their hair in the beanie "},{"index":1,"number":2,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png","images":{"mobile":{"height":"1241","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png?resize=990:1241","width":"990"},"original":{"height":"567","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png","width":"452"},"standard":{"height":"784","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png?resize=625:784","width":"625"},"wide":{"height":"1241","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png?resize=990:1241","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png","width":452,"height":567,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"15.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668152","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"452","width":"452","x_offset":"0","y_offset":"64"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2019-07\/10\/21\/asset\/37e0f744f356\/sub-buzz-933-1562792504-7.png?crop=452:452;0,64","alt_text":"Reviewer showing their shiny, curly hair "}],
          "id": 125668151,
          "bfa": {"e":"{idx:0,subbuzzId:125668151}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125668153">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/8947a1854cd1/sub-buzz-952-1562792517-14.png?crop=453%3A453%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/8947a1854cd1/sub-buzz-952-1562792517-14.png"
                     data-bfa="@a:click:photoset;@d:png:125668153:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer with their hair in the beanie "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/8947a1854cd1/sub-buzz-952-1562792517-14.png?crop=453%3A453%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125668152">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/37e0f744f356/sub-buzz-933-1562792504-7.png?crop=452%3A452%3B0%2C64&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/37e0f744f356/sub-buzz-933-1562792504-7.png"
                     data-bfa="@a:click:photoset;@d:png:125668152:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer showing their shiny, curly hair "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-07/10/21/asset/37e0f744f356/sub-buzz-933-1562792504-7.png?crop=452%3A452%3B0%2C64&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RPTKLM9S2Y8O0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "At first I tried a silk pillowcase because I read those were good for your hair, but they were such a pain to wash and care for that I gave up. This is way better. <b>Not only does it prevent frizzy bedhead but it's just nice to have your hair out of your face and gathered up while sleeping.</b> The hat is very comfortable and doesn't slip off at night even though I roll around a lot." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2LGKIOGCA3GED?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C14876743" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876743" data-vars-price.currency="USD" data-vars-price.value="15.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2LGKIOGCA3GED?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C14876743" rel="nofollow" target="_blank">Caroline Wilson</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07CGKT7F8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07CGKT7F8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C8%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$15.99</a> (available in 42 different designs).</p>
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
  
  <div id="125681051" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125681051
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">9.</span>
    

    
      <span class="js-subbuzz__title-text">A set of affordable, highly popular (seriously, these have nearly 40,000 popular reviews) <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07VQ82393?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876709" data-vars-keywords="cleaning" data-vars-link-id="14876709" data-vars-price.currency="USD" data-vars-price.value="29.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07VQ82393?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876709" rel="nofollow" target="_blank">wireless Bluetooth earbuds</a> that'll *gasp* actually fit your ears — each comes with four different size ear pieces to find your ideal fit. Now you can multi-task to your heart's content, whether it's listening to spooky podcasts while you clean, chatting with your BFF on a walk around the neighborhood, or doing an at-home workout without waking up all your roomies.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png","images":{"mobile":{"height":"1110","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png?resize=990:*","width":"990"},"original":{"height":"738","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png","width":"658"},"standard":{"height":"701","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png?resize=625:*","width":"625"},"wide":{"height":"1110","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png","width":658,"height":738,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125681052","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"738","width":"658","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/3ba5e0324a93\/sub-buzz-8924-1595949692-19.png?crop=658:738;0,0","alt_text":"A pair of wireless earbuds in rose gold "},{"index":1,"number":2,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","images":{"mobile":{"height":"788","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","width":"624"},"original":{"height":"788","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","width":"624"},"standard":{"height":"788","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","width":"624"},"wide":{"height":"788","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","width":"624"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png","width":624,"height":788,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"29.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125681053","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"788","width":"624","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-07\/28\/15\/asset\/040159ed0742\/sub-buzz-8981-1595949695-5.png?crop=624:788;0,0","alt_text":"A reviewer holding up an earbud to show its size "}],
          "id": 125681051,
          "bfa": {"e":"{idx:0,subbuzzId:125681051}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.8916;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125681052">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/3ba5e0324a93/sub-buzz-8924-1595949692-19.png?crop=658%3A738%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 112.16%;"
                data-aratio="112.16">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/3ba5e0324a93/sub-buzz-8924-1595949692-19.png"
                     data-bfa="@a:click:photoset;@d:png:125681052:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A pair of wireless earbuds in rose gold "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/3ba5e0324a93/sub-buzz-8924-1595949692-19.png?crop=658%3A738%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.7919;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125681053">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/040159ed0742/sub-buzz-8981-1595949695-5.png?crop=624%3A788%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 126.28%;"
                data-aratio="126.28">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/040159ed0742/sub-buzz-8981-1595949695-5.png"
                     data-bfa="@a:click:photoset;@d:png:125681053:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer holding up an earbud to show its size "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/28/15/asset/040159ed0742/sub-buzz-8981-1595949695-5.png?crop=624%3A788%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="29.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1FTBDO4BR8KIC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>These come with a wireless charging case that provides up to 14 hours of charge (with the earbuds able to play for 4+ hours with each full charge). The earbuds are also sweatproof and waterproof so you can use them during workouts or runs, and have a built-in mic so you can chat on the phone. <b>Psst — these are also a great option for going outside in a mask, since it doesn't have wires that'll get tangled in the mask straps.</b> </p><p><b>Promising review:</b> "Overall these have proved great. <b>I put them through the wringer today, dripping wet with sweat and running, and riding horses.</b> Noise cancellation is great, better than I ever expected. Battery life isn't as long as competing products, which is really the only pitfall for me. The charging time makes up for that though and quickly gets them up and running again. Sound quality is very good, especially considering the price. In addition, <b>I find myself as one of the 'lucky' people who find keeping earbuds in place almost impossible. I had given up a while ago on finding something that didn't go up and around the outside of my ear.</b> Due to reviews, I had to give these a shot. <b>So excited because they stay! Four different size ear pieces make it so you can find your perfect fit, and I was overjoyed.</b> All in all, extremely pleased with these little earbuds and highly recommend them!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RUQJMEC95PQVW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876703" data-vars-keywords="cleaning" data-vars-link-id="14876703" data-vars-price.currency="USD" data-vars-price.value="29.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RUQJMEC95PQVW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876703" rel="nofollow" target="_blank">Eric R. Witham</a> </p><p>Get it from Amazon <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07VQ82393?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876709" data-vars-keywords="cleaning" data-vars-link-id="14876709" data-vars-price.currency="USD" data-vars-price.value="29.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07VQ82393?tag=bfemmalord-20&amp;ascsubtag=5723477%2C9%2C42%2Cmobile_web%2C0%2C0%2C14876709" rel="nofollow" target="_blank">$29.99</a> (available in five colors).</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125681296" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">10.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00HNWNXAW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.25" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00HNWNXAW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">tea tree oil foot and body wash</a> to help take care of a *myriad* of foot inconveniences, from athlete's foot to ringworm to toenail fungus to eczema.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681296
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/16/asset/875a6902953e/sub-buzz-1451-1565282365-1.jpg" alt="On the left, punched-out pits on the bottom of a reviewer&amp;#x27;s foot from pitted keratolysis, and on the right, the same reviewer&amp;#x27;s foot with most of the pits mostly gone after using the wash" class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 89.70%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="On the left, punched-out pits on the bottom of a reviewer&amp;#x27;s foot from pitted keratolysis, and on the right, the same reviewer&amp;#x27;s foot with most of the pits mostly gone after using the wash"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/16/asset/875a6902953e/sub-buzz-1451-1565282365-1.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/16/asset/875a6902953e/sub-buzz-1451-1565282365-1.jpg"
  data-crop="89.70"
  data-mobile-crop="89.70"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3C0RHS5PE7MGJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.25" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3C0RHS5PE7MGJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "This product is amazing and it really works. <b>My husband had athlete's foot (only on one foot) for many years, he tried all the over-the-counter and prescription medications, and nothing worked.</b> His foot was peeling and he would scratch it until it bled. I came across this soap in my search, and one of the reviews gave me hope it would work for my husband. He was hesitant at first, because nothing worked in the past and he had given up on anything working. When he finally tried it, he loved the way his foot felt after<b>. It took about a week or so for us to start seeing the difference. Now, his foot is all clear of the athlete's foot.</b> He's been using it for about two months. I recommend this soap to my friends all the time." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RMT26DXVF9GBO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.25" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RMT26DXVF9GBO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">3SpoiledChi’s</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00HNWNXAW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="15.25" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00HNWNXAW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C10%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$15.25</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125665472" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">11.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.value="0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">glass and ceramic cookware cleanup kit</a> that comes with heavy-duty scrubber, a razor blade, *and* a cleaner specifically designed to get at those caked-on stains, so you can knock it all off in a few minutes and get your Ina Garten game face on in peace.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665472
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/16/16/asset/7c1edeaca9e0/sub-buzz-3422-1584376958-7.jpg" alt="A smooth top stove with stains and deposits and an &amp;quot;after&amp;quot; pic of it without any stains " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 66.36%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A smooth top stove with stains and deposits and an &amp;quot;after&amp;quot; pic of it without any stains "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/16/16/asset/7c1edeaca9e0/sub-buzz-3422-1584376958-7.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/16/16/asset/7c1edeaca9e0/sub-buzz-3422-1584376958-7.jpg?resize=990:657"
  data-crop="66.40"
  data-mobile-crop="66.36"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RGKMGWX8J8ODO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.value="0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RGKMGWX8J8ODO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review</b>: "I’d almost given up on trying to clean up my flat-top stove, but this product has given me hope again. <b>It’s super easy and fast.</b> You just scrape off things first, than apply the liquid, buff it with the scrub they give you, and wipe/scrape clean. <b>It took less than 10 minutes and looked great!</b> I recommend using this regularly on the stove." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R20KQPORF989U5?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C14876742" data-vars-keywords="cleaning" data-vars-link-id="14876742" data-vars-price.value="0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R20KQPORF989U5?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C14876742" rel="nofollow" target="_blank">Shopper</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.value="0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$</a><a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.value="0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000MIWRTM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C11%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">11.50</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125681448" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">12.</span>
    

    
      <span class="js-subbuzz__title-text">A bottle of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001ECQ7G4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876705" data-vars-keywords="cleaning" data-vars-link-id="14876705" data-vars-price.currency="USD" data-vars-price.value="22.96" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001ECQ7G4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876705" rel="nofollow" target="_blank">Tend Skin Solution</a> to help take care of razor bumps, ingrown hair, and razor burn so you don't have to spend hours psyching yourself up to shave knowing that you're gonna be dodging a bazillion sensitive spots on your skin.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681448
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-09/10/20/asset/19d492661f48/sub-buzz-8271-1568148328-1.png" alt="reviewer before pic of red bumpy arm pit, then after of clear armpit" class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 81.25%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer before pic of red bumpy arm pit, then after of clear armpit"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-09/10/20/asset/19d492661f48/sub-buzz-8271-1568148328-1.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-09/10/20/asset/19d492661f48/sub-buzz-8271-1568148328-1.png"
  data-crop="81.28"
  data-mobile-crop="81.25"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1S426C0Z5TDTS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="22.96" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1S426C0Z5TDTS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "After many years of razor burn on my face/neck, I finally broke down and bought this per friend's recommendation. <b>I have sensitive skin and had given up hope that anything could help. This totally changed my outlook on shaving</b>. My neck especially would be the worst. I dab it on immediately after I rinse and dry, post-shave. It does burn a bit but that goes away pretty quickly. <b>Totally worth it to not have razor burn/bumps anymore. I only apply it once after shaving</b> even though the directions recommend repeat applications the following day. Go ahead and purchase, you won't be disappointed!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R24N4QXDTUGLYK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876718" data-vars-keywords="cleaning" data-vars-link-id="14876718" data-vars-price.currency="USD" data-vars-price.value="22.96" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R24N4QXDTUGLYK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876718" rel="nofollow" target="_blank">bill nye</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001ECQ7G4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876705" data-vars-keywords="cleaning" data-vars-link-id="14876705" data-vars-price.currency="USD" data-vars-price.value="22.96" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001ECQ7G4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C12%2C42%2Cmobile_web%2C0%2C0%2C14876705" rel="nofollow" target="_blank">$22.96</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125665559" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125665559
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">13.</span>
    

    
      <span class="js-subbuzz__title-text">A five-year <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/0811870197?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876716" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876716" data-vars-price.currency="USD" data-vars-price.value="14.31" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/0811870197?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876716" rel="nofollow" target="_blank">One Line A Day journal</a> so you can get past the hurdle of being too tired or intimidated by the idea of all-out ~journaling~, and still have something to meaningfully preserve your memories or state of mind over time.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg?resize=990:*","width":"990"},"original":{"height":"4000","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg","width":"3000"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg","width":3000,"height":4000,"attribution":"Katy Herman\/BuzzFeed","id":"125665562","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"4000","width":"3000","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/0d00c66f0935\/sub-buzz-29788-1601311317-12.jpg?crop=3000:4000;0,0","alt_text":"The cover of the small pale blue notebook "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg?resize=990:1320","width":"990"},"original":{"height":"4000","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg","width":"3000"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg","width":3000,"height":4000,"attribution":"Katy Herman\/BuzzFeed","id":"125665564","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"4000","width":"3000","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-09\/28\/16\/asset\/a1e0aeb39aa5\/sub-buzz-29505-1601311336-5.jpg?crop=3000:4000;0,0","alt_text":"The inside, with four small blank lines for each day "}],
          "id": 125665559,
          "bfa": {"e":"{idx:0,subbuzzId:125665559}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125665562">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/0d00c66f0935/sub-buzz-29788-1601311317-12.jpg?crop=3000%3A4000%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/0d00c66f0935/sub-buzz-29788-1601311317-12.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665562:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="The cover of the small pale blue notebook "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/0d00c66f0935/sub-buzz-29788-1601311317-12.jpg?crop=3000%3A4000%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125665564">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/a1e0aeb39aa5/sub-buzz-29505-1601311336-5.jpg?crop=3000%3A4000%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/a1e0aeb39aa5/sub-buzz-29505-1601311336-5.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665564:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="The inside, with four small blank lines for each day "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/28/16/asset/a1e0aeb39aa5/sub-buzz-29505-1601311336-5.jpg?crop=3000%3A4000%3B0%2C0&amp;resize=720%3A720"
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
  Katy Herman/BuzzFeed
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review</b>: "I've attempted to keep journals in the past, but I'd usually give up on the idea after a few weeks because <b>I'd fall behind on entries and it would begin to feel like a chore. This book makes it easy since I'm limited to just a few lines per day</b> — it takes less than a minute to complete. The book itself is really cute and appears to be well-made." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R105LVGMB7FA00?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876734" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876734" data-vars-price.currency="USD" data-vars-price.value="14.31" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R105LVGMB7FA00?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876734" rel="nofollow" target="_blank">Jo Fo</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/0811870197?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876716" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876716" data-vars-price.currency="USD" data-vars-price.value="14.31" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/0811870197?tag=bfemmalord-20&amp;ascsubtag=5723477%2C13%2C42%2Cmobile_web%2C0%2C0%2C14876716" rel="nofollow" target="_blank">$14.31</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125680897" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">14.</span>
    

    
      <span class="js-subbuzz__title-text">A reliable <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07THHQMHM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="11.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07THHQMHM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">wireless charging pad</a> to unclutter your desk — TBH, this thing charges so many of your gadgets it may end up being the only one you'll ever need.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125680897
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/375ba930d95b/sub-buzz-197-1601484479-20.png" alt="A model placing a phone down on a wireless black charging pad " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 68.79%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A model placing a phone down on a wireless black charging pad "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/375ba930d95b/sub-buzz-197-1601484479-20.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/375ba930d95b/sub-buzz-197-1601484479-20.png?resize=990:681"
  data-crop="68.80"
  data-mobile-crop="68.79"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>This little power bank can charge *deep breath*: the iPhone SE, 11, 11 Pro, 11 Pro Max, Xs Max, XR, XS, X, 8, and 8 Plus; AirPods; and the Galaxy S20, S10, S9, S8, and Galaxy Note 10, 9, and 8. </p><p><b>Promising review:</b> "I gave up on wireless charging years ago. Not reliable and super slow. <b>This one seems to charge my mophie battery case faster than being plugged directly into the charger.</b> How does that work? As long as you know where to place your phone it seems to charge fine. <b>And the blue light is nice to show its charging. But for the price you can't go wrong.</b> You could easily make something to hold this and your phone if you really wanted to. Long as you place it in the middle though it really is fine." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3G3FHOUW095N5?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C14876714" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876714" data-vars-price.currency="USD" data-vars-price.value="11.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3G3FHOUW095N5?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C14876714" rel="nofollow" target="_blank">DJK</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07THHQMHM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="11.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07THHQMHM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C14%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$11.95</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  data-module="subbuzz-image">
  
  <div id="125665650" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">15.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B014F18ZGU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="32.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B014F18ZGU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">memory foam seat cushion</a> for your tushy so good at relieving pressure from your tailbone and back that you might not even realize how *much* of a problem you have with your current chair setup until you get that sweet, sweet relief.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665650
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/15/asset/fc0a82299215/sub-buzz-879-1582124597-1.jpg" alt="gray memory foam seat cushion on a rolling office chair " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 75.05%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="gray memory foam seat cushion on a rolling office chair "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/15/asset/fc0a82299215/sub-buzz-879-1582124597-1.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/15/asset/fc0a82299215/sub-buzz-879-1582124597-1.jpg?resize=990:743"
  data-crop="75.04"
  data-mobile-crop="75.05"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3SOXBTWCLDW5V?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="32.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3SOXBTWCLDW5V?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I bought this because <b>my doctor recommended getting a coccyx cushion for my office chair to help with my sciatica pain.</b> I was skeptical at first but thought would give it a shot. After purchasing two other cushions including the best sellers and not finding comfort I gave up. The first one I purchased was an Aylio cushion which is made of a very light foam material and it provided no support at all. The second one my wife got for me was hard as rock. <b>Then I've found this gel cushion and I'm so glad I did, the best investment ever made to ease my back pain!!</b> First this helped tremendously with my sciatica. <b>I had switched to a standup desk because of pain while sitting but now I can sit for hours.</b> Second this looks to be made of super high quality durable materials and I really like the gel layer on top, it feels a lot nicer when you sit. <b>It works great on my office chair. It's a little thick as a car seat cushion but works out fine when you lower down the seat.</b> I will be ordering more of this as Christmas gifts for my parents." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R12H6PCQQXVV87?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C14876687" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876687" data-vars-price.currency="USD" data-vars-price.value="32.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R12H6PCQQXVV87?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C14876687" rel="nofollow" target="_blank">Sarp Sekeroglu</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B014F18ZGU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="32.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B014F18ZGU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C15%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$32.95</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125666414" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">16.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00VPVEVSK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876676" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876676" data-vars-price.currency="USD" data-vars-price.value="8.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00VPVEVSK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876676" rel="nofollow" target="_blank">foot file</a> just as effective — if not more so! — than going to a salon. This will remove calluses and hard or cracked skin from your feet with some gentle, pain-free rubbing. It works whether your feet are dry or wet at the time, and will leave your heels so soft you might start petting them.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125666414
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/15/asset/4b74ed238220/sub-buzz-8506-1598973259-10.png" alt="Before image of a cracked foot with an after image of the skin smooth " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 66.16%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Before image of a cracked foot with an after image of the skin smooth "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/15/asset/4b74ed238220/sub-buzz-8506-1598973259-10.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/15/asset/4b74ed238220/sub-buzz-8506-1598973259-10.png?resize=990:655"
  data-crop="66.08"
  data-mobile-crop="66.16"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RH0XHZ828N82A?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="8.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RH0XHZ828N82A?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Have tried multiple foot scrapers to get rid of my calloused feet, and none worked. <b>I almost gave up but ordered this on a whim and wow! My feet are baby soft now!!!</b> 10/10!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3OPXW6MSPE6SX?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876697" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876697" data-vars-price.currency="USD" data-vars-price.value="8.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3OPXW6MSPE6SX?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876697" rel="nofollow" target="_blank">Ashley</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00VPVEVSK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876676" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876676" data-vars-price.currency="USD" data-vars-price.value="8.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00VPVEVSK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C16%2C42%2Cmobile_web%2C0%2C0%2C14876676" rel="nofollow" target="_blank">$8.95</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125681427" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">17.</span>
    

    
      <span class="js-subbuzz__title-text">A painless, mint-flavored <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07L6P7J2M?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="16.82" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07L6P7J2M?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">teeth-whitening pen</a> for sensitive teeth and gums that can help lighten up years worth of stains from coffee, tea, wine, or just ... you know. Existing as a human with teeth.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681427
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-10/17/21/asset/ba1234ee5b98/sub-buzz-1664-1571347656-1.jpg" alt="reviewer&amp;#x27;s before pic with yellow teeth and then after pic with much whiter teeth" class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 100.00%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer&amp;#x27;s before pic with yellow teeth and then after pic with much whiter teeth"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-10/17/21/asset/ba1234ee5b98/sub-buzz-1664-1571347656-1.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-10/17/21/asset/ba1234ee5b98/sub-buzz-1664-1571347656-1.jpg?resize=990:990"
  data-crop="100.00"
  data-mobile-crop="100.00"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1O3QICAWG2KOO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="16.82" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1O3QICAWG2KOO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I have used many different teeth whiteners in my life<b>. I was about to give up until I saw this product on Amazon. I bought it and have used it for a week. WOW! Thumbs up!</b> Thank you for making me smile more during this stressful time!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2WZKASBWCFSL1?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C14876702" data-vars-keywords="cleaning" data-vars-link-id="14876702" data-vars-price.currency="USD" data-vars-price.value="16.82" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2WZKASBWCFSL1?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C14876702" rel="nofollow" target="_blank">PAKE</a></p><p>Get a two-pack from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07L6P7J2M?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="16.82" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07L6P7J2M?tag=bfemmalord-20&amp;ascsubtag=5723477%2C17%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$16.82</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125665627" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">18.</span>
    

    
      <span class="js-subbuzz__title-text">A bunch of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0019QEB86?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="2.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0019QEB86?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Miracle-Gro "food spikes"</a> so spookily good at their job they can bring plants back from the brink of death, and then will continuously feed them for 30 to 60 days as a bonus.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665627
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/20/asset/7d18e719f7c3/sub-buzz-286-1582922835-9.jpg" alt="A model pushing a green pellet into a potted plant&amp;#x27;s soil " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 66.67%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A model pushing a green pellet into a potted plant&amp;#x27;s soil "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/20/asset/7d18e719f7c3/sub-buzz-286-1582922835-9.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/20/asset/7d18e719f7c3/sub-buzz-286-1582922835-9.jpg?resize=990:660"
  data-crop="66.72"
  data-mobile-crop="66.67"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I DO NOT have a green thumb, which is why I have a lot of sick plants inside my house. I have a LOT of plants on my patio that were dying and a lot that I had had to throw away. <b>I decided (before I completely gave up) to try plant food (duh)! I</b> purchased these plant food spikes and a container of the Miracle Grow liquid plant food. I rotate them when it's time to 'feed' the plants again. <b>Yesterday my A/C repairman asked me what I was doing to make my plants so pretty! No one has ever asked me that before</b>! I showed him the spikes and the Miracle Grow. <b>**Now I know these say they are for 'indoor' plants, but the employee in the 'garden' dept told me they worked just as well for outside plant</b>s.....I couldn't find any that were for outside plants so I took a chance on these and he was right." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R6Q364HRZHDZY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C14876731" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876731" data-vars-price.currency="USD" data-vars-price.value="2.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R6Q364HRZHDZY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C14876731" rel="nofollow" target="_blank">Shirley C.</a> </p><p>Get a set of 24 from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0019QEB86?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="2.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0019QEB86?tag=bfemmalord-20&amp;ascsubtag=5723477%2C18%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$2.99</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125668549" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125668549
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">19.</span>
    

    
      <span class="js-subbuzz__title-text">A glare-free <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07CXG6C9W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07CXG6C9W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Kindle Paperwhite</a> that not only can hold thousands of books, but will let you read them the *chef's kiss* way you like best — you can customize with all your favorite fonts and layouts, and organize your virtual shelves to your precise standards. Bonus — its charge lasts weeks (plural!!), and it's waterproof, so you can take this bb in the bathtub 🍷.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png","images":{"mobile":{"height":"934","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png?resize=990:*","width":"990"},"original":{"height":"1142","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png","width":"1210"},"standard":{"height":"590","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png?resize=625:*","width":"625"},"wide":{"height":"934","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png","width":1210,"height":1142,"attribution":"Amazon","id":"125668550","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1142","width":"1210","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/3f7a40cda50c\/sub-buzz-185-1582133792-1.png?crop=1210:1142;0,0","alt_text":"A Kindle Paperwhite turned on to show the layout out six books on the menu screen "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg","images":{"mobile":{"height":"743","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg?resize=990:743","width":"990"},"original":{"height":"960","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg","width":"1280"},"standard":{"height":"469","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg?resize=625:469","width":"625"},"wide":{"height":"743","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg?resize=990:743","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg","width":1280,"height":960,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R8NAVGT5UHJEU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"129.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R8NAVGT5UHJEU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668551","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"960","width":"1280","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/19\/17\/asset\/7ca463028117\/sub-buzz-196-1582133859-7.jpg?crop=1280:960;0,0","alt_text":"A side view of a Kindle that has spilled water on it to show that it's waterproof "}],
          "id": 125668549,
          "bfa": {"e":"{idx:0,subbuzzId:125668549}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0595;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125668550">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/3f7a40cda50c/sub-buzz-185-1582133792-1.png?crop=1210%3A1142%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 94.38%;"
                data-aratio="94.38">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/3f7a40cda50c/sub-buzz-185-1582133792-1.png"
                     data-bfa="@a:click:photoset;@d:png:125668550:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A Kindle Paperwhite turned on to show the layout out six books on the menu screen "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/3f7a40cda50c/sub-buzz-185-1582133792-1.png?crop=1210%3A1142%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 1.3333;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125668551">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/7ca463028117/sub-buzz-196-1582133859-7.jpg?crop=1280%3A960%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 75.0%;"
                data-aratio="75.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/7ca463028117/sub-buzz-196-1582133859-7.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668551:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A side view of a Kindle that has spilled water on it to show that it&#39;s waterproof "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/17/asset/7ca463028117/sub-buzz-196-1582133859-7.jpg?crop=1280%3A960%3B0%2C0&amp;resize=720%3A720"
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
  Amazon, <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R8NAVGT5UHJEU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R8NAVGT5UHJEU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I love the ease of using this reader — remembers and opens to the last page read, and love the touch either side to advance or go back a page. Downloads books in seconds. <b>I gave up reading a long time ago because every time I put a book in my hand I instantly fell asleep — this is my first e-reader and I have already read six books in less than two weeks.</b> It is just a different reading experience. I love it. Everyone should have one!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R4SPG35UDC5Y?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R4SPG35UDC5Y?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Amazon Customer</a> </p><p>*Another* promising review: "Once blurry, now clear! <b>I have some eye problems and had mostly given up on reading.</b> Now, I once again can enjoy reading due to the built in features." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2TQD0ND0A64JG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2TQD0ND0A64JG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Amazon Customer</a> </p><p>Read BuzzFeed's <a data-vars-affiliate="Amazon" data-vars-href="https://www.buzzfeed.com/maitlandquitmeyer/waterproof-kindle-paperwhite-2018" data-vars-keywords="cleaning,fast fashion" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.buzzfeed.com/maitlandquitmeyer/waterproof-kindle-paperwhite-2018">closer look at the Kindle Paperwhite</a> for more deets! </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07CXG6C9W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="129.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07CXG6C9W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C19%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$129.99</a> (available in four colors).</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125665081" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">20.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B081ZGJ2GS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B081ZGJ2GS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">shoe deodorizers</a> with activated charcoal insides that will not only take care of the smell in your sweaty shoes quickly, but will work for months to keep it at bay.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125665081
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/19/asset/a094a845b121/sub-buzz-292-1582139351-1.jpg" alt="A set of navy blue bean bag deodorizers in a pair of running shoes " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 100.10%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A set of navy blue bean bag deodorizers in a pair of running shoes "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/19/asset/a094a845b121/sub-buzz-292-1582139351-1.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/19/19/asset/a094a845b121/sub-buzz-292-1582139351-1.jpg?resize=990:991"
  data-crop="100.00"
  data-mobile-crop="100.10"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I am shocked by this product! I had given up hope of ever having my shoes back in the house again. I have tried every trick in the book, but nothing has ever worked to eliminate the odor from my shoes. <b>I put these in my shoes the afternoon I got them and 24 hours later, my shoes had no smell! I</b> could not believe it. If you have tried everything, look no further! This product works!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R36TCTQG12N2FR?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C14876729" data-vars-keywords="cleaning" data-vars-link-id="14876729" data-vars-price.currency="USD" data-vars-price.value="9.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R36TCTQG12N2FR?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C14876729" rel="nofollow" target="_blank">brindlmc</a></p><p>Get a set of two from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B081ZGJ2GS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B081ZGJ2GS?tag=bfemmalord-20&amp;ascsubtag=5723477%2C20%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$9.95</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125666144" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125666144
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">21.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07H4F28MJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07H4F28MJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">battery-operated depiller</a> you can use to restore nice sweaters, bedding, and upholstery so instantly it'll feel like you cast a time spell back to the first day you bought 'em.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg","images":{"mobile":{"height":"1344","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg?resize=990:*","width":"990"},"original":{"height":"1647","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg","width":"1213"},"standard":{"height":"849","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1344","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg","width":1213,"height":1647,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RGMVO4Z6P0WIP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"10.0\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RGMVO4Z6P0WIP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666145","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1647","width":"1213","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/36521efb967c\/sub-buzz-83-1583863176-1.jpg?crop=1213:1647;0,0","alt_text":"The hand held depiller in a reviewer's hand "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","images":{"mobile":{"height":"500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","width":"456"},"original":{"height":"500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","width":"456"},"standard":{"height":"500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","width":"456"},"wide":{"height":"500","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","width":"456"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg","width":456,"height":500,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJIIWCNY58GT0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"10.0\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RJIIWCNY58GT0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666146","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"500","width":"456","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/10\/17\/asset\/d0d10cc578af\/sub-buzz-77-1583863195-1.jpg?crop=456:500;0,0","alt_text":"A before and after image of a pilled sweater that has all the pilling removed "}],
          "id": 125666144,
          "bfa": {"e":"{idx:0,subbuzzId:125666144}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.7365;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125666145">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/36521efb967c/sub-buzz-83-1583863176-1.jpg?crop=1213%3A1647%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 135.78%;"
                data-aratio="135.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/36521efb967c/sub-buzz-83-1583863176-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666145:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="The hand held depiller in a reviewer&#39;s hand "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/36521efb967c/sub-buzz-83-1583863176-1.jpg?crop=1213%3A1647%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.912;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125666146">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/d0d10cc578af/sub-buzz-77-1583863195-1.jpg?crop=456%3A500%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 109.65%;"
                data-aratio="109.65">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/d0d10cc578af/sub-buzz-77-1583863195-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666146:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A before and after image of a pilled sweater that has all the pilling removed "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/10/17/asset/d0d10cc578af/sub-buzz-77-1583863195-1.jpg?crop=456%3A500%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RGMVO4Z6P0WIP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RGMVO4Z6P0WIP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RJIIWCNY58GT0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RJIIWCNY58GT0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "This is literally THE BEST item I’ve ever bought from Amazon. <b>I was ready to give up on my furniture and buy a new set until I bought this. For ~$10 and it saved my couches!</b> I posted it to my social media and so many friends reached out to buy it as well (I wish I got a commission, ha!). It does take patience and a few passes over the really bad area, but so worth it! Note: I’ve only used it on this type of material for cat scratching pulls." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1I1AZH706MOTI?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C14876749" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876749" data-vars-price.currency="USD" data-vars-price.value="10.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1I1AZH706MOTI?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C14876749" rel="nofollow" target="_blank">Elizabeth</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07H4F28MJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="10.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07H4F28MJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C21%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$12.99</a> (available in five colors).</p>
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
  
  <div id="125666228" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125666228
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">22.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000EFDOOA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000EFDOOA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">broom for pet and human hair</a> that can work on any type of floor, but is specifically designed to pull it up from the carpet deeper than even a lot of vacuums can reach, so you can go on an alarming but satisfying mission to the depths of your rugs.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg","images":{"mobile":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg?resize=990:*","width":"990"},"original":{"height":"3840","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg","width":"2160"},"standard":{"height":"1111","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg?resize=625:*","width":"625"},"wide":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg","width":2160,"height":3840,"attribution":"Emma Lord\/BuzzFeed","id":"125666229","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"3840","width":"2160","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/ead5da5b1c7e\/sub-buzz-1554-1597697100-9.jpg?crop=2160:3840;0,0","alt_text":"A BuzzFeed editor's carpet with a hairball next to the broom "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg","images":{"mobile":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg?resize=990:1760","width":"990"},"original":{"height":"3664","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg","width":"2061"},"standard":{"height":"1111","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg?resize=625:1111","width":"625"},"wide":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg?resize=990:1760","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg","width":2061,"height":3664,"attribution":"Emma Lord\/BuzzFeed","id":"125666230","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"3664","width":"2061","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-08\/17\/20\/asset\/2d0cb8848093\/sub-buzz-1529-1597697108-26.jpg?crop=2061:3664;0,0","alt_text":"BuzzFeed editor looking deeply disgusted with herself and holding the giant hairball from the floor "}],
          "id": 125666228,
          "bfa": {"e":"{idx:0,subbuzzId:125666228}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.5625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125666229">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/ead5da5b1c7e/sub-buzz-1554-1597697100-9.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 177.78%;"
                data-aratio="177.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/ead5da5b1c7e/sub-buzz-1554-1597697100-9.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666229:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A BuzzFeed editor&#39;s carpet with a hairball next to the broom "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/ead5da5b1c7e/sub-buzz-1554-1597697100-9.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.5625;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125666230">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/2d0cb8848093/sub-buzz-1529-1597697108-26.jpg?crop=2061%3A3664%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 177.78%;"
                data-aratio="177.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/2d0cb8848093/sub-buzz-1529-1597697108-26.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666230:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="BuzzFeed editor looking deeply disgusted with herself and holding the giant hairball from the floor "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/20/asset/2d0cb8848093/sub-buzz-1529-1597697108-26.jpg?crop=2061%3A3664%3B0%2C0&amp;resize=720%3A720"
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
  Emma Lord/BuzzFeed
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>An embarrassing confession: <b>my hair gets so ingrained in the carpet that a vacuum truly does nothing for it.</b> In fact, to make matters worse, weird particles get stuck in the hair on the floor, which is stuck to the carpet, so I often was just unrooting clumps of hair from the floor with my hands (sorry for the visual). <b>I bought this broom and it immediately started pulling it up GOBS of hair.</b> My carpet like, genuinely changed color (turns out the pink was supposed to be much pinker, whoops). Anyway, do with that semi-horrifying information what you will. </p><p><b>Promising review:</b> "A month or so I gave up on a worthless Hoover vacuum cleaner, and asked my friends for suggestions for a better brand. Amongst the suggestions, someone recommended getting this carpet rake to pick up most of the cat hair before vacuuming<b>. It seemed like extra work, but it's affordable, so I gave it a shot. It's amazing. It really yanks the fur right out of the carpet,</b> and keeps it in long bunchy strips that you can then sweep up with a broom, or just deposit directly in the trash. It's a welcome accessory to keep from having to clean pet hair out of your vacuum every time you use said vacuum." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RD4AFCF3WN7KU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C14876699" data-vars-keywords="cleaning" data-vars-link-id="14876699" data-vars-price.currency="USD" data-vars-price.value="12.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RD4AFCF3WN7KU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C14876699" rel="nofollow" target="_blank">Adam Stone</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000EFDOOA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000EFDOOA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C22%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$12.99</a>.</p>
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
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125665079" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125665079
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">23.</span>
    

    
      <span class="js-subbuzz__title-text">An <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07GM317JJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.97" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07GM317JJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">smudgeproof eyeliner stamp</a> so you can finally get the perfect cat-eye on the first go without having to ~wing it~ (read: wasting eight cotton balls, half a bottle of eye makeup remover, and all of the minutes you were setting aside to make your morning coffee).</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png","images":{"mobile":{"height":"1052","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png?resize=990:*","width":"990"},"original":{"height":"748","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png","width":"704"},"standard":{"height":"664","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png?resize=625:*","width":"625"},"wide":{"height":"1052","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png","width":704,"height":748,"attribution":"Amazon","id":"125665080","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"704","width":"704","x_offset":"0","y_offset":"22"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/6519c3ed0b86\/sub-buzz-251-1583527320-1.png?crop=704:704;0,22","alt_text":"The eyeliner stamp"},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","images":{"mobile":{"height":"1248","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","width":"672"},"original":{"height":"1248","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","width":"672"},"standard":{"height":"1161","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg?resize=625:1161","width":"625"},"wide":{"height":"1248","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","width":"672"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg","width":672,"height":1248,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1QS7TV7A3FKRY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"14.97\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1QS7TV7A3FKRY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125665082","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"672","width":"672","x_offset":"0","y_offset":"72"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/6\/20\/asset\/a0b8e5b47568\/sub-buzz-259-1583527728-4.jpg?crop=672:672;0,72","alt_text":"Reviewer image of winged eyeliner on their eye "}],
          "id": 125665079,
          "bfa": {"e":"{idx:0,subbuzzId:125665079}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125665080">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/6519c3ed0b86/sub-buzz-251-1583527320-1.png?crop=704%3A704%3B0%2C22&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/6519c3ed0b86/sub-buzz-251-1583527320-1.png"
                     data-bfa="@a:click:photoset;@d:png:125665080:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="The eyeliner stamp"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/6519c3ed0b86/sub-buzz-251-1583527320-1.png?crop=704%3A704%3B0%2C22&amp;resize=720%3A720"
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
                  style="flex: 1.0;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125665082">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/a0b8e5b47568/sub-buzz-259-1583527728-4.jpg?crop=672%3A672%3B0%2C72&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 100.0%;"
                data-aratio="100.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/a0b8e5b47568/sub-buzz-259-1583527728-4.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125665082:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer image of winged eyeliner on their eye "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/6/20/asset/a0b8e5b47568/sub-buzz-259-1583527728-4.jpg?crop=672%3A672%3B0%2C72&amp;resize=720%3A720"
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
  Amazon, <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1QS7TV7A3FKRY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.97" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1QS7TV7A3FKRY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>Psst — this tool is double-sided, so you can choose the thickness of your wing, and comes with two stamp pens — one for each eye! </p><p><b>Promising review:</b> "This stamp has totally changed (and elevated) my eyeliner game! <b>I was a little dubious at first because I have literally, tried everything in an attempt to make a flawless wing/cat-eye look.</b> I've never been able to master it and therefore, had pretty much given up on trying to make that happen for me. THIS STAMP IS A GAME-CHANGER! The first couple of times you use it will be some trial and error to determine where the appropriate starting point is on your lid, but once you get that down<b>, it's literally SO EASY and looks perfect every time.</b> I stamp and then fill in the rest of my eyeliner with my normal product — presto! <b>Perfect wings in three minutes. And it DOES NOT budge.</b> You can put this on at 6 a.m. and it still looks good at 6 p.m. It is also easy to remove with any drug store makeup remover or towelette. If it came in other colors I'd buy them all!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1GN0VNC2H7D8L?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C14876720" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876720" data-vars-price.currency="USD" data-vars-price.value="14.97" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1GN0VNC2H7D8L?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C14876720" rel="nofollow" target="_blank">J.S. Massie</a></p><p>Get a set of two from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07GM317JJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.97" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07GM317JJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C23%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$14.97</a> (available in two colors and four styles).</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125666453" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">24.</span>
    

    
      <span class="js-subbuzz__title-text">A bottle of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000C0182W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.68" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000C0182W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">wood polish</a> that will make your all your scuffed-up cabinets and hardwood floors look brand spanking new, even if you're pretty sure the damage is older than you are.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125666453
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/15/16/asset/6e124b5b4dac/sub-buzz-9647-1594831456-3.jpg" alt="A damaged wood cabinet in a before pic, and an after pic without any scratches or wear and tear " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 66.36%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A damaged wood cabinet in a before pic, and an after pic without any scratches or wear and tear "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/15/16/asset/6e124b5b4dac/sub-buzz-9647-1594831456-3.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-07/15/16/asset/6e124b5b4dac/sub-buzz-9647-1594831456-3.jpg?resize=990:657"
  data-crop="66.40"
  data-mobile-crop="66.36"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R32EF5MIQ5L1BJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.68" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R32EF5MIQ5L1BJ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "OH MY GOODNESS! It’s a miracle! I bought this to try to salvage a very damaged tabletop. A lot of heat damage and scratches. I used the #0000 steel wool the directions recommended and with a bit of elbow grease, the tabletop turned out beautifully. <b>I am SOOOOO happy! It was very easy to use and it works so well — like magic!</b> I followed up with the Feed-n-Wax, and that made this 100+ year old table look better than it has in years! I am very pleased. <b>If you have furniture you are ready to give up on or send away for refinishing because of some scratches, heat or water damage, try this first!</b> I am so glad I did!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1MR2O6E4PHOEZ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C14876704" data-vars-keywords="cleaning" data-vars-link-id="14876704" data-vars-price.currency="USD" data-vars-price.value="9.68" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1MR2O6E4PHOEZ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C14876704" rel="nofollow" target="_blank">Jenipher</a></p><p>Get a bottle from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B000C0182W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.68" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B000C0182W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C24%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$9.68</a> (available in nine finishes).</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  data-module="subbuzz-image">
  
  <div id="125668300" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">25.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B074ZDXFL6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876698" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876698" data-vars-price.currency="USD" data-vars-price.value="8.59" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B074ZDXFL6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876698" rel="nofollow" target="_blank">shampoo scalp massager</a> you can use in the shower to massage and exfoliate your scalp — not only will it feel decadent, it'll help tackle dandruff and promote healthier hair growth at the source.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125668300
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/21/asset/06cd913f1f35/sub-buzz-1528-1597698304-17.png" alt="reviewer image of the bristles on the blue massager " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 122.63%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="reviewer image of the bristles on the blue massager "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/21/asset/06cd913f1f35/sub-buzz-1528-1597698304-17.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/17/21/asset/06cd913f1f35/sub-buzz-1528-1597698304-17.png?resize=990:1214"
  data-crop="122.56"
  data-mobile-crop="122.63"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3BNGGM387O3U7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="8.59" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3BNGGM387O3U7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>Psst — a lot of reviewers mention that this just feels REALLY NICE on their scalps, like being at a ~salon~ when they wash your hair for you. </p><p><b>Promising review:</b> "If you have stubborn dandruff, <b>TRY THIS before you give up! I have seborrheic dermatitis, which causes a greasy build up of dandruff on my scalp.</b> When I use this product to rub the shampoo through my hair while in the shower, it cleanses my scalp and removes the build up. <b>My dandruff has significantly decreased and is almost gone.</b> I have tried a variety of other products to get rid of my dandruff including high powered dandruff shampoo. None had worked before this. Overall I am incredibly pleased with this product." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R28YCCA58KYBRW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876675" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876675" data-vars-price.currency="USD" data-vars-price.value="8.59" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R28YCCA58KYBRW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876675" rel="nofollow" target="_blank">Marilyn</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B074ZDXFL6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876698" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876698" data-vars-price.currency="USD" data-vars-price.value="8.59" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B074ZDXFL6?tag=bfemmalord-20&amp;ascsubtag=5723477%2C25%2C42%2Cmobile_web%2C0%2C0%2C14876698" rel="nofollow" target="_blank">$8.59+</a> (available in three colors).</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125666473" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">26.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00ESKVN7W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="24.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00ESKVN7W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Squatty Potty</a>, one of those internet-famous stools you can put at the base of your toilet to prop your feet up on while you ~go~. The placement helps align your colon to make the process a whole lot easier and faster — like, 20 seconds compared to several minutes! — so you don't end up watching all of TikTok while you're waiting yourself out.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125666473
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/11/16/asset/fa4a86ed67a6/sub-buzz-9577-1597162632-1.jpg" alt="A model sitting on the toilet with their feet propped up on the white stool underneath it " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 129.90%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A model sitting on the toilet with their feet propped up on the white stool underneath it "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/11/16/asset/fa4a86ed67a6/sub-buzz-9577-1597162632-1.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/11/16/asset/fa4a86ed67a6/sub-buzz-9577-1597162632-1.jpg?resize=990:1286"
  data-crop="129.92"
  data-mobile-crop="129.90"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>Psst — a lot of <b>reviewers with chronic constipation and other gastrointestinal issues that get them ~backed up~</b> swear by this! </p><p><b>Promising review:</b> "This thing provided relief INSTANTLY! I have to take pain meds for severe back problems, which means I get blocked easily...even if I am on a liquid diet. The dreaded 24-hr prep process for colonoscopies takes 48-hrs and twice the prep for me and there may still be stuff left over because my body hates pooping these days. <b>It normally takes an hour or more before I just have to give up and use a suppository or enema</b>. I take massive amounts of chewable gummy fiber, eat enough vegetables for my entire family, and drink water as if I were an ocean creature...at least 8-10 glasses a day (usually more...much more). If I drink coffee, I have to pee but that's about it. And I pee a lot with all that water. <b>This stool is the FIRST thing that made this process easier.</b> It arrived in its own box. I thought...it must be special. I unwrapped its plastic and placed it in its new glorious position. <b>Then I decided, 'What the heck, let's give it a go!' AND I DID! No struggling. No squirming. No straining. No squeezing. No grimacing. No difficulty. Just GO!</b> THANK YOU GOD!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R13PWMDVQZNAMU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C14876670" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876670" data-vars-price.currency="USD" data-vars-price.value="24.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R13PWMDVQZNAMU?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C14876670" rel="nofollow" target="_blank">NoneYa</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00ESKVN7W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="24.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00ESKVN7W?tag=bfemmalord-20&amp;ascsubtag=5723477%2C26%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$24.99</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125681254" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">27.</span>
    

    
      <span class="js-subbuzz__title-text">A bottle of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00AINMFAC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C14876733" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876733" data-vars-price.currency="USD" data-vars-price.value="14.84" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00AINMFAC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C14876733" rel="nofollow" target="_blank">dandruff shampoo</a> designed to gently relieve flaking, scaling, and itching from dandruff from the very first wash.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681254
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-05/8/14/asset/buzzfeed-prod-web-04/sub-buzz-16478-1557341239-2.jpg" alt="A reviewer image of their scalp with dandruff, and an after shot of their scalp without it " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 100.00%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer image of their scalp with dandruff, and an after shot of their scalp without it "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-05/8/14/asset/buzzfeed-prod-web-04/sub-buzz-16478-1557341239-2.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-05/8/14/asset/buzzfeed-prod-web-04/sub-buzz-16478-1557341239-2.jpg?resize=990:990"
  data-crop="100.00"
  data-mobile-crop="100.00"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3HNW7K1MCWFPD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.84" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3HNW7K1MCWFPD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Unbelievable! I've suffered from dandruff for years and had pretty much given up. <b>I can't remember how I came across this product but literally, it has solved the problem.</b> Like, I have no idea what is going on but (knock on wood) I haven't had any flakes since starting to use it every few days. Zero." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R23MEDGNFM6TVZ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="14.84" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R23MEDGNFM6TVZ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">RH</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00AINMFAC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C14876733" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876733" data-vars-price.currency="USD" data-vars-price.value="14.84" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00AINMFAC?tag=bfemmalord-20&amp;ascsubtag=5723477%2C27%2C42%2Cmobile_web%2C0%2C0%2C14876733" rel="nofollow" target="_blank">$14.84</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning"
  >
  
  <div id="125666509" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125666509
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">28.</span>
    

    
      <span class="js-subbuzz__title-text">A jar of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00S7ZPB8Q?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876725" data-vars-keywords="cleaning" data-vars-link-id="14876725" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00S7ZPB8Q?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876725" rel="nofollow" target="_blank">Aztec healing clay masks</a> for acne that essentially suck the gunk out of your pores (and pre-existing acne) like a vacuum, and will leave your skin feeling smooth as heck.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg","images":{"mobile":{"height":"1318","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg?resize=990:*","width":"990"},"original":{"height":"1631","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg","width":"1225"},"standard":{"height":"832","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1318","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg","width":1225,"height":1631,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.75\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666510","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1631","width":"1225","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/326293c61a00\/sub-buzz-1012-1583336062-1.jpg?crop=1225:1631;0,0","alt_text":"A \"before\" image of a reviewer with spots of cystic acne on their chin "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg","images":{"mobile":{"height":"1318","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg?resize=990:1318","width":"990"},"original":{"height":"1631","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg","width":"1225"},"standard":{"height":"832","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg?resize=625:832","width":"625"},"wide":{"height":"1318","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg?resize=990:1318","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg","width":1225,"height":1631,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.75\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666511","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1631","width":"1225","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/4\/15\/asset\/343512ecdf31\/sub-buzz-122-1583336065-9.jpg?crop=1225:1631;0,0","alt_text":"An \"after\" image with the redness completely gone and the acne nearly disappeared"}],
          "id": 125666509,
          "bfa": {"e":"{idx:0,subbuzzId:125666509}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.7511;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125666510">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/326293c61a00/sub-buzz-1012-1583336062-1.jpg?crop=1225%3A1631%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.14%;"
                data-aratio="133.14">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/326293c61a00/sub-buzz-1012-1583336062-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666510:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A &#34;before&#34; image of a reviewer with spots of cystic acne on their chin "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/326293c61a00/sub-buzz-1012-1583336062-1.jpg?crop=1225%3A1631%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.7511;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125666511">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/343512ecdf31/sub-buzz-122-1583336065-9.jpg?crop=1225%3A1631%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.14%;"
                data-aratio="133.14">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/343512ecdf31/sub-buzz-122-1583336065-9.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125666511:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="An &#34;after&#34; image with the redness completely gone and the acne nearly disappeared"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/4/15/asset/343512ecdf31/sub-buzz-122-1583336065-9.jpg?crop=1225%3A1631%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3DAP54YZ7T2ET?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>People in the reviews are also singing its praises for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RE7U17DXXWWMR?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876701" data-vars-keywords="cleaning" data-vars-link-id="14876701" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RE7U17DXXWWMR?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876701" rel="nofollow" target="_blank">reducing the size of their pores</a>! Many of them advise mixing the mask with <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00RHMA3E2?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876741" data-vars-keywords="cleaning" data-vars-link-id="14876741" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00RHMA3E2?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876741" rel="nofollow" target="_blank">apple cider vinegar</a> for best results. </p><p><b>Promising review:</b> "I bought this mask after seeing a few people on YouTube do it daily for a week with awesome results. First off let me tell you about my skin. I’ve had acne since high school. <b>I developed cystic acne in my early twenties. Deep, painful hormonal chin acne.</b> I went on Accutane with amazing results.. for my skin. The side effects within my body were awful. But my skin stayed clear for about eight years. I took myself off of hormonal birth control six years ago and the cystic acne returned with a vengeance. I felt defeated. <b>I thought I was done with those kind of breakouts. I didn’t want to go back on birth control and I didn’t want to put my body through another round of Accutane, so I gave up</b>. I got really good at treating the cysts as they came up and covering and camouflaging them with makeup. My skin is scarred, dull, dry, oily, red, my pores are huge. <b>Needless to say, my hopes and expectations were low for this mask. What did I have to lose?</b> The first day I used it morning and night. The next morning my skin was noticeably way better! The cyst I had on my chin was smaller and coming to a head and my pores looked smaller. I couldn’t believe it! I used it for five more days, sometimes mixing just a bit to spot treat areas. <b>Today is day seven. My skin doesn’t even look like my skin. It’s clearer. My pores are smaller. My scars are faded. And the best part— I’ve had no new pimples or cysts!!!!!</b> (And I’m PMS-ing right now. I should have cysts all over my chin right about now.) <b>This mask may have just saved my skin. I just wish I knew about it sooner!!</b> I will absolutely continue to use it weekly as part of my skin care and beauty routine. Also a bonus- I used it as a hair mask because my curls were looking dry and dull. Did a rinse with apple cider vinegar and it’s like new, soft hair!!! You can’t go wrong with this stuff!!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3TDYI4GSNEGHP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876744" data-vars-keywords="cleaning" data-vars-link-id="14876744" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3TDYI4GSNEGHP?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876744" rel="nofollow" target="_blank">Amber Jean</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00S7ZPB8Q?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876725" data-vars-keywords="cleaning" data-vars-link-id="14876725" data-vars-price.currency="USD" data-vars-price.value="12.75" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00S7ZPB8Q?tag=bfemmalord-20&amp;ascsubtag=5723477%2C28%2C42%2Cmobile_web%2C0%2C0%2C14876725" rel="nofollow" target="_blank">$12.75</a>.</p>
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
  
  <div id="125668020" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125668020
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">29.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01LSUQSB0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="41.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01LSUQSB0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">dual hair dryer and brush</a> that'll dry your hair as you style it, cutting your prep time in half and giving your locks an incredible amount of volume and shine.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg","images":{"mobile":{"height":"1238","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg?resize=990:*","width":"990"},"original":{"height":"1019","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg","width":"815"},"standard":{"height":"781","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg?resize=625:*","width":"625"},"wide":{"height":"1238","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg","width":815,"height":1019,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RGH0QY0JMVB2F?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"41.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/RGH0QY0JMVB2F?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668021","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1019","width":"815","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-370-1581356940-3.jpg?crop=815:1019;0,0","alt_text":"A reviewer with long shiny hair styled from the brush "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","images":{"mobile":{"height":"2028","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","width":"986"},"original":{"height":"2028","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","width":"986"},"standard":{"height":"1285","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg?resize=625:1285","width":"625"},"wide":{"height":"2028","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","width":"986"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg","width":986,"height":2028,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R8B1JJ0OMDUL3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"41.99\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R8B1JJ0OMDUL3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668022","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"2028","width":"986","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/10\/17\/asset\/e7c6c076904e\/sub-buzz-381-1581356944-3.jpg?crop=986:2028;0,0","alt_text":"A reviewer holding the brush "}],
          "id": 125668020,
          "bfa": {"e":"{idx:0,subbuzzId:125668020}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.7998;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125668021">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-370-1581356940-3.jpg?crop=815%3A1019%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 125.03%;"
                data-aratio="125.03">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-370-1581356940-3.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668021:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer with long shiny hair styled from the brush "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-370-1581356940-3.jpg?crop=815%3A1019%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.4862;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125668022">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-381-1581356944-3.jpg?crop=986%3A2028%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 205.68%;"
                data-aratio="205.68">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-381-1581356944-3.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668022:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer holding the brush "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/10/17/asset/e7c6c076904e/sub-buzz-381-1581356944-3.jpg?crop=986%3A2028%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RGH0QY0JMVB2F?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="41.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RGH0QY0JMVB2F?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>, <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R8B1JJ0OMDUL3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="41.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R8B1JJ0OMDUL3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I have thick Polynesian hair and when I cut it short I needed something to make blowouts easier. <b>I had the hardest time following the same techniques my hairstylist did — dryer in one hand, round brush in the other — and had given up... But! This tool is a game-changer!</b> It's easy to run through my hair and I love to volume. It does a nice enough job that I don't flat iron anymore! <b>Definitely salon quality looking results.</b> It can get a bit heavy as the base requires a hefty grip, but nothing too strenuous." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3GD1YO678Y0B3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C14876693" data-vars-keywords="cleaning" data-vars-link-id="14876693" data-vars-price.currency="USD" data-vars-price.value="41.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3GD1YO678Y0B3?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C14876693" rel="nofollow" target="_blank">tcille</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01LSUQSB0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="41.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01LSUQSB0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C29%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$41.99</a> (available in three styles).</p>
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
  
  <div id="125666582" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125666582
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">30.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01BD164WM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.35" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01BD164WM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">produce-saver storage container</a> designed to keep your fruits and veggies fresh way longer, so you can finally stop surrendering to the race against time when your produce goes bad faster than you can finish it.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png","images":{"mobile":{"height":"743","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png?resize=990:*","width":"990"},"original":{"height":"594","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png","width":"792"},"standard":{"height":"469","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png?resize=625:*","width":"625"},"wide":{"height":"743","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png","width":792,"height":594,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.35\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666583","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"594","width":"792","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/99d9381f9714\/sub-buzz-719-1580851555-1.png?crop=792:594;0,0","alt_text":"A pack of fresh raspberries in the storage container with the caption \"first day\""},{"index":1,"number":2,"has_caption":false,"image_type":"png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","images":{"mobile":{"height":"594","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","width":"794"},"original":{"height":"594","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","width":"794"},"standard":{"height":"468","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png?resize=625:468","width":"625"},"wide":{"height":"594","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","width":"794"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png","width":794,"height":594,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.35\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125666584","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"594","width":"794","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/4\/21\/asset\/ae10c6967280\/sub-buzz-1799-1580851559-1.png?crop=794:594;0,0","alt_text":"A few leftover raspberries still in the container looking just as fresh with a caption that says \"sixth day\" "}],
          "id": 125666582,
          "bfa": {"e":"{idx:0,subbuzzId:125666582}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 1.3333;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125666583">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/99d9381f9714/sub-buzz-719-1580851555-1.png?crop=792%3A594%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 75.0%;"
                data-aratio="75.0">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/99d9381f9714/sub-buzz-719-1580851555-1.png"
                     data-bfa="@a:click:photoset;@d:png:125666583:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A pack of fresh raspberries in the storage container with the caption &#34;first day&#34;"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/99d9381f9714/sub-buzz-719-1580851555-1.png?crop=792%3A594%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 1.3367;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125666584">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/ae10c6967280/sub-buzz-1799-1580851559-1.png?crop=794%3A594%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 74.81%;"
                data-aratio="74.81">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/ae10c6967280/sub-buzz-1799-1580851559-1.png"
                     data-bfa="@a:click:photoset;@d:png:125666584:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A few leftover raspberries still in the container looking just as fresh with a caption that says &#34;sixth day&#34; "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/4/21/asset/ae10c6967280/sub-buzz-1799-1580851559-1.png?crop=794%3A594%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.35" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R36VD9Y261EXO8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>I recently bought one of these because I have a very bad habit of buying arugula and promptly forgetting about it, and it has significantly increased its life expectancy!! My fridge is old and bad (👀 at my landlord) so things tend to go bad within a few days, but this has helped my arugula stay fresh for a week and a half to two weeks. </p><p><b>Promising review:</b> "I've used the old Tupperware lettuce keeper for years and it never really kept the lettuce very long. I gave up and was just using Ziploc bags but that didn't work that great. <b>I bought this product and I've had a head of ice berg lettuce in it for three weeks and it is still good</b>. I am absolutely amazed at how fresh this keeps your produce and I would highly recommend it!!!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2UFZMSXB2CI4V?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.35" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2UFZMSXB2CI4V?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">TxGirl</a></p><p>Read BuzzFeed's review of these <a data-vars-affiliate="Amazon" data-vars-href="https://www.buzzfeed.com/nataliebrown/rubbermaid-freshworks-containers-review-make-produce-last" data-vars-keywords="cleaning" data-vars-price.currency="USD" data-vars-price.value="12.35" data-vars-retailers="Amazon" href="https://www.buzzfeed.com/nataliebrown/rubbermaid-freshworks-containers-review-make-produce-last">"miracle" produce containers</a> for more deets. </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01BD164WM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.35" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01BD164WM?tag=bfemmalord-20&amp;ascsubtag=5723477%2C30%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$12.35</a> (available in various sizes and sets).</p>
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
  
  <div id="125668366" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125668366
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">31.</span>
    

    
      <span class="js-subbuzz__title-text">A fast-acting <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001B0V5GG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876694" data-vars-keywords="cleaning" data-vars-link-id="14876694" data-vars-price.currency="USD" data-vars-price.value="12.74" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001B0V5GG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876694" rel="nofollow" target="_blank">carpet spot-removing spray</a> to take care of those miscellaneous stains from a previous tenant or that not-so-miscellaneous time you spilled half of the red sauce from your leftover noodles facedown on the floor.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.74\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668367","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/03a6655db16e\/sub-buzz-753-1582051449-1.jpg?crop=1224:1632;0,0","alt_text":"A deep dark stain on a carpet "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg?resize=990:1320","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"12.74\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668368","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-02\/18\/18\/asset\/2f8cecfafe8d\/sub-buzz-739-1582051452-3.jpg?crop=1224:1632;0,0","alt_text":"An after pic of the carpet with the stain completely gone "}],
          "id": 125668366,
          "bfa": {"e":"{idx:0,subbuzzId:125668366}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125668367">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/03a6655db16e/sub-buzz-753-1582051449-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/03a6655db16e/sub-buzz-753-1582051449-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668367:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A deep dark stain on a carpet "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/03a6655db16e/sub-buzz-753-1582051449-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125668368">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/2f8cecfafe8d/sub-buzz-739-1582051452-3.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/2f8cecfafe8d/sub-buzz-739-1582051452-3.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668368:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="An after pic of the carpet with the stain completely gone "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/18/18/asset/2f8cecfafe8d/sub-buzz-739-1582051452-3.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="12.74" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1001NF2RTAI21?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Holy cow. I have tried many carpet cleaners over the years, but this one is like in a division of excellence far above the rest. We had someone walk across our room in muddy shoes right before a party and this got it ALL up immediately and left no signs of the red clay that had been there minutes earlier. <b>We also had several stubborn spots that I had given up on. This product removed them as if they had never been there in a matter of 30 seconds.</b> I'm a fan for life! Say it again for the people in the back! This product is AMAZING AND PURE MAGIC. And for the skeptics out there, it has been weeks since I applied the cleaner to the spots and they have not returned and the carpet looks brand new." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RSF032D68QQZ4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876738" data-vars-keywords="cleaning" data-vars-link-id="14876738" data-vars-price.currency="USD" data-vars-price.value="12.74" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RSF032D68QQZ4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876738" rel="nofollow" target="_blank">Alex</a> </p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001B0V5GG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876694" data-vars-keywords="cleaning" data-vars-link-id="14876694" data-vars-price.currency="USD" data-vars-price.value="12.74" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001B0V5GG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C31%2C42%2Cmobile_web%2C0%2C0%2C14876694" rel="nofollow" target="_blank">$12.74</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  data-module="subbuzz-image">
  
  <div id="125681113" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">32.</span>
    

    
      <span class="js-subbuzz__title-text">A bottle of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00SNM5US4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876747" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876747" data-vars-price.currency="USD" data-vars-price.value="28.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00SNM5US4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876747" rel="nofollow" target="_blank">Olaplex hair repairing treatment</a> you can use to reduce breakage, strengthen locks, and restore curls. A lot of people are swearing by it after bleaching their hair for new quarantine looks — this helps make it all soft, so your new mermaid hair can shimmer the way it deserves!!</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681113
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/16/asset/0b98b98804e1/sub-buzz-8686-1598977254-9.jpg" alt="A reviewer with dry bleached hair and an after shot of the bleached hair soft again " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 66.36%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer with dry bleached hair and an after shot of the bleached hair soft again "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/16/asset/0b98b98804e1/sub-buzz-8686-1598977254-9.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/1/16/asset/0b98b98804e1/sub-buzz-8686-1598977254-9.jpg?resize=990:657"
  data-crop="66.40"
  data-mobile-crop="66.36"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1P9OBHDUBTR14?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="28.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1P9OBHDUBTR14?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review</b>: "After one use (left on for 45 minutes), some of my natural curls returned. <b>I'd given those curls up for dead after several rounds of bleaching left my hair brittle. Strength and softness seems to be returning to hair too.</b> But the fact that it brought back my natural curl leads me to believe that this product indeed rebuilds bonds." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3L58KR22AP7EY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876706" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876706" data-vars-price.currency="USD" data-vars-price.value="28.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3L58KR22AP7EY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876706" rel="nofollow" target="_blank">Simone</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00SNM5US4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876747" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876747" data-vars-price.currency="USD" data-vars-price.value="28.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00SNM5US4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C32%2C42%2Cmobile_web%2C0%2C0%2C14876747" rel="nofollow" target="_blank">$28</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  >
  
  <div id="125667639" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125667639
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">33.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0757JLTY7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.49" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0757JLTY7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">ring size adjuster</a> for loose rings, a comfy money-saver in the long run for anyone whose fingers are in between sizes and doesn't want to shell out $$$ to get everything resized.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg","images":{"mobile":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg?resize=990:*","width":"990"},"original":{"height":"3840","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg","width":"2160"},"standard":{"height":"1111","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg?resize=625:*","width":"625"},"wide":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg","width":2160,"height":3840,"attribution":"Emma Lord\/BuzzFeed","id":"125667640","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"3840","width":"2160","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/6532483092b0\/sub-buzz-1502-1583120297-13.jpg?crop=2160:3840;0,0","alt_text":"BuzzFeed editor with loose ring on their hand "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg","images":{"mobile":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg?resize=990:1760","width":"990"},"original":{"height":"3840","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg","width":"2160"},"standard":{"height":"1111","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg?resize=625:1111","width":"625"},"wide":{"height":"1760","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg?resize=990:1760","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg","width":2160,"height":3840,"attribution":"Emma Lord\/BuzzFeed","id":"125667641","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"3840","width":"2160","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/2\/3\/asset\/f9c44f9291ef\/sub-buzz-1766-1583120308-7.jpg?crop=2160:3840;0,0","alt_text":"BuzzFeed editor's hand with palm up showing the coiled ring size adjuster around the base of the ring on their finger "}],
          "id": 125667639,
          "bfa": {"e":"{idx:0,subbuzzId:125667639}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.5625;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125667640">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/6532483092b0/sub-buzz-1502-1583120297-13.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 177.78%;"
                data-aratio="177.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/6532483092b0/sub-buzz-1502-1583120297-13.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125667640:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="BuzzFeed editor with loose ring on their hand "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/6532483092b0/sub-buzz-1502-1583120297-13.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.5625;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125667641">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/f9c44f9291ef/sub-buzz-1766-1583120308-7.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 177.78%;"
                data-aratio="177.78">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/f9c44f9291ef/sub-buzz-1766-1583120308-7.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125667641:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="BuzzFeed editor&#39;s hand with palm up showing the coiled ring size adjuster around the base of the ring on their finger "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/2/3/asset/f9c44f9291ef/sub-buzz-1766-1583120308-7.jpg?crop=2160%3A3840%3B0%2C0&amp;resize=720%3A720"
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
  Emma Lord/BuzzFeed
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>As you can see, this is my own human hand pictured above. I love wearing rings, but my fingers are always weirdly between two sizes — enter this plastic coil, which makes up the size difference in the hottest second. </p><p><b>Promising review:</b> "This product was recommended to me by a jewelry store. I had a ring that was 1.5 sizes too large and <b>after trying to re-size it at three different jewelers (who all told me the setting was too risky for resizing — risked losing the stones), I gave up.</b> One recommended checking out this product and I'm so glad I did. It made the ring wearable for me, using the largest option, <b>I was able to comfortably take it from a size 8 down to a 6.5.</b> I've washed my hands and put the ring on/off with this on and it seems to stay in place fairly well. Was very easy to cut to size, I'm happy!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R356051NOB5I9Z?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C14876721" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876721" data-vars-price.currency="USD" data-vars-price.value="7.49" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R356051NOB5I9Z?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C14876721" rel="nofollow" target="_blank">KR</a></p><p>Get a 12-pack in two sizes from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B0757JLTY7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="7.49" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B0757JLTY7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C33%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$7.49</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning"
  data-module="subbuzz-image">
  
  <div id="125668199" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">34.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B086V1PNFN?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="8.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B086V1PNFN?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Bottle Bright tablets</a> so you can tackle all those caked-on stains in your bottles, travel mugs, and even coffee makers without scrubbing them into eternity and wasting a bunch of water.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125668199
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/19/asset/03c8f320313c/sub-buzz-166-1582919548-11.jpg" alt="a before image of the inside of a stained mug, a during image of it with soapy water, and an after image with it clean " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 52.53%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="a before image of the inside of a stained mug, a during image of it with soapy water, and an after image with it clean "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/19/asset/03c8f320313c/sub-buzz-166-1582919548-11.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/28/19/asset/03c8f320313c/sub-buzz-166-1582919548-11.jpg?resize=990:520"
  data-crop="52.48"
  data-mobile-crop="52.53"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2W1MF1L8YGVZ1?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="8.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2W1MF1L8YGVZ1?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "Amazing product that over delivers! <b>I was going to throw out hundreds of dollars worth of Contigo coffee mugs when I found this and decided I’d try it before I gave up on them.</b> I literally filled the mugs with water dropped a tablet in and walked away. Minutes later dump them out revealing a like new interior. <b>Amazing product if you have mugs that smell or stained but this first before you throw out this expensive mugs</b>." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1XGN3LAY3FYPO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C14876707" data-vars-keywords="cleaning" data-vars-link-id="14876707" data-vars-price.currency="USD" data-vars-price.value="8.0" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1XGN3LAY3FYPO?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C14876707" rel="nofollow" target="_blank">Christopher Merritt</a></p><p>Get a set of six from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B086V1PNFN?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="8.0" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B086V1PNFN?tag=bfemmalord-20&amp;ascsubtag=5723477%2C34%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$8</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125668444" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">35.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01M2B4FDG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876719" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876719" data-vars-price.currency="USD" data-vars-price.value="13.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01M2B4FDG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876719" rel="nofollow" target="_blank">compression foot sleeve</a> to help manage heel pain and plantar fasciitis that you can sneakily wear right under your socks. The compression is so effective that even reviewers with chronic pain swear by them!</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125668444
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/748327a98064/sub-buzz-156-1601483451-17.png" alt="Reviewer in a black compression sock that covers from the bottom of the toes to the top of the ankle " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 132.71%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer in a black compression sock that covers from the bottom of the toes to the top of the ankle "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/748327a98064/sub-buzz-156-1601483451-17.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/748327a98064/sub-buzz-156-1601483451-17.png"
  data-crop="132.64"
  data-mobile-crop="132.71"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RIPFZA7HNP5JA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="13.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RIPFZA7HNP5JA?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I went on my first walk in years without pain the second day of trying these socks! I <b>had almost given up trying to relieve the intense burning/soreness due to my plantar fasciitis, but I decided to try one last product.</b> These socks have already changed my life and have allowed me to start working out again! Highly recommend." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RV02RZ28FYT9H?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876712" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876712" data-vars-price.currency="USD" data-vars-price.value="13.95" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RV02RZ28FYT9H?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876712" rel="nofollow" target="_blank">Emily</a></p><p>Get a pair from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B01M2B4FDG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876719" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876719" data-vars-price.currency="USD" data-vars-price.value="13.95" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B01M2B4FDG?tag=bfemmalord-20&amp;ascsubtag=5723477%2C35%2C42%2Cmobile_web%2C0%2C0%2C14876719" rel="nofollow" target="_blank">$13.95</a> (available in four sizes and nine colors).</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  data-module="subbuzz-image">
  
  <div id="125681401" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">36.</span>
    

    
      <span class="js-subbuzz__title-text">An <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.49" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">earwax removal kit</a>, so you don't have to wait until your yearly physical for your doctor to be like "um WHOA" and fix it for you. This is quicker, easier, and will be a huge relief for those of us waxy individuals who sometimes wake up in the morning with an ear so fully clogged up that it feels like you're underwater.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681401
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/26/19/asset/6334040a1b66/sub-buzz-1751-1582745606-2.jpg" alt="Reviewer holding up the small bottle of ear wax removal aid " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 205.68%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer holding up the small bottle of ear wax removal aid "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/26/19/asset/6334040a1b66/sub-buzz-1751-1582745606-2.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/26/19/asset/6334040a1b66/sub-buzz-1751-1582745606-2.jpg"
  data-crop="205.60"
  data-mobile-crop="205.68"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1Y09HY4HZSQT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.49" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1Y09HY4HZSQT?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>Y'all, this stuff is no joke — you can check out the <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/product-reviews/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C14876735" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876735" data-vars-price.currency="USD" data-vars-price.value="5.49" data-vars-retailers="Amazon" href="https://www.amazon.com/product-reviews/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C14876735" rel="nofollow" target="_blank">earwax removal kit customer reviews</a> to see the GOBS it is taking outta people's canals. </p><p><b>Promising review:</b> "My right ear has been plugged up for months<b>. I squirted warm water in there, peroxide, tried various ear scraper tools, then just gave up.</b> A month or so later, I saw this product at local CVS, and gave it a try. Laid on couch with several drops in my ear for a half hour. I could hear weird fizzing noises. <b>Then I flushed warm water in my ear with the included soft bulb syringe, and out came the culprit.</b> Had to have been deep in there." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1XIXYKK6BN5GV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C14876678" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876678" data-vars-price.currency="USD" data-vars-price.value="5.49" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1XIXYKK6BN5GV?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C14876678" rel="nofollow" target="_blank">fixitforgood</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="5.49" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00ANL4Z4I?tag=bfemmalord-20&amp;ascsubtag=5723477%2C36%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$5.49</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


  <div class="subbuzz subbuzz-photoset
  
  
  
  xs-mb4 xs-relative "
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion,skincare"
  >
  
  <div id="125668111" class="subbuzz-anchor"></div>
    <div data-module="subbuzz-photoset__title">
      <script type="text/x-config">
        {
          "id": 125668111
        }
      </script>
    


  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">37.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00CGN9LQ8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.88" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00CGN9LQ8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">detangling brush</a> with an easy-to-hold handle that's so effective on all hair types that it's amassed over 4,000 5-star reviews on Amazon — people swear by it for detangling fast without pulling and damaging hair, so you'll win back those ten minutes you usually spend going "ow OW ow ow" in front of the mirror each morning.</span>
    
  </h2>

    </div>

    
    <div data-module="subbuzz-photoset" class="subbuzz photo-set xs-mx-auto" data-bfa="@l:Subbuzz;">
      <script type="text/x-config">
        {
          "pinSubbuzzImages": true,
          "collection": [{"index":0,"number":1,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg?resize=990:*","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg?resize=625:*","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg?resize=990:*","width":"990"},"idx":0,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion,skincare\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"9.88\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668112","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/9afb415f0f05\/sub-buzz-1307-1583948513-1.jpg?crop=1224:1632;0,0","alt_text":"A reviewer holding up the bristled side of the brush "},{"index":1,"number":2,"has_caption":false,"image_type":"jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg","images":{"mobile":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg?resize=990:1320","width":"990"},"original":{"height":"1632","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg","width":"1224"},"standard":{"height":"833","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg?resize=625:833","width":"625"},"wide":{"height":"1320","url":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg?resize=990:1320","width":"990"},"idx":1,"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg","image_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg","nojs_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg?output-quality=auto&output-format=auto&downsize=360%3A%2A"},"original_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg","width":1224,"height":1632,"attribution":"<a data-affiliate=\"true\" data-skimlinks-tracking=\"5723477\" data-vars-affiliate=\"Amazon\" data-vars-href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0\" data-vars-keywords=\"cleaning,fast fashion,skincare\" data-vars-link-id=\"0\" data-vars-price.currency=\"USD\" data-vars-price.value=\"9.88\" data-vars-retailers=\"Amazon\" href=\"https:\/\/www.amazon.com\/gp\/customer-reviews\/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0\" rel=\"nofollow\" target=\"_blank\">amazon.com<\/a>","id":"125668113","external_link_text":"","external_link_url":"","has_external_link":false,"description":"","thumbnail_crop":{"height":"1632","width":"1224","x_offset":"0","y_offset":"0"},"thumbnail_src":"https:\/\/img.buzzfeed.com\/buzzfeed-static\/static\/2020-03\/11\/17\/asset\/62bc0f3e7c4e\/sub-buzz-954-1583948517-2.jpg?crop=1224:1632;0,0","alt_text":"holding up the pink side "}],
          "id": 125668111,
          "bfa": {"e":"{idx:0,subbuzzId:125668111}"} 
        }
      </script>

      <figure>
      <div class="photo-set--two-photos subbuzz__media-container--small-margin-bottom xs-relative subbuzz-photoset__container">

      
        <div class="photo-set__group photo-set__group--large">

          

          <div class="photo-set__item xs-relative "
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="0"
                  data-photosetid="125668112">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/9afb415f0f05/sub-buzz-1307-1583948513-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/9afb415f0f05/sub-buzz-1307-1583948513-1.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668112:1;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer holding up the bristled side of the brush "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/9afb415f0f05/sub-buzz-1307-1583948513-1.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
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
                  style="flex: 0.75;"
                  data-type="click-photoset-item"
                  data-photosetindex="1"
                  data-photosetid="125668113">

            <figure class="photo-set__media xs-overflow-hidden xs-relative ">
              <noscript>
                <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/62bc0f3e7c4e/sub-buzz-954-1583948517-2.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720" alt="" class="xs-block photo-set__media--no-js"/>
              </noscript>
              <div
                class="js-subbuzz__media-container js-progressive-image-container photo-set__media-container xs-hide"
                style="padding-top: 133.33%;"
                data-aratio="133.33">

                  
                  
                  <a class="subbuzz__media-link js-subbuzz__media-link"
                     href="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/62bc0f3e7c4e/sub-buzz-954-1583948517-2.jpg"
                     data-bfa="@a:click:photoset;@d:jpg:125668113:2;">
                     
                       

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="holding up the pink side "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-03/11/17/asset/62bc0f3e7c4e/sub-buzz-954-1583948517-2.jpg?crop=1224%3A1632%3B0%2C0&amp;resize=720%3A720"
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
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.88" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3RF6ARXN4KUR4?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>It also works on wet *and* dry hair, so you don't have to time out your brushing. </p><p><b>Promising review</b>: "So I have a testimony ... Royalty is the most tender headed kid in the world. <b>She would cry before you even touch her head ... professionals gave up on doing her hair.</b> I got frustrated because I can't do hair to save my life, but I found a detangling brush on Amazon. I thought it wouldn't work for black people kinky/thick hair but <b>I tried so many other things so why not try this one. And boy I tell you I was able to comb through Royalty's whole head without her shedding one tear</b>. Right!! Even Royalty couldn't believe she didn't cry. I <b>recommend everyone who have a child or even for your hair to buy Crave naturals detangling brush</b>.. it works it works it works wonders. Thank you Lord for leading me to this life saving brush." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2X3YUCODPA6SI?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C14876715" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="14876715" data-vars-price.currency="USD" data-vars-price.value="9.88" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2X3YUCODPA6SI?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C14876715" rel="nofollow" target="_blank">TaReese Womack</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00CGN9LQ8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion,skincare" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="9.88" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00CGN9LQ8?tag=bfemmalord-20&amp;ascsubtag=5723477%2C37%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$9.88</a>.</p>
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


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125668499" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">38.</span>
    

    
      <span class="js-subbuzz__title-text">A set of <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001F731N0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876669" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876669" data-vars-price.currency="USD" data-vars-price.value="6.68" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001F731N0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876669" rel="nofollow" target="_blank">Sea Bands</a>, which target an acupuncture point on your wrists meant to help reduce nausea. Basically, if you're someone who has motion sickness, morning sickness, migraine nausea, or even nausea brought on by cramps, this may the be thing to take you from 🥴to 😊.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125668499
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/27/15/asset/00741fdf07c6/sub-buzz-162-1598541851-25.png" alt="Reviewer with gray band on their wrist " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 133.70%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Reviewer with gray band on their wrist "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/27/15/asset/00741fdf07c6/sub-buzz-162-1598541851-25.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/27/15/asset/00741fdf07c6/sub-buzz-162-1598541851-25.png"
  data-crop="133.76"
  data-mobile-crop="133.70"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1WIYJOORJUOSB?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="6.68" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1WIYJOORJUOSB?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review:</b> "I’ve always been kind of sick. <b>I throw up on long car rides, I can’t read in the car, I get horrible migraines 24/7, etc.</b> Recently I changed medications and because of that, my migraines came back with a vengeance. Thinking there was nothing I could do I kind of gave up, until, I was looking at BuzzFeed and saw this in their recommended. I thought it could help with any car sickness that I would get but man I was not giving these enough credit! <b>Since I have bought them I where ALL.THE.TIME. I wear them in and out of the car, to bed, and just around the house.</b> I no longer feel nauseous and my migraines are almost non existent. Whoever invented these are a freaking god! <b>I don’t know think I could ever live without these! BUY THESE!!</b> They're so worth it." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R1WGSJ020ING5C?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876666" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876666" data-vars-price.currency="USD" data-vars-price.value="6.68" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R1WGSJ020ING5C?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876666" rel="nofollow" target="_blank">JohnDz</a></p><p>Get a set of two from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B001F731N0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876669" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876669" data-vars-price.currency="USD" data-vars-price.value="6.68" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B001F731N0?tag=bfemmalord-20&amp;ascsubtag=5723477%2C38%2C42%2Cmobile_web%2C0%2C0%2C14876669" rel="nofollow" target="_blank">$6.68</a> (available in adult and children's sizes).</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125668561" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">39.</span>
    

    
      <span class="js-subbuzz__title-text"><a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00T0C9XRK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00T0C9XRK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">Essence's Lash Princess mascara</a> to restore length to your lashes without have to spring for falsies. Bonus: this is buildable, so you can add extra volume with each swipe without it getting clumpy.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125668561
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/24/15/asset/37fe1fc9c145/sub-buzz-3409-1582558149-5.jpg" alt="A reviewer with long lashes holding up the mascara " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 133.13%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A reviewer with long lashes holding up the mascara "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/24/15/asset/37fe1fc9c145/sub-buzz-3409-1582558149-5.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-02/24/15/asset/37fe1fc9c145/sub-buzz-3409-1582558149-5.jpg?resize=990:1318"
  data-crop="133.12"
  data-mobile-crop="133.13"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R23ADK18MJPG87?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R23ADK18MJPG87?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">amazon.com</a>
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><b>Promising review</b>: "I don't write a ton of reviews, but after a week of use I had to come give some praise! This mascara is seriously fabulous. <b>I have thin, sparse lashes, and I'd basically given up on my natural lashes looking flush, full, long and voluminous</b>. I saw great reviews for this mascara and figured 'Eh, it's cheaper than what I use right now, why not give it a go?' <b>Pure magic my friends. From the first swipe my lashes looked longer and more voluminous.</b> I sent a picture to my friends, who I've often relayed my lash woes, and they were astonished! <b>The first day I just did one coat. Today I did several, and my lashes could blow away they're so full and long. Love it!</b> I didn't notice any smudging or flaking, but I'm going to try the waterproof one next for some variety (and for weddings, cannot keep my eyes dry at a wedding!)" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R2Z9MZ4KFTZCBD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C14876672" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876672" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R2Z9MZ4KFTZCBD?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C14876672" rel="nofollow" target="_blank">Amazon Customer</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00T0C9XRK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="4.99" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00T0C9XRK?tag=bfemmalord-20&amp;ascsubtag=5723477%2C39%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$4.99</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125681313" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">40.</span>
    

    
      <span class="js-subbuzz__title-text">A high-quality <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00E6D6LQY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="49.13" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00E6D6LQY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">white noise machine</a> for anyone who wants something non-distracting to help them focus while they work from home (or just likes to get soothed by that lovely PFSHHHHHHH noise as they fall asleep).</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681313
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/19/asset/ee87d8bbe9ee/sub-buzz-3893-1565292307-1.png" alt="A white hexagon shaped noise machine on a table " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 73.54%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="A white hexagon shaped noise machine on a table "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/19/asset/ee87d8bbe9ee/sub-buzz-3893-1565292307-1.png"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2019-08/8/19/asset/ee87d8bbe9ee/sub-buzz-3893-1565292307-1.png?resize=990:728"
  data-crop="73.44"
  data-mobile-crop="73.54"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>This bb comes equipped with 20 non-looping white noise sounds and a sleep timer, so you can find out which style of ~noise~ works best for you. </p><p><b>Promising review:</b> "This machine is a miracle. It has the perfect fan sound so I no longer have to run two box fans to mask the horrible 'thumping' noise that at times is intense. No matter how cold it got, those fans run 24/7. Now no longer. I have tried several white noise machines through the years and had given up hope. AWESOME product!" —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/RC2LDYI4R88YQ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C14876737" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876737" data-vars-price.currency="USD" data-vars-price.value="49.13" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/RC2LDYI4R88YQ?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C14876737" rel="nofollow" target="_blank">Sunshine 007</a></p><p>Get it on Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B00E6D6LQY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C0" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="0" data-vars-price.currency="USD" data-vars-price.value="49.13" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B00E6D6LQY?tag=bfemmalord-20&amp;ascsubtag=5723477%2C40%2C42%2Cmobile_web%2C0%2C0%2C0" rel="nofollow" target="_blank">$49.13</a> (available in black or white).</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  
  
  xs-mb4 xs-relative xs-mb1"
  data-retailers="Amazon"
  data-keywords="cleaning,fast fashion"
  data-module="subbuzz-image">
  
  <div id="125681013" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    
      <span class="subbuzz__number">41.</span>
    

    
      <span class="js-subbuzz__title-text">A <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07G2M1LBW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876748" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876748" data-vars-price.currency="USD" data-vars-price.value="36.17" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07G2M1LBW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876748" rel="nofollow" target="_blank">large electric heating pad</a> designed to be extra soft and flexible, so you can cuddle up to its warmth or ease aches and pains no matter where they're popping up on your human form.</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681013
    
    
  }
</script>

<figure class="subbuzz__media">

  
    <div class=" js-full-size-image subbuzz__media--full-width-container">
      
        <noscript>
          <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/26/21/asset/43bc72b63b61/sub-buzz-4170-1598476215-10.jpg" alt="Model using blue pad on back muscles " class="xs-block"/>
        </noscript>
      
      <div class="subbuzz__media-container js-subbuzz__media-container xs-mb05
          subbuzz__media-container--small-margin-bottom
           js-progressive-image-container xs-hide"

          
          style="padding-top: 100.00%"
          
          >

          
          

          
            

<img class="subbuzz__media-image
  js-subbuzz__media js-progressive-image js-pinnable
  xs-col-12 xs-block"
  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
  alt="Model using blue pad on back muscles "
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/26/21/asset/43bc72b63b61/sub-buzz-4170-1598476215-10.jpg"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-08/26/21/asset/43bc72b63b61/sub-buzz-4170-1598476215-10.jpg?resize=990:990"
  data-crop="100.00"
  data-mobile-crop="100.00"
  data-span="1"
  data-bfa="@o:{ignore:[bfaBinder]};"
  
  
>
          
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Amazon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p>This pad has three different heat settings and an auto-shut off for safety, *plus* is totally machine washable. </p><p><b>Promising review:</b> "Unlike many heating pads, Mighty Bliss has a <b>longer and more flexible surface to reach a greater area simultaneously.</b> Having had extensive spinal reconstruction over the years, I find tightness typically follows extended activity. <b>Mighty Bliss reaches both my lower back and neck, adapting to my body shape for more effective reach</b>. I had essentially given up on home heating pads until Mighty Bliss but how keep it readily available for quick use when the time is right." —<a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/gp/customer-reviews/R3R54I9ABUXBO7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876708" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876708" data-vars-price.currency="USD" data-vars-price.value="36.17" data-vars-retailers="Amazon" href="https://www.amazon.com/gp/customer-reviews/R3R54I9ABUXBO7?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876708" rel="nofollow" target="_blank">Gail Eberlin</a></p><p>Get it from Amazon for <a data-affiliate="true" data-skimlinks-tracking="5723477" data-vars-affiliate="Amazon" data-vars-href="https://www.amazon.com/dp/B07G2M1LBW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876748" data-vars-keywords="cleaning,fast fashion" data-vars-link-id="14876748" data-vars-price.currency="USD" data-vars-price.value="36.17" data-vars-retailers="Amazon" href="https://www.amazon.com/dp/B07G2M1LBW?tag=bfemmalord-20&amp;ascsubtag=5723477%2C41%2C42%2Cmobile_web%2C0%2C0%2C14876748" rel="nofollow" target="_blank">$36.17</a>.</p>
</div>
  
</div>
  

</figure>

</div></div><div></div></div><div class="js-subbuzz-wrapper"><div>


<div class="subbuzz subbuzz-image
  
  subbuzz-image--gif js-subbuzz-image--gif
  
  xs-mb4 xs-relative xs-mb1"
  
  
  data-module="subbuzz-image">
  
  <div id="125681461" class="subbuzz-anchor"></div>



  <h2 class="subbuzz__title  xs-mb1 bold">
    

    
      <span class="js-subbuzz__title-text">You feeling *quite* smug after fixing a problem you were ready to give up on for good:</span>
    
  </h2>


<script type="text/x-config">
  {
    "id": 125681461
      , "animated": true
    
    
  }
</script>

<figure class="subbuzz__media">
  
    <div class="js-full-size-image subbuzz__media--full-width-container">
      <noscript>
        <img src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18_preview.gif?output-quality=auto&amp;output-format=auto&amp;downsize=360:*" alt="Spongebob singing &amp;quot;and it&amp;#x27;s sweet, sweet, sweet victory, yeah&amp;quot; " class="xs-block"/>
      </noscript>
      <div class="subbuzz__media-container js-subbuzz__media-container js-progressive-image-container xs-mb05 xs-hide
          subbuzz__media-container--small-margin-bottom"
          style="padding-top: 75.00%"
          data-type="image-gif">

        <div class="subbuzz__media-link js-subbuzz__media-link">
          
          

          




<button type="button" class="gif-play-button">
    <svg aria-labelledby="gif-play-button-125681461" viewBox="0 0 48 48" class="gif-play-button__icon" fill="none" role="img">
        <title id="gif-play-button-125681461">Tap to play or pause GIF</title>
        Tap to play or pause GIF
        <circle class="gif-play-button__bg" cx="24" cy="24" r="20" fill="rgba(0, 0, 0, .25)" />
        <circle class="gif-play-button__circle" cx="24" cy="24" r="18" stroke="rgba(255, 255, 255, 1)"
                stroke-width="4" />
        <path class="gif-play-button__cta" d="M17.416 30.192c2.016 0 3.584-.816 4.72-2.08v-4.24h-5.152v2.416h2.4v.832c-.384.32-1.184.64-1.968.64-1.744 0-2.976-1.344-2.976-3.088 0-1.76 1.232-3.088 2.976-3.088 1.04 0 1.856.656 2.256 1.36l2.304-1.2c-.736-1.328-2.176-2.592-4.56-2.592-3.184 0-5.776 2.128-5.776 5.52 0 3.392 2.592 5.52 5.776 5.52zM26.504 30V19.328h-2.752V30h2.752zm4.672 0v-4.208h4.96v-2.4h-4.96v-1.664h5.072v-2.4h-7.824V30h2.752z"/>
        <path class="gif-play-button__pause-cta" d="M23.25,30V19.33H20.5V30ZM28,19.33H25.17V30h2.76Zm-.07,2.4,0,1.66"/>
    </svg>
</button>

<video
  aria-label="GIF: Spongebob singing &amp;quot;and it&amp;#x27;s sweet, sweet, sweet victory, yeah&amp;quot; "
  class="subbuzz__media-image js-subbuzz__media js-progressive-image js-pinnable js-gif-element xs-col-12 xs-block"
  data-bfa="@o:{ignore:[bfaBinder]};"
  data-crop="75.00"
  data-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18.gif"
  data-mobile-crop="75.00"
  data-mobile-gif-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18.gif"
  data-mobile-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18_preview.gif"
  data-span="1"
  data-src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18_preview.gif"
  loop
  muted
  playsInline
  preload="none"
  
  
/>
  <source src="https://img.buzzfeed.com/buzzfeed-static/static/2020-09/30/16/asset/690bc2095fe0/anigif_sub-buzz-123-1601481948-18.gif?output-format=mp4" type="video/mp4">
</video>
        </div>
      </div>
    </div>
    <div class="flex xs-flex-column">
  
    

<span class="subbuzz__attribution
  js-subbuzz__attribution
  
  xs-text-6 xs-block">
  Nickelodeon
</span>
  

  
    <div class="js-inline-share-bar"></div>
  

  
    

<div class="subbuzz__description
  ">
  <p><i>Reviews have been edited for length and/or clarity.</i></p>
</div>
  
</div>
  

</figure>
