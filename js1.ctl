#TITLE=JavaScript����
#SORT=y

#T=6λ���ID��
Math.random().toString().slice(2,8)
#T=comic sans ms
comic sans ms
#T=Firebug for IE
<script type="text/javascript" src="https://getfirebug.com/firebug-lite-debug.js"></script>
#T=fun-bind
function bind(o,type,fn){o.attachEvent?o.attachEvent("on"+type,fn):o.addEventListener(type,fn,false);return o}
function unbind(o,type,fn){o.detachEvent?o.detachEvent("on"+type,fn):o.removeEventListener(type,fn,false);return o}
#T=fun-css
function css(o,k){
return o.currentStyle?o.currentStyle[k]:document.defaultView.getComputedStyle(o,false)[k];
}

#T=fun-hasClass
function hasClass(o,cn){return ((" "+o.className+" ").indexOf(" "+cn+" ")>-1) ? 1:0;}
function addClass(o,cn){
if(!o.className) o.className=cn;
else if(!hasClass(o,cn)) o.className += " "+cn;
}
#T=fun-ie
function ie(v){
if(navigator.appName.indexOf("Internet Explorer")==-1) return 0;
var str = navigator.appVersion;
if(v) return str.indexOf("MSIE "+v)==-1 ? 0:1;
return str.indexOf("MSIE")>-1 ? 1:0;
}
#T=fun-print_r
function print_r(a, print, spe){
	var str = "";
	var spe = spe || "\r\n";
	for(var k in a) {
		if(a.hasOwnProperty(k)) str += k+": "+a[k] + spe;
	}
	if(print) return str;
	alert(str);
}
#T=hidefocusȥA����
outline:none;
<a href="#" hidefocus="true"></a>
#T=onerror
window.onerror = function (sMessage, sUrl, sLine) {
alert("������:" + sMessage + "\n�ļ�:" + sUrl + "\n����:" + sLine);
return true;
}
#T=onmouseenter
t("^!").onmouseover=function(e){
var e=e||window.event,o=e.fromElement||e.relatedTarget;
if(o&&this.contains(o)) return;
}
#T=onmouseleave
t("^!").onmouseout=function(e){
var e=e||window.event,o=e.toElement||e.relatedTarget;
if(o&&this.contains(o)) return;
}

#T=onmousewheel
onmousewheel
#T=slice�ַ�ȥ�����nλ
s.slice(0,-n)
#T=textContent||innerText
aa.textContent||aa.innerText
#T=�г�document���е�����
for(k in document) {
document.write(k + "<br />");
}
#T=�г�navigator���е�����
document.write("<hr />"+"<br />");
for(k in navigator) {
document.write(k +": "+navigator[k]+"<br />");
}
#T=�г�window���е�����
for(k in windown) {
document.write(k + "<br />");
}
#T=ʱ���ת�����ڸ�ʽ
function getLocalTime(nS) {     
   return new Date(parseInt(nS) * 1000).toLocaleString().replace(/��|��/g, "-").replace(/��/g, " ");      
} 
#T=�Ƿ�chrome
var chrome = navigator.userAgent.indexOf("Chrome")>-1 ? 1 : 0;
#T=�Ƿ�firefox
var firefox= navigator.userAgent.indexOf("Firefox")>-1 ? 1 : 0;
#T=�Ƿ�IE
var ie= navigator.userAgent.indexOf("MSIE")>-1 ? 1 : 0;
#T=�Ƿ�Opera
var Opera = navigator.userAgent.indexOf("Opera")>-1 ? 1 : 0;
#T=�ҳ����������λ��
console.log(functionname.prototype.constructor);
#T=ֻҪ����
str.replace(/[^\d\.]/g,"")
#T=��ֹð��
e.srcElement ? e.cancelBubble = true:e.stopPropagation();
#T=��ֹĬ���¼�
e.preventDefault ? e.preventDefault() ? e.returnValue=false;
#