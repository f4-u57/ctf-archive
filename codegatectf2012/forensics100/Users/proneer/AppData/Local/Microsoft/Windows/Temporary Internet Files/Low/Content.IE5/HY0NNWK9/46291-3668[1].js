/* charset "utf-8"; */
/* Pieces: list_items-autocompletter */
/* base_path_placeholder */
/* @JAVASCRIPT list_items */
var ListItemsDefaultSkin={normal_item:"normal",selected_item:"selected",hidden:"hidden",visible:"visible",list:"list_combo",listContainer:"list_container"};var ListItems=function(){this._nId=Math.random();this.oContainer=null;this.oList=null;this.bVisible=false;this.nXpos=0;this.nYpos=0;this.nWidth=0;this.nHeight=0;this.oListContainer=null;this.oClasses=ListItemsDefaultSkin;this.oItemSelected=null;this.nSelectedIndex=0;this.aItems=[];this.onMouseOver=function(a,b){};this.onMouseOut=function(a,b){};this.onClick=function(a,b){}};ListItems.prototype.setContainer=function(a){this.oContainer=a;return this};ListItems.prototype.setWidth=function(a){this.nWidth=a;return this};ListItems.prototype.setPosition=function(a){this.oListContainer.style.left=a.left+"px";this.oListContainer.style.top=a.top+"px";return this};ListItems.prototype.setVisible=function(a){this.bVisible=a;return this};ListItems.prototype.setHeight=function(a){this.nHeight=a;return this};ListItems.prototype.setSkin=function(a){this.oClasses=a;return this};ListItems.prototype.add=function(a){this.aItems.push(a);return this};ListItems.prototype.setItems=function(a){this.aItems=a;return this};ListItems.prototype._getItemInList=function(a){var b=a.target;switch(b.tagName.toLowerCase()){case"span":b=b.parentNode;case"a":b=b.parentNode;default:break}try{return b}catch(c){alert(c)}finally{b=null}};ListItems.prototype.selectItem=function(a){this.oItemSelected=a;return this};ListItems.prototype.clickItem=function(a){$(this.oItemSelected).removeClass(this.oClasses.selected_item);$(a).addClass(this.oClasses.selected_item)};ListItems.prototype.showList=function(){this.bVisible=true;$(this.oListContainer).removeClass("hidden").addClass("visible")};ListItems.prototype.hideList=function(){this.bVisible=false;$(this.oListContainer).removeClass("visible").addClass("hidden")};ListItems.prototype.getSelectedItem=function(a){return this.oItemSelected};ListItems.prototype.getSelectedIndex=function(){for(var a=0,b=this.aItems.length;a<b;a++){if(this.aItems[a].value==this.oItemSelected.jsValue){return a}}return -1};ListItems.prototype.selectListItem=function(a){var b=this.oList.getElementsByTagName("li");this.clickItem(b[a]);this.selectItem(b[a]);this.onClick()};ListItems.prototype.setBehaviours=function(){var a=this;$(this.oList).click(function(b){var c=a._getItemInList(b);a.clickItem(c);a.selectItem(c);a.onClick(b,c);c=null;return false}).mouseover(function(b){var c=a._getItemInList(b);a.onMouseOver(b,c);c=null}).mouseout(function(b){var c=a._getItemInList(b);a.onMouseOut(b,c);c=null})};ListItems.prototype.insertListInDom=function(){this.oListContainer.innerHTML="";var g=document.createElement("ul");this.oList=g;g.className=this.oClasses.list;var f=undefined;var a=undefined;var c=undefined;var e=undefined;for(var b=0,d=this.aItems.length;b<d;b++){f=this.aItems[b];a=document.createElement("li");c=document.createElement("a");c.href="#";if(f.value){a.jsValue=f.value}e=document.createElement("span");if(f.text){e.innerHTML=f.text}else{e.innerHTML=f}c.appendChild(e);a.appendChild(c);g.appendChild(a)}this.oListContainer.appendChild(g)};ListItems.prototype.createDom=function(){var b=document.createElement("div");b.className=this.oClasses.listContainer;var a=b.style;a.position="absolute";a.left=this.nXpos;a.top=this.nYpos;this.oListContainer=b;if(this.bVisible){b.className+=" "+this.oClasses.visible}else{b.className+=" "+this.oClasses.hidden}this.insertListInDom();this.oContainer.appendChild(b);b=a=null};ListItems.prototype.init=function(){this.createDom();this.setBehaviours()};
/* @end JAVASCRIPT list_items */

