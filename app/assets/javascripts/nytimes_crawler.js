// Runs in console
var currentArr = [];
$$('#main .story:not(.advertisement):not(.autosStory)').each(function(i, item){
  var $this       = $$(item);
  var date        = Date();
  var title       = $$(item).find('h2, h3, h5').text();
  var content     = $$(item).find('.summary').html();
  var url         = $$(item).find('h2 a, h3 a, h5 a').attr('href');
  if(content !== undefined){
    var currentObj  = {
                      url: url,
                      title: title,
                      content: content
                    };
    currentArr.push(currentObj);
    console.log(currentObj);
  }
});
myRootRef.push(currentArr);
