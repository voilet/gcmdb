(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[38],{"30ys":function(e,t,a){"use strict";var l=a("TqRt"),r=a("284h");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("IzEo");var s=l(a("bx4M"));a("/zsF");var d=l(a("PArb"));a("Pwec");var i=l(a("CtXQ"));a("+L6B");var n=l(a("2/Rp"));a("14J3");var o=l(a("BMrR"));a("jCWc");var u=l(a("kPKH")),c=l(a("pVnL"));a("5NDa");var f=l(a("5rEg")),p=l(a("MVZn"));a("OaEy");var h=l(a("2fM7"));a("y8nQ");var m,v,y,E,g=l(a("Vl3Y")),w=a("7DNP"),b=r(a("q1tI")),k=a("MuoO"),C=l(a("D1HW")),F=l(a("f7Iy")),S=g.default.Item,I=h.default.Option,D=e=>Object.keys(e).map(t=>e[t]).join(","),R={labelCol:{span:6},wrapperCol:{span:18}},q=(m=(0,k.connect)(e=>e),v=g.default.create(),m(y=v((E=class extends b.PureComponent{constructor(){super(...arguments),this.state={selectedRows:[],expandForm:!1,formValues:{},numId:"1"},this.handleStandardTableChange=((e,t,a)=>{var l=this.props.dispatch,r=this.state.formValues,s=Object.keys(t).reduce((e,a)=>{var l=(0,p.default)({},e);return l[a]=D(t[a]),l},{}),d=(0,p.default)({currentPage:e.current,pageSize:e.pageSize},r,s);a.field&&(d.sorter=`${a.field}_${a.order}`),l({type:"gdevice/queryHost",payload:d})}),this.handleSelectRows=(e=>{this.setState({selectedRows:e})}),this.openNotificationWithIcon=((e,t)=>{notification[e]({message:"\u901a  \u77e5  \u680f",description:t})}),this.handleDeleteData=(e=>{var t=e.ID,a=[];a.push(t),this.props.dispatch({type:"gdevice/deleteHost",payload:{tag:!1,infolist:JSON.stringify({ids:a})}});var l=this.props.gdevice;"200"==l.response.status?this.openNotificationWithIcon("success",l.response.message):this.openNotificationWithIcon("error",l.response.message)}),this.handleMenuClick=(e=>{var t=this.props.dispatch,a=this.state.selectedRows;if(a)switch(e.key){case"remove":t({type:"gproline/getProjectLine",payload:{ID:a.map(e=>e.ID).join(",")},callback:()=>{this.setState({selectedRows:[]})}});break;case"offline":t({type:"gproline/getProjectLine",payload:{ID:a.map(e=>e.ID).join(",")},callback:()=>{this.setState({selectedRows:[]})}});case"stop":t({type:"gproline/getProjectLine",payload:{ID:a.map(e=>e.ID).join(",")},callback:()=>{this.setState({selectedRows:[]})}});default:break}}),this.toggleForm=(()=>{this.setState({expandForm:!this.state.expandForm})}),this.Add=(()=>{var e=this.props,t=e.dispatch;e.match;t(w.routerRedux.push({pathname:"/resource/hardware/host/add"}))}),this.handleSearch=(()=>{var e=this.props.form;e.validateFields((t,a)=>{if(!t){var l={ipadds:e.getFieldValue("ipadds")?e.getFieldValue("ipadds"):"",fqdn:e.getFieldValue("fqdn")?e.getFieldValue("fqdn"):"",status:e.getFieldValue("status")?e.getFieldValue("status"):"",sn:e.getFieldValue("serialnumber")?e.getFieldValue("serialnumber"):"",idctitle:e.getFieldValue("idc")?e.getFieldValue("idc"):"",equipment_type:e.getFieldValue("equipment_type")?e.getFieldValue("equipment_type"):"",assets_number:e.getFieldValue("assets_number")?e.getFieldValue("assets_number"):"",osversion:e.getFieldValue("osversion")?e.getFieldValue("osversion"):"",search_target:"0"};this.props.dispatch({type:"gdevice/searchOnlineHost",payload:l})}})}),this.handleFormReset=(()=>{var e=this.props.form;this.props.dispatch({type:"gdevice/queryHost",payload:""}),e.resetFields()})}componentDidMount(){var e=this.props,t=e.dispatch,a=e.location;t({type:"gproline/getProjectLine"}),t({type:"gidc/queryIdcRelation",payload:"?tag=idc&id=1"}),t({type:"ghardware/queryHardwarePlan"}),t({type:"gdevice/queryUser"}),t({type:"gidc/queryIDC"}),a.query&&a.query.projectid?t({type:"gdevice/queryHostsByPid",payload:{projectid:a.query.projectid}}):t({type:"gdevice/queryHost",payload:""})}tabOnChange(e){this.setState({numId:"2"}),this.props.dispatch({type:"gdevice/queryHostDetail",payload:e})}tabClickFn(e){this.setState({numId:e})}renderSimpleForm(){var e=this.props.form.getFieldDecorator;return b.default.createElement(g.default,{onSubmit:this.handleSearch},b.default.createElement(o.default,{gutter:24},b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673aip"},R),e("ipadds")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673a\u540d"},R),e("fqdn")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673a\u72b6\u6001"},R),e("status")(b.default.createElement(h.default,{placeholder:"\u8bf7\u9009\u62e9",style:{width:"100%"}},b.default.createElement(I,{key:"2",value:"2"},"host\u8fd0\u884c\u4e2d"),b.default.createElement(I,{key:"3",value:"3"},"host\u5df2\u5173\u673a"),b.default.createElement(I,{key:"5",value:"5"},"host\u5f02\u5e38"),b.default.createElement(I,{key:"6",value:"6"},"host\u5df2\u8fc7\u4fdd"),b.default.createElement(I,{key:"7",value:"7"},"host\u88c5\u673a\u4e2d"),b.default.createElement(I,{key:"8",value:"8"},"host\u672a\u5904\u7406")))))),b.default.createElement(o.default,{gutter:24},b.default.createElement(u.default,{span:24,style:{textAlign:"right"}},b.default.createElement("span",{className:F.default.submitButtons},b.default.createElement(n.default,{type:"primary",htmlType:"submit"},"\u67e5\u8be2"),b.default.createElement(n.default,{style:{marginLeft:8},onClick:this.handleFormReset},"\u91cd\u7f6e"),b.default.createElement("a",{style:{marginLeft:8},onClick:this.toggleForm},"\u5c55\u5f00 ",b.default.createElement(i.default,{type:"down"}))))))}renderAdvancedForm(){var e=this.props.form.getFieldDecorator,t=this.props.gidc.idc.data.map(e=>{return b.default.createElement(I,{key:e.ID,value:e.idc_name},e.idc_name)});return b.default.createElement(g.default,{onSubmit:this.handleSearch},b.default.createElement(o.default,null,b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673aip"},R),e("ipadds")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673a\u540d"},R),e("fqdn")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u4e3b\u673a\u72b6\u6001"},R),e("status")(b.default.createElement(h.default,{placeholder:"\u8bf7\u9009\u62e9",style:{width:"100%"}},b.default.createElement(I,{key:"2",value:"2"},"host\u8fd0\u884c\u4e2d"),b.default.createElement(I,{key:"3",value:"3"},"host\u5df2\u5173\u673a"),b.default.createElement(I,{key:"5",value:"5"},"host\u5f02\u5e38"),b.default.createElement(I,{key:"6",value:"6"},"host\u5df2\u8fc7\u4fdd"),b.default.createElement(I,{key:"7",value:"7"},"host\u88c5\u673a\u4e2d"),b.default.createElement(I,{key:"8",value:"8"},"host\u672a\u5904\u7406")))))),b.default.createElement(o.default,null,b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u5e8f\u5217\u53f7"},R),e("serialnumber")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u673a\u623f"},R),e("idc")(b.default.createElement(h.default,{mode:"tags",style:{width:"100%"},placeholder:"\u8bf7\u9009\u62e9"},t)))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u786c\u4ef6\u7c7b\u578b"},R),e("equipment_type")(b.default.createElement(h.default,{style:{width:"100%"},placeholder:"\u8bf7\u9009\u62e9"},b.default.createElement(I,{key:"1",value:"1"},"\u7269\u7406\u673a"),b.default.createElement(I,{key:"2",value:"2"},"\u865a\u62df\u673a"),b.default.createElement(I,{key:"3",value:"3"},"\u4ea4\u6362\u673a"),b.default.createElement(I,{key:"4",value:"4"},"\u8def\u7531\u5668"),b.default.createElement(I,{key:"5",value:"5"},"\u9632\u706b\u5899"),b.default.createElement(I,{key:"6",value:"6"},"\u5b58\u50a8")))))),b.default.createElement(o.default,null,b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u8d44\u4ea7\u7f16\u53f7"},R),e("assets_number")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u5bb9\u707e\u5757"},R),e("guard")(b.default.createElement(f.default,{placeholder:"\u8bf7\u8f93\u5165"})))),b.default.createElement(u.default,{span:8},b.default.createElement(S,(0,c.default)({label:"\u64cd\u4f5c\u7cfb\u7edf\u7c7b\u578b"},R),e("osversion")(b.default.createElement(h.default,{placeholder:"\u8bf7\u9009\u62e9",style:{width:"100%"}},b.default.createElement(I,{key:"1",value:"1"},"Centos6.9"),b.default.createElement(I,{key:"2",value:"2"},"Centos7.2"),b.default.createElement(I,{key:"3",value:"3"},"Windows2003"),b.default.createElement(I,{key:"4",value:"4"},"Windows2008")))))),b.default.createElement("div",{style:{overflow:"hidden"}},b.default.createElement("span",{style:{float:"right",marginBottom:24}},b.default.createElement(n.default,{type:"primary",htmlType:"submit"},"\u67e5\u8be2"),b.default.createElement(n.default,{style:{marginLeft:8},onClick:this.handleFormReset},"\u91cd\u7f6e"),b.default.createElement("a",{style:{marginLeft:8},onClick:this.toggleForm},"\u6536\u8d77 ",b.default.createElement(i.default,{type:"up"})))))}renderForm(){return this.state.expandForm?this.renderAdvancedForm():this.renderSimpleForm()}render(){var e=this.props.gdevice,t=this.state.selectedRows;return b.default.createElement(s.default,{bordered:!1},b.default.createElement("div",{className:F.default.tableList},b.default.createElement("div",{className:F.default.tableListForm},this.renderForm()),b.default.createElement(d.default,null,"  \u4e3b\u673a\u7ba1\u7406  "),b.default.createElement(C.default,(0,c.default)({selectedRows:t,gdevice:e,onRoute:this.onRoute,onSelectRow:this.handleSelectRows,onChange:this.handleStandardTableChange,onEdit:this.handleEdit,onShow:this.handleShow,handleDeleteData:this.handleDeleteData,passwordClick:this.passwordClick},this.props))))}},y=E))||y)||y);t.default=q},D1HW:function(e,t,a){"use strict";var l=a("284h"),r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("g9YV");var s=r(a("wCAj"));a("fOrg");var d=r(a("+KLJ")),i=r(a("MVZn"));a("P2fV");var n=r(a("NJEC"));a("/zsF");var o=r(a("PArb"));a("14J3");var u=r(a("BMrR"));a("jCWc");var c=r(a("kPKH"));a("/xke");var f=r(a("TeRw")),p=l(a("q1tI")),h=a("7DNP"),m=r(a("s6jc")),v=r(a("W2Ej")),y=(r(a("tidv")),e=>{f.default[e]({message:"\u9519\u8bef\u63d0\u793a:",description:"\u5b58\u5728\u672a\u89e3\u9664\u7684\u9879\u76ee\u5173\u7cfb,\u8bf7\u5148\u89e3\u9664\u9879\u76ee\u5173\u7cfb"})});class E extends p.PureComponent{constructor(){super(...arguments),this.state={selectedRowKeys:[],totalCallNo:0,data:[],status:!1,confirmDirty:!1},this.handleRowSelectChange=((e,t)=>{var a=t.reduce((e,t)=>{return e+parseFloat(t.callNo,10)},0);this.props.onSelectRow&&this.props.onSelectRow(t),this.setState({selectedRowKeys:e,totalCallNo:a})}),this.handleTableChange=((e,t,a)=>{this.props.onChange(e,t,a)}),this.cleanSelectedKeys=(()=>{this.handleRowSelectChange([],[])}),this.handleProlist=(e=>{return e.map(e=>p.default.createElement("div",null,e.proline_title,"->",e.progroup_title,"->",e.project_title,p.default.createElement("hr",null)))}),this.deleteHost=(e=>{var t=new Array;t.push(e),this.props.dispatch({type:"gdevice/deleteHost",payload:{tag:!0,infolist:JSON.stringify({ids:t})}});var a=this.props.gdevice.response;if("200"==a.status){var l=[...this.state.data],r=l.filter(e=>t===e.ID)[0];if(r){var s=l.indexOf(r);s>-1&&l.splice(s,1),this.setState({data:l})}}else y("error")}),this.editPass=(()=>{p.default.createElement(v.default,null)})}componentWillReceiveProps(e){0===e.selectedRows.length&&this.setState({selectedRowKeys:[],totalCallNo:0}),e.gdevice.host.data&&this.setState({data:e.gdevice.host.data})}edit(e){var t=this.props,a=t.dispatch;t.match;a(h.routerRedux.push({pathname:"/resource/hardware/host/edit",query:{id:e}}))}show(e){var t=this.props,a=t.dispatch;t.match;a(h.routerRedux.push({pathname:"/resource/hardware/host/detail",query:{id:e}}))}render(){var e=this.state,t=e.selectedRowKeys,a=(e.totalCallNo,e.data),l=this.props.gdevice,r=[{title:"ip",dataIndex:"ipsummary",key:"ipsummary",render:(e,t)=>{var a={color:"#108ee9",fontWeight:600};return p.default.createElement("div",{style:a}," ",p.default.createElement("a",{onClick:()=>this.show(t.ID)},e))}},{title:"fqdn",dataIndex:"fqdn",key:"fqdn"},{title:"\u6240\u5728\u4ea7\u54c1\u7ebf",dataIndex:"projectlists",key:"projectlists",sorter:!0,render:(e,t)=>{var a={color:"#108ee9",fontWeight:600};return p.default.createElement("div",{style:a},t.projectlists?this.handleProlist(t.projectlists):"")}},{title:"\u673a\u67dc\u673a\u67b6",dataIndex:"idc_title",key:"idc_title"},{title:"\u786c\u4ef6\u4fe1\u606f",dataIndex:"summary",key:"summary",render:(e,t)=>{var a={color:"#108ee9"};return p.default.createElement("div",{style:a},p.default.createElement(u.default,{gutter:24},p.default.createElement(c.default,{span:24},"cpu\u4fe1\u606f: ",e.cpu_info)),p.default.createElement(u.default,{gutter:24},p.default.createElement(c.default,{span:24},"\u5185\u5b58\u4fe1\u606f: ",e.mem_info)),p.default.createElement(u.default,{gutter:24},p.default.createElement(c.default,{span:24},"\u78c1\u76d8\u4fe1\u606f: ",e.disk_info)))}},{title:"\u64cd\u4f5c",dataIndex:"ID",key:"ID",render:(e,t)=>{return p.default.createElement("div",{className:"editable-row-operations"},p.default.createElement("a",{onClick:()=>this.edit(t.ID)},"\u7f16\u8f91"),p.default.createElement(o.default,{type:"vertical"}),p.default.createElement("a",{onClick:()=>this.show(t.ID)},"\u8be6\u60c5"),p.default.createElement(o.default,{type:"vertical"}),p.default.createElement(n.default,{title:"\u786e\u5b9a\u5220\u9664?",onConfirm:()=>this.deleteHost(t.ID)},p.default.createElement("a",null,"\u5220\u9664")),p.default.createElement(o.default,{type:"vertical"}))}}],f=(0,i.default)({showSizeChanger:!0,showQuickJumper:!0},l.host.pagination),h={selectedRowKeys:t,onChange:this.handleRowSelectChange,getCheckboxProps:e=>({disabled:e.disabled})};return p.default.createElement("div",{className:m.default.standardTable},p.default.createElement("div",{className:m.default.tableAlert},p.default.createElement(d.default,{message:p.default.createElement("div",null,"\u76ee\u524d\u5171\u6709 ",p.default.createElement("a",{style:{fontWeight:600}},f.total)," \u4e2a\u4e3b\u673a\xa0 \u5df2\u9009\u62e9 ",p.default.createElement("a",{style:{fontWeight:600}},t.length)," \u4e2a\u4e3b\u673a\xa0",p.default.createElement("a",{onClick:this.cleanSelectedKeys,style:{marginLeft:24}},"\u53d6\u6d88\u52fe\u9009")),type:"info",showIcon:!0})),p.default.createElement(s.default,{rowKey:e=>e.ID,rowSelection:h,dataSource:a,columns:r,pagination:f,onChange:this.handleTableChange}))}}var g=E;t.default=g},W2Ej:function(e,t,a){"use strict";var l=a("284h"),r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("2qtc");var s=r(a("kLXV")),d=r(a("pVnL"));a("5NDa");var i=r(a("5rEg"));a("y8nQ");var n=r(a("Vl3Y")),o=l(a("q1tI")),u=(a("MuoO"),n.default.Item),c={labelCol:{span:6},wrapperCol:{span:18}};class f extends o.PureComponent{constructor(){super(...arguments),this.state={ModifyPw:this.props.visible,confirmDirty:!1},this.showModal=(e=>{this.setState({visible:!0})}),this.onCancel=(e=>{this.setState({visible:!1}),this.props.form.resetFields()}),this.onSave=((e,t)=>{this.props.dispatch({type:"gdevice/modifyHostPassword",payload:{id:e,passwd:t}})}),this.validateToNextPassword=((e,t,a)=>{var l=this.props.form;t&&this.state.confirmDirty&&l.validateFields(["confirm"],{force:!0}),a()}),this.compareToFirstPassword=((e,t,a)=>{var l=this.props.form;t&&t!==l.getFieldValue("password")?a("\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u5fc5\u987b\u4e00\u81f4"):a()}),this.handleConfirmBlur=(e=>{var t=e.target.value;this.setState({confirmDirty:this.state.confirmDirty||!!t})})}render(){var e=this.state.visible,t=this.props,a=t.form.getFieldDecorator,l=t.data;return o.default.createElement("span",null,o.default.createElement("a",{onClick:this.showModal},"\u4fee\u6539\u5bc6\u7801"),o.default.createElement(s.default,{visible:e,title:"\u4fee\u6539\u5bc6\u7801",okText:"\u786e\u5b9a",cancelText:"\u8fd4\u56de",onCancel:this.onCancel,onOk:this.onSave,maskClosable:!1},o.default.createElement(n.default,{layout:"vertical"},o.default.createElement(u,{label:"\u670d\u52a1\u5668IP\u5730\u5740"},l.ipsummary.split(",").map((e,t)=>o.default.createElement("div",{style:{color:"red"}}," ",e))),o.default.createElement(u,(0,d.default)({},c,{label:"\u65b0\u5bc6\u7801:"}),a("password",{rules:[{required:!0,message:"\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"},{validator:this.validateToNextPassword}]})(o.default.createElement(i.default,{type:"password"}))),o.default.createElement(u,(0,d.default)({},c,{label:"\u786e\u8ba4\u65b0\u5bc6\u7801: "}),a("confirm",{rules:[{required:!0,message:"\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"},{validator:this.compareToFirstPassword}]})(o.default.createElement(i.default,{type:"password",onBlur:this.handleConfirmBlur}))))))}}var p=n.default.create()(f);t.default=p},tidv:function(e,t,a){"use strict";var l=a("284h"),r=a("TqRt");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("2qtc");var s=r(a("kLXV")),d=r(a("pVnL"));a("y8nQ");var i=r(a("Vl3Y")),n=l(a("q1tI")),o=(a("qPIi"),i.default.Item),u={labelCol:{span:6},wrapperCol:{span:18}};class c extends n.PureComponent{constructor(){super(...arguments),this.state={visible:!1,confirmDirty:!1},this.showModal=(e=>{this.setState({visible:!0})}),this.onCancel=(e=>{this.setState({visible:!1}),this.props.form.resetFields()}),this.onSave=((e,t)=>{this.setState({visible:!1}),this.props.form.resetFields()})}render(){var e=this.state.visible,t=this.props,a=(t.form.getFieldDecorator,t.data);return n.default.createElement("span",null,n.default.createElement("a",{onClick:this.showModal},"\u67e5\u770b\u5bc6\u7801"),n.default.createElement(s.default,{visible:e,title:"\u67e5\u770b\u5bc6\u7801",okText:"\u786e\u5b9a",cancelText:"\u8fd4\u56de",onCancel:this.onCancel,onOk:this.onSave,maskClosable:!1},n.default.createElement(i.default,{layout:"vertical"},n.default.createElement(o,{label:"\u670d\u52a1\u5668IP\u5730\u5740"},a.ipsummary.split(",").map((e,t)=>n.default.createElement("div",{style:{color:"red"}}," ",e))),n.default.createElement(o,(0,d.default)({},u,{label:"\u5bc6\u7801:"})))))}}var f=i.default.create()(c);t.default=f}}]);