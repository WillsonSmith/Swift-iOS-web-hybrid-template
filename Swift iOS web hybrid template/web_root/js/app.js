var swift = function(swiftFunction) {
  webkit.messageHandlers.callbackHandler.postMessage({functionToRun: swiftFunction});
};
function addVersion(version) {
    var textContainer = document.getElementsByClassName("text")[0];
    var p = document.createElement("p");
    p.textContent = version;
    console.log(version);
    textContainer.appendChild(p);
}

//swift.getCurrentVersion();
swift("getCurrentVersion");