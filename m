Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A36F3911
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 May 2023 22:18:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptZyh-0000Mc-MQ;
	Mon, 01 May 2023 20:18:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptZyg-0000MW-Jq
 for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 20:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+d2uH7xxq4P/Ev1fuG+f0cbaiUvowKMv7JujrUwlseg=; b=e/aDmlz2m3dWsl87gVRX1a8LiH
 3L/KBjHrYlS8HZ3mGEexPGxWpRyui0mlD0677pkUZmGcOc5SeGjngq3ud9zInfJE4YP4QDAfS/e68
 XI0sStJisVn1hPXiXbJ/O7v9Jk9cQXBycxsDzIfJ44QPCnSprVpN2NRr6tEs1RutT5wI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+d2uH7xxq4P/Ev1fuG+f0cbaiUvowKMv7JujrUwlseg=; b=jICZ8ldbn77VyAY6/0tbyNPjKh
 TiWaOGFxXgUWil8guweD/OUJ4EvTcwvZWCzK/B/XNTYiAUMMxfcaf3jJdXBe2zoHkFHkB0kUle3Y2
 UQqs45Y9ptFj6dyO8leYKJs41wGPFEeUXOLg8HtG1u8WQ2lRrrYW8eOMIUPcdgYYEUMs=;
Received: from mail-yw1-f171.google.com ([209.85.128.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptZyc-00Ajo4-Kg for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 20:18:29 +0000
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-54f8af6dfa9so50689387b3.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 01 May 2023 13:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682972301; x=1685564301;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+d2uH7xxq4P/Ev1fuG+f0cbaiUvowKMv7JujrUwlseg=;
 b=a6rl5xWK9hAEvtA547Z+F7Fp4KFQfsw8wjM4cQYVcWO2W5Ja6Dcr7qC1MPQAx8kaiN
 7UjIuhl8OWp4KyA5d2N55+3PuAj6Cncpv1jizgV8AWd5jrc4v6pFh2DZofJeMEPLnmNI
 GGzhSrRqgzbYKYTurq7y1hLjs/bkb4jDeMFi1uKAUHh5CQnTGzmI431A1+HOOdlMgitG
 v1n1QXnPhPlc1TVWvy++nvsqPnYSfr0VNkJxPUASdJSRLo5o/Epi7kbWEJTGpl9EwECb
 4XaMZ2v0je35iceORLQAbX37BB+ABJ2zcYvQVkPavtivd7DA1Nl4aLNRI8TiXj/YCoue
 wXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682972301; x=1685564301;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+d2uH7xxq4P/Ev1fuG+f0cbaiUvowKMv7JujrUwlseg=;
 b=AzwRMNsWNPhPQmTjtkT5+aYOTY96SbNXnITjZP9c5prlv8Jvey5zD6Jjls/jq4HeMQ
 p/JklAicuZ64OjHLU9Aem4puX829DEVYFz3h7kZyIKhP2euWTFwC+ALG+lWROBqN6vj7
 CQS2UUm/jjriQMpABR+01IfZxrPQMsIoGpR7xBRkHxWu7enAjDoj5kN3filwYywCMFUL
 Crh/pJmvlNEE4o5uEuKcEYS1iwWqElPUS1ztt7BSekKCH+rPQVE/St2DMpqqFklPoSqV
 aePkS8tCgrNf+4wMzCZAFHmZnu6HwD4Lnm5wyVr05eAFBwJhRKxn3qhbPvzJqVzR1WOt
 5kJQ==
X-Gm-Message-State: AC+VfDyFepwAaXdPPMjY+L021BqDmFMwxXtxatK5ImVbuiYFFNE8x3Ns
 zldSyptkGY06xjC2FOM3JBeBqEp/g75jOk70YHk=
X-Google-Smtp-Source: ACHHUZ4fW6bvqiisNIRA8xy2C8bI7j52JhDpWCchThIK1yKqmVxzvbXWzhsapvd25y1+qyG7lFEVa3eBR8rlpBIVi8o=
X-Received: by 2002:a0d:db86:0:b0:55a:2fbb:4790 with SMTP id
 d128-20020a0ddb86000000b0055a2fbb4790mr5679761ywe.12.1682972299373; Mon, 01
 May 2023 13:18:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1682807958.git.lucien.xin@gmail.com>
 <b73c0deb97ca299207d2197db28f78d3992fbdbf.1682807958.git.lucien.xin@gmail.com>
 <DB9PR05MB9078A5939A8D21C278136820886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <CADvbK_cbgUh4XN2C+xQuM6PKSXEW2LLyE0E2QtePeTce6NdP-g@mail.gmail.com>
In-Reply-To: <CADvbK_cbgUh4XN2C+xQuM6PKSXEW2LLyE0E2QtePeTce6NdP-g@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 1 May 2023 16:18:00 -0400
Message-ID: <CADvbK_fB0NqDuo_ObELfqDGrTxZShVXxyg6FLfeHq1NoKE7zTA@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, May 1, 2023 at 11:35 AM Xin Long wrote: > On Mon,
    May 1, 2023 at 1:21 AM Tung Quang Nguyen wrote: >> >@@ -760,6 +760,7 @@
    static int tipc_udp_enable(struct net *net, struct tipc_bearer [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [lucien.xin[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.171 listed in wl.mailspike.net]
X-Headers-End: 1ptZyc-00Ajo4-Kg
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

T24gTW9uLCBNYXkgMSwgMjAyMyBhdCAxMTozNeKAr0FNIFhpbiBMb25nIDxsdWNpZW4ueGluQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBNYXkgMSwgMjAyMyBhdCAxOjIx4oCvQU0gVHVuZyBR
dWFuZyBOZ3V5ZW4gPHR1bmcucS5uZ3V5ZW5AZGVrdGVjaC5jb20uYXU+IHdyb3RlOgo+PiA+QEAg
LTc2MCw2ICs3NjAsNyBAQCBzdGF0aWMgaW50IHRpcGNfdWRwX2VuYWJsZShzdHJ1Y3QgbmV0ICpu
ZXQsIHN0cnVjdCB0aXBjX2JlYXJlciAqYiwKPj4gPiAgICAgICAgICAgICAgIGVsc2UKPj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgdWRwX2NvbmYubG9jYWxfaXA2ID0gbG9jYWwuaXB2NjsKPj4g
PiAgICAgICAgICAgICAgIHViLT5pZmluZGV4ID0gZGV2LT5pZmluZGV4Owo+PiA+KyAgICAgICAg
ICAgICAgYi0+ZW5jYXBfaGxlbiA9IHNpemVvZihzdHJ1Y3QgaXB2NmhkcikgKyBzaXplb2Yoc3Ry
dWN0IHVkcGhkcik7Cj4+IHRpcGNfbXR1X2JhZCgpIG5lZWRzIHRvIGJlIGNhbGxlZCBoZXJlIHRv
IGNoZWNrIGZvciB0aGUgbWluaW11bSByZXF1aXJlZCBNVFUgbGlrZSB0aGUgd2F5IGlwdjQgVURQ
IGJlYXJlciBkb2VzLgo+Cj4gQWdyZWUsIGVzcGVjaWFsbHkgYWZ0ZXIgY29tbWl0IDVhNmY2ZjU3
OTE3OCAoInRpcGM6IHNldCB1Yi0+aWZpbmRleCBmb3IgbG9jYWwgaXB2NiBhZGRyZXNzIiksIHdl
IGhhdmUgdGhlIGRldiB0aGVyZS4KQWZ0ZXIgdGFraW5nIGEgc2Vjb25kIGxvb2ssIEkgdGhpbmsg
d2Ugc2hvdWxkIGRlbGV0ZSB0aGUgdGlwY19tdHVfYmFkKCkKY2FsbCBmb3IgaXB2NCBVRFAgYmVh
cmVyLCBhcyBiLT5tdHUgaXMgbm8gbG9uZ2VyIHVzaW5nIGRldi0+bXR1IHNpbmNlOgoKICBjb21t
aXQgYTRkZmE3MmQwYWNkICgidGlwYzogc2V0IGRlZmF1bHQgTVRVIGZvciBVRFAgbWVkaWEiKQoK
VGhlIGlzc3VlIGRlc2NyaWJlZCBpbiBjb21taXQgM2RlODFiNzU4ODUzICgidGlwYzogY2hlY2sg
bWluaW11bSBiZWFyZXIgTVRVIikKbm8gbG9uZ2VyIGV4aXN0cyBpbiBVRFAgYmVhcmVyLgoKQmVz
aWRlcywgZGV2LT5tdHUgY2FuIHN0aWxsIGJlIGNoYW5nZWQgdG8gYSB0b28gc21hbGwgbXR1IGFm
dGVyIHRoZSBVRFAKYmVhcmVyIGlzIGNyZWF0ZWQgZXZlbiB3aXRoIHRoZSB0aXBjX210dV9iYWQo
KSBjaGVjayBpbiB0aXBjX3VkcF9lbmFibGUoKS4KTm90ZSB0aGF0IE5FVERFVl9DSEFOR0VNVFUg
ZXZlbnQgcHJvY2Vzc2luZyBpbiB0aXBjX2wyX2RldmljZV9ldmVudCgpCmRvZXNuJ3QgcmVhbGx5
IHdvcmsgZm9yIFVEUCBiZWFyZXIuCgpJIHdpbGwgbGVhdmUgdGhpcyBwYXRjaCBhcyBpdCBpcyBp
biBteSB2MiBwb3N0LCBhbmQgY3JlYXRlIGFub3RoZXIgcGF0Y2gKZm9yIG5ldC1uZXh0IHRvIGRl
bGV0ZSB0aGUgdW5uZWNlc3NhcnkgdGlwY19tdHVfYmFkKCkgY2hlY2sgaW4gVURQIGJlYXJlci4K
CkFncmVlPwoKVGhhbmtzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby90aXBjLWRpc2N1c3Npb24K
