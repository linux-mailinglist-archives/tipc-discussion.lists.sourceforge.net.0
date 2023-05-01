Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 809556F336D
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 May 2023 18:08:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptW4D-0002c4-Hs;
	Mon, 01 May 2023 16:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptW4C-0002by-MT
 for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 16:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tdd251JIpEq6ANwAY94TsSkVc4AHdIebJTLCW0scFSg=; b=Lf0aByQl5PKpVq9tILmGDz1nra
 OrpPwuCqwEYoxga4KPXteVMSjyBj4Z+F735jLyEGeNp/HNHNYCWXHf2thaIQYYfRW5iYeklMChytE
 BuYgp300KN6VgxF5GbN6xQjEaYwCi7EyqwOpuV8bgsomhZprTNAOzqfzlHERZS/w8OSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tdd251JIpEq6ANwAY94TsSkVc4AHdIebJTLCW0scFSg=; b=ldaI8eW9oc8MXwOMQpA3INlZSy
 cQCddV5KgnogYprf5ljrJWt6P9DLUrf6GkCX7Dk/kGhZEGe/M/3fCCARGnZMbGjvcJxiS8jxdBWVv
 xlzVBXsDmBjq12EfXym+17sPGmS8FjyuRlr+stxnPNMUBeaIlJxRZJbSoniztCSg4c5M=;
