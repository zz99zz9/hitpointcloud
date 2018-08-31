
// USA check
var domaintest = document.location.host;
if (domaintest === "www.netsuite.com"){ //Comparing domain with a NetSuite owned domain such as 'www.netsuite.com'. If on a staging server www.netsuite.com will need to be changed to the relevant staging server domain for example staging.netsuite.com. If the variable 'url' is equal to the stated domain execute the first Javascript code, otherwise move to the first 'Else if' statement

var href = document.location.pathname; // gets the path name for example /portal/au/products/oneworld.shtml and places it in the variable 'href'  

// CANONICAL TAG -----------
// USA
var canonical = href.replace("/portal/", "http://www.netsuite.com/portal/"); // replaces /portal/ with http://www.netsuite.com/portal/. this is redundent however keeps it simple when chenging across domains 


// HREFLANG TAGS -----------
// US
var ushref = href.replace("/portal/", "http://www.netsuite.com/portal/"); // replaces /portal/ with http://www.netsuite.com/portal/ 

// UK
var ukhref = href.replace("/portal/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/ with http://www.netsuite.co.uk/portal/uk/

// AU
var auhref = href.replace("/portal/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/ with http://www.netsuite.com.au/portal/au/

// SG
var sghref = href.replace("/portal/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/ with http://www.netsuite.com.sg/portal/sg/

//HK
var hkhref = href.replace("/portal/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/ with http://www.netsuite.com.hk/portal/hk/


// INSERTS THE TAGS INTO THE HEADER SECTION
var meta = document.createElement('link');
meta.setAttribute('rel', 'canonical');
meta.setAttribute('href', canonical );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-us');
meta.setAttribute('href', ushref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-uk');
meta.setAttribute('href', ukhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-au');
meta.setAttribute('href', auhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-sg');
meta.setAttribute('href', sghref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-hk');
meta.setAttribute('href', hkhref );
document.getElementsByTagName('head')[0].appendChild(meta);


}



// UK check
else if (domaintest === "www.netsuite.co.uk"){ // If on a staging server www.netsuite.com will need to be changed to the relevant staging server domain. If the variable 'url' is equal to the stated domain execute the first 'else if' Javascript code, otherwise move to the first Else if statement

var href = document.location.pathname;    

// CANONICAL TAG
//UK
var canonical = href.replace("/portal/uk/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/uk with http://www.netsuite.com.uk/portal/uk/


// HREFLANG TAGS -----------
// US
var ushref = href.replace("/portal/uk/", "http://www.netsuite.com/portal/"); // replaces /portal/uk/ with http://www.netsuite.com.au/portal/ 

// UK
var ukhref = href.replace("/portal/uk/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/uk/ with http://www.netsuite.co.uk/portal/uk/

// AU
var auhref = href.replace("/portal/uk/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/uk/ with http://www.netsuite.com.au/portal/au/ leaving everything else

// SG
var sghref = href.replace("/portal/uk/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/uk/ with http://www.netsuite.com.sg/portal/sg/ leaving everything else

//HK
var hkhref = href.replace("/portal/uk/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/uk/ with http://www.netsuite.com.hk/portal/hk/ leaving everything else


// INSERTS THE TAGS INTO THE HEADER SECTION
var meta = document.createElement('link');
meta.setAttribute('rel', 'canonical');
meta.setAttribute('href', canonical );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-us');
meta.setAttribute('href', ushref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-uk');
meta.setAttribute('href', ukhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-au');
meta.setAttribute('href', auhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-sg');
meta.setAttribute('href', sghref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-hk');
meta.setAttribute('href', hkhref );
document.getElementsByTagName('head')[0].appendChild(meta);
}


// AU check
else if (domaintest === "www.netsuite.com.au"){ //Comparing domain with a NetSuite owned domain such as www.netsuite.com.au or if on a staging server it maybe staging.netsuite.com.au. If equal to stated domain execute the first If Statement

var href = document.location.pathname;    

// CANONICAL TAG
//AU
var canonical = href.replace("/portal/au/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/au/ with http://www.netsuite.com.au/portal/au/


// HREFLANG TAGS -----------
// US
var ushref = href.replace("/portal/au/", "http://www.netsuite.com/portal/"); // replaces /portal/au/ with http://www.netsuite.com.au/portal/ 

// UK
var ukhref = href.replace("/portal/au/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/au/ with http://www.netsuite.co.uk/portal/uk/

// AU
var auhref = href.replace("/portal/au/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/ with http://www.netsuite.com.au/portal/au/ leaving everything else

// SG
var sghref = href.replace("/portal/au/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/ with http://www.netsuite.com.sg/portal/sg/ leaving everything else

//HK
var hkhref = href.replace("/portal/au/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/ with http://www.netsuite.com.hk/portal/hk/ leaving everything else


// INSERTS THE TAGS INTO THE HEADER SECTION
var meta = document.createElement('link');
meta.setAttribute('rel', 'canonical');
meta.setAttribute('href', canonical );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-us');
meta.setAttribute('href', ushref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-uk');
meta.setAttribute('href', ukhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-au');
meta.setAttribute('href', auhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-sg');
meta.setAttribute('href', sghref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-hk');
meta.setAttribute('href', hkhref );
document.getElementsByTagName('head')[0].appendChild(meta);

}


// SG check
else if (domaintest === "www.netsuite.com.sg"){ //Comparing domain with a NetSuite owned domain such as www.netsuite.com.au or if on a staging server it maybe staging.netsuite.com.au. If equal to stated domain execute the first If Statement

var href = document.location.pathname;    

// CANONICAL TAG
//SG
var canonical = href.replace("/portal/sg/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/sg/ with http://www.netsuite.com.sg/portal/sg/ 


// HREFLANG TAGS -----------
// US
var ushref = href.replace("/portal/sg/", "http://www.netsuite.com/portal/"); // replaces /portal/sg/ with http://www.netsuite.com.au/portal/ 

// UK
var ukhref = href.replace("/portal/sg/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/sg/ with http://www.netsuite.co.uk/portal/uk/

// AU
var auhref = href.replace("/portal/sg/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/sg/ with http://www.netsuite.com.au/portal/au/ leaving everything else

// SG
var sghref = href.replace("/portal/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/sg/ with http://www.netsuite.com.sg/portal/sg/ leaving everything else

//HK
var hkhref = href.replace("/portal/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/sg/ with http://www.netsuite.com.hk/portal/hk/ leaving everything else


// INSERTS THE TAGS INTO THE HEADER SECTION
var meta = document.createElement('link');
meta.setAttribute('rel', 'canonical');
meta.setAttribute('href', canonical );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-us');
meta.setAttribute('href', ushref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-uk');
meta.setAttribute('href', ukhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-au');
meta.setAttribute('href', auhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-sg');
meta.setAttribute('href', sghref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-hk');
meta.setAttribute('href', hkhref );
document.getElementsByTagName('head')[0].appendChild(meta);

}


// HK check
else if (domaintest === "www.netsuite.co.uk"){ //Comparing domain with a NetSuite owned domain such as www.netsuite.com.au or if on a staging server it maybe staging.netsuite.com.au. If equal to stated domain execute the first If Statement

var href = document.location.pathname;    

// CANONICAL TAG
//HK
var canonical = href.replace("/portal/hk/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/hk/ with http://www.netsuite.com.hk/portal/hk/


// HREFLANG TAGS -----------
// US
var ushref = href.replace("/portal/", "http://www.netsuite.com/portal/"); // replaces /portal/ with http://www.netsuite.com.au/portal/ 

// UK
var ukhref = href.replace("/portal/", "http://www.netsuite.co.uk/portal/uk/"); // replaces /portal/ with http://www.netsuite.co.uk/portal/uk/

// AU
var auhref = href.replace("/portal/", "http://www.netsuite.com.au/portal/au/"); // replaces /portal/ with http://www.netsuite.com.au/portal/au/ leaving everything else

// SG
var sghref = href.replace("/portal/", "http://www.netsuite.com.sg/portal/sg/"); // replaces /portal/ with http://www.netsuite.com.sg/portal/sg/ leaving everything else

//HK
var hkhref = href.replace("/portal/", "http://www.netsuite.com.hk/portal/hk/"); // replaces /portal/ with http://www.netsuite.com.hk/portal/hk/ leaving everything else


// INSERTS THE TAGS INTO THE HEADER SECTION
var meta = document.createElement('link');
meta.setAttribute('rel', 'canonical');
meta.setAttribute('href', canonical );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-us');
meta.setAttribute('href', ushref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-uk');
meta.setAttribute('href', ukhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-au');
meta.setAttribute('href', auhref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-sg');
meta.setAttribute('href', sghref );
document.getElementsByTagName('head')[0].appendChild(meta);

var meta = document.createElement('link');
meta.setAttribute('rel', 'alternate');
meta.setAttribute('hreflang', 'en-hk');
meta.setAttribute('href', hkhref );
document.getElementsByTagName('head')[0].appendChild(meta);

}