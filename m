Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E8C6B7F84
	for <lists+tipc-discussion@lfdr.de>; Mon, 13 Mar 2023 18:29:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pblzJ-00045b-Sj;
	Mon, 13 Mar 2023 17:29:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nagen_kr@yahoo.co.in>) id 1pblzH-00045U-4Z
 for tipc-discussion@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xU3bwJQsS4q5z8uliT6ZrRg0rTxjYz8p38ohp9rLEGA=; b=U8Qz0v/t5/I6xfVBBTwsJnq9B/
 BLOnNwLMBCZ9aeps7nXACd7qLJQL993cfdrqw321ijAsjCa+nJKUMI62M+E6v4tXGLKgttse4dqHq
 Vp7GdDt2+OjRLjL+ovFZ+77Lw+4oDRQ7p+aQGnsS++40uk6/njMAua2Tti2mYGP10iB4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xU3bwJQsS4q5z8uliT6ZrRg0rTxjYz8p38ohp9rLEGA=; b=gn9LSGdRtyzzYpypZ6sAD9Tf97
 gSX25UYRxaVXjZZKV5pvoqvb+P0vZWrRjx+u0JykjlC0WHYwv3ZZPo7dX4KvRJJo+F0RYbOBK8B/C
 xtaYEg9mBLYXmFMFvzZH782SEYVBIbDNdxBL1ko0k5qx+GOe7s83U0dgSpWCmnJDTITI=;
Received: from sonic303-21.consmr.mail.sg3.yahoo.com ([106.10.242.38])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pblzE-006fbe-8V for tipc-discussion@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1678728560; bh=xU3bwJQsS4q5z8uliT6ZrRg0rTxjYz8p38ohp9rLEGA=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=nzGwECBKHpmZK9DPIIC/RmF6QFl6flSaLYTkVkYcYixdtMiFNOtjKBCT+NCj86esUx/BP0JhTJHvWLsFMou0bLu9pwmaIUXXxn/cpwyspWeMsNA6v5NHpFTiLs9y+ZRsfbL2gmyGnjzRnkemvB35clD/8CyVbIkXqc/n0pE1Y6laQL/R9QmtSMoZizrodDwOYNt9uyDYflHvz5E3fQPpZQS0qAQY3OOtPS8dr9T86YjnFfGOrp6Fi+r4nwrKQFxuNeGUtijKSbAsj89ZY/nm2VFYP40immAIv41AQhSC0/0gLs84F4hOsixY71+a17t0WUmkV9uzDW+EC94ZLdOO3w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1678728560; bh=xVVuDE1UOb6PdXT5jn231k4l2mK+fWe22uFxc/jnA5k=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=ORzcIvRxOoeLy6Z6BStq9wJbdk3S/J4ejeAZPYEtCC0PLzDJHxYeaKFPT9NJq57H3SZA20w2P1K9r5Pn1pisqfA0ayUPU9bGOWVb6EDdIijp2II80r+lJnMfRTDahSrEUBLKplRKdFL9D9Akdz0PSk6pJG0pwa6E/Sdq3MpURuIFAil+eFEF9hkYuLpDvMOvDg/su7haPotBt24LerDBy2WACNcphDGmw8Fx9MQ8FqCuyATdIq8uPVdF5sDDJxEIV+gfUYiOPTztT8e5NRIFF4FrZPLj1zG6P9lNShO66segpO6BzqUH9hlkrfy996dPS64jPHBIOMu0TzDeXKmS3Q==
X-YMail-OSG: ogkA0M8VM1nEgBF2ciP5lcBKAw1m9iSvoCMdDJTQmKXVW_ZEV0g4vZWQSzv2fjx
 gTE1hJbbChPPZqRHRheBSir4VbSAENIHtyZS9cc09B5DmYmurdi0Z5Q3LBzlCEEopGT6.gem_G6j
 b1hAn5tFWT.6gA5EpN1zf5rNODJ27AdZZWJSdk0lBepvhVOwn_QmpcKZwqogi4QyuJaFgx_y0cgc
 UI46xgKWgF4LSArMVQTW9WaUWiR55s.ENwtJFE46Z8w7Wm0Nmn2dT5QnOODJdk6NeVCqPD4iUOkv
 8_0_3zdP_XJqNMhH88bpi9XG0qBATF3xC6vCuH1pwO7Zne.61rkkHj8E_5tyehP9f4Qhj0pCnbih
 QvaAwrr.SQtRukUSrCyETevYMvZYGS.ArwMoYgQ3k_kOxrss295MXo8kjLbK_xcdSXaro_JlBPOb
 CfCUHMJRF_30yobLRvchycTohu2So_mesp2dTnXZGsP.MiHRVtUrYIN4Okj6Bwr4gfnLOLiBe7pT
 jygFEwD7SxNqZ4XYEOUkk1RKPJywsQrhwR2IIZS1MzqUvt6JlVaVNk2o7X1FMwXGaZ76HazPZTXz
 4U.HZYeTYtsOCpDRA8Zj9yoPvykZ10mh6AnN5u1hU5CsuYifS8aQqwr6E0yAednztJy27ELhZXlx
 JFkHmGMZimF96mvGko45QQV9AetwaF3AJ6j9Y22jMfICd4lYV1CelFcNbeAJkw_JT.YguiTjwKuS
 GcQBIK3BHrVe3lH88Ww1yDMMjsgZuDsrGApoBxf.25xhPKv_S.ieF5zJqZBo0DnYOdKnJmYixOe9
 wkjzh6mQW4u8RdWqdDQWFWcYX0ZIS4MVNfR53yThFlalNBBnbiSqOK0DjcENISYX0o1hQG.YmisA
 dHX9E3f.siFRaavwjNb26WH0Nflun9QQ8YDlllWkBVkUlG74oN47AaY3GzLxP6yuvGGHI7aoCyIG
 hBzpcJblflKBRRSBtjIM6TYsPvUeO_UOxkZ7MrSwdr5QQPUf96cK0rbQyxiSZ56NwoM.Ro5xYS.D
 EjVEvy3IZDblzzIFZqgW9Lmfr8NvvQDUUr8Aut9PvvcpMHjb3pDtrmF6kYWWA0JJwX3Q9PEw0txa
 h6Vv067KMner6dtOL1FjoqdKe_QXfwLqaTRSb4I.oIF0bEOncoUL_kMtmkAa2gF8WkYUgTcvdv2K
 6Hp5b.9ZyARhfa2.A5fQQrW3Q_exKGsgbPsL3Rcu4eft9__NKuIBNo1Gqwu9VXdWBMSy2MH31_In
 Ts23.5TivpSSfIArfDyPxHu1zB0yeuzrD9._.chWLXqTrQKieCkW.Gu7qIGhWNxtcMDCWTTXG.cN
 5CwN6nIhHGcxgdampOseZaAePDy3GopKkLI5pVaUbBRwWh.1Jzypx.ZPjVtdMPFwYvQnW6wvchc4
 wt2uw2d_iqqH597QMPLsXJSMUwEvCvNJ.jnAYPDfnAxUcboXO8_quNCRV.OmIMRuiT5pQR9BSxTZ
 cxep3OBJ75kWRjrp6HhBjBPtBaKzFP8VvJbmlkMVKXIBnjdp445NEEP_X3VV246.j81LMd6HCOwB
 rhClDYQgq3zWoVxDc_yiFIUcUpn65jA7tNxtG58GarxtFRV6f5HjUMyaS0YpYCEpEqAVaPlh2DHd
 HBLrixoq04ZkkTSWlaKqrTxXq_JFT7KC3BMh8QHOSiMx_pBUBnbPCSRZ2CP3WGCk7l5RK1I11zME
 lU6zhp43Un3ELlRXMncQnN6ifhwKC1O.sdUYXLs120ZzZTmUb4KIiWOen2HyQ76LNfKBtHpa2IbZ
 2rYeuLeRwSgR9jy2qQRd7z.dvwxEyeLCkpoJLH_eD5uLkCHYeGw8_QKsnaAEDT16AqZFbW8smkuB
 UTg5k9lwTHXzCIFI_6_2hR9IOgkobQj4HuAqi9fEBV9x9CPyAn5Ex4FXKmG4qPWFZhEFnHAUO6r7
 48tmSwsgfJx_fcrpZMQoX.hmo1svwZKYV7bXXhRWgPLKEHEbyjxsUpZevpDiYXaP7fcQKPvnuur6
 rgdH6fcjVnSEMHw8H_WsgJGFKy4WZ6b2Iqv_npkGYHDvsbBXYQkpGQGGBoFjF7J0bGiMwRi3l93s
 5v1aqJH3KKmibrMgdLOXvGx45xdJ_TNosTHdyQATzjOFwsJZ0gw_2JpoqwL6zeyxXtPd30Musoe4
 yD2NY9g.0eaAjrhkROy54f0JvnZLOLUPzq.2CvuYs9_cv3M99qm_OOo8of42rjaA79Qj4afNMw4r
 nYF.t7i2aFskaF0GhAUKdauf15NFXAzGsJ5ThPvMvSgqeEHVX
X-Sonic-MF: <nagen_kr@yahoo.co.in>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.sg3.yahoo.com with HTTP; Mon, 13 Mar 2023 17:29:20 +0000
Date: Mon, 13 Mar 2023 16:58:16 +0000 (UTC)
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Message-ID: <972059401.678694.1678726696686@mail.yahoo.com>
In-Reply-To: <1377167456.519331.1678429199618@mail.yahoo.com>
References: <1377167456.519331.1678429199618.ref@mail.yahoo.com>
 <1377167456.519331.1678429199618@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21284 YMailNorrin
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sending it again..... On Friday, 10 March, 2023 at 11:49:59
 am IST, Nagendra Kumar wrote: Hi,We are trying to use TIPC on RHEL8.4 to
 manually communicate OpenSAF nodes, using TIPC instead of TCP. OpenSAF is
 designed to work with TIPC but only as L2 and, in this case,
 we need IP routing. T [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [106.10.242.38 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nagen_kr[at]yahoo.co.in]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pblzE-006fbe-8V
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC issue
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Nagendra Kumar via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Nagendra Kumar <nagen_kr@yahoo.co.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

IFNlbmRpbmcgaXQgYWdhaW4uLi4uLgogICAgT24gRnJpZGF5LCAxMCBNYXJjaCwgMjAyMyBhdCAx
MTo0OTo1OSBhbSBJU1QsIE5hZ2VuZHJhIEt1bWFyIDxuYWdlbl9rckB5YWhvby5jby5pbj4gd3Jv
dGU6ICAKIAogSGksV2UgYXJlIHRyeWluZyB0byB1c2UgVElQQyBvbiBSSEVMOC40IHRvIG1hbnVh
bGx5IGNvbW11bmljYXRlIE9wZW5TQUYgbm9kZXMsIHVzaW5nIFRJUEMgaW5zdGVhZCBvZiBUQ1Au
Ck9wZW5TQUYgaXMgZGVzaWduZWQgdG8gd29yayB3aXRoIFRJUEMgYnV0IG9ubHkgYXMgTDIgYW5k
LCBpbiB0aGlzIGNhc2UsIHdlIG5lZWQgSVAgcm91dGluZy4gVGhhdCdzIHdoeSB3ZSBhcmUgY29u
ZmlndXJpbmcgaXQgbWFudWFsbHkuCkkgYW0gdXNpbmcgdGhlIGZvbGxvd2luZyBzY3JpcHQgdG8g
c3RhcnQgYW5kIGNvbmZpZ3VyZSBUSVBDOiMhL2Jpbi9iYXNoClNMT1RfSUQ9JChjYXQgIi9ldGMv
b3BlbnNhZi9zbG90X2lkIilERVY9ZW5vMQptb2Rwcm9iZSB0aXBjdGlwYyBub2RlIHNldCBuZXRp
ZCAxMTExdGlwYyBub2RlIHNldCBhZGRyZXNzIDEuMS4kU0xPVF9JRHRpcGMgbm9kZSBzZXQgaWRl
bnRpdHkgJChob3N0bmFtZSl0aXBjIGJlYXJlciBlbmFibGUgbWVkaWEgdWRwIGRldmljZSAkREVW
IG5hbWUgJChob3N0bmFtZSl0aXBjIG1lZGlhIHNldCBtdHUgOTAwMCBtZWRpYSB1ZHAKKENvbmZp
Z3VyaW5nIFRJUEMgd2l0aCBVRFAgd2UgZ2V0IFRJUEMgdHJhZmZpYyBiZXR3ZWVuIG5vZGVzIG9m
IGRpZmZlcmVudCBjYWJpbmV0cykKIFRoZXkgaGF2ZSBhbGwgcnVuIHRoZSBzYW1lIHNjcmlwdC4g
U29tZXRpbWVzIGl0IGhhcHBlbnMgdG8gc29tZSBhbmQgc29tZXRpbWVzIGl0IGhhcHBlbnMgdG8g
b3RoZXJzIGRvaW5nIGV4YWN0bHkgdGhlIHNhbWUuIEluIHRoaXMgY2FzZSBwcm9jcyBhbmQgc3Nh
ZihwaWNzIGF0dGFjaGVkKSBhcmUgaW4gZGlmZmVyZW50IFZMQU5zLiBXaGVuIHRoZXkgYXJlIGlu
IHRoZSBzYW1lIFZMQU4sIHRoZXkgYWx3YXlzIHdvcmsgY29ycmVjdGx5LgoKCgpJIGRvbid0IGtu
b3cgaWYgaXQncyBhIG5ldHdvcmsgb3Igc29mdHdhcmUgcHJvYmxlbSBhcyBjb21tdW5pY2F0aW9u
cyBhcmUgd29ya2luZyBmaW5lLgpSSEVMIHZlcnNpb246IFJlZCBIYXQgRW50ZXJwcmlzZSBMaW51
eCByZWxlYXNlIDguNCAoT290cGEpCktlcm5lbCB2ZXJzaW9uOiA0LjE4LjAtMzA1LmVsOC54ODZf
NjQKVElQQyB2ZXJzaW9uOiBCdWlsdC1pbiBrZXJuZWwgbW9kdWxlCgoKwqDCoMKgCsKgVGhhbmsg
eW91ICEtTmFnZW5kcmEKICAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
