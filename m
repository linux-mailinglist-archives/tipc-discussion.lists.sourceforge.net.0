Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E46F5F21
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 21:29:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1puIAI-0004v6-Ii;
	Wed, 03 May 2023 19:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1puIAG-0004v0-VB
 for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 19:29:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jRwjvZ2VKO5tJCw7F2X8M4sdJim7dIHGW9ircHbAPdA=; b=WvqByuUfzSCRcCuU0fV/CGNmi8
 JSVfz7+dynxAJsL3vDp0a31vittR7cfPKXC159rsN5r2tuzVwwOdg47j9Vzg/ow+yCSUCgLH07wmR
 g2e9y66zRj8/IEDXznJmBBZjKuik/gWA79SdJZeLZ25yh1iy2k0ZkOhdHLrnGX0Tlr+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jRwjvZ2VKO5tJCw7F2X8M4sdJim7dIHGW9ircHbAPdA=; b=EkKM8PLnNZ+STTelNwJ5Va/T/i
 F3Yic85pgleMljBvVktJSm4N3yHcxUnyOJ7sIHKwrWI2Dbtqyex6/Sr+Q+3bFxs7deyBtJnrzOdzP
 vf2gstZxXtq2/98xfcmj5asaNioPQ/NFMnJXI/X2r+UOvhj/NYasViD66ayYA3ONTVGA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puIA8-00DC3S-R7 for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 19:29:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1683142150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jRwjvZ2VKO5tJCw7F2X8M4sdJim7dIHGW9ircHbAPdA=;
 b=PH292c4aaBNGaQ6dmTxLO8H9iX1j/+tEvfBygeb1vPJxXz7qM/sOQYEypxdxYzEhYdR4Np
 McJ3KcnXgJpIpqs1ugumFwEXWLQNj9/LUdkdMx4D/ec6RXzJe7lZVs6RWC2zMcbA1fq5x9
 g9boZRUlRKzGxsfPDrX7BhcSIIjpFlg=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-41ifgg2TMqmAxOmn_DBjCg-1; Wed, 03 May 2023 15:29:09 -0400
X-MC-Unique: 41ifgg2TMqmAxOmn_DBjCg-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-61b738ecf88so7812686d6.0
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 03 May 2023 12:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683142149; x=1685734149;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jRwjvZ2VKO5tJCw7F2X8M4sdJim7dIHGW9ircHbAPdA=;
 b=GRwRPbbDXqTgsbS1PlxaLf62bWh9RsIJjFErnA/ykx3ARyIhJuEbFzAU8geLQ/Q2XH
 3aVGzW6U9WIgK3QF74sx13hwyO2SnBhPhd9030XaadHaPrCbc2Cg6iYVKKU73Qk1RebN
 mtNZxalgEIFXumV8Pj+HNc0VW4UrAIS4xj23T4jHdGRWijG7dWg3gNAb0cZnRcDH03Rc
 Do81+3zV6N0wh05jIjnTRRGkcA7OL+u/CeDXfwEq+9ynPPpt5eQc8TVOUt1BJBp3DmxD
 YyCSeBbBpMpd/Z0SAacaGiIq+YMEjvLgu0r/jvdrbsioEhW3sWXMVLonn68m6hAi2cdX
 vAbQ==
X-Gm-Message-State: AC+VfDy0xSA7uPd9m9iVIJQardAA8GMDd7lVBpuc0r/dt7TA4wLFL+13
 pFe4POiLvaK5/k/uJnkjZLRHmnd8mqG66iiD6yT/Bhg9XNlKY5r6Tx+CfiI5zC2AXL0eTrClCls
 +aK8riQJavogT2C93VJoF+gFsHtdhWSl+R/Uc