Received: from mail-yw1-f175.google.com ([209.85.128.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptW4A-0006tE-7x for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 16:07:57 +0000
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-55a76ed088aso8088797b3.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 01 May 2023 09:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682957268; x=1685549268;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=tdd251JIpEq6ANwAY94TsSkVc4AHdIebJTLCW0scFSg=;
 b=pfiUS9UO3R15eobYzduz2biw1eyB90OqwHSPNDdssdMBhOQiYRzcO9Xl36oxECVbBh
 uroeTVCaz6UWf5nsOMASrecr1V2WV0DdLCxsQbXC/xsKXy2jDiRNcb7vKpiCf+XUQvx+
 ffNoGSjzyogiDLcqu8lVMqsHnTxqJUZ1h6EP/1wes3ioVwCz3GvBx73Q6H3MOyRpnXR3
 BWyjTSEPNnsgIgSJyjK5in8HbBYCmV6Eg6voNnbmebcvBKtKnH9D3sXHcFR3bGnJ+qZV
 0MlCQBsdDM1is6GvrFvJthRed8enIJnyJ6nLPmWHqGdE9eH1jrNGICkpOF+ul/sadhdK
 +sxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682957268; x=1685549268;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tdd251JIpEq6ANwAY94TsSkVc4AHdIebJTLCW0scFSg=;
 b=N1vHcNJCxIkzAxSdBooI47gABafEbOspL+LBPX5fAhZm6EuvmuJ+9NeIQSwuM+Sv04
 xemutFWxz0SwJQvQqV2wsRooSDuU/uCaJaS85FAv/lxzY9xBkAhNfGqts9903FFNwmV4
 HkSRa9RMTLcP1A43djHpUaE2lhDM1QTROtMomm9VnvIeiKDzRhmOz8mrzBYqYR/jOWUR
 NAqflJReGJIXCPDyxvFoJUOQwrTqzDEecd1g9IJ+BmZmkouG1e7zrk5SIeeUNtkTKhiz
 gSZBUzwuKAIAdcV6wt7dHcRFLp8J0Mp9/Nfni2BDS+iBtyZxnNprnhxeS90rm/9ESBhI
 m+Mw==
X-Gm-Message-State: AC+VfDxxdMoZfvn+TH1BTbHig+vtUYgxFtzTYYuOvERhYZmz5z5e1NrW
 XTOwgv1VpiefWyPjlDB4Ty3EecH5z+c6xY8Rg1g=
X-Google-Smtp-Source: ACHHUZ72CmK4WBKpi5Sl0boamGwQsMEeiUb00A9CDjU28H+eU/gXLORxHz74OWSPFuTQvoXt4am6+3sEMNOVBDDDkwI=
X-Received: by 2002:a81:5a44:0:b0:556:2699:f3c3 with SMTP id
 o65-20020a815a44000000b005562699f3c3mr11294621ywb.42.1682957268380; Mon, 01
 May 2023 09:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1682807958.git.lucien.xin@gmail.com>
 <22ba689983844705563c15c2f16e6381f2a0412c.1682807958.git.lucien.xin@gmail.com>
 <DB9PR05MB9078EEAED80E2E7807DB9BE1886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078EEAED80E2E7807DB9BE1886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 1 May 2023 12:07:29 -0400
Message-ID: <CADvbK_f+EgA9-KdTj3_WP0w=4jpG=q66nwxSqHAtKcYxx6JdSQ@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, May 1, 2023 at 1:22 AM Tung Quang Nguyen < wrote:
    > > > > 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.175 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptW4A-0006tE-7x
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH net 2/2] tipc: do not update mtu if
 msg_max is too small
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

T24gTW9uLCBNYXkgMSwgMjAyMyBhdCAxOjIy4oCvQU0gVHVuZyBRdWFuZyBOZ3V5ZW4gPAp0dW5n
LnEubmd1eWVuQGRla3RlY2guY29tLmF1PiB3cm90ZToKCj4KPgo+ID4tLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+ID5Gcm9tOiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Cj4gPlNl
bnQ6IFN1bmRheSwgQXByaWwgMzAsIDIwMjMgNTo0MSBBTQo+ID5UbzogbmV0d29yayBkZXYgPG5l
dGRldkB2Z2VyLmtlcm5lbC5vcmc+Owo+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKPiA+Q2M6IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGt1YmFAa2VybmVsLm9yZzsgRXJpYyBE
dW1hemV0IDwKPiBlZHVtYXpldEBnb29nbGUuY29tPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPjsgSm9uIE1hbG95Cj4gPjxqbWFsb3lAcmVkaGF0LmNvbT4KPiA+U3ViamVjdDogW1BB
VENIIG5ldCAyLzJdIHRpcGM6IGRvIG5vdCB1cGRhdGUgbXR1IGlmIG1zZ19tYXggaXMgdG9vIHNt
YWxsCj4gPgo+ID5XaGVuIGRvaW5nIGxpbmsgbXR1IG5lZ290aWF0aW9uLCBhIG1hbGljaW91cyBw
ZWVyIG1heSBzZW5kIEFjdGl2YXRlIG1zZwo+ID53aXRoIGEgdmVyeSBzbWFsbCBtdHUsIGUuZy4g
NCBpbiBTaHVhbmcncyB0ZXN0aW5nLCB3aXRob3V0IGNoZWNraW5nIGZvcgo+ID50aGUgbWluaW11
bSBtdHUsIGwtPm10dSB3aWxsIGJlIHNldCB0byA0IGluIHRpcGNfbGlua19wcm90b19yY3YoKSwg
dGhlbgo+ID5uLT5saW5rc1tiZWFyZXJfaWRdLm10dSBpcyBzZXQgdG8gNDI5NDk2NzIyOCwgd2hp
Y2ggaXMgYSBvdmVyZmxvdyBvZgo+ID4nNCAtIElOVF9IX1NJWkUgLSBFTVNHX09WRVJIRUFEJyBp
biB0aXBjX2xpbmtfbXNzKCkuCj4gPgo+ID5XaXRoIHRpcGNfbGluay5tdHUgPSA0LCB0aXBjX2xp
bmtfeG1pdCgpIGtlcHQgcHJpbnRpbmcgdGhlIHdhcm5pbmc6Cj4gPgo+ID4gdGlwYzogVG9vIGxh
cmdlIG1zZywgcHVyZ2luZyB4bWl0IGxpc3QgMSA1IDAgNDAgNCEKPiA+IHRpcGM6IFRvbyBsYXJn
ZSBtc2csIHB1cmdpbmcgeG1pdCBsaXN0IDEgMTUgMCA2MCA0IQo+ID4KPiA+QW5kIHdpdGggdGlw
Y19saW5rX2VudHJ5Lm10dSA0Mjk0OTY3MjI4LCBhIGh1Z2Ugc2tiIHdhcyBhbGxvY2F0ZWQgaW4K
PiA+bmFtZWRfZGlzdHJpYnV0ZSgpLCBhbmQgd2hlbiBwdXJnaW5nIGl0IGluIHRpcGNfbGlua194
bWl0KCksIGEgY3Jhc2gKPiA+d2FzIGV2ZW4gY2F1c2VkOgo+ID4KPiA+ICBnZW5lcmFsIHByb3Rl
Y3Rpb24gZmF1bHQsIHByb2JhYmx5IGZvciBub24tY2Fub25pY2FsIGFkZHJlc3MKPiAweDIxMDAw
MDEwMTEwMDBkZDogMDAwMCBbIzFdIFBSRUVNUFQgU01QIFBUSQo+ID4gIENQVTogMCBQSUQ6IDAg
Q29tbTogc3dhcHBlci8wIEtkdW1wOiBsb2FkZWQgTm90IHRhaW50ZWQgNi4zLjAubmV0YSAjMTkK
PiA+ICBSSVA6IDAwMTA6a2ZyZWVfc2tiX2xpc3RfcmVhc29uKzB4N2UvMHgxZjAKPiA+ICBDYWxs
IFRyYWNlOgo+ID4gICA8SVJRPgo+ID4gICBza2JfcmVsZWFzZV9kYXRhKzB4ZjkvMHgxZDAKPiA+
ICAga2ZyZWVfc2tiX3JlYXNvbisweDQwLzB4MTAwCj4gPiAgIHRpcGNfbGlua194bWl0KzB4NTdh
LzB4NzQwIFt0aXBjXQo+ID4gICB0aXBjX25vZGVfeG1pdCsweDE2Yy8weDVjMCBbdGlwY10KPiA+
ICAgdGlwY19uYW1lZF9ub2RlX3VwKzB4MjdmLzB4MmMwIFt0aXBjXQo+ID4gICB0aXBjX25vZGVf
d3JpdGVfdW5sb2NrKzB4MTQ5LzB4MTcwIFt0aXBjXQo+ID4gICB0aXBjX3JjdisweDYwOC8weDc0
MCBbdGlwY10KPiA+ICAgdGlwY191ZHBfcmVjdisweGRjLzB4MWYwIFt0aXBjXQo+ID4gICB1ZHBf
cXVldWVfcmN2X29uZV9za2IrMHgzM2UvMHg2MjAKPiA+ICAgdWRwX3VuaWNhc3RfcmN2X3NrYi5p
c3JhLjcyKzB4NzUvMHg5MAo+ID4gICBfX3VkcDRfbGliX3JjdisweDU2ZC8weGMyMAo+ID4gICBp
cF9wcm90b2NvbF9kZWxpdmVyX3JjdSsweDEwMC8weDJkMAo+ID4KPiA+VGhpcyBwYXRjaCBmaXhl
cyBpdCBieSBjaGVja2luZyB0aGUgbmV3IG10dSBhZ2FpbnN0IHRpcGNfYmVhcmVyX21pbl9tdHUo
KSwKPiA+YW5kIG5vdCB1cGRhdGluZyBtdHUgaWYgaXQgaXMgdG9vIHNtYWxsLgo+ID4KPiA+Rml4
ZXM6IGVkMTkzZWNlMjY0OSAoInRpcGM6IHNpbXBsaWZ5IGxpbmsgbXR1IG5lZ290aWF0aW9uIikK
PiA+UmVwb3J0ZWQtYnk6IFNodWFuZyBMaSA8c2h1YWxpQHJlZGhhdC5jb20+Cj4gPlNpZ25lZC1v
ZmYtYnk6IFhpbiBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNvbT4KPiA+LS0tCj4gPiBuZXQvdGlw
Yy9saW5rLmMgfCA3ICsrKystLS0KPiA+IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4gPgo+ID5kaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbGluay5jIGIvbmV0
L3RpcGMvbGluay5jCj4gPmluZGV4IGIzY2UyNDgyM2Y1MC4uYTllNDZjNThiMjhhIDEwMDY0NAo+
ID4tLS0gYS9uZXQvdGlwYy9saW5rLmMKPiA+KysrIGIvbmV0L3RpcGMvbGluay5jCj4gPkBAIC0y
MjAwLDcgKzIyMDAsNyBAQCBzdGF0aWMgaW50IHRpcGNfbGlua19wcm90b19yY3Yoc3RydWN0IHRp
cGNfbGluayAqbCwKPiBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4gICAgICAgc3RydWN0IHRpcGNf
bXNnICpoZHIgPSBidWZfbXNnKHNrYik7Cj4gPiAgICAgICBzdHJ1Y3QgdGlwY19nYXBfYWNrX2Js
a3MgKmdhID0gTlVMTDsKPiA+ICAgICAgIGJvb2wgcmVwbHkgPSBtc2dfcHJvYmUoaGRyKSwgcmV0
cmFuc21pdHRlZCA9IGZhbHNlOwo+ID4tICAgICAgdTMyIGRsZW4gPSBtc2dfZGF0YV9zeihoZHIp
LCBnbGVuID0gMDsKPiA+KyAgICAgIHUzMiBkbGVuID0gbXNnX2RhdGFfc3ooaGRyKSwgZ2xlbiA9
IDAsIG1zZ19tYXg7Cj4gPiAgICAgICB1MTYgcGVlcnNfc25kX254dCA9ICBtc2dfbmV4dF9zZW50
KGhkcik7Cj4gPiAgICAgICB1MTYgcGVlcnNfdG9sID0gbXNnX2xpbmtfdG9sZXJhbmNlKGhkcik7
Cj4gPiAgICAgICB1MTYgcGVlcnNfcHJpbyA9IG1zZ19saW5rcHJpbyhoZHIpOwo+ID5AQCAtMjI4
Myw4ICsyMjgzLDkgQEAgc3RhdGljIGludCB0aXBjX2xpbmtfcHJvdG9fcmN2KHN0cnVjdCB0aXBj
X2xpbmsgKmwsCj4gc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ICAgICAgICAgICAgICAgbC0+cGVl
cl9zZXNzaW9uID0gbXNnX3Nlc3Npb24oaGRyKTsKPiA+ICAgICAgICAgICAgICAgbC0+aW5fc2Vz
c2lvbiA9IHRydWU7Cj4gPiAgICAgICAgICAgICAgIGwtPnBlZXJfYmVhcmVyX2lkID0gbXNnX2Jl
YXJlcl9pZChoZHIpOwo+ID4tICAgICAgICAgICAgICBpZiAobC0+bXR1ID4gbXNnX21heF9wa3Qo
aGRyKSkKPiA+LSAgICAgICAgICAgICAgICAgICAgICBsLT5tdHUgPSBtc2dfbWF4X3BrdChoZHIp
Owo+ID4rICAgICAgICAgICAgICBtc2dfbWF4ID0gbXNnX21heF9wa3QoaGRyKTsKPiA+KyAgICAg
ICAgICAgICAgaWYgKG1zZ19tYXggPj0gdGlwY19iZWFyZXJfbWluX210dShsLT5uZXQsIGwtPmJl
YXJlcl9pZCkKPiAmJiBsLT5tdHUgPiBtc2dfbWF4KQo+ID4rICAgICAgICAgICAgICAgICAgICAg
IGwtPm10dSA9IG1zZ19tYXg7Cj4gSWYgdGhpcyBsaW5rIHJlY2VpdmVzIGEgbWFsaWNpb3VzIEFD
VElWQVRFX01TRyBmcm9tIGEgcGVlciwgdGhpcyBtZXNzYWdlCj4gc2hvdWxkIGJlIGRyb3BwZWQu
IEl0IGlzIGJldHRlciBpZiB0aGUgY2hlY2sgIiBtc2dfbWF4IDwKPiB0aXBjX2JlYXJlcl9taW5f
bXR1KCkiIGlzIHB1dCBhdCB0aGUgYmVnaW5uaW5nIG9mIHRoaXMgQUNUSVZBVEVfTVNHCj4gaGFu
ZGxpbmcgYW5kIHdlIGJyZWFrIGltbWVkaWF0ZWx5Lgo+Cj4gU291bmRzIGdvb2QsIHdpbGwgbW92
ZSAnbXNnX21heCA8IHRpcGNfYmVhcmVyX21pbl9tdHUoKScgdXAuCgpUaGFua3MgZm9yIHJldmll
d2luZy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRp
cGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBj
LWRpc2N1c3Npb24K
