(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[8],{"3hpP":function(e,t,a){"use strict";var r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=r(a("MVZn")),s=r(a("o0o1")),u=a("FEA4"),c={namespace:"gresource",state:{data:[],parentdata:[],link:[]},effects:{getResourcelist:s.default.mark(function e(t,a){var r,n,c;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return t.payload,r=a.call,n=a.put,e.next=4,r(u.queryResourcelist);case 4:return c=e.sent,e.next=7,n({type:"saveResource",payload:c});case 7:case"end":return e.stop()}},e,this)}),modifyResourcelist:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.modifyResourcelist,r.description);case 4:return o=e.sent,e.next=7,c({type:"saveResponse",payload:o,cb:r.cb});case 7:return e.next=9,c({type:"reloadResource"});case 9:case"end":return e.stop()}},e,this)}),modifyResourceSeq:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.modifyResourceSeq,r.description);case 4:return o=e.sent,e.next=7,c({type:"saveResponse",payload:o,cb:r.cb});case 7:return e.next=9,c({type:"reloadResource"});case 9:case"end":return e.stop()}},e,this)}),addResourcelist:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.addResourcelist,r.description);case 4:return o=e.sent,e.next=7,c({type:"saveResponse",payload:o,cb:r.cb});case 7:return e.next=9,c({type:"reloadResource"});case 9:case"end":return e.stop()}},e,this)}),deleteResourcelist:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.deleteResourcelist,r.description);case 4:return o=e.sent,e.next=7,c({type:"saveResponse",payload:o,cb:r.cb});case 7:return e.next=9,c({type:"reloadResource"});case 9:case"end":return e.stop()}},e,this)}),getResourceTreeForparent:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.getResourceTreeForparent);case 4:return o=e.sent,e.next=7,c({type:"saveParentResource",payload:o,cb:r.cb});case 7:case"end":return e.stop()}},e,this)}),getURLforLink:s.default.mark(function e(t,a){var r,n,c,o;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(u.queryURLforLink,r);case 4:return o=e.sent,e.next=7,c({type:"saveURLforLink",payload:o,cb:r.cb});case 7:case"end":return e.stop()}},e,this)}),reloadResource:s.default.mark(function e(t,a){var r;return s.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=a.put,a.select,e.next=3,r({type:"getResourcelist"});case 3:case"end":return e.stop()}},e,this)})},reducers:{save(e,t){return(0,n.default)({},e,{list:t.payload})},saveResponse(e,t){return t.cb&&t.cb(t.payload),(0,n.default)({},e,{response:t.payload})},saveParentResource(e,t){return t.cb&&t.cb(t.payload),(0,n.default)({},e,{parentdata:t.payload})},saveResource(e,t){return(0,n.default)({},e,t.payload)},saveURLforLink(e,t){return t.cb&&t.cb(t.payload),(0,n.default)({},e,{link:t.payload})},changeNotifyCount(e,t){return(0,n.default)({},e,{currentUser:(0,n.default)({},e.currentUser,{notifyCount:t.payload})})}}};t.default=c}}]);