(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[5],{"T+b+":function(t,e,a){"use strict";var r=a("TqRt");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var s=r(a("MVZn"));a("miYZ");var n=r(a("tsqr")),o=r(a("o0o1")),u=a("Wppp"),d=a("FEA4"),c=a("pSLm"),l={namespace:"gforthost",state:{projectlist:{data:[]},hosts:{data:[]}},effects:{getProjects:o.default.mark(function t(e,a){var r,s,n;return o.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e.payload,r=a.call,s=a.put,t.next=4,r(u.querProjectList);case 4:return n=t.sent,t.next=7,s({type:"saveProject",payload:n});case 7:case"end":return t.stop()}},t,this)}),searchHost:o.default.mark(function t(e,a){var r,s,u,c;return o.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return r=e.payload,s=a.call,u=a.put,t.next=4,s(d.filterAuthHost,r.params);case 4:if(c=t.sent,!c||200!=c.status){t.next=10;break}return t.next=8,u({type:"saveHost",payload:c,callback:r?r.callback:function(){}});case 8:t.next=11;break;case 10:n.default.error(c?c.msg:"\u672a\u77e5\u9519\u8bef");case 11:case"end":return t.stop()}},t,this)}),editForthostPermssionGroup:o.default.mark(function t(e,a){var r,s,u,d,l;return o.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:if(r=e.payload,s=a.call,u=a.put,d=!r.ID,l=null,!d){t.next=10;break}return t.next=7,s(c.addFortHostPermissionGroup,r);case 7:l=t.sent,t.next=13;break;case 10:return t.next=12,s(c.modifyFortHostPermissionGroup,r);case 12:l=t.sent;case 13:if(!l||200!=l.status){t.next=19;break}return t.next=16,u({type:"guser/updateSSHRoleList",payload:{data:l.data,act:d?"add":"edit"}});case 16:r.callback&&r.callback(l),t.next=20;break;case 19:n.default.error(l?l.msg:"\u672a\u77e5\u9519\u8bef");case 20:case"end":return t.stop()}},t,this)}),deleteForthostPermssionGroup:o.default.mark(function t(e,a){var r,s,u,d;return o.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return r=e.payload,s=a.call,u=a.put,t.next=4,s(c.deleteFortHostPermissionGroup,r);case 4:if(d=t.sent,!d||200!=d.status){t.next=10;break}return t.next=8,u({type:"guser/updateSSHRoleList",payload:{data:r,act:"delete"}});case 8:t.next=11;break;case 10:n.default.error(d?d.msg:"\u672a\u77e5\u9519\u8bef");case 11:case"end":return t.stop()}},t,this)})},reducers:{saveProject(t,e){return(0,s.default)({},t,{projectlist:e.payload})},updateSSHPermissionData(t,e){var a=e.payload,r=a.permissionid||-1;console.log("updateSSHPermisionData",t,e);var n=a.hosts.split(","),o=(0,s.default)({},t.hosts);o.data=o.data||[],o.data=o.data.concat();for(var u=0;u<o.data.length;u++)for(var d=0;d<n.length;d++)o.data[u].id==n[d]&&(o.data[u].permissionid=parseInt(r)||-1);return console.log("new host",o),(0,s.default)({},t,{hosts:o})},saveHost(t,e){return e.callback&&e.callback(e.payload),(0,s.default)({},t,{hosts:e.payload})}}};e.default=l},pSLm:function(t,e,a){"use strict";var r=a("TqRt");Object.defineProperty(e,"__esModule",{value:!0}),e.deleteFortHostPermissionGroup=d,e.modifyFortHostPermissionGroup=l,e.addFortHostPermissionGroup=p;var s=r(a("o0o1")),n=r(a("MVZn")),o=r(a("yXPU")),u=(a("Qyje"),r(a("t3Un")));function d(t){return c.apply(this,arguments)}function c(){return c=(0,o.default)(s.default.mark(function t(e){return s.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return t.abrupt("return",(0,u.default)(`/v1/ssh/group/delete/${e.ID}`,{method:"POST",body:(0,n.default)({},e.fields,{method:"post"})}));case 1:case"end":return t.stop()}},t,this)})),c.apply(this,arguments)}function l(t){return i.apply(this,arguments)}function i(){return i=(0,o.default)(s.default.mark(function t(e){return s.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return t.abrupt("return",(0,u.default)(`/v1/ssh/group/modify/${e.ID}`,{method:"POST",body:(0,n.default)({},e.fields,{method:"post"})}));case 1:case"end":return t.stop()}},t,this)})),i.apply(this,arguments)}function p(t){return f.apply(this,arguments)}function f(){return f=(0,o.default)(s.default.mark(function t(e){return s.default.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return t.abrupt("return",(0,u.default)(`/v1/ssh/group/create/${e.ID}`,{method:"POST",body:(0,n.default)({},e.fields,{method:"post"})}));case 1:case"end":return t.stop()}},t,this)})),f.apply(this,arguments)}}}]);