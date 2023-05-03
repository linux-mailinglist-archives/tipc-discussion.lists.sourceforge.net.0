Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A89A46F591F
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 15:35:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1puCdn-00080P-BN;
	Wed, 03 May 2023 13:35:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1puCdm-00080J-3K
 for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 13:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o/HzLEhIjuKFWd0RmFL36ROlVagTDI2BEogjapWI9fE=; b=EDrfW3TwrJ6Cr2JDXl8ixgzs6h
 dMW70061/BDo8z+0F400S66rGJc3YDI/5Al4Ew0YsvUycgwICkuYOQZFPTKjx9TRKJDL3jZofztXq
 /XjbKQrKDx7YwRgJFbUuv+aLPZt/rzN5GmYxKPeiuSpi8KQmdIDVDaklOEhNpu6JpJbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o/HzLEhIjuKFWd0RmFL36ROlVagTDI2BEogjapWI9fE=; b=AVIg00u1IFtJW2LHdGolKVjM7b
 YuS7rlVm93UQJSjKlF75S8i/bRCbJ/wDWfr/baX3YKTH1PlQ2bNaZu2g6oeQXA0k6emP5RNfr9kk1
 f+Sdn/5BYyocvbvbOIpyqz+2M8czfXkxRwmGVgtQN6XK+z953gMoNXxRMONshPaghcwU=;
Received: from mail-yw1-f176.google.com ([209.85.128.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1puCdk-0002gP-Tf for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 13:35:30 +0000
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-55a79671a4dso43064457b3.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 03 May 2023 06:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683120923; x=1685712923;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o/HzLEhIjuKFWd0RmFL36ROlVagTDI2BEogjapWI9fE=;
 b=CHqYWrUvFft88y3Ie/yjLfqFqQDr/3nmeELynOfcjsZBZO+9t/ZkxPO7Xt9IYyD5Ja
 iqEQGPsDJSMDjcbdlCH1SJpd2MynoEZgR3BMmB6ksYIRzmtf5DaSk2z4TbiibiOvwQRo
 gcEzKligRtyOdC0kH6YJaJWPBdxWw/13QtdO+EcJieEu4Q43kTias/MeXN+0TTTsjl48
 yUFGJyZr19GwXntLKFj+jWUjhuYdHgihghPp0drmOzlGzQ6V0RmD/uMancNWWjzwWeO8
 dcbCJtgZJuTtcxVQ3GCiuHGPLnx1jUG+6tpiIWKjDgrAw0E0keiXj91Yh7xZx49KSMb/
 nbFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683120923; x=1685712923;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=o/HzLEhIjuKFWd0RmFL36ROlVagTDI2BEogjapWI9fE=;
 b=ZZuPPfUf6ZZt/JaUshxpfNsNSlOOQfgONIqz61QbNU7mTUzTx6C9KMKyvTwzIbHhql
 B6WG0MKCbnj/Xkg8Lygn2RqrUeb7HGrjFiSOlgN1NM7FlOr48TuoNRHdFYEBYVkfmuaO
 oPaxDjdPSWsQlBD0Wkxc9MhJuWdoslF1VPFXUSumwxiwpG+CYleOvDLo4CQju+CsUs0H
 j1uxBhUm6Ror4NURZJdqU+CBp9Qx1ROjpwEghE4SumxH1P19l1mTsETt/IT+yqQ/cL7z
 gf4d/gv3c3Z6xu5h2XOrWEQKB8X69j3BZMNBkB8GFZAP9FakKSb0H0rAPlpx/ejpELsf
 mbMg==
X-Gm-Message-State: AC+VfDwr+tYqrAVC1vyLkLwXrNrZJtBnFnp7jZ/VH+S9Gd4whUn66SKK
 W1eRhJrByc8MGh9EkSoQlS7qE6SnaAGrFHFBSHc=
X-Google-Smtp-Source: ACHHUZ4iOD46TqNB4nqJSJSwhMMr5RF1VvGbd6DIIcEcSAYZ4fkdOAtL676ahXM19aIlE1DV9NrzD5YcqPS1T6FIRrY=
X-Received: by 2002:a81:6c8f:0:b0:55a:1022:7814 with SMTP id
 h137-20020a816c8f000000b0055a10227814mr11707619ywc.28.1683120922218; Wed, 03
 May 2023 06:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683065352.git.lucien.xin@gmail.com>
 <0d328807d5087d0b6d03c3d2e5f355cd44ed576a.1683065352.git.lucien.xin@gmail.com>
 <DB9PR05MB90784F5E870CF98996BD406A886C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB90784F5E870CF98996BD406A886C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 3 May 2023 09:35:02 -0400
Message-ID: <CADvbK_f5YPuY0eaZj5JcixUU7rFQosuAWg8PdorrGz08ve6DmA@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 2, 2023 at 11:31 PM Tung Quang Nguyen wrote:
    > > >When doing link mtu negotiation, a malicious peer may send Activate
   msg > >with a very small mtu, e.g. 4 in Shuang's testing, without [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.176 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1puCdk-0002gP-Tf
Subject: Re: [tipc-discussion] [PATCHv2 net 2/3] tipc: do not update mtu if
 msg_max is too small in mtu negotiation
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCAxMTozMeKAr1BNIFR1bmcgUXVhbmcgTmd1eWVuCjx0dW5n
LnEubmd1eWVuQGRla3RlY2guY29tLmF1PiB3cm90ZToKPgo+ID5XaGVuIGRvaW5nIGxpbmsgbXR1
IG5lZ290aWF0aW9uLCBhIG1hbGljaW91cyBwZWVyIG1heSBzZW5kIEFjdGl2YXRlIG1zZwo+ID53
aXRoIGEgdmVyeSBzbWFsbCBtdHUsIGUuZy4gNCBpbiBTaHVhbmcncyB0ZXN0aW5nLCB3aXRob3V0
IGNoZWNraW5nIGZvcgo+ID50aGUgbWluaW11bSBtdHUsIGwtPm10dSB3aWxsIGJlIHNldCB0byA0
IGluIHRpcGNfbGlua19wcm90b19yY3YoKSwgdGhlbgo+ID5uLT5saW5rc1tiZWFyZXJfaWRdLm10
dSBpcyBzZXQgdG8gNDI5NDk2NzIyOCwgd2hpY2ggaXMgYSBvdmVyZmxvdyBvZgo+ID4nNCAtIElO
VF9IX1NJWkUgLSBFTVNHX09WRVJIRUFEJyBpbiB0aXBjX2xpbmtfbXNzKCkuCj4gPgo+ID5XaXRo
IHRpcGNfbGluay5tdHUgPSA0LCB0aXBjX2xpbmtfeG1pdCgpIGtlcHQgcHJpbnRpbmcgdGhlIHdh
cm5pbmc6Cj4gPgo+ID4gdGlwYzogVG9vIGxhcmdlIG1zZywgcHVyZ2luZyB4bWl0IGxpc3QgMSA1
IDAgNDAgNCEKPiA+IHRpcGM6IFRvbyBsYXJnZSBtc2csIHB1cmdpbmcgeG1pdCBsaXN0IDEgMTUg
MCA2MCA0IQo+ID4KPiA+QW5kIHdpdGggdGlwY19saW5rX2VudHJ5Lm10dSA0Mjk0OTY3MjI4LCBh
IGh1Z2Ugc2tiIHdhcyBhbGxvY2F0ZWQgaW4KPiA+bmFtZWRfZGlzdHJpYnV0ZSgpLCBhbmQgd2hl
biBwdXJnaW5nIGl0IGluIHRpcGNfbGlua194bWl0KCksIGEgY3Jhc2gKPiA+d2FzIGV2ZW4gY2F1
c2VkOgo+ID4KPiA+ICBnZW5lcmFsIHByb3RlY3Rpb24gZmF1bHQsIHByb2JhYmx5IGZvciBub24t
Y2Fub25pY2FsIGFkZHJlc3MgMHgyMTAwMDAxMDExMDAwZGQ6IDAwMDAgWyMxXSBQUkVFTVBUIFNN
UCBQVEkKPiA+ICBDUFU6IDAgUElEOiAwIENvbW06IHN3YXBwZXIvMCBLZHVtcDogbG9hZGVkIE5v
dCB0YWludGVkIDYuMy4wLm5ldGEgIzE5Cj4gPiAgUklQOiAwMDEwOmtmcmVlX3NrYl9saXN0X3Jl
YXNvbisweDdlLzB4MWYwCj4gPiAgQ2FsbCBUcmFjZToKPiA+ICAgPElSUT4KPiA+ICAgc2tiX3Jl
bGVhc2VfZGF0YSsweGY5LzB4MWQwCj4gPiAgIGtmcmVlX3NrYl9yZWFzb24rMHg0MC8weDEwMAo+
ID4gICB0aXBjX2xpbmtfeG1pdCsweDU3YS8weDc0MCBbdGlwY10KPiA+ICAgdGlwY19ub2RlX3ht
aXQrMHgxNmMvMHg1YzAgW3RpcGNdCj4gPiAgIHRpcGNfbmFtZWRfbm9kZV91cCsweDI3Zi8weDJj
MCBbdGlwY10KPiA+ICAgdGlwY19ub2RlX3dyaXRlX3VubG9jaysweDE0OS8weDE3MCBbdGlwY10K
PiA+ICAgdGlwY19yY3YrMHg2MDgvMHg3NDAgW3RpcGNdCj4gPiAgIHRpcGNfdWRwX3JlY3YrMHhk
Yy8weDFmMCBbdGlwY10KPiA+ICAgdWRwX3F1ZXVlX3Jjdl9vbmVfc2tiKzB4MzNlLzB4NjIwCj4g
PiAgIHVkcF91bmljYXN0X3Jjdl9za2IuaXNyYS43MisweDc1LzB4OTAKPiA+ICAgX191ZHA0X2xp
Yl9yY3YrMHg1NmQvMHhjMjAKPiA+ICAgaXBfcHJvdG9jb2xfZGVsaXZlcl9yY3UrMHgxMDAvMHgy
ZDAKPiA+Cj4gPlRoaXMgcGF0Y2ggZml4ZXMgaXQgYnkgY2hlY2tpbmcgdGhlIG5ldyBtdHUgYWdh
aW5zdCB0aXBjX2JlYXJlcl9taW5fbXR1KCksCj4gPmFuZCBub3QgdXBkYXRpbmcgbXR1IGlmIGl0
IGlzIHRvbyBzbWFsbC4KPiA+Cj4gPnYxLT52MjoKPiA+ICAtIGRvIHRoZSBtc2dfbWF4IGNoZWNr
IGFnYWluc3QgdGhlIG1pbiBNVFUgZWFybHksIGFzIFR1bmcgc3VnZ2VzdGVkLgo+IFBsZWFzZSBt
b3ZlIGFib3ZlIHZlcnNpb24gY2hhbmdlIGNvbW1lbnQgdG8gYWZ0ZXIgIi0tLSIuCkkgdGhpbmsg
aXQncyBjb3JyZWN0IHRvIE5PVCB1c2UgJyctLS0nIGZvciB2ZXJzaW9uIGNoYW5nZXMsIHNlZSB0
aGUKY29tbWVudCBmcm9tIGRhdmVtOgoKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
MjAxNjA0MTUuMTcyODU4LjI1MzYyNTE3ODAzNjQ5Mzk1MS5kYXZlbUBkYXZlbWxvZnQubmV0LwoK
dW5sZXNzIHRoZXJlIGFyZSBzb21lIG5ldyBydWxlcyBJIG1pc3NlZC4KClRoYW5rcy4KCj4gPgo+
ID5GaXhlczogZWQxOTNlY2UyNjQ5ICgidGlwYzogc2ltcGxpZnkgbGluayBtdHUgbmVnb3RpYXRp
b24iKQo+ID5SZXBvcnRlZC1ieTogU2h1YW5nIExpIDxzaHVhbGlAcmVkaGF0LmNvbT4KPiA+U2ln
bmVkLW9mZi1ieTogWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPgo+ID4tLS0KPiA+IG5l
dC90aXBjL2xpbmsuYyB8IDkgKysrKysrLS0tCj4gPiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL25ldC90aXBjL2xpbmsu
YyBiL25ldC90aXBjL2xpbmsuYwo+ID5pbmRleCBiM2NlMjQ4MjNmNTAuLjJlZmYxYzc5NDljYiAx
MDA2NDQKPiA+LS0tIGEvbmV0L3RpcGMvbGluay5jCj4gPisrKyBiL25ldC90aXBjL2xpbmsuYwo+
ID5AQCAtMjIwMCw3ICsyMjAwLDcgQEAgc3RhdGljIGludCB0aXBjX2xpbmtfcHJvdG9fcmN2KHN0
cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCBza19idWZmICpza2IsCj4gPiAgICAgICBzdHJ1Y3Qg
dGlwY19tc2cgKmhkciA9IGJ1Zl9tc2coc2tiKTsKPiA+ICAgICAgIHN0cnVjdCB0aXBjX2dhcF9h
Y2tfYmxrcyAqZ2EgPSBOVUxMOwo+ID4gICAgICAgYm9vbCByZXBseSA9IG1zZ19wcm9iZShoZHIp
LCByZXRyYW5zbWl0dGVkID0gZmFsc2U7Cj4gPi0gICAgICB1MzIgZGxlbiA9IG1zZ19kYXRhX3N6
KGhkciksIGdsZW4gPSAwOwo+ID4rICAgICAgdTMyIGRsZW4gPSBtc2dfZGF0YV9zeihoZHIpLCBn
bGVuID0gMCwgbXNnX21heDsKPiA+ICAgICAgIHUxNiBwZWVyc19zbmRfbnh0ID0gIG1zZ19uZXh0
X3NlbnQoaGRyKTsKPiA+ICAgICAgIHUxNiBwZWVyc190b2wgPSBtc2dfbGlua190b2xlcmFuY2Uo
aGRyKTsKPiA+ICAgICAgIHUxNiBwZWVyc19wcmlvID0gbXNnX2xpbmtwcmlvKGhkcik7Cj4gPkBA
IC0yMjM5LDYgKzIyMzksOSBAQCBzdGF0aWMgaW50IHRpcGNfbGlua19wcm90b19yY3Yoc3RydWN0
IHRpcGNfbGluayAqbCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ICAgICAgIHN3aXRjaCAobXR5
cCkgewo+ID4gICAgICAgY2FzZSBSRVNFVF9NU0c6Cj4gPiAgICAgICBjYXNlIEFDVElWQVRFX01T
RzoKPiA+KyAgICAgICAgICAgICAgbXNnX21heCA9IG1zZ19tYXhfcGt0KGhkcik7Cj4gPisgICAg
ICAgICAgICAgIGlmIChtc2dfbWF4IDwgdGlwY19iZWFyZXJfbWluX210dShsLT5uZXQsIGwtPmJl
YXJlcl9pZCkpCj4gPisgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICAgICAg
ICAgIC8qIENvbXBsZXRlIG93biBsaW5rIG5hbWUgd2l0aCBwZWVyJ3MgaW50ZXJmYWNlIG5hbWUg
Ki8KPiA+ICAgICAgICAgICAgICAgaWZfbmFtZSA9ICBzdHJyY2hyKGwtPm5hbWUsICc6JykgKyAx
Owo+ID4gICAgICAgICAgICAgICBpZiAoc2l6ZW9mKGwtPm5hbWUpIC0gKGlmX25hbWUgLSBsLT5u
YW1lKSA8PSBUSVBDX01BWF9JRl9OQU1FKQo+ID5AQCAtMjI4Myw4ICsyMjg2LDggQEAgc3RhdGlj
IGludCB0aXBjX2xpbmtfcHJvdG9fcmN2KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCBza19i
dWZmICpza2IsCj4gPiAgICAgICAgICAgICAgIGwtPnBlZXJfc2Vzc2lvbiA9IG1zZ19zZXNzaW9u
KGhkcik7Cj4gPiAgICAgICAgICAgICAgIGwtPmluX3Nlc3Npb24gPSB0cnVlOwo+ID4gICAgICAg
ICAgICAgICBsLT5wZWVyX2JlYXJlcl9pZCA9IG1zZ19iZWFyZXJfaWQoaGRyKTsKPiA+LSAgICAg
ICAgICAgICAgaWYgKGwtPm10dSA+IG1zZ19tYXhfcGt0KGhkcikpCj4gPi0gICAgICAgICAgICAg
ICAgICAgICAgbC0+bXR1ID0gbXNnX21heF9wa3QoaGRyKTsKPiA+KyAgICAgICAgICAgICAgaWYg
KGwtPm10dSA+IG1zZ19tYXgpCj4gPisgICAgICAgICAgICAgICAgICAgICAgbC0+bXR1ID0gbXNn
X21heDsKPiA+ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPgo+ID4gICAgICAgY2FzZSBTVEFURV9N
U0c6Cj4gPi0tCj4gPjIuMzkuMQo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
