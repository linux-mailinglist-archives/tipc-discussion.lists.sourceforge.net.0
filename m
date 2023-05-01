Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 192C46F32F9
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 May 2023 17:35:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptVZ1-0000M3-H0;
	Mon, 01 May 2023 15:35:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptVYz-0000Lw-Du
 for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 15:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HS8ZKcZOsA/UOn3fD501mTY8FSogoYUjwfGwJZiZLqI=; b=NlcU7730vNaOKsQOQUUxqKXcWt
 xx7H16Is/TZihPXwKpThAlGUDlEAU2KOVEe/cPCtiUbAIMVNGE6qLMxN4+6vS09cKsYDx77R5sqa0
 /t7f/Ehxa/y77uNiqA7tuGgCa7zh3DyKMioa6M5MFWLIwdvIunPexNlOWcNWxduAeQzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HS8ZKcZOsA/UOn3fD501mTY8FSogoYUjwfGwJZiZLqI=; b=VQED73yel3b1MjULRfDfJI2qsE
 LhrPPW8JiRLgiutZ+zfco927Zfv2R8eVy2o0OfGFo0YNdcd7kheA7+ts3h5m+yjp0jOrrrVCC+8dD
 kB5jdhYVOMX9l2uPf6nr0MiC5T1uXHloQozvOg7Dgp7amEVWZB9q56L3y/3xhpsD66Kk=;
Received: from mail-yw1-f173.google.com ([209.85.128.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptVYy-00AR3E-Py for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 15:35:41 +0000
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-54f99770f86so37850697b3.1
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 01 May 2023 08:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682955335; x=1685547335;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HS8ZKcZOsA/UOn3fD501mTY8FSogoYUjwfGwJZiZLqI=;
 b=X4Nc5Rg5hsN3k/QAZXQaCPwVaDETnBDOx3vyvClCgImfnx9U+wvuPi70XPWFh5PfEI
 N6Q3JTb1VZd2N9frj/8ehOjy743LCswzvEnon4XUPeBe1BQurd1OOc98IINKteTuKxLo
 D2NTR4pp5k6PzHtM+ZWxWEM8rVqYO46g3i5BBGf3bMaJcM6xE5xs3KyTCtr+vZZQ5xPo
 ZcRt0Nsa7tm88Dy4G8dsLp2zz7GPyaNudHcAxmjpNQkPXftgXi8g1UKqz4U56XRixi6u
 xEU973nLvu50QX/ZWxtSzIDwsZ1i1EiEy+bVCtF/2dax4dzFgtQBX2EAXc2oC35rXtUe
 Y4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682955335; x=1685547335;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HS8ZKcZOsA/UOn3fD501mTY8FSogoYUjwfGwJZiZLqI=;
 b=Rk+CD271N2lPAOG3uTq52nGBSRUMOpjYJoTQ2Jiby8t7MnqEawuvWRZwcrjEta8Rc0
 9ZAxr2heVkFWVos1gUXaYakB321qQSZc3IjLq8LsmpU6Aj26bcZcecAGOwPLehUfs+ML
 ypGUUapyarqFb0Qe2wZFxROpmSe5JB2vB5P2DBduJCta4goewh9wnP3/CJM67No5aiE7
 tmfmakJSwoa8tYW1TYzAMZTXsDCjqCxC7BurtrTn8lzf+gGK7G9vSqJfIW7UbOpUqN2S
 IxwCiIZ8ABVT9hmQJwqFSti9XSTaeyAcAY85GgSc5SirCQ9933L2VOkE4nqWvRLj/yRT
 WsxA==
X-Gm-Message-State: AC+VfDxxJAou1YGWMK+zcAbXefu6h4cXhwu1EDswvGNKZRW75A3P162M
 lGPgi5wQCfyQ0sUorJWw41Apkq6Ekc9uPYbqbAk=
X-Google-Smtp-Source: ACHHUZ70tZIulzH7czSF/JS6k7mp4ts9zWm3LzuH+BRkGkoc0BMETmagHvmzENQUmsjuUDtv5RB5rx6siZ+cv5JjQrw=
X-Received: by 2002:a81:4807:0:b0:559:fb52:7cf6 with SMTP id
 v7-20020a814807000000b00559fb527cf6mr6964587ywa.43.1682955334920; Mon, 01 May
 2023 08:35:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1682807958.git.lucien.xin@gmail.com>
 <b73c0deb97ca299207d2197db28f78d3992fbdbf.1682807958.git.lucien.xin@gmail.com>
 <DB9PR05MB9078A5939A8D21C278136820886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078A5939A8D21C278136820886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 1 May 2023 11:35:16 -0400
Message-ID: <CADvbK_cbgUh4XN2C+xQuM6PKSXEW2LLyE0E2QtePeTce6NdP-g@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, May 1, 2023 at 1:21 AM Tung Quang Nguyen < wrote:
    > > > > 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [lucien.xin[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.173 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1ptVYy-00AR3E-Py
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH net 1/2] tipc: add tipc_bearer_min_mtu
 to calculate min mtu
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
Cc: network dev <netdev@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "kuba@kernel.org" <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gTW9uLCBNYXkgMSwgMjAyMyBhdCAxOjIx4oCvQU0gVHVuZyBRdWFuZyBOZ3V5ZW4gPAp0dW5n
LnEubmd1eWVuQGRla3RlY2guY29tLmF1PiB3cm90ZToKCj4KPgo+ID4tLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+ID5Gcm9tOiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Cj4gPlNl
bnQ6IFN1bmRheSwgQXByaWwgMzAsIDIwMjMgNTo0MSBBTQo+ID5UbzogbmV0d29yayBkZXYgPG5l
dGRldkB2Z2VyLmtlcm5lbC5vcmc+Owo+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKPiA+Q2M6IGt1YmFAa2VybmVsLm9yZzsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29n
bGUuY29tPjsgUGFvbG8gQWJlbmkgPAo+IHBhYmVuaUByZWRoYXQuY29tPjsgZGF2ZW1AZGF2ZW1s
b2Z0Lm5ldAo+ID5TdWJqZWN0OiBbdGlwYy1kaXNjdXNzaW9uXSBbUEFUQ0ggbmV0IDEvMl0gdGlw
YzogYWRkIHRpcGNfYmVhcmVyX21pbl9tdHUKPiB0byBjYWxjdWxhdGUgbWluIG10dQo+ID4KPiA+
QXMgZGlmZmVyZW50IG1lZGlhIG1heSByZXF1aXJlcyBkaWZmZXJlbnQgbWluIG10dSwgYW5kIGV2
ZW4gdGhlCj4gPnNhbWUgbWVkaWEgd2l0aCBkaWZmZXJlbnQgbmV0IGZhbWlseSByZXF1aXJlcyBk
aWZmZXJlbnQgbWluIG10dSwKPiA+YWRkIHRpcGNfYmVhcmVyX21pbl9tdHUoKSB0byBjYWxjdWxh
dGUgbWluIG10dSBhY2NvcmRpbmdseS4KPiA+Cj4gPlRoaXMgQVBJIHdpbGwgYmUgdXNlZCB0byBj
aGVjayB0aGUgbmV3IG10dSB3aGVuIGRvaW5nIHRoZSBsaW5rCj4gPm10dSBuZWdvdGlhdGlvbiBp
biB0aGUgbmV4dCBwYXRjaC4KPiA+Cj4gPlNpZ25lZC1vZmYtYnk6IFhpbiBMb25nIDxsdWNpZW4u
eGluQGdtYWlsLmNvbT4KPiA+LS0tCj4gPiBuZXQvdGlwYy9iZWFyZXIuYyAgICB8IDEzICsrKysr
KysrKysrKysKPiA+IG5ldC90aXBjL2JlYXJlci5oICAgIHwgIDMgKysrCj4gPiBuZXQvdGlwYy91
ZHBfbWVkaWEuYyB8ICA1ICsrKy0tCj4gPiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID5kaWZmIC0tZ2l0IGEvbmV0L3RpcGMvYmVhcmVyLmMg
Yi9uZXQvdGlwYy9iZWFyZXIuYwo+ID5pbmRleCAzNWNhYzc3MzNmZDMuLmM1ZDJlOGM0NWY4OCAx
MDA2NDQKPiA+LS0tIGEvbmV0L3RpcGMvYmVhcmVyLmMKPiA+KysrIGIvbmV0L3RpcGMvYmVhcmVy
LmMKPiA+QEAgLTU0MSw2ICs1NDEsMTkgQEAgaW50IHRpcGNfYmVhcmVyX210dShzdHJ1Y3QgbmV0
ICpuZXQsIHUzMiBiZWFyZXJfaWQpCj4gPiAgICAgICByZXR1cm4gbXR1Owo+ID4gfQo+ID4KPiA+
K2ludCB0aXBjX2JlYXJlcl9taW5fbXR1KHN0cnVjdCBuZXQgKm5ldCwgdTMyIGJlYXJlcl9pZCkK
PiA+K3sKPiA+KyAgICAgIGludCBtdHUgPSBUSVBDX01JTl9CRUFSRVJfTVRVOwo+ID4rICAgICAg
c3RydWN0IHRpcGNfYmVhcmVyICpiOwo+ID4rCj4gPisgICAgICByY3VfcmVhZF9sb2NrKCk7Cj4g
PisgICAgICBiID0gcmN1X2RlcmVmZXJlbmNlKHRpcGNfbmV0KG5ldCktPmJlYXJlcl9saXN0W2Jl
YXJlcl9pZF0pOwo+ID4rICAgICAgaWYgKGIpCj4gPisgICAgICAgICAgICAgIG10dSArPSBiLT5l
bmNhcF9obGVuOwo+ID4rICAgICAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gPisgICAgICByZXR1cm4g
bXR1Owo+ID4rfQo+ID4rCj4gPiAvKiB0aXBjX2JlYXJlcl94bWl0X3NrYiAtIHNlbmRzIGJ1ZmZl
ciB0byBkZXN0aW5hdGlvbiBvdmVyIGJlYXJlcgo+ID4gICovCj4gPiB2b2lkIHRpcGNfYmVhcmVy
X3htaXRfc2tiKHN0cnVjdCBuZXQgKm5ldCwgdTMyIGJlYXJlcl9pZCwKPiA+ZGlmZiAtLWdpdCBh
L25ldC90aXBjL2JlYXJlci5oIGIvbmV0L3RpcGMvYmVhcmVyLmgKPiA+aW5kZXggNDkwYWQ2ZTVm
N2EzLi5iZDBjYzVjMjg3ZWYgMTAwNjQ0Cj4gPi0tLSBhL25ldC90aXBjL2JlYXJlci5oCj4gPisr
KyBiL25ldC90aXBjL2JlYXJlci5oCj4gPkBAIC0xNDYsNiArMTQ2LDcgQEAgc3RydWN0IHRpcGNf
bWVkaWEgewo+ID4gICogQGlkZW50aXR5OiBhcnJheSBpbmRleCBvZiB0aGlzIGJlYXJlciB3aXRo
aW4gVElQQyBiZWFyZXIgYXJyYXkKPiA+ICAqIEBkaXNjOiBwdHIgdG8gbGluayBzZXR1cCByZXF1
ZXN0Cj4gPiAgKiBAbmV0X3BsYW5lOiBuZXR3b3JrIHBsYW5lICgnQScgdGhyb3VnaCAnSCcpIGN1
cnJlbnRseSBhc3NvY2lhdGVkIHdpdGgKPiBiZWFyZXIKPiA+KyAqIEBlbmNhcF9obGVuOiBlbmNh
cCBoZWFkZXJzIGxlbmd0aAo+ID4gICogQHVwOiBiZWFyZXIgdXAgZmxhZyAoYml0IDApCj4gPiAg
KiBAcmVmY250OiB0aXBjX2JlYXJlciByZWZlcmVuY2UgY291bnRlcgo+ID4gICoKPiA+QEAgLTE3
MCw2ICsxNzEsNyBAQCBzdHJ1Y3QgdGlwY19iZWFyZXIgewo+ID4gICAgICAgdTMyIGlkZW50aXR5
Owo+ID4gICAgICAgc3RydWN0IHRpcGNfZGlzY292ZXJlciAqZGlzYzsKPiA+ICAgICAgIGNoYXIg
bmV0X3BsYW5lOwo+ID4rICAgICAgdTE2IGVuY2FwX2hsZW47Cj4gPiAgICAgICB1bnNpZ25lZCBs
b25nIHVwOwo+ID4gICAgICAgcmVmY291bnRfdCByZWZjbnQ7Cj4gPiB9Owo+ID5AQCAtMjMyLDYg
KzIzNCw3IEBAIGludCB0aXBjX2JlYXJlcl9zZXR1cCh2b2lkKTsKPiA+IHZvaWQgdGlwY19iZWFy
ZXJfY2xlYW51cCh2b2lkKTsKPiA+IHZvaWQgdGlwY19iZWFyZXJfc3RvcChzdHJ1Y3QgbmV0ICpu
ZXQpOwo+ID4gaW50IHRpcGNfYmVhcmVyX210dShzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBiZWFyZXJf
aWQpOwo+ID4raW50IHRpcGNfYmVhcmVyX21pbl9tdHUoc3RydWN0IG5ldCAqbmV0LCB1MzIgYmVh
cmVyX2lkKTsKPiA+IGJvb2wgdGlwY19iZWFyZXJfYmNhc3Rfc3VwcG9ydChzdHJ1Y3QgbmV0ICpu
ZXQsIHUzMiBiZWFyZXJfaWQpOwo+ID4gdm9pZCB0aXBjX2JlYXJlcl94bWl0X3NrYihzdHJ1Y3Qg
bmV0ICpuZXQsIHUzMiBiZWFyZXJfaWQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3Qgc2tfYnVmZiAqc2tiLAo+ID5kaWZmIC0tZ2l0IGEvbmV0L3RpcGMvdWRwX21lZGlhLmMgYi9u
ZXQvdGlwYy91ZHBfbWVkaWEuYwo+ID5pbmRleCBjMmJiODE4NzA0YzguLjBhODUyNDRmZDYxOCAx
MDA2NDQKPiA+LS0tIGEvbmV0L3RpcGMvdWRwX21lZGlhLmMKPiA+KysrIGIvbmV0L3RpcGMvdWRw
X21lZGlhLmMKPiA+QEAgLTczOCw4ICs3MzgsOCBAQCBzdGF0aWMgaW50IHRpcGNfdWRwX2VuYWJs
ZShzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdAo+IHRpcGNfYmVhcmVyICpiLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgIHVkcF9jb25mLmxvY2FsX2lwLnNfYWRkciA9IGxvY2FsLmlwdjQuc19hZGRy
Owo+ID4gICAgICAgICAgICAgICB1ZHBfY29uZi51c2VfdWRwX2NoZWNrc3VtcyA9IGZhbHNlOwo+
ID4gICAgICAgICAgICAgICB1Yi0+aWZpbmRleCA9IGRldi0+aWZpbmRleDsKPiA+LSAgICAgICAg
ICAgICAgaWYgKHRpcGNfbXR1X2JhZChkZXYsIHNpemVvZihzdHJ1Y3QgaXBoZHIpICsKPiA+LSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihzdHJ1Y3QgdWRwaGRyKSkp
IHsKPiA+KyAgICAgICAgICAgICAgYi0+ZW5jYXBfaGxlbiA9IHNpemVvZihzdHJ1Y3QgaXBoZHIp
ICsgc2l6ZW9mKHN0cnVjdAo+IHVkcGhkcik7Cj4gPisgICAgICAgICAgICAgIGlmICh0aXBjX210
dV9iYWQoZGV2LCBiLT5lbmNhcF9obGVuKSkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIGVy
ciA9IC1FSU5WQUw7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAgICAg
ICAgICAgICAgIH0KPiA+QEAgLTc2MCw2ICs3NjAsNyBAQCBzdGF0aWMgaW50IHRpcGNfdWRwX2Vu
YWJsZShzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdAo+IHRpcGNfYmVhcmVyICpiLAo+ID4gICAgICAg
ICAgICAgICBlbHNlCj4gPiAgICAgICAgICAgICAgICAgICAgICAgdWRwX2NvbmYubG9jYWxfaXA2
ID0gbG9jYWwuaXB2NjsKPiA+ICAgICAgICAgICAgICAgdWItPmlmaW5kZXggPSBkZXYtPmlmaW5k
ZXg7Cj4gPisgICAgICAgICAgICAgIGItPmVuY2FwX2hsZW4gPSBzaXplb2Yoc3RydWN0IGlwdjZo
ZHIpICsgc2l6ZW9mKHN0cnVjdAo+IHVkcGhkcik7Cj4gdGlwY19tdHVfYmFkKCkgbmVlZHMgdG8g
YmUgY2FsbGVkIGhlcmUgdG8gY2hlY2sgZm9yIHRoZSBtaW5pbXVtIHJlcXVpcmVkCj4gTVRVIGxp
a2UgdGhlIHdheSBpcHY0IFVEUCBiZWFyZXIgZG9lcy4KCkFncmVlLCBlc3BlY2lhbGx5IGFmdGVy
IGNvbW1pdCA1YTZmNmY1NzkxNzggKCJ0aXBjOiBzZXQgdWItPmlmaW5kZXggZm9yCmxvY2FsIGlw
djYgYWRkcmVzcyIpLCB3ZSBoYXZlIHRoZSBkZXYgdGhlcmUuCgpUaGFua3MuCgo+ICAgICAgICAg
ICAgICAgYi0+bXR1ID0gMTI4MDsKPiA+ICNlbmRpZgo+ID4gICAgICAgfSBlbHNlIHsKPiA+LS0K
PiA+Mi4zOS4xCj4gPgo+ID4KPiA+Cj4gPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiA+dGlwYy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+ID5odHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
