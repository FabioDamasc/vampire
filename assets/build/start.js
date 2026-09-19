if (!window._l) window._l = "en";
/-XYRLT/.test(window._p) &&
  ($(".startbg").css("background-image", "url(img/bg/start_xyrality.gif)"),
  $("#agreement").show());
$("#agreement").click(function () {
  $(this).find(".checkbox").toggleClass("checked");
  $("#agree_error").html("").hide();
});
function gotoStartPage(c) {
  location.href = window.isWP
    ? "start.html"
    : "start.html" + (c || "?") + "&_l=" + window._l;
}
function gotoMainPage(c) {
  location.href = window.isWP
    ? "main.html"
    : "main.html" + (c || "?") + "&_l=" + window._l;
}
if (!CONFIG.RELEASE)
  ((window.sysuser = "virtual-device-00000-00000-12121"),
    (window.syscode = "virtual-device-00000-00000-12121"),
    (window.syspassword = "password"));
var pnlLoading = $("#loading");
Utils.validateStorage();
function deviceSwitch() {}
function gotoMain() {
  if (Utils.isNoStorage) {
    var c = null,
      g;
    for (g in localVars)
      null != localVars[g] &&
        (c =
          null == c
            ? g + "=" + encodeURIComponent(Utils.jsonToString(localVars[g]))
            : c +
              ("&" +
                g +
                "=" +
                encodeURIComponent(Utils.jsonToString(localVars[g]))));
    gotoMainPage("?" + c);
  } else gotoMainPage(null);
}
var fn_alert = null;
function showInfo(c, g) {
  $("#info p").html(c);
  $("#info").show();
  fn_alert = "undefined" == typeof g || null == g ? null : g;
}
function resyncUserInfo() {}
function getUser() {
  var c = Utils.getCookie("key");
  return null == c || null == c.user ? "" : c.user;
}
function displayVerInfo(c) {
  $("#divBuildNo b").text(c);
  $("#divBuildNo").show();
}
window._ver && displayVerInfo(window._ver);
function hideAll() {
  $("#center_container > div").hide();
}
$(function () {
  function c(a, b) {
    q = b;
    $("#confirm div p").html(a);
    $("#confirm").show();
  }
  function g() {
    hideAll();
    $("#divSelRace").show();
    getUser()
      ? $("#create_referer_panel").hide()
      : $("#create_referer_panel").show();
  }
  function h(a, b, d, f) {
    b._l = "undefined" == typeof window._l ? "en" : window._l;
    b._p = window._p ? window._p : "";
    $.ajax({
      type: "GET",
      url: a,
      data: b,
      dataType: "jsonp",
      jsonp: "jsonpcallback",
      timeout: CONFIG.AJAX_TIMEOUT,
      cache: !1,
      success: function (a) {
        if (a.code == CONFIG.SERVER_CODE.SUCCESS) d(a);
        else if (
          (pnlLoading.hide(), a.code == CONFIG.SERVER_CODE.ERROR_INVALIDKEY)
        ) {
          var a = !1,
            b = Utils.getCookie("key");
          if (null == b) a = !0;
          else if (
            "undefined" != typeof sysuser &&
            null != sysuser &&
            b.user == sysuser
          ) {
            var e = 0;
            if ("undefined" != typeof b.pvp) e = b.pvp;
            r(sysuser, syspassword, e);
          } else a = !0;
          a && k();
        } else
          a.code == CONFIG.SERVER_CODE.ERROR_UNKNOWN ||
          a.code == CONFIG.SERVER_CODE.ERROR_MAINTANENCE
            ? showInfo(translate(LNG.ERROR.SERVER[a.code], a.error))
            : ((b = !1),
              $.isFunction(f) && (b = f(parseInt(a.code), a)),
              b || showInfo(LNG.ERROR.SERVER[a.code]));
      },
      error: function (f, d) {
        var e = LNG.ERROR.AJAX;
        if (!(null != f && (0 == f.readyState || 0 == f.status))) {
          switch (d) {
            case "timeout":
              e = LNG.ERROR.AJAX_TIMEOUT;
              break;
            case "error":
              e = LNG.ERROR.AJAX_ERROR;
              break;
            case "parsererror":
              e = LNG.ERROR.AJAX_PARSE_ERROR;
          }
          if (!CONFIG.RELEASE) {
            var e = a,
              i = null;
            $.each(b, function (a, f) {
              i = null == i ? a + "=" + f : i + ("<br>" + a + "=" + f);
            });
            e += "?<br>" + i;
          }
          showInfo(e);
        }
        pnlLoading.hide();
      },
    });
  }
  function k() {
    "undefined" != typeof sysuser && null != sysuser
      ? $("#login_default").show()
      : $("#login_default").hide();
    $(".container > div").hide();
    $("#divLogin").show();
  }
  function n() {
    Utils.inAdvanceLoadingIMGS(STORY_GUIDE.preload, function () {
      p.guideList = STORY_GUIDE.story;
      p.guideIndex = 0;
      p.DisplayGuide();
      $("#story").show();
    });
  }
  function l() {
    var a = Utils.getCookie("key");
    if (null == a)
      if ("undefined" == typeof sysuser || null == sysuser)
        (pnlLoading.hide(), k());
      else {
        pnlLoading.show();
        var b = CONFIG.MASTERHOST + CONFIG.MASTER_QUERY,
          d = { user: sysuser, action: "reg", code: syscode };
        h(
          b,
          d,
          function () {
            hideAll();
            n();
            pnlLoading.hide();
          },
          function (f, b) {
            if (f == CONFIG.SERVER_CODE.ERROR_ACCOUNTEXIST) {
              pnlLoading.show();
              var d = b.ret.server,
                e = b.ret.referer,
                i = b.ret.refercode;
              h(
                d + CONFIG.FUNC_LOGIN,
                { username: sysuser, password: syspassword },
                function (f) {
                  a = {
                    user: sysuser,
                    key: f.ret.key,
                    server: d,
                    referer: e,
                    refercode: i,
                    pvp: 0,
                  };
                  Utils.setCookie("key", a, 365);
                  l();
                },
                function (a) {
                  if (a == CONFIG.SERVER_CODE.ERROR_ACCOUNTNOTEXIST)
                    return (hideAll(), n(), pnlLoading.hide(), !0);
                },
              );
              return !0;
            }
            return f == CONFIG.SERVER_CODE.ERROR_ACCOUNTWILLDISABLE ||
              f == CONFIG.SERVER_CODE.ERROR_ACCOUNTDISABLED
              ? (pnlLoading.hide(), k(), !0)
              : !1;
          },
        );
      }
    else
      (pnlLoading.show(),
        (b = a.server + CONFIG.FUNC_GETUSERINFO),
        (d = { key: a.key }),
        "undefined" != typeof syspushid &&
          null != syspushid &&
          "" != syspushid &&
          (d.pushid = syspushid),
        h(
          b,
          d,
          function (a) {
            a.ret.user &&
              (Utils.setCookie("user", a.ret.user),
              a.ret.events
                ? Utils.setCookie("events", a.ret.events)
                : Utils.delCookie("events"),
              a.ret.status
                ? Utils.setCookie("status", a.ret.status)
                : Utils.delCookie("status"),
              a.ret.gifts
                ? Utils.setCookie("gifts", a.ret.gifts)
                : Utils.delCookie("gifts"),
              gotoMain());
          },
          function (a) {
            return a == CONFIG.SERVER_CODE.ERROR_NOCHARACTER
              ? (hideAll(), n(), !0)
              : !1;
          },
        ));
    return !1;
  }
  function r(a, b, d) {
    pnlLoading.show();
    var f = Utils.getCookie("key");
    if (null == f || f.user != a || f.ispvp != d) {
      var c = CONFIG.MASTERHOST + CONFIG.MASTER_QUERY,
        m = { user: a, action: "login", pvp: d };
      "undefined" != typeof syscode && null != syscode && (m.code = syscode);
      h(c, m, function (e) {
        var c = e.ret.server,
          t = e.ret.referer,
          m = e.ret.refercode;
        a = e.ret.user;
        h(c + CONFIG.FUNC_LOGIN, { username: a, password: b }, function (b) {
          f = {
            user: a,
            key: b.ret.key,
            server: c,
            referer: t,
            refercode: m,
            pvp: d,
          };
          Utils.setCookie("key", f, 365);
          l();
        });
      });
    } else
      ((c = f.server + CONFIG.FUNC_LOGIN),
        h(c, { username: a, password: b }, function (a) {
          f.key = a.ret.key;
          Utils.setCookie("key", f, 365);
          l();
        }));
  }
  function s() {
    $("#reg_referer_panel").show();
    $("#reg_referer_check").attr("checked", !1);
    $("#reg_referer_off").show();
    $("#reg_referer_on").hide();
    $("#divRegister").show();
  }
  function o(a, b, d, f, c, m) {
    var b = b.toLowerCase(),
      c = c ? c.toLowerCase() : "",
      e = { action: "reg", account: b, password: d, referer: c };
    CONFIG.RELEASE && "undefined" != typeof syscode && null != syscode
      ? ((window.func_temp_create_account = function (b) {
          window.func_temp_create_account = null;
          e.code = syscode;
          e.sign = b;
          pnlLoading.show();
          h(a, e, m);
        }),
        js_call("makesign?func_temp_create_account&" + b + "&" + d + "&" + c))
      : (pnlLoading.show(), h(a, e, m));
  }
  document.ontouchmove = function (a) {
    a.preventDefault();
  };
  var q = null;
  $("#confirm_yes").click(function () {
    $.isFunction(q) && q();
    $("#confirm").hide();
    return !1;
  });
  $("#confirm_no").click(function () {
    $("#confirm").hide();
    return !1;
  });
  window.showSelRace = g;
  $("#create_race_sel").click(function () {
    if (0 < j) {
      var a = "",
        b = (a = "");
      if (
        !0 == $("#create_referer_check").attr("checked") &&
        ((b = $("#create_referer_on input").val()), "" == b)
      )
        return (showInfo(LNG.ERROR.CLIENT.EMPTYREFERER), !1);
      pnlLoading.show();
      var c = Utils.getCookie("key");
      null == c
        ? h(
            CONFIG.MASTERHOST + CONFIG.MASTER_QUERY,
            { user: sysuser, code: syscode, action: "regconfirm", referer: b },
            function (b) {
              var c = b.ret.server,
                d = b.ret.referer,
                e = b.ret.refercode;
              o(c + CONFIG.FUNC_REG, sysuser, syspassword, "", d, function (b) {
                b = {
                  user: sysuser,
                  key: b.ret.key,
                  server: c,
                  referer: d,
                  refercode: e,
                  pvp: 0,
                };
                Utils.setCookie("key", b, 365);
                h(
                  b.server + CONFIG.FUNC_CREATEROLE,
                  { nick: a, country: j, key: b.key },
                  function (a) {
                    a.ret.user &&
                      (Utils.setCookie("user", a.ret.user),
                      a.ret.events
                        ? Utils.setCookie("events", a.ret.events)
                        : Utils.delCookie("events"),
                      a.ret.status
                        ? Utils.setCookie("status", a.ret.status)
                        : Utils.delCookie("status"),
                      Utils.setCookie("chat_sync", 1),
                      gotoMain());
                  },
                  function (a) {
                    a == CONFIG.SERVER_CODE.ERROR_INVALIDRACE && g();
                  },
                );
              });
            },
            function (b, c) {
              if (b == CONFIG.SERVER_CODE.ERROR_ACCOUNTEXIST) {
                var d = c.ret.server,
                  e = c.ret.referer,
                  i = c.ret.refercode;
                o(
                  d + CONFIG.FUNC_REG,
                  sysuser,
                  syspassword,
                  "",
                  e,
                  function (b) {
                    b = {
                      user: sysuser,
                      key: b.ret.key,
                      server: d,
                      referer: e,
                      refercode: i,
                      pvp: 0,
                    };
                    Utils.setCookie("key", b, 365);
                    h(
                      b.server + CONFIG.FUNC_CREATEROLE,
                      { nick: a, country: j, key: b.key },
                      function (a) {
                        a.ret.user &&
                          (Utils.setCookie("user", a.ret.user),
                          a.ret.events
                            ? Utils.setCookie("events", a.ret.events)
                            : Utils.delCookie("events"),
                          a.ret.status
                            ? Utils.setCookie("status", a.ret.status)
                            : Utils.delCookie("status"),
                          Utils.setCookie("chat_sync", 1),
                          gotoMain());
                      },
                      function (a) {
                        a == CONFIG.SERVER_CODE.ERROR_INVALIDRACE && g();
                      },
                    );
                  },
                );
                return !0;
              }
              return !1;
            },
          )
        : h(
            c.server + CONFIG.FUNC_CREATEROLE,
            { nick: a, country: j, key: c.key },
            function (a) {
              a.ret.user &&
                (Utils.setCookie("user", a.ret.user),
                a.ret.events
                  ? Utils.setCookie("events", a.ret.events)
                  : Utils.delCookie("events"),
                a.ret.status
                  ? Utils.setCookie("status", a.ret.status)
                  : Utils.delCookie("status"),
                Utils.setCookie("chat_sync", 1),
                gotoMain());
            },
            function (a) {
              a == CONFIG.SERVER_CODE.ERROR_INVALIDRACE && g();
            },
          );
    } else showInfo(LNG.ERROR.CLIENT.EMPTYRACE);
    return !1;
  });
  $("#story_click").click(function () {
    p.StoryClick();
    return !1;
  });
  $("#start").click(function () {
    if (/-XYRLT/.test(window._p) && !$("#agreement .checkbox.checked").length)
      return ($("#agree_error").html(LNG.AGREEMENT_ERROR).show(), !1);
    if (window.isWIN8)
      if ("1" != Utils.getCookie("win8_privace"))
        ($("#privace_content").show(),
          $("#center_container").hide(),
          (ad = new iScroll("privace", { desktopCompatibility: !0 })),
          $("#agree").click(function () {
            Utils.setCookie("win8_privace", "1");
            $("#privace_content").hide();
            $("#center_container").show();
            l();
          }),
          $("#deagree").click(function () {
            $("#privace_content").hide();
            $("#center_container").show();
          }));
      else return (l(), !1);
    else return (l(), !1);
  });
  $("#account").click(function () {
    if (/-XYRLT/.test(window._p) && !$("#agreement .checkbox.checked").length)
      return ($("#agree_error").html(LNG.AGREEMENT_ERROR).show(), !1);
    $("#divMainMenu").hide();
    $("#divMyAccountMenu").show();
    return !1;
  });
  $("#switch").click(function () {
    k();
    return !1;
  });
  $("#getpwd_confirm").click(function () {
    var a = $("#getpwd_account").val();
    if (a) {
      var b = CONFIG.MASTERHOST + CONFIG.MASTER_QUERY,
        a = { user: a, action: "login" };
      "undefined" != typeof syscode && null != syscode && (a.code = syscode);
      pnlLoading.show();
      h(b, a, function (a) {
        var b = a.ret.server;
        account = a.ret.user;
        a = b + CONFIG.FUNC_REG;
        pnlLoading.show();
        h(a, { action: "findpass", account: account }, function () {
          showInfo(LNG.FINDPASSMAIL);
          $("#divMyAccountMenu").show();
          $("#divGetPassword").hide();
        });
      });
      return !1;
    }
    showInfo(LNG.ERROR.CLIENT.EMPTYEMAIL);
  });
  $("#getpwd_cancel").click(function () {
    $("#divGetPassword").hide();
    $("#divMyAccountMenu").show();
    return !1;
  });
  $("#forget").click(function () {
    $("#divMyAccountMenu").hide();
    $("#divGetPassword").show();
    return !1;
  });
  $("#back").click(function () {
    $("#divMyAccountMenu").hide();
    $("#divMainMenu").show();
    return !1;
  });
  $("#login_default td input").click(function () {
    $("#login_default td input").attr("checked")
      ? ($("#login_account").val(sysuser),
        $("#login_password").val(""),
        $("#login_account").attr("disabled", "disabled"),
        $("#login_password").attr("disabled", "disabled"))
      : ($("#login_account").val(""),
        $("#login_password").val(""),
        $("#login_account").attr("disabled", ""),
        $("#login_password").attr("disabled", ""));
  });
  $("#login_confirm").click(function () {
    $("#login_error").text("");
    var a = "",
      b = "";
    if ($("#login_default td input").attr("checked"))
      ((a = sysuser), (b = syspassword));
    else if (
      ((a = $("#login_account").val()),
      (b = $("#login_password").val()),
      "" == a)
    )
      return ($("#login_error").text(LNG.ERROR.CLIENT.EMPTYACCOUNT), !1);
    var c = $("#login_pvp input").attr("checked") ? 1 : 0;
    r(a, b, c);
    return !1;
  });
  $("#login_cancel").click(function () {
    if (window.isIE && LNG.CONFIRM13)
      c(LNG.CONFIRM13, function () {
        $("#divLogin").hide();
        s();
        return !1;
      });
    else return ($("#divLogin").hide(), s(), !1);
  });
  $("#reg_confirm").click(function () {
    $("#reg_error").text("");
    var a = $("#reg_account").val(),
      b = $("#reg_password").val(),
      d = $("#reg_password2").val();
    if ("" == a)
      return ($("#reg_error").text(LNG.ERROR.CLIENT.EMPTYACCOUNT), !1);
    if ("" == b)
      return ($("#reg_error").text(LNG.ERROR.CLIENT.EMPTYPASSWORD), !1);
    if (!/^[A-Za-z0-9]+$/.test(a))
      return ($("#reg_error").text(LNG.ERROR.CLIENT.INVALIDACCOUNT), !1);
    if (!/^[A-Za-z0-9]+$/.test(b))
      return ($("#reg_error").text(LNG.ERROR.CLIENT.INVALIDPASSWORD), !1);
    if (d != b)
      return ($("#reg_error").text(LNG.ERROR.CLIENT.PASSWORDNOTMATCH), !1);
    d = "";
    if (
      !0 == $("#reg_referer_check").attr("checked") &&
      ((d = $("#reg_referer_on input").val()), "" == d)
    )
      return ($("#reg_error").text(LNG.ERROR.CLIENT.EMPTYREFERER), !1);
    pnlLoading.show();
    var f = CONFIG.MASTERHOST + CONFIG.MASTER_QUERY,
      g = { user: a, action: "reg", referer: d };
    "undefined" != typeof syscode && null != syscode && (g.code = syscode);
    h(
      f,
      g,
      function (c) {
        var e = c.ret.server,
          d = c.ret.referer,
          f = c.ret.refercode;
        o(e + CONFIG.FUNC_REG, a, b, "", d, function (b) {
          Utils.setCookie(
            "key",
            {
              user: a,
              key: b.ret.key,
              server: e,
              referer: d,
              refercode: f,
              pvp: 0,
            },
            365,
          );
          hideAll();
          n();
          pnlLoading.hide();
        });
      },
      function (d, e) {
        if (d == CONFIG.SERVER_CODE.ERROR_ACCOUNTEXIST) {
          var i = e.ret.server,
            j = e.ret.referer,
            l = e.ret.refercode;
          o(i + CONFIG.FUNC_REG, a, b, "", j, function (b) {
            Utils.setCookie(
              "key",
              {
                user: a,
                key: b.ret.key,
                server: i,
                referer: j,
                refercode: l,
                pvp: 0,
              },
              365,
            );
            hideAll();
            n();
            pnlLoading.hide();
          });
          return !0;
        }
        if (d == CONFIG.SERVER_CODE.ERROR_ACCOUNTWILLDISABLE) {
          var k = e.ret.user,
            k =
              "@" == k
                ? LNG.SYSTEMACCOUNT
                : translate(LNG.USERACCOUNT, "<b>" + k + "</b>");
          c(translate(LNG.CONFIRMCREATE, k), function () {
            pnlLoading.show();
            g.action = "regconfirm";
            h(f, g, function (c) {
              var d = c.ret.server,
                e = c.ret.referer,
                f = c.ret.refercode;
              o(d + CONFIG.FUNC_REG, a, b, "", e, function (b) {
                Utils.setCookie(
                  "key",
                  {
                    user: a,
                    key: b.ret.key,
                    server: d,
                    referer: e,
                    refercode: f,
                    pvp: 0,
                  },
                  365,
                );
                hideAll();
                n();
                pnlLoading.hide();
              });
            });
          });
          return !0;
        }
        return !1;
      },
    );
    return !1;
  });
  $("#reg_cancel").click(function () {
    $("#divRegister").hide();
    $("#divMyAccountMenu").show();
    return !1;
  });
  $("#info_confirm").click(function () {
    $("#info").hide();
    pnlLoading.hide();
    fn_alert && fn_alert();
    return !1;
  });
  var j = 0;
  $("#create_race_1").click(function () {
    j = 1;
    $("#create_race_sel1").show();
    $("#create_race_sel2").hide();
    $("#create_race_sel3").hide();
    $("#create_race_desc").html(LNG.RACE_DESC[1]);
    $("#create_race_sel").show();
    return !1;
  });
  $("#create_race_2").click(function () {
    j = 2;
    $("#create_race_sel2").show();
    $("#create_race_sel1").hide();
    $("#create_race_sel3").hide();
    $("#create_race_desc").html(LNG.RACE_DESC[2]);
    $("#create_race_sel").show();
    return !1;
  });
  $("#create_race_3").click(function () {
    j = 3;
    $("#create_race_sel3").show();
    $("#create_race_sel2").hide();
    $("#create_race_sel1").hide();
    $("#create_race_desc").html(LNG.RACE_DESC[3]);
    $("#create_race_sel").show();
    return !1;
  });
  $("#create_referer_check").change(function () {
    !0 == $("#create_referer_check").attr("checked")
      ? ($("#create_referer_off").hide(), $("#create_referer_on").show())
      : ($("#create_referer_off").show(), $("#create_referer_on").hide());
    return !1;
  });
  $("#reg_referer_check").change(function () {
    !0 == $("#reg_referer_check").attr("checked")
      ? ($("#reg_referer_off").hide(), $("#reg_referer_on").show())
      : ($("#reg_referer_off").show(), $("#reg_referer_on").hide());
    return !1;
  });
  pnlLoading.hide();
  pnlLoading.removeClass("loading1").addClass("loading2");
  0 <= window.location.href.indexOf("debug") &&
    $(".container").css("margin", "0px 0px 0px 0px");
  var p = (window.storyPlayer = new StoryPlayer());
});
function js_call(c) {
  window.isIE ? (droid.jscall = c) : (location.href = "js-call:" + c);
}
