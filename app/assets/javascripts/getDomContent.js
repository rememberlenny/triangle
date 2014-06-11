// var GetDom = module.export.GetDom = function(saveUrl, processUrl, eventTrigger){
//   //URL to pass for saving to DB: saveUrl,
//   //URL to pass to language parser: forprocessUrl,
//   //Analytics trigger: eventTrigger
//   this.blastOff(saveUrl, processUrl);
// };

// GetDom.prototype.blastOff = function(saveUrl, processUrl){
//   // Save the DOM!
//   var theDom;
//   if (document.querySelectorAll){
//     console.log('Using querySelectorAll');
//     // This is more performant
//     theDom = document.querySelectorAll("html");
//   } else {
//     console.log('Using getElementsByTagname');
//     // This works in all browsers
//     theDom = document.getElementsByTagName("html");
//   }
//   this.saveAllNodes(theDom, saveUrl, processUrl);
// }

// GetDom.prototype.saveAllNodes = function(theDom, saveUrl, processUrl){
//   var contentToProcess = [theDom, processUrl];
//   // url to query = saveUrl,
//   // content to pass = contentToProcess,
//   requestToSave = new XMLHttpRequest();
// }
