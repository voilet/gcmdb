(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[45],{"5WY0":function(e,t,a){e.exports={main:"antd-pro-pages-user-register-main",getCaptcha:"antd-pro-pages-user-register-getCaptcha",submit:"antd-pro-pages-user-register-submit",login:"antd-pro-pages-user-register-login",error:"antd-pro-pages-user-register-error",success:"antd-pro-pages-user-register-success",warning:"antd-pro-pages-user-register-warning","progress-pass":"antd-pro-pages-user-register-progress-pass",progress:"antd-pro-pages-user-register-progress"}},cq3J:function(e,t,a){"use strict";var r=a("TqRt"),s=a("284h");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,a("14J3");var l=r(a("BMrR"));a("+L6B");var i=r(a("2/Rp"));a("jCWc");var n=r(a("kPKH"));a("Q9mQ");var u=r(a("diRs"));a("MXD1");var d=r(a("CFYs")),o=r(a("MVZn"));a("5NDa");var c=r(a("5rEg"));a("OaEy");var p=r(a("2fM7"));a("y8nQ");var f,m,h,g,v=r(a("Vl3Y")),E=s(a("q1tI")),w=a("MuoO"),b=r(a("mOP9")),y=r(a("usdK")),P=r(a("5WY0")),S=v.default.Item,k=p.default.Option,C=c.default.Group,x={ok:E.default.createElement("div",{className:P.default.success},"\u5f3a\u5ea6\uff1a\u5f3a"),pass:E.default.createElement("div",{className:P.default.warning},"\u5f3a\u5ea6\uff1a\u4e2d"),poor:E.default.createElement("div",{className:P.default.error},"\u5f3a\u5ea6\uff1a\u592a\u77ed")},N={ok:"success",pass:"normal",poor:"exception"},D=(f=(0,w.connect)(e=>{var t=e.register,a=e.loading;return{register:t,submitting:a.effects["register/submit"]}}),m=v.default.create(),f(h=m((g=class extends E.Component{constructor(){super(...arguments),this.state={count:0,confirmDirty:!1,visible:!1,help:"",prefix:"86"},this.onGetCaptcha=(()=>{var e=59;this.setState({count:e}),this.interval=setInterval(()=>{e-=1,this.setState({count:e}),0===e&&clearInterval(this.interval)},1e3)}),this.getPasswordStatus=(()=>{var e=this.props.form,t=e.getFieldValue("password");return t&&t.length>9?"ok":t&&t.length>5?"pass":"poor"}),this.handleSubmit=(e=>{e.preventDefault();var t=this.props,a=t.form,r=t.dispatch;a.validateFields({force:!0},(e,t)=>{if(!e){var a=this.state.prefix;r({type:"register/submit",payload:(0,o.default)({},t,{prefix:a})})}})}),this.handleConfirmBlur=(e=>{var t=e.target.value,a=this.state.confirmDirty;this.setState({confirmDirty:a||!!t})}),this.checkConfirm=((e,t,a)=>{var r=this.props.form;t&&t!==r.getFieldValue("password")?a("\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u5339\u914d!"):a()}),this.checkPassword=((e,t,a)=>{var r=this.state,s=r.visible,l=r.confirmDirty;if(t)if(this.setState({help:""}),s||this.setState({visible:!!t}),t.length<6)a("error");else{var i=this.props.form;t&&l&&i.validateFields(["confirm"],{force:!0}),a()}else this.setState({help:"\u8bf7\u8f93\u5165\u5bc6\u7801\uff01",visible:!!t}),a("error")}),this.changePrefix=(e=>{this.setState({prefix:e})}),this.renderPasswordProgress=(()=>{var e=this.props.form,t=e.getFieldValue("password"),a=this.getPasswordStatus();return t&&t.length?E.default.createElement("div",{className:P.default[`progress-${a}`]},E.default.createElement(d.default,{status:N[a],className:P.default.progress,strokeWidth:6,percent:10*t.length>100?100:10*t.length,showInfo:!1})):null})}componentDidUpdate(){var e=this.props,t=e.form,a=e.register,r=e.dispatch,s=t.getFieldValue("mail");"ok"===a.status&&r(y.default.push({pathname:"/user/register-result",state:{account:s}}))}componentWillUnmount(){clearInterval(this.interval)}render(){var e=this.props,t=e.form,a=e.submitting,r=t.getFieldDecorator,s=this.state,d=s.count,o=s.prefix,f=s.help,m=s.visible;return E.default.createElement("div",{className:P.default.main},E.default.createElement("h3",null,"\u6ce8\u518c"),E.default.createElement(v.default,{onSubmit:this.handleSubmit},E.default.createElement(S,null,r("mail",{rules:[{required:!0,message:"\u8bf7\u8f93\u5165\u90ae\u7bb1\u5730\u5740\uff01"},{type:"email",message:"\u90ae\u7bb1\u5730\u5740\u683c\u5f0f\u9519\u8bef\uff01"}]})(E.default.createElement(c.default,{size:"large",placeholder:"\u90ae\u7bb1"}))),E.default.createElement(S,{help:f},E.default.createElement(u.default,{content:E.default.createElement("div",{style:{padding:"4px 0"}},x[this.getPasswordStatus()],this.renderPasswordProgress(),E.default.createElement("div",{style:{marginTop:10}},"\u8bf7\u81f3\u5c11\u8f93\u5165 6 \u4e2a\u5b57\u7b26\u3002\u8bf7\u4e0d\u8981\u4f7f\u7528\u5bb9\u6613\u88ab\u731c\u5230\u7684\u5bc6\u7801\u3002")),overlayStyle:{width:240},placement:"right",visible:m},r("password",{rules:[{validator:this.checkPassword}]})(E.default.createElement(c.default,{size:"large",type:"password",placeholder:"\u81f3\u5c116\u4f4d\u5bc6\u7801\uff0c\u533a\u5206\u5927\u5c0f\u5199"})))),E.default.createElement(S,null,r("confirm",{rules:[{required:!0,message:"\u8bf7\u786e\u8ba4\u5bc6\u7801\uff01"},{validator:this.checkConfirm}]})(E.default.createElement(c.default,{size:"large",type:"password",placeholder:"\u786e\u8ba4\u5bc6\u7801"}))),E.default.createElement(S,null,E.default.createElement(C,{compact:!0},E.default.createElement(p.default,{size:"large",value:o,onChange:this.changePrefix,style:{width:"20%"}},E.default.createElement(k,{value:"86"},"+86"),E.default.createElement(k,{value:"87"},"+87")),r("mobile",{rules:[{required:!0,message:"\u8bf7\u8f93\u5165\u624b\u673a\u53f7\uff01"},{pattern:/^1\d{10}$/,message:"\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff01"}]})(E.default.createElement(c.default,{size:"large",style:{width:"80%"},placeholder:"11\u4f4d\u624b\u673a\u53f7"})))),E.default.createElement(S,null,E.default.createElement(l.default,{gutter:8},E.default.createElement(n.default,{span:16},r("captcha",{rules:[{required:!0,message:"\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801\uff01"}]})(E.default.createElement(c.default,{size:"large",placeholder:"\u9a8c\u8bc1\u7801"}))),E.default.createElement(n.default,{span:8},E.default.createElement(i.default,{size:"large",disabled:d,className:P.default.getCaptcha,onClick:this.onGetCaptcha},d?`${d} s`:"\u83b7\u53d6\u9a8c\u8bc1\u7801")))),E.default.createElement(S,null,E.default.createElement(i.default,{size:"large",loading:a,className:P.default.submit,type:"primary",htmlType:"submit"},"\u6ce8\u518c"),E.default.createElement(b.default,{className:P.default.login,to:"/User/Login"},"\u4f7f\u7528\u5df2\u6709\u8d26\u6237\u767b\u5f55"))))}},h=g))||h)||h);t.default=D}}]);