function scrape_nytimes_homepage(){
  // Runs in console
  var currentArr = [];
  $$jq('#main .story:not(.advertisement):not(.autosStory)').each(function(i, item){
    var $this       = $$jq(item);
    var date        = Date();
    var title       = $$jq(item).find('h2, h3, h5, h6:last-child').text();
    var content     = $$jq(item).find('.summary').html();
    var url         = $$jq(item).find('h2 a, h3 a, h5 a, h6:last-child a').attr('href');
    var currentObj  = {};
    if(content !== undefined){
      currentObj.url  = url;
      currentObj.title = title;
      if(content !== undefined){
        currentObj.content = content;
      }
      currentArr.push(currentObj);
      console.log(currentObj);
    }
  });
  myRootRef.push(currentArr);
}

function append_jQuery_firebase(){
  var jq = document.createElement('script');
  jq.src = "http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js";
  document.getElementsByTagName('head')[0].appendChild(jq);
  var fb = document.createElement('script');
  fb.src = "https://cdn.firebase.com/js/client/1.0.15/firebase.js";
  document.getElementsByTagName('head')[0].appendChild(fb);
}

function initialize_jQuery_firebase(){
  window.myRootRef = new Firebase('https://atriangle.firebaseio.com/');
  window.$$jq = jQuery;
}

function bookmarklet_code(){
  append_jQuery_firebase();
  setTimeout(function(){
    initialize_jQuery_firebase();
    setTimeout(function(){
      scrape_nytimes_homepage();
    }, 2500);
  }, 2500);
}

bookmarklet_code();
