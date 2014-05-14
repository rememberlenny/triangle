function scrape_nytimes_homepage(){
  // Runs in console
  var currentArr = [];
  $$('#main .story:not(.advertisement):not(.autosStory)').each(function(i, item){
    var $this       = $$(item);
    var date        = Date();
    var title       = $$(item).find('h2, h3, h5, h6:last-child').text();
    var content     = $$(item).find('.summary').html();
    var url         = $$(item).find('h2 a, h3 a, h5 a, h6:last-child a').attr('href');
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