X-Received: by 2002:a05:6214:1949:b0:61b:6c88:4bd3 with SMTP id
 q9-20020a056214194900b0061b6c884bd3mr8654978qvk.47.1683142149159; 
 Wed, 03 May 2023 12:29:09 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7VOT2ZatXLqDl2g8Nzo8ESPBlGcGo/BveO2meXQifLvoHE06HAOD7NyAv1gygW9NYItHalLA==
X-Received: by 2002:a05:6214:1949:b0:61b:6c88:4bd3 with SMTP id
 q9-20020a056214194900b0061b6c884bd3mr8654955qvk.47.1683142148829; 
 Wed, 03 May 2023 12:29:08 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 w29-20020ac84d1d000000b003e4ee0f5234sm11845724qtv.87.2023.05.03.12.29.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 May 2023 12:29:08 -0700 (PDT)
Message-ID: <d7ccfcc9-b446-66ad-ab04-baa1cdbbe0ce@redhat.com>
Date: Wed, 3 May 2023 15:29:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Xin Long <lucien.xin@gmail.com>,
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
References: <cover.1683065352.git.lucien.xin@gmail.com>
 <0d328807d5087d0b6d03c3d2e5f355cd44ed576a.1683065352.git.lucien.xin@gmail.com>
 <DB9PR05MB90784F5E870CF98996BD406A886C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <CADvbK_f5YPuY0eaZj5JcixUU7rFQosuAWg8PdorrGz08ve6DmA@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <CADvbK_f5YPuY0eaZj5JcixUU7rFQosuAWg8PdorrGz08ve6DmA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2023-05-03 09:35, Xin Long wrote: > On Tue, May 2, 2023
    at 11:31 PM Tung Quang Nguyen > <tung.q.nguyen@dektech.com.au> wrote: >>>
    When doing link mtu negotiation, a malicious peer may send Activa [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1puIA8-00DC3S-R7
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAyMDIzLTA1LTAzIDA5OjM1LCBYaW4gTG9uZyB3cm90ZToKPiBPbiBUdWUsIE1heSAyLCAy
MDIzIGF0IDExOjMx4oCvUE0gVHVuZyBRdWFuZyBOZ3V5ZW4KPiA8dHVuZy5xLm5ndXllbkBkZWt0
ZWNoLmNvbS5hdT4gd3JvdGU6Cj4+PiBXaGVuIGRvaW5nIGxpbmsgbXR1IG5lZ290aWF0aW9uLCBh
IG1hbGljaW91cyBwZWVyIG1heSBzZW5kIEFjdGl2YXRlIG1zZwo+Pj4gd2l0aCBhIHZlcnkgc21h
bGwgbXR1LCBlLmcuIDQgaW4gU2h1YW5nJ3MgdGVzdGluZywgd2l0aG91dCBjaGVja2luZyBmb3IK
Pj4+IHRoZSBtaW5pbXVtIG10dSwgbC0+bXR1IHdpbGwgYmUgc2V0IHRvIDQgaW4gdGlwY19saW5r
X3Byb3RvX3JjdigpLCB0aGVuCj4+PiBuLT5saW5rc1tiZWFyZXJfaWRdLm10dSBpcyBzZXQgdG8g
NDI5NDk2NzIyOCwgd2hpY2ggaXMgYSBvdmVyZmxvdyBvZgo+Pj4gJzQgLSBJTlRfSF9TSVpFIC0g
RU1TR19PVkVSSEVBRCcgaW4gdGlwY19saW5rX21zcygpLgo+Pj4KPj4+IFdpdGggdGlwY19saW5r
Lm10dSA9IDQsIHRpcGNfbGlua194bWl0KCkga2VwdCBwcmludGluZyB0aGUgd2FybmluZzoKPj4+
Cj4+PiB0aXBjOiBUb28gbGFyZ2UgbXNnLCBwdXJnaW5nIHhtaXQgbGlzdCAxIDUgMCA0MCA0IQo+
Pj4gdGlwYzogVG9vIGxhcmdlIG1zZywgcHVyZ2luZyB4bWl0IGxpc3QgMSAxNSAwIDYwIDQhCj4+
Pgo+Pj4gQW5kIHdpdGggdGlwY19saW5rX2VudHJ5Lm10dSA0Mjk0OTY3MjI4LCBhIGh1Z2Ugc2ti
IHdhcyBhbGxvY2F0ZWQgaW4KPj4+IG5hbWVkX2Rpc3RyaWJ1dGUoKSwgYW5kIHdoZW4gcHVyZ2lu
ZyBpdCBpbiB0aXBjX2xpbmtfeG1pdCgpLCBhIGNyYXNoCj4+PiB3YXMgZXZlbiBjYXVzZWQ6Cj4+
Pgo+Pj4gICBnZW5lcmFsIHByb3RlY3Rpb24gZmF1bHQsIHByb2JhYmx5IGZvciBub24tY2Fub25p
Y2FsIGFkZHJlc3MgMHgyMTAwMDAxMDExMDAwZGQ6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBQVEkK
Pj4+ICAgQ1BVOiAwIFBJRDogMCBDb21tOiBzd2FwcGVyLzAgS2R1bXA6IGxvYWRlZCBOb3QgdGFp
bnRlZCA2LjMuMC5uZXRhICMxOQo+Pj4gICBSSVA6IDAwMTA6a2ZyZWVfc2tiX2xpc3RfcmVhc29u
KzB4N2UvMHgxZjAKPj4+ICAgQ2FsbCBUcmFjZToKPj4+ICAgIDxJUlE+Cj4+PiAgICBza2JfcmVs
ZWFzZV9kYXRhKzB4ZjkvMHgxZDAKPj4+ICAgIGtmcmVlX3NrYl9yZWFzb24rMHg0MC8weDEwMAo+
Pj4gICAgdGlwY19saW5rX3htaXQrMHg1N2EvMHg3NDAgW3RpcGNdCj4+PiAgICB0aXBjX25vZGVf
eG1pdCsweDE2Yy8weDVjMCBbdGlwY10KPj4+ICAgIHRpcGNfbmFtZWRfbm9kZV91cCsweDI3Zi8w
eDJjMCBbdGlwY10KPj4+ICAgIHRpcGNfbm9kZV93cml0ZV91bmxvY2srMHgxNDkvMHgxNzAgW3Rp
cGNdCj4+PiAgICB0aXBjX3JjdisweDYwOC8weDc0MCBbdGlwY10KPj4+ICAgIHRpcGNfdWRwX3Jl
Y3YrMHhkYy8weDFmMCBbdGlwY10KPj4+ICAgIHVkcF9xdWV1ZV9yY3Zfb25lX3NrYisweDMzZS8w
eDYyMAo+Pj4gICAgdWRwX3VuaWNhc3RfcmN2X3NrYi5pc3JhLjcyKzB4NzUvMHg5MAo+Pj4gICAg
X191ZHA0X2xpYl9yY3YrMHg1NmQvMHhjMjAKPj4+ICAgIGlwX3Byb3RvY29sX2RlbGl2ZXJfcmN1
KzB4MTAwLzB4MmQwCj4+Pgo+Pj4gVGhpcyBwYXRjaCBmaXhlcyBpdCBieSBjaGVja2luZyB0aGUg
bmV3IG10dSBhZ2FpbnN0IHRpcGNfYmVhcmVyX21pbl9tdHUoKSwKPj4+IGFuZCBub3QgdXBkYXRp
bmcgbXR1IGlmIGl0IGlzIHRvbyBzbWFsbC4KPj4+Cj4+PiB2MS0+djI6Cj4+PiAgIC0gZG8gdGhl
IG1zZ19tYXggY2hlY2sgYWdhaW5zdCB0aGUgbWluIE1UVSBlYXJseSwgYXMgVHVuZyBzdWdnZXN0
ZWQuCj4+IFBsZWFzZSBtb3ZlIGFib3ZlIHZlcnNpb24gY2hhbmdlIGNvbW1lbnQgdG8gYWZ0ZXIg
Ii0tLSIuCj4gSSB0aGluayBpdCdzIGNvcnJlY3QgdG8gTk9UIHVzZSAnJy0tLScgZm9yIHZlcnNp
b24gY2hhbmdlcywgc2VlIHRoZQo+IGNvbW1lbnQgZnJvbSBkYXZlbToKPgo+ICAgIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDE2MDQxNS4xNzI4NTguMjUzNjI1MTc4MDM2NDkzOTUx
LmRhdmVtQGRhdmVtbG9mdC5uZXQvCj4KPiB1bmxlc3MgdGhlcmUgYXJlIHNvbWUgbmV3IHJ1bGVz
IEkgbWlzc2VkLgpJIGhhdmUgbm90IHNlZW4gdGhpcyBvbmUgYmVmb3JlLCBhbmQgSSBkaXNhZ3Jl
ZSB3aXRoIERhdmlkIGhlcmUuIE1hbnkgb2YgCnRoZSBjaGFuZ2VzCmJldHdlZW4gdmVyc2lvbnMg
YXJlIHRyaXZpYWwsIGFuZCBzb21lIGNvbW1lbnRzIGV2ZW4gaW5jb21wcmVoZW5zaWJsZSAKb25j
ZSB0aGUgcGF0Y2ggaGFzCmJlZW4gYXBwbGllZC4KSSBoYXZlIGFsd2F5cyBwdXQgdGhlbSBhZnRl
ciB0aGUgIi0tLSIgY29tbWVudCwgYW5kIEkgd2lsbCBjb250aW51ZSB0byAKZG8gc28gdW50aWwg
RGF2aWQgc3RhcnRzCnJlamVjdGluZyBzdWNoIHBhdGNoZXMuCgpCdXQgb2ssIGRvIGFzIHlvdSBm
aW5kIHJpZ2h0LgoKLy8vam9uCgo+Cj4gVGhhbmtzLgo+Cj4+PiBGaXhlczogZWQxOTNlY2UyNjQ5
ICgidGlwYzogc2ltcGxpZnkgbGluayBtdHUgbmVnb3RpYXRpb24iKQo+Pj4gUmVwb3J0ZWQtYnk6
IFNodWFuZyBMaSA8c2h1YWxpQHJlZGhhdC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBYaW4gTG9u
ZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IG5ldC90aXBjL2xpbmsuYyB8IDkg
KysrKysrLS0tCj4+PiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9saW5rLmMgYi9uZXQvdGlwYy9saW5r
LmMKPj4+IGluZGV4IGIzY2UyNDgyM2Y1MC4uMmVmZjFjNzk0OWNiIDEwMDY0NAo+Pj4gLS0tIGEv
bmV0L3RpcGMvbGluay5jCj4+PiArKysgYi9uZXQvdGlwYy9saW5rLmMKPj4+IEBAIC0yMjAwLDcg
KzIyMDAsNyBAQCBzdGF0aWMgaW50IHRpcGNfbGlua19wcm90b19yY3Yoc3RydWN0IHRpcGNfbGlu
ayAqbCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPj4+ICAgICAgICBzdHJ1Y3QgdGlwY19tc2cgKmhk
ciA9IGJ1Zl9tc2coc2tiKTsKPj4+ICAgICAgICBzdHJ1Y3QgdGlwY19nYXBfYWNrX2Jsa3MgKmdh
ID0gTlVMTDsKPj4+ICAgICAgICBib29sIHJlcGx5ID0gbXNnX3Byb2JlKGhkciksIHJldHJhbnNt
aXR0ZWQgPSBmYWxzZTsKPj4+IC0gICAgICB1MzIgZGxlbiA9IG1zZ19kYXRhX3N6KGhkciksIGds
ZW4gPSAwOwo+Pj4gKyAgICAgIHUzMiBkbGVuID0gbXNnX2RhdGFfc3ooaGRyKSwgZ2xlbiA9IDAs
IG1zZ19tYXg7Cj4+PiAgICAgICAgdTE2IHBlZXJzX3NuZF9ueHQgPSAgbXNnX25leHRfc2VudCho
ZHIpOwo+Pj4gICAgICAgIHUxNiBwZWVyc190b2wgPSBtc2dfbGlua190b2xlcmFuY2UoaGRyKTsK
Pj4+ICAgICAgICB1MTYgcGVlcnNfcHJpbyA9IG1zZ19saW5rcHJpbyhoZHIpOwo+Pj4gQEAgLTIy
MzksNiArMjIzOSw5IEBAIHN0YXRpYyBpbnQgdGlwY19saW5rX3Byb3RvX3JjdihzdHJ1Y3QgdGlw
Y19saW5rICpsLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+Pj4gICAgICAgIHN3aXRjaCAobXR5cCkg
ewo+Pj4gICAgICAgIGNhc2UgUkVTRVRfTVNHOgo+Pj4gICAgICAgIGNhc2UgQUNUSVZBVEVfTVNH
Ogo+Pj4gKyAgICAgICAgICAgICAgbXNnX21heCA9IG1zZ19tYXhfcGt0KGhkcik7Cj4+PiArICAg
ICAgICAgICAgICBpZiAobXNnX21heCA8IHRpcGNfYmVhcmVyX21pbl9tdHUobC0+bmV0LCBsLT5i
ZWFyZXJfaWQpKQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+ICAgICAgICAg
ICAgICAgIC8qIENvbXBsZXRlIG93biBsaW5rIG5hbWUgd2l0aCBwZWVyJ3MgaW50ZXJmYWNlIG5h
bWUgKi8KPj4+ICAgICAgICAgICAgICAgIGlmX25hbWUgPSAgc3RycmNocihsLT5uYW1lLCAnOicp
ICsgMTsKPj4+ICAgICAgICAgICAgICAgIGlmIChzaXplb2YobC0+bmFtZSkgLSAoaWZfbmFtZSAt
IGwtPm5hbWUpIDw9IFRJUENfTUFYX0lGX05BTUUpCj4+PiBAQCAtMjI4Myw4ICsyMjg2LDggQEAg
c3RhdGljIGludCB0aXBjX2xpbmtfcHJvdG9fcmN2KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVj
dCBza19idWZmICpza2IsCj4+PiAgICAgICAgICAgICAgICBsLT5wZWVyX3Nlc3Npb24gPSBtc2df
c2Vzc2lvbihoZHIpOwo+Pj4gICAgICAgICAgICAgICAgbC0+aW5fc2Vzc2lvbiA9IHRydWU7Cj4+
PiAgICAgICAgICAgICAgICBsLT5wZWVyX2JlYXJlcl9pZCA9IG1zZ19iZWFyZXJfaWQoaGRyKTsK
Pj4+IC0gICAgICAgICAgICAgIGlmIChsLT5tdHUgPiBtc2dfbWF4X3BrdChoZHIpKQo+Pj4gLSAg
ICAgICAgICAgICAgICAgICAgICBsLT5tdHUgPSBtc2dfbWF4X3BrdChoZHIpOwo+Pj4gKyAgICAg
ICAgICAgICAgaWYgKGwtPm10dSA+IG1zZ19tYXgpCj4+PiArICAgICAgICAgICAgICAgICAgICAg
IGwtPm10dSA9IG1zZ19tYXg7Cj4+PiAgICAgICAgICAgICAgICBicmVhazsKPj4+Cj4+PiAgICAg
ICAgY2FzZSBTVEFURV9NU0c6Cj4+PiAtLQo+Pj4gMi4zOS4xCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
