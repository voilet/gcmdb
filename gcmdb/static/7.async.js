(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[7],{ONMc:function(e,t,a){"use strict";var r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=r(a("MVZn")),u=r(a("o0o1")),s=a("tZOl");a("Wppp");var l={namespace:"gappmanage",state:{treedata:{data:[]},hostdata:{data:[]},autohostdata:{data:[],host:[],task:[]},versions:{data:[]}},effects:{getHostdatabyId:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,console.log("getHostDatabyId",r),e.next=5,n(s.queryHostbyPid,r);case 5:return c=e.sent,e.next=8,l({type:"probyidSave",payload:c,cb:r.cb});case 8:case"end":return e.stop()}},e,this)}),aaa:u.default.mark(function e(t,a){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return t.payload,a.call,a.put,console.log("@@@@@@@@@@@@@@@@aaaa is called"),e.next=5,"abc";case 5:e.sent;case 6:case"end":return e.stop()}},e,this)}),getAutoHostdatabyId:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.queryAutoReleaseHostbyPid,r);case 4:if(c=e.sent,console.log("response  bug.....",c),200!=c.status){e.next=9;break}return e.next=9,l({type:"projectReleaseHostUpdate",payload:c,callback:r.callback});case 9:case"end":return e.stop()}},e,this)}),getAutoHostVersions:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.queryProjectVersions,r);case 4:if(c=e.sent,200!=c.status){e.next=9;break}return console.log("status===",c),e.next=9,l({type:"projectReleaseVersionUpdate",payload:c.data,callback:r.callback});case 9:case"end":return e.stop()}},e,this)}),getReleaseHosts:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.queryReleaseHosts,r);case 4:if(c=e.sent,!c){e.next=8;break}return e.next=8,l({type:"projectReleaseVersionResult",payload:c,callback:r.callback});case 8:case"end":return e.stop()}},e,this)}),getTree:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,console.log("**** getTree",r),e.next=5,n(s.queryTree,r);case 5:if(c=e.sent,200!=c.status){e.next=9;break}return e.next=9,l({type:"saveTree",payload:c,callback:r.callback});case 9:case"end":return e.stop()}},e,this)}),getAllTree:u.default.mark(function e(t,a){var r,n,l,c;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.queryAllTree,r);case 4:if(c=e.sent,200!=c.status){e.next=8;break}return e.next=8,l({type:"probyidSave",payload:c,cb:r.cb});case 8:case"end":return e.stop()}},e,this)}),updateTree:u.default.mark(function e(t,a){var r,n,l;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.updateprojectTree,r);case 4:return e.next=6,l({type:"getTree"});case 6:case"end":return e.stop()}},e,this)}),getVersion:u.default.mark(function e(t,a){var r,n,l;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,l=a.put,e.next=4,n(s.queryProjectVersions,r);case 4:return e.next=6,l({type:"getProjectVersion"});case 6:case"end":return e.stop()}},e,this)})},reducers:{probyidSave(e,t){return console.log("probyidSave",e,t),null===t.payload.data&&(t.payload.data=[]),t.cb&&t.cb(t.payload.data),(0,n.default)({},e,{hostdata:t.payload})},saveTree(e,t){return null===t.payload.data&&(t.payload.data=[]),t.callback&&t.callback(t.payload.data),(0,n.default)({},e,{treedata:t.payload})},projectReleaseHostUpdate(e,t){return t.payload.data||(t.payload.data=[]),t.callback&&t.callback(t.payload),(0,n.default)({},e,{autohostdata:t.payload})},projectReleaseVersionUpdate(e,t){return t.payload||(t.payload=[]),console.log("filter",t.payload),t.callback&&t.callback(t.payload),(0,n.default)({},e,{filter:{version:t.payload}})},projectReleaseVersionResult(e,t){return t.payload||(t.payload={}),t.callback&&t.callback(t.payload),e}}};t.default=l},tZOl:function(e,t,a){"use strict";var r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.queryTree=c,t.queryHostbyPid=p,t.updateprojectTree=i,t.queryAllTree=y,t.queryAutoReleaseHostbyPid=v,t.queryProjectVersions=w,t.queryReleaseHosts=x;var n=r(a("MVZn")),u=r(a("o0o1")),s=r(a("yXPU")),l=(a("Qyje"),r(a("t3Un")));function c(e){return o.apply(this,arguments)}function o(){return o=(0,s.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:if(!t.active){e.next=4;break}return e.abrupt("return",(0,l.default)(`/v1/assets/tree?active=${t.active}`));case 4:return e.abrupt("return",(0,l.default)("/v1/assets/tree"));case 5:case"end":return e.stop()}},e,this)})),o.apply(this,arguments)}function p(e){return d.apply(this,arguments)}function d(){return d=(0,s.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,l.default)("/v1/assets/appmange/querytree/",{method:"POST",body:(0,n.default)({},t,{method:"post"})}));case 1:case"end":return e.stop()}},e,this)})),d.apply(this,arguments)}function i(){return f.apply(this,arguments)}function f(){return f=(0,s.default)(u.default.mark(function e(){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,l.default)("/v1/assets/tree?active=update"));case 1:case"end":return e.stop()}},e,this)})),f.apply(this,arguments)}function y(){return h.apply(this,arguments)}function h(){return h=(0,s.default)(u.default.mark(function e(){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,l.default)("/v1/assets/appmange/queryalltree"));case 1:case"end":return e.stop()}},e,this)})),h.apply(this,arguments)}function v(e){return b.apply(this,arguments)}function b(){return b=(0,s.default)(u.default.mark(function e(t){var a=arguments;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return console.log("!!!!",a),e.abrupt("return",(0,l.default)(`/v1/assets/carving/project/${t.ID}`,{method:"GET"}));case 2:case"end":return e.stop()}},e,this)})),b.apply(this,arguments)}function w(e){return k.apply(this,arguments)}function k(){return k=(0,s.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,l.default)(`/v1/assets/carving/query/version/${t.ID}`,{method:"GET"}));case 1:case"end":return e.stop()}},e,this)})),k.apply(this,arguments)}function x(e){return g.apply(this,arguments)}function g(){return g=(0,s.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,l.default)(`/v1/assets/carving/active/release/${t.ID}?active=${t.active}&version=${t.VERSION}&appid=${t.APPID}`,{method:"GET"}));case 1:case"end":return e.stop()}},e,this)})),g.apply(this,arguments)}}}]);