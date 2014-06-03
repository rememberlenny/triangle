var GetDom = function(saveUrl, processUrl, eventTrigger){
  this.blastOff(saveUrl, processUrl);
};

GetDom.prototype.blastOff = function(saveUrl, processUrl){
  var theDom;
  if (document.querySelectorAll){
    console.log('Using querySelectorAll');
    // This is more performant
    theDom = document.querySelectorAll("html");
  } else {
    console.log('Using getElementsByTagname');
    // This works in all browsers
    theDom = document.getElementsByTagName("html");
  }
  this.saveAllNodes(theDom, saveUrl, processUrl);
}

GetDom.prototype.saveAllNodes = function(theDom, saveUrl, processUrl){
  var contentToProcess = [theDom, processUrl];
  // url to query = saveUrl,
  // content to pass = contentToProcess,
  requestToSave = new XMLHttpRequest();
}
