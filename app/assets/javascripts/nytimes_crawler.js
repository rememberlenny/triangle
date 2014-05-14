// Runs in console
var currentArr = [];
$$('#main .story:not(.advertisement):not(.autosStory)').each(function(i, item){
  var $this       = $$(item);
  var date        = Date();
  var title       = $$(item).find('h3, h5').text();
  var content     = $$(item).find('.summary').html();
  var url         = $$(item).find('h3 a, h5 a').attr('href');
  if(content !== undefined){
    var currentObj  = {
                      item: item,
                      $item: $$(item),
                      url: url,
                      title: title,
                      content: content
                    };
  }
  currentArr.push(currentObj);
  console.log(currentObj);
});
myRootRef.push(currentArr);