/* @JAVASCRIPT autocompletter */
var Autocompletter=function(){this.oContainer=null;this.nHeight=0;this.sUrlGetItems="";this.oList=new ListItems();this.nMinCharsToSearch=1;this.nTimeout=null;this.oAjaxCall=null;this.onSubmit=function(){};this.sLastIdentifier="";this.sPreviousString="";this.sLastString="";this.oJson={};this.bUpdateValueContainer=true;this.oCache={};this.fpOnclickListItem=function(){var a=this;return function(b,d){var c=d;if(c.tagName.toLowerCase()==="strong"){c=d.parentNode}a.oContainer.value=Namespace.utilities.innerText(c);$(a.oContainer).parents("form:eq(0)").submit();c=null}}};Autocompletter.prototype.applyTo=function(a){this.oContainer=a;return this};Autocompletter.prototype.setUrlGetItems=function(a){this.sUrlGetItems=a;return this};Autocompletter.prototype.setHeight=function(a){this.nHeight=a;return this};Autocompletter.prototype.setContainer=Autocompletter.prototype.applyTo;Autocompletter.prototype.setMinCharsToSearch=function(a){this.nMinCharsToSearch=a;return this};Autocompletter.prototype.setUpdateContainerValue=function(a){this.bUpdateValueContainer=a;return this};Autocompletter.prototype.getPosition=function(){return $(this.oContainer).offset()};Autocompletter.prototype.setOnClickListItem=function(a){this.fpOnclickListItem=a;return this};Autocompletter.prototype.setBehaviour=function(){var c=this;var a=-1;var b=9;var d=null;$(document).keyup(function(e){if(c.oList.bVisible&&e.keyCode===9){c.oList.hideList()}});$(this.oContainer).keyup(function(e){if(c.oList.bVisible){clearTimeout(c.nTimeout);switch(e.keyCode){case 40:a++;if(a<=b){if(a>0){$(c.oList.oList.getElementsByTagName("li")[a-1]).removeClass(c.oList.oClasses.selected_item)}}else{a=b}break;case 38:a--;if(a>=0){if(a<b){$(c.oList.oList.getElementsByTagName("li")[a+1]).removeClass(c.oList.oClasses.selected_item)}}else{a=0}break;case 13:if(a>-1){if(c.oAjaxCall){c.oAjaxCall.abort()}d=c.oList.oList.getElementsByTagName("li")[a];if(c.bUpdateValueContainer){c.oContainer.value=Namespace.utilities.innerText(d)}}return false;default:a=-1;break}if(a>-1){if(a>b){return false}d=c.oList.oList.getElementsByTagName("li")[a];c.oContainer.value=$(d).text();$(d).addClass(c.oList.oClasses.selected_item)}}switch(e.keyCode){case 40:case 38:break;case 13:if(c.oContainer.value.length>=c.nMinCharsToSearch){if(c.oAjaxCall){c.oAjaxCall.abort()}}break;default:if(this.value.length>=c.nMinCharsToSearch){var f=$(document.getElementById("id_section")||document.getElementById("id_section_blog")).val();if(!(this.value.substr(0,c.nMinCharsToSearch)===c.sPreviousString&&f===c.sLastIdentifier)){c.getListItems(function(){c.filter()})}else{setTimeout(function(){c.filter()},600)}}else{c.oList.hideList()}}})};Autocompletter.prototype.setListSkin=function(a){this.oList.setSkin(a);return this};Autocompletter.prototype.setList=function(){this.oList.setContainer(document.body).init();this.oList.onClick=this.fpOnclickListItem()};Autocompletter.prototype.getListItems=function(a){var b=this;var g=this.oContainer.value.substr(0,this.nMinCharsToSearch);var e=$(document.getElementById("id_section")||document.getElementById("id_section_blog")).val();var c=document.getElementById("id_section");var f="default";var d="";if(c.value==="blog"||c.value==="answers"){f=c.value}if(typeof this.oCache[e]!=="undefined"&&typeof this.oCache[e][g]!=="undefined"){if(this.oAjaxCall){this.oAjaxCall.abort();this.oAjaxCall=null}this.sPreviousString=this.sLastString;this.sLastString=g;this.sLastIdentifier=e;this.setJson();a()}else{if(this.oAjaxCall){this.oAjaxCall.abort()}this.sPreviousString=this.sLastString;this.sLastString=g;this.sLastIdentifier=e;if(e==="answers"||e==="blog"){e=2}d=(this.sUrlGetItems).replace("%site_name%",f).replace("%id_section%",e);this.oAjaxCall=jQuery.ajax({url:d+this.oContainer.value,type:"GET",success:function(h){b.oAjaxCall=null;b.setJson(h);a()}})}};Autocompletter.prototype.setJson=function(b){var a=$(document.getElementById("id_section")||document.getElementById("id_section_blog")).val();if(typeof this.oCache[a]==="undefined"){this.oCache[a]={}}if(typeof this.oCache[a][this.sLastString]==="undefined"){this.oCache[a][this.sLastString]=b}else{b=this.oCache[a][this.sLastString]}this.oJson=b;return this};Autocompletter.prototype.processJSON=function(d){var c=this;if(jQuery.isArray(d)&&d.length>0&&d[0].length>0){var b=this.getPosition();b.top+=this.nHeight;var a=5;var e=d.length;this.oList.setItems(d.splice(0,a)).insertListInDom();this.oList.setBehaviours();this.oList.setPosition(b);if(e>0){this.oList.showList();$(document).mouseup(function(f){$(document).eventsManager({action:"removeLastEvent",type:"mouseup"});c.oList.hideList()});$(this.oList.oListContainer).add(this.oContainer).mouseover(function(){clearTimeout(c.nTimeout)}).mouseout(function(){c.nTimeout=setTimeout(function(){c.oList.hideList()},1000)})}else{this.oList.hideList()}}};Autocompletter.prototype.timedProcessArray=function(e,d,c){var b=e.concat();setTimeout(function a(){var f=+new Date();do{d(b.shift())}while(b.length>0&&(+new Date()-f<50));if(b.length>0){setTimeout(a,25)}else{c()}},25)};Autocompletter.prototype.filter=function(){var b=[];var a=this;if(jQuery.isArray(this.oJson)&&this.oJson.length>0&&this.oJson[0].length>0){this.timedProcessArray(this.oJson,function(e){var f=a.oContainer.value;var d=e.toLowerCase().indexOf(f.toLowerCase());if(d!==-1){var c=[];if(d===0){c.push(a.oContainer.value);c.push("<strong>");c.push(e.substr(d+1+f.length-1));c.push("</strong>")}else{c.push(e.substr(0,d-1));c.push(a.oContainer.value);c.push("<strong>");c.push(e.substr(d+1+f.length-1));c.push("</strong>")}b.push(c.join(""));c=null}},function(){a.processJSON(b);b=null})}};Autocompletter.prototype.init=function(){var a=this;this.setList();this.setBehaviour();$(window).resize(function(){var b=a.getPosition();b.top+=a.nHeight;a.oList.setPosition(b)})};
/* @end JAVASCRIPT autocompletter */
/* js_templates_placeholder */