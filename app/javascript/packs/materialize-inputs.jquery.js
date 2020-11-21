
console.log("this loaded")
$.fn.materializeInputs = function(selectors) {

    console.log("this one too")

    // default param with backwards compatibility
    if (typeof(selectors)==='undefined') selectors = "input, textarea";

    // attribute function
    function setInputValueAttr(element) {
        element.setAttribute('value', element.value);
    }

    // set value attribute at load
    this.find(selectors).each(function () {
        setInputValueAttr(this);
    });

    // on keyup
    this.on("keyup", selectors, function() {
        setInputValueAttr(this);
    });
    
};

