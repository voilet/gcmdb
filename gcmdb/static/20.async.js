(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[20],{F9px:function(e,t,a){"use strict";var l=a("TqRt"),s=a("284h");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("jCWc");var r=l(a("kPKH"));a("5NDa");var n=l(a("5rEg"));a("+L6B");var o=l(a("2/Rp"));a("14J3");var d=l(a("BMrR"));a("g9YV");var i=l(a("wCAj"));a("OaEy");var c=l(a("2fM7"));a("Pwec");var u=l(a("CtXQ")),h=l(a("MVZn"));a("miYZ");var p=l(a("tsqr"));a("/xke");l(a("TeRw"));var f,m,g,v=s(a("q1tI")),y=a("MuoO"),E=a("7DNP"),b=(l(a("T3va")),l(a("KbJ+"))),k=l(a("sAkQ")),S=(e,t)=>{p.default[e](t,2)},I=(f=(0,y.connect)((e,t)=>{console.log("***********************connect",e,t),console.log(e.gappmanage);var a=e.gappmanage.autohostdata;return{autohostdata:a}}),f((g=class extends v.PureComponent{constructor(e){super(e),this.handlerSocketMessage=(e=>{var t=JSON.parse(e.data);console.log("onMessage",t),t&&t.Data&&this.updateAutoHostData(t)}),this.handlerSocketError=(e=>{console.log("onError.")}),this.handlerSelect=((e,t,a)=>{this.closeSocket();var l=`filter_${e}`,s=this.state;s[l]=t,console.log("option select",s,e),this.setState(s);var r=this.props.dispatch;"service"==e&&(this.setState({filter_version:""}),t&&!isNaN(Number(t))&&(r({type:"gappmanage/getAutoHostVersions",payload:{ID:t,callback:e=>{var t=this.state;t.filters.version=e,this.setState(t),console.log("...........",t,e),this.forceUpdate()}}}),console.log("ref=",this.refs))),this.forceUpdate()}),this.closeSocket=(()=>{if(this.sockets)try{this.sockets.close()}catch(e){}this.sockets=null}),this.handlerSubmit=(e=>{var t=this;this.state.filter_service&&this.state.filter_version?(this.closeSocket(),this.sockets=(0,b.default)("gcmdb.fun.tv",{onmessage:function(e){t.handlerSocketMessage(e)},onerror:function(e){t.handlerSocketError(e)},onopen:e=>{this.props.dispatch({type:"gappmanage/getReleaseHosts",payload:{active:this.state.filter_type,ID:this.state.filter_version,APPID:this.state.selectedProjectId,callback:e=>{200!=e.status&&S("error","\u53d1\u5e03\u51fa\u9519\uff1a"+e.msg+"\uff0cCODE\uff1a"+e.status)}}})}})()):S("error","\u8bf7\u9009\u62e9\u670d\u52a1\u4ee5\u53ca\u7248\u672c\u4fe1\u606f!~ ~")}),this.handleSelectRows=(e=>{this.setState({selectedRows:e})}),this.handleStandardTableChange=((e,t,a)=>{}),this.updateAutoHostData=(e=>{if(e&&e.Data){for(var t="CallBackTask"==e.active?"task_"+e.Data.ip:"host_"+e.Data.ip,a=this.state.autohostdata||{data:[],task:[],host:[]},l=a.task,s=a.host,r=0;r<l.length;r++){var n="task_"+l[r].hostsip;n==t&&(l[r].msg=e.Data.msg||e.msg,l[r].releaseStatus=e.Data.status||e.code)}for(var o=0;o<s.length;o++){var d="host_"+s[o].hostsip;d==t&&(s[o].msg=e.Data.msg||e.msg,s[o].releaseStatus=e.Data.status||e.code)}this.state.autohostdata=a,this.setState(this.state),this.forceUpdate()}}),this.ToHostTable=(e=>{var t=this.props.dispatch;t(E.routerRedux.push({pathname:"/resource/hardware/host/list",query:{projectid:e}}))}),this.sockets=null,this.state=(0,h.default)({selectedKey:[],selectedRows:[],selectedProjectId:0,autohostdata:{},filter_type:"all",filter_version:"",filter_service:"",filter_version_default:"abc",filters:{service:[],version:[]}},e),console.log("*** ModReleaseCode init...props",this.props,this.state)}componentWillReceiveProps(e){console.log("setAttribute_________",e),e.selectedProjectId!=this.state.selectedProjectId&&(console.log("changeHost........"),this.state.selectedProjectId=e.selectedProjectId,this.queryHost(e.selectedProjectId))}componentWillMount(){this.props.dispatch;this.queryHost(this.props.selectedProjectId)}queryHost(e){var t=this.props.dispatch,a=this.state;a.filters.version=[],this.setState(a),e&&t({type:"gappmanage/getAutoHostdatabyId",payload:{ID:e,callback:e=>{var t=this.state;t.autohostdata=e;for(var a=e.data?e.data:[],l=[],s=[],r=0;r<a.length;r++){var n=a[r];if(n.task)for(var o=0;o<n.task.length;o++)l.push({ID:n.ID,key:"task_"+n.task[o],hostsip:n.task[o],msg:"",status:200,releaseStatus:""});if(n.hosts)for(var d=0;d<n.hosts.length;d++)s.push({ID:n.ID,key:"host_"+n.hosts[d],hostsip:n.hosts[d],msg:"",status:200,releaseStatus:""})}t.autohostdata.task=l,t.autohostdata.host=s,t.filters.service=e.data||[],this.setState(t)}}})}renderColumns(e,t,a){return v.default.createElement("div",null,e)}render(){var e=this.state,t=(e.selectedRows,e.selectedKey,this.props.loading);console.log("modReleaseCode render",this.state,this.props);var a=this.state.autohostdata,l=a.data?a.data:[];l=l.filter((e,t,a)=>{return this.state.filter_service?this.state.filter_service==e.ID?e:void 0:e}),console.log("hostdata",l);var s=a.task.filter(e=>{return e.ID==this.state.filter_service}),h=a.host.filter(e=>{return e.ID==this.state.filter_service}),p=[{title:"\u670d\u52a1\u540d\u79f0",dataIndex:"title",key:"title",width:"120px",render:(e,t)=>this.renderColumns(e,t,"title")},{title:"\u4efb\u52a1IP",dataIndex:"task",key:"task",width:"200px",render:(e,t)=>{console.log("record",t);var a={color:"red",cursor:"pointer",fontFamily:"Verdana",WebkitTransition:"all",msTransition:"all"};return v.default.createElement("span",{style:a},t.task.map(function(e){return v.default.createElement("div",null,v.default.createElement("a",{onClick:()=>this.ToHostTable(this.state.selectedProjectId)},e))}))}},{title:"\u8fd0\u884c\u72b6\u6001",dataIndex:"status",key:"status",width:"100px",render:(e,t)=>this.renderColumns(e,t,"status")},{title:"\u53d1\u5e03\u72b6\u6001",dataIndex:"msg",key:"msg",width:"200px",render:(e,t)=>{return v.default.createElement("div",null,e)}}],f=[{title:"IP\u5730\u5740",dataIndex:"hostsip",key:"hostsip",width:"200px",render:(e,t)=>{console.log("record",t);var a={color:"red",cursor:"pointer",fontFamily:"Verdana",WebkitTransition:"all",msTransition:"all"};return v.default.createElement("span",{style:a},(()=>{return v.default.createElement("div",null,v.default.createElement("a",{onClick:()=>this.ToHostTable(this.state.selectedProjectId)},t.hostsip))})())}},{title:"\u53d1\u5e03\u72b6\u6001",dataIndex:"msg",key:"msg",width:"200px",render:(e,t)=>{return v.default.createElement("div",null,e)}},{title:"\u8fd0\u884c\u72b6\u6001",dataIndex:"releaseStatus",key:"releaseStatus",width:"100px",render:(e,t)=>this.renderColumns(e,t,"releaseStatus")},{title:"",dataIndex:"releaseStatus",key:"status_",width:"120px",render:(e,t)=>{return t.releaseStatus?200!=t.releaseStatus?v.default.createElement(u.default,{type:"close-circle",style:{color:"#FF0000"}}):v.default.createElement(u.default,{type:"check-circle",style:{color:"#00cc00"}}):""}}];if(!this.state.selectedProjectId)return v.default.createElement("div",null,"\u8bf7\u9009\u62e9\u5de6\u8fb9\u7684\u5b50\u9879\u76ee");var m=e=>{console.log("renderFilter:",e),e=e||[];for(var t=[],a=0;a<e.length;a++)t.push(v.default.createElement(c.default.Option,{value:e[a].ID,title:e[a].title},e[a].title));return t},g=()=>{return this.state.filter_version?v.default.createElement(d.default,{gutter:24},v.default.createElement(i.default,{loading:t,rowKey:e=>e.ID,dataSource:s,columns:f,pagination:!1}),v.default.createElement("div",{style:{marginTop:25,marginBottom:5,fontWeight:"bold",paddingLeft:15}},"\u670d\u52a1\u5668\u66f4\u65b0\u72b6\u6001"),v.default.createElement(i.default,{loading:t,rowKey:e=>e.ID,dataSource:h,columns:f})):v.default.createElement(d.default,{gutter:24},v.default.createElement(i.default,{loading:t,rowKey:e=>e.ID,dataSource:l,columns:p,pagination:!1}))};return v.default.createElement("div",null,v.default.createElement(d.default,{gutter:24,style:{"margin-bottom":10}},v.default.createElement(r.default,null,v.default.createElement("div",{className:k.default.buttonList},v.default.createElement(c.default,{defaultValue:"",onSelect:e=>{this.handlerSelect("service",e)}},v.default.createElement(c.default.Option,{value:""},"\u6240\u6709\u670d\u52a1"),m(this.state.filters.service)),v.default.createElement(c.default,{ref:"version",defaultValue:"\u8bf7\u9009\u62e9\u7248\u672c",onSelect:e=>{this.handlerSelect("version",e)}},m(this.state.filters.version)),v.default.createElement(c.default,{defaultValue:"",onSelect:e=>{this.handlerSelect("type",e)}},v.default.createElement(c.default.Option,{value:""},"\u8bf7\u9009\u62e9"),v.default.createElement(c.default.Option,{value:"all"},"all"),v.default.createElement(c.default.Option,{value:"single"},"single")),v.default.createElement(n.default.Group,null,v.default.createElement(o.default,{onClick:this.handlerSubmit},"\u53d1\u5e03")))),v.default.createElement(r.default,null)),g())}},m=g))||m);t.default=I},I7JM:function(e,t,a){"use strict";var l=a("284h"),s=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("14J3");var r=s(a("BMrR")),n=s(a("MVZn")),o=l(a("q1tI")),d=(a("MuoO"),s(a("T3va")));class i extends o.PureComponent{constructor(e){super(e),this.handleSelectRows=(e=>{this.setState({selectedRows:e})}),this.handleStandardTableChange=((e,t,a)=>{}),this.state=(0,n.default)({selectedKey:[],selectedRows:[]},e),console.log("*** ModHostList init...",this.props,this.state)}componentWillReceiveProps(e){console.log("ModHostList receiveProps",e),this.setState((0,n.default)({},this.state,e))}render(){var e=this.state,t=e.selectedRows,a=e.selectedKey,l=this.state.hostdata?this.state.hostdata.data:[];return console.log("!!!!!!!!!Rende ModHostListr",l),o.default.createElement("div",{key:"1"},o.default.createElement(r.default,{gutter:24},o.default.createElement(d.default,{selectedKey:a,treeTabdata:l,selectedRows:t,onSelectRow:this.handleSelectRows,onChange:this.handleStandardTableChange,dispatch:this.props.dispatch})))}}t.default=i},"KbJ+":function(e,t,a){"use strict";var l=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=r;var s=l(a("MVZn"));function r(e,t){var a={host:window.location.host,path:"/wss",onopen:function(){},onclose:function(){},onerror:function(){},onmessage:function(){}};return function(){var e=(0,s.default)({},a,t);console.log("....init socket","ws://"+e.host+e.path);var l=null;try{l=new WebSocket("ws://"+e.host+e.path)}catch(t){e.onerror({code:4001,message:"\u4e0d\u652f\u6301WebSocket"})}return l.onclose=function(t){console.log("....."),e.onclose(t)},l.onmessage=function(t){console.log("............meesage");try{JSON.parse(t.data)}catch(e){}e.onmessage(t)},l.onopen=function(t){console.log("socket open",t),l.send('{"active": "login"}'),e.onopen(t)},l}}},"OYg/":function(e,t,a){"use strict";var l=a("TqRt"),s=a("284h");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("+L6B");var r=l(a("2/Rp"));a("14J3");var n=l(a("BMrR"));a("jCWc");var o=l(a("kPKH")),d=l(a("pVnL"));a("5NDa");var i=l(a("5rEg"));a("miYZ");var c=l(a("tsqr"));a("OaEy");var u=l(a("2fM7"));a("y8nQ");var h,p,f,m=l(a("Vl3Y")),g=s(a("q1tI")),v=(l(a("Un+4")),m.default.Item),y=u.default.Option,E=(h=m.default.create(),h((f=class extends g.PureComponent{constructor(){super(...arguments),this.state={idcData:[]},this.searchClick=(e=>{var t=this.props.form;e.preventDefault(),t.validateFields((e,a)=>{t.getFieldValue("name1")&&t.getFieldValue("name1"),t.getFieldValue("name2")&&t.getFieldValue("name2"),t.getFieldValue("name3")&&t.getFieldValue("name3"),t.getFieldValue("name4")&&t.getFieldValue("name4"),t.getFieldValue("name5")&&t.getFieldValue("name5"),t.getFieldValue("name6")&&t.getFieldValue("name6"),t.getFieldValue("name7")&&t.getFieldValue("name7"),t.getFieldValue("name8")&&t.getFieldValue("name8"),t.getFieldValue("name9")&&t.getFieldValue("name9");c.default.success("\u67e5\u8be2\u6210\u529f")})}),this.handleReset=(()=>{this.props.form.resetFields()})}componentWillReceiveProps(e){}render(){var e=this.props.form.getFieldDecorator,t=this.state.idcData,a={labelCol:{xs:{span:24},sm:{span:8}},wrapperCol:{xs:{span:24},sm:{span:16}}};return g.default.createElement("div",null,g.default.createElement(n.default,{gutter:24},g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"ip"}),e("name1")(g.default.createElement(i.default,{placeholder:"\u8bf7\u8f93\u5165ip"})))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u9879\u76ee\u540d"}),e("name2")(g.default.createElement(i.default,{placeholder:"\u8bf7\u8f93\u5165\u9879\u76ee\u540d"})))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u4f7f\u7528\u72b6\u6001"}),e("name3")(g.default.createElement(u.default,{style:{width:"100%"},placeholder:"\u8bf7\u9009\u62e9\u4f7f\u7528\u72b6\u6001"},g.default.createElement(y,{key:"1",value:"1"},"\u5f00\u673a"),g.default.createElement(y,{key:"0",value:"0"},"\u5173\u673a"))))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u503c\u73ed\u7ec4"}),e("name4")(g.default.createElement(u.default,{style:{width:"100%"},placeholder:"\u8bf7\u9009\u62e9\u503c\u73ed\u7ec4"},t.map(e=>{return g.default.createElement(y,{key:e.ID,value:e.ID},e.idc_name)}))))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u670d\u52a1ID"}),e("name2")(g.default.createElement(i.default,{placeholder:"\u8bf7\u8f93\u5165\u670d\u52a1ID"})))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u8d1f\u8d23\u4eba\u5458\u6a21\u7cca\u67e5\u8be2"}),e("name2")(g.default.createElement(i.default,{placeholder:"\u8bf7\u8f93\u5165\u8d1f\u8d23\u4eba\u5458"})))),g.default.createElement(o.default,{span:8,style:{display:"block"}},g.default.createElement(v,(0,d.default)({},a,{label:"\u57df\u540d"}),e("name7")(g.default.createElement(i.default,{placeholder:"\u8bf7\u8f93\u5165\u57df\u540d"}))))),g.default.createElement(n.default,null,g.default.createElement(o.default,{span:24,style:{textAlign:"right"}},g.default.createElement(r.default,{type:"primary",htmlType:"submit",onClick:this.searchClick},"Search"),g.default.createElement(r.default,{style:{marginLeft:8},onClick:this.handleReset},"Clear"))))}},p=f))||p);t.default=E},T3va:function(e,t,a){"use strict";var l=a("284h"),s=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("g9YV");var r=s(a("wCAj"));a("fOrg");var n=s(a("+KLJ"));a("5NDa");var o=s(a("5rEg")),d=l(a("q1tI")),i=a("7DNP"),c=s(a("vIdK")),u=e=>{var t=e.editable,a=e.value,l=e.onChange;return d.default.createElement("div",null,t?d.default.createElement(o.default,{style:{margin:"-5px 0"},value:a,onChange:e=>l(e.target.value)}):a)};class h extends d.PureComponent{constructor(){super(...arguments),this.state={selectedRowKeys:[],totalCallNo:0,data:[]},this.handleRowSelectChange=((e,t)=>{var a=t.reduce((e,t)=>{return e+parseFloat(t.callNo,10)},0);this.props.onSelectRow&&this.props.onSelectRow(t),this.setState({selectedRowKeys:e,totalCallNo:a})}),this.handleTableChange=((e,t,a)=>{this.props.onChange(e,t,a)}),this.cleanSelectedKeys=(()=>{this.handleRowSelectChange([],[])}),this.ToHostTable=(e=>{var t=this.props.dispatch;t(i.routerRedux.push({pathname:"/resource/hardware/host/list",query:{projectid:e}}))})}componentWillMount(){this.props.treeTabdata&&this.setState({data:this.props.treeTabdata})}componentWillReceiveProps(e){0===e.selectedRows.length&&this.setState({selectedRowKeys:[],totalCallNo:0}),this.setState({data:e.treeTabdata})}renderColumns(e,t,a){return d.default.createElement(u,{editable:t.editable,value:e,onChange:e=>this.handleChange(e,t.ID,a)})}edit(e){var t=[...this.state.data],a=t.filter(t=>e===t.ID)[0];a&&(a.editable=!0,this.setState({data:t.map(t=>{return e==t.ID&&(t.selectStatus=!1),t}),disabled:!1}))}save(e){var t=[...this.state.data],a=t.filter(t=>e===t.ID)[0];a&&(delete a.editable,a.enable=this.state.status,this.setState({data:t.map(t=>{return e==t.ID&&(t.selectStatus=!0),t}),disabled:!0}),this.props.handleSaveData(a)),console.logconsole.log}cancel(e){var t=[...this.state.data],a=t.filter(t=>e===t.ID)[0];a&&(delete a.editable,this.setState({data:t.map(t=>{return e==t.ID&&(t.selectStatus=!0),t}),disabled:!0}))}askdelete(e){var t=[...this.state.data],a=t.filter(t=>e===t.ID)[0];a&&(a.deleteable=!0,this.setState({data:t}))}confirmdelete(e){var t=[...this.state.data],a=t.filter(t=>e===t.ID)[0];if(a){var l=t.indexOf(a);l>-1&&t.splice(l,1),a.tag=!1,this.setState({data:t}),this.props.handleDeleteData(a)}}handleChange(e,t,a){var l=[...this.state.data],s=l.filter(e=>t===e.ID)[0];s&&(s[a]=e,this.setState({data:l,disabled:!1})),console.log("handleChange",e,t,a)}handleSelectLineValue(e,t,a){console.log(e,t,a);var l=[...this.state.data],s=l.filter(e=>t===e.ID)[0];s&&(s[a]=e,this.setState({data:l,disabled:!1}),this.props.dispatch({type:"gproline/getProjectGroupbyId",payload:e}))}render(){var e=this.state,t=e.selectedRowKeys,a=(e.totalCallNo,e.data),l=this.props.loading,s=[{title:"\u9879\u76ee\u540d",dataIndex:"project_title",key:"project_title",width:"120px",render:(e,t)=>this.renderColumns(e,t,"project_title")},{title:"IP\u5730\u5740",dataIndex:"hostsip",key:"hostsip",width:"200px",render:(e,t)=>{var a={color:"red",cursor:"pointer",fontFamily:"Verdana",WebkitTransition:"all",msTransition:"all"};return d.default.createElement("span",{style:a},t.hostsip.map(e=>{return d.default.createElement("div",null,d.default.createElement("a",{onClick:()=>this.ToHostTable(t.project_id)},e))}))}}],o={selectedRowKeys:t,onChange:this.handleRowSelectChange,getCheckboxProps:e=>({disabled:e.disabled})};return d.default.createElement("div",{className:c.default.TreeTab},d.default.createElement("div",{className:c.default.tableAlert},d.default.createElement(n.default,{message:d.default.createElement("div",null,"\u5df2\u9009\u62e9 ",d.default.createElement("a",{style:{fontWeight:600}},t.length)," \u4e2a\u9879\u76ee\xa0",d.default.createElement("a",{onClick:this.cleanSelectedKeys,style:{marginLeft:24}},"\u6e05\u7a7a")),type:"info",showIcon:!0})),d.default.createElement(r.default,{loading:l,rowKey:e=>e.ID,rowSelection:o,dataSource:a,columns:s,onChange:this.handleTableChange}))}}var p=h;t.default=p},"Un+4":function(e,t,a){e.exports={tableList:"antd-pro-pages-g-project-pro-tree-project-tree-tableList",tableListOperator:"antd-pro-pages-g-project-pro-tree-project-tree-tableListOperator",tableListForm:"antd-pro-pages-g-project-pro-tree-project-tree-tableListForm",submitButtons:"antd-pro-pages-g-project-pro-tree-project-tree-submitButtons"}},sAkQ:function(e,t,a){e.exports={buttonList:"antd-pro-pages-g-project-pro-tree-listproject-module-mod-common-buttonList"}},y6FN:function(e,t,a){"use strict";var l=a("TqRt"),s=a("284h");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("/zsF");var r=l(a("PArb"));a("IzEo");var n=l(a("bx4M"));a("14J3");var o=l(a("BMrR"));a("+L6B");var d=l(a("2/Rp"));a("jCWc");var i=l(a("kPKH")),c=l(a("MVZn"));a("Znn+");var u=l(a("ZTPi"));a("5NDa");var h=l(a("5rEg"));a("ozfa");var p,f,m,g,v,y=l(a("MJZm")),E=s(a("q1tI")),b=a("MuoO"),k=l(a("F9px")),S=l(a("I7JM")),I=(l(a("T3va")),l(a("OYg/")),l(a("Un+4")),y.default.TreeNode),w=h.default.Search,C=u.default.TabPane,x=e=>Object.keys(e).map(t=>e[t]).join(","),D=[],R=e=>{for(var t=0;t<e.length;t+=1){var a=e[t],l=a.key;D.push({key:l,title:a.title}),a.children&&R(a.children,a.key)}},T=[{name:"\u4e3b\u673a",key:"host"},{name:"\u4ee3\u7801\u53d1\u5e03",key:"release"}],P=e=>{var t=[];return e.forEach(function(e,a){t.push(E.default.createElement(C,{key:e.key,tab:e.name}))}),t},_=(e,t)=>{var a=e.gappmanage.hostdata;return console.log("mapStateToProps@@@@@@@@@@@",e,"props",t),console.log("###host",a),{hostdata:a}},j=(p=(0,b.connect)(_),p(f=class extends S.default{})||f),V=e=>{switch(e.currentOperatorName){case"host":return E.default.createElement(j,null,"1");case"release":return E.default.createElement(k.default,{selectedProjectId:e.selectedProjectId})}},O=(e,t,a)=>{for(var l,s=0;s<t.length;s+=1){var r=t[s];r.children&&(r.children.some(t=>t.key===e)?l=r.key:O(e,r.children)&&(l=O(e,r.children)))}return l},F=(m=(0,b.connect)(e=>e),m((v=class extends E.PureComponent{constructor(){super(...arguments),this.state={expandedKeys:[],searchValue:"",autoExpandParent:!0,selectedKey:[],selectedProjectId:0,selectedRows:[],currentOperatorName:"release",treedata:[],hostdata:[]},this.onExpand=(e=>{this.setState({expandedKeys:e,autoExpandParent:!1})}),this.handleReloadTree=(()=>{this.props.dispatch({type:"gappmanage/getTree",payload:{active:"update",callback:e=>{this.setState({treedata:e})}}})}),this.onChange=(e=>{var t=this.state.treedata,a=e.target.value;R(t);var l=D.map(e=>{return e.title.indexOf(a)>-1?O(e.key,t):null}).filter((e,t,a)=>e&&a.indexOf(e)===t);this.setState({expandedKeys:l,searchValue:a,autoExpandParent:!0})}),this.treeSelectClick=((e,t)=>{console.log("selectedKey",e,t);var a=e.toString().split("-")[1];console.log(this.props,this.state),"3"==e.toString().split("-")[0]&&t.selected&&(console.log("?gappmanage/getHostdatabyId"),this.setState({selectedProjectId:a}),this.props.dispatch({type:"gappmanage/getHostdatabyId",payload:{projectid:a,cb:e=>{console.log("?gappmanage/getHostdatabyId:res",e),this.setState({hostdata:e})}}})),setTimeout(()=>{console.log("@@@@@@@@@@@@",this.state,this.props)},1e3)}),this.handleStandardTableChange=((e,t,a)=>{this.props.dispatch;var l=this.state.formValues,s=Object.keys(t).reduce((e,a)=>{var l=(0,c.default)({},e);return l[a]=x(t[a]),l},{}),r=(0,c.default)({currentPage:e.current,pageSize:e.pageSize},l,s);a.field&&(r.sorter=`${a.field}_${a.order}`)}),this.handleSelectRows=(e=>{this.setState({selectedRows:e})}),this.handleSelectOperator=(e=>{this.setState({currentOperatorName:e})})}componentWillMount(){var e=this.props.dispatch;e({type:"gappmanage/getTree",payload:{callback:e=>{console.log("getTree data:",e),this.setState({treedata:e})}}}),e({type:"gappmanage/getAllTree",payload:{cb:e=>{console.log("getAllTree data:",e),this.setState({hostdata:e})}}})}render(){var e=this.state,t=e.searchValue,a=e.expandedKeys,l=e.autoExpandParent,s=(e.selectedKey,e.selectedRows,e=>e.map(e=>{var a=e.title.indexOf(t),l=e.title.substr(0,a),r=e.title.substr(a+t.length),n=a>-1?E.default.createElement("span",null,l,E.default.createElement("span",{style:{color:"#f50"}},t),r):E.default.createElement("span",null,e.title);return e.children?E.default.createElement(I,{key:e.key,title:n},s(e.children)):E.default.createElement(I,{key:e.key,title:n,id:e.id,"data-key":e.id})}));return E.default.createElement(o.default,{gutter:24,style:{height:"100%"}},E.default.createElement(i.default,{xs:24,md:6,style:{paddingRight:0,height:"100%"}},E.default.createElement(n.default,{style:{height:"100%"}},E.default.createElement("div",null,E.default.createElement(o.default,{gutter:24},E.default.createElement(i.default,{xs:16},E.default.createElement(w,{style:{marginBottom:8},placeholder:"Search",onChange:this.onChange})),E.default.createElement(i.default,{xs:4,style:{paddingLeft:0}},E.default.createElement(d.default,{title:"\u5f3a\u884c\u5237\u65b0\u6570\u636e",onClick:this.handleReloadTree},"\u5237\u65b0"))),E.default.createElement(y.default,{onExpand:this.onExpand,expandedKeys:a,autoExpandParent:l,onSelect:this.treeSelectClick},s(this.state.treedata))))),E.default.createElement(i.default,{xs:24,md:18,style:{paddingLeft:0,height:"100%"}},E.default.createElement(n.default,{style:{height:"100%"}},E.default.createElement(u.default,{activeKey:this.state.currentOperatorName,onTabClick:this.handleSelectOperator},P(T)),E.default.createElement(r.default,null," \u670d\u52a1\u5668\u5217\u8868 "),V(this.state))))}},g=v))||g);t.default=F}}]);