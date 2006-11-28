/*
 * YUI Extensions 0.33 RC2
 * Copyright(c) 2006, Jack Slocum.
 */


YAHOO.ext.util.JSON=new function(){var useHasOwn={}.hasOwnProperty?true:false;var validRE=/^("(\\.|[^"\\\n\r])*?"|[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t])+?$/;var pad=function(n){return n<10?'0'+n:n;};var m={'\b':'\\b','\t':'\\t','\n':'\\n','\f':'\\f','\r':'\\r','"':'\\"','\\':'\\\\'};var encodeString=function(s){if(/["\\\x00-\x1f]/.test(s)){return'"'+s.replace(/([\x00-\x1f\\"])/g,function(a,b){var c=m[b];if(c){return c;}
c=b.charCodeAt();return'\\u00'+
Math.floor(c/16).toString(16)+
(c%16).toString(16);})+'"';}
return'"'+s+'"';};var encodeArray=function(o){var a=['['],b,i,l=o.length,v;for(i=0;i<l;i+=1){v=o[i];switch(typeof v){case'undefined':case'function':case'unknown':break;default:if(b){a.push(',');}
a.push(v===null?"null":YAHOO.ext.util.JSON.encode(v));b=true;}}
a.push(']');return a.join('');};var encodeDate=function(o){return'"'+o.getFullYear()+'-'+
pad(o.getMonth()+1)+'-'+
pad(o.getDate())+'T'+
pad(o.getHours())+':'+
pad(o.getMinutes())+':'+
pad(o.getSeconds())+'"';};this.encode=function(o){if(typeof o=='undefined'||o===null){return'null';}else if(o instanceof Array){return encodeArray(o);}else if(o instanceof Date){return encodeDate(o);}else if(typeof o=='string'){return encodeString(o);}else if(typeof o=='number'){return isFinite(o)?String(o):"null";}else if(typeof o=='boolean'){return String(o);}else{var a=['{'],b,i,v;for(var i in o){if(!useHasOwn||o.hasOwnProperty(i)){v=o[i];switch(typeof v){case'undefined':case'function':case'unknown':break;default:if(b){a.push(',');}
a.push(this.encode(i),':',v===null?"null":this.encode(v));b=true;}}}
a.push('}');return a.join('');}};this.decode=function(json){try{if(validRE.test(json)){return eval('('+json+')');}}catch(e){}
throw new SyntaxError("parseJSON");};}();