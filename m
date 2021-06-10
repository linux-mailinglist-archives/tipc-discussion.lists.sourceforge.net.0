Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9613A2BD6
	for <lists+tipc-discussion@lfdr.de>; Thu, 10 Jun 2021 14:44:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lrK39-0006iZ-6z; Thu, 10 Jun 2021 12:44:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lrK37-0006iR-D1
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 12:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZmIpxdohn+BvbPrHKd15NzsO5kPA3isPiIPbUL7S6bg=; b=Xx/hCPPF7Vv67D+UWduiU1JG8n
 wGEnOClTicRkk5Gmd5lHQdhPstAON0I1MUPQ7PUtdttP1lFzkX3w5aO1mlskxenGiwP1uK6JQQzA8
 q0AY9QjqRQhoCnzeT80vmWITWN4hbKnSxouFrUA4oExogSFVNYDy9OhdveaPQzYmflqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZmIpxdohn+BvbPrHKd15NzsO5kPA3isPiIPbUL7S6bg=; b=ATj+TP57b12OfBddoPThUFVGQi
 PVNRlR2PvJHJaheNfPRGQngqJge5vlzpG35CmV6dkmrmU3kIhV5B7U2n3kbOZF1aCdESacDazk7eW
 9m0MEeUiuKJPdjg2S3q9+58Vv9I+z/z6eRhkJFMBlyt9xwH4WpmmcDQsYOrXjpa/3MFg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lrK2x-0000Sf-3Z
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 12:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623329066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZmIpxdohn+BvbPrHKd15NzsO5kPA3isPiIPbUL7S6bg=;
 b=JpKsSMATG0rLRLOP49wg0fn8B/b+Ux7cbYgxbcFj5wEmZZMMa4v8iKfs5XGd2TA73c6qsT
 0S7ashlMUw+IyU0KkbaZ7avtLXbHmnVOLgPYje9uyujOUgQzM3PUYxwuBYvO+s+kfrq1wn
 yhAIKOI3mGmQZi8RTjsytccaIEQKgvY=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-IFal5EioPiek_zGP5GGcOw-1; Thu, 10 Jun 2021 08:44:25 -0400
X-MC-Unique: IFal5EioPiek_zGP5GGcOw-1
Received: by mail-qv1-f69.google.com with SMTP id
 dr11-20020a05621408ebb029021e40008bd5so19371399qvb.0
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 10 Jun 2021 05:44:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZmIpxdohn+BvbPrHKd15NzsO5kPA3isPiIPbUL7S6bg=;
 b=Mb5bjFvsGvxvI8ZXjccnB3RrX7ZKYb8yMDQ7hE2NxwXDDXvfISjUzPfBPW3sPXbeAG
 lPYtdvoY3lUEBB7if3dBX2CIzqcfHYvmdaJ05OVXDoAu6fdtxb/l6GiSxMxxv9B7egpZ
 bhvFNAyRYL+XKAMDgvspbnDsEBbdL3pYId3XC1XUG9MvwdrMBFC9X2EmcAjqqIL1+HYH
 istFgoqjw2V+vnBIT4x/o1YZVSW41hW2U+rm8YBYaXOZovt8V+0/GT/4AVvO+UUEv64y
 Za3CgkTlmTmr+P4jWJI3ZopGrgZzIfA+SHoTsJ3xj44adEXYM/bjRJjsT+IgFXJuFAlg
 09Lw==
X-Gm-Message-State: AOAM531wxrv1jJZzUOPf0iX00t73Jts01P4E1dpFXhcC4Eg/bQbpw3m0
 C3oe/DGtJFBQzWZU2Uw+TK0QAaIrWscnkyGXhRUYtAITBXmPu4Jthnyh1Oa1nFT9aBAnFzX0QOI
 y1HI4oEG3UEBbL3bU0+e3dxQrtG53Dzx+20jz
X-Received: by 2002:ac8:5f88:: with SMTP id j8mr4908151qta.9.1623329064774;
 Thu, 10 Jun 2021 05:44:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6TtlYB+41FX7u6LVnNPQEl0/qcvyZi3KtUSjT250LK54eXggFeKDuD/pTFYZ9WZc/peKdlw==
X-Received: by 2002:ac8:5f88:: with SMTP id j8mr4908129qta.9.1623329064548;
 Thu, 10 Jun 2021 05:44:24 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id t201sm2122271qka.49.2021.06.10.05.44.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Jun 2021 05:44:24 -0700 (PDT)
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 Menglong Dong <menglong8.dong@gmail.com>
References: <20210609103251.534270-1-dong.menglong@zte.com.cn>
 <672e78df-5bb0-78eb-3022-f942978138f5@redhat.com>
 <CADxym3ZCV94BzHviTxK1G5Kt1Z+1LbbNr6=B=9GjBqGfzrk_Kw@mail.gmail.com>
 <caa07557-985c-7e50-5b80-d8cdcd902e19@redhat.com>
 <DB7PR05MB4315396511FA6701DB6DAA6188359@DB7PR05MB4315.eurprd05.prod.outlook.com>
 <DB7PR05MB4315485C3B19CA9F2D5F934488359@DB7PR05MB4315.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <b2f8f0dc-b7b5-b0f9-e1f3-e168f6516f40@redhat.com>
Date: Thu, 10 Jun 2021 08:44:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <DB7PR05MB4315485C3B19CA9F2D5F934488359@DB7PR05MB4315.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lrK2x-0000Sf-3Z
Subject: Re: [tipc-discussion] [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU
 eat two pages and do some code cleanup
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
Cc: Xin Long <lxin@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUBy
ZWRoYXQuY29tPgo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEwLCAyMDIxIDQ6MTIgUE0KPiBUbzog
TWVuZ2xvbmcgRG9uZyA8bWVuZ2xvbmc4LmRvbmdAZ21haWwuY29tPgo+IENjOiB5aW5nLnh1ZUB3
aW5kcml2ZXIuY29tOyB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0OyBYaW4g
TG9uZyA8bHhpbkByZWRoYXQuY29tPjsgdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1
Pgo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgbmV0LW5leHQgMC8yXSBuZXQ6IHRpcGM6IGZpeCBG
Ql9NVFUgZWF0IHR3byBwYWdlcyBhbmQgZG8gc29tZSBjb2RlIGNsZWFudXAKPgo+Cj4gT24gNi85
LzIxIDg6NTYgQU0sIE1lbmdsb25nIERvbmcgd3JvdGU6Cj4+IE9uIFdlZCwgSnVuIDksIDIwMjEg
YXQgNjo0NyBQTSBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBP
biA2LzkvMjEgNjozMiBBTSwgbWVuZ2xvbmc4LmRvbmdAZ21haWwuY29tIHdyb3RlOgo+Pj4+IEZy
b206IE1lbmdsb25nIERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbgpbLi4uXQo+PiBObywg
bm8sIEkgZGlkbid0IG1pc3MgeW91ciBtYWlsLiBJIHRoaW5rIGl0IGNhbiBtYWtlIHVzIGNsZWFy
IGFib3V0IHdoYXQgYW5kIGhvdwo+PiB0byBkbyBieSBzZW5kaW5nIHRoZSBWMiBwYXRjaGVzLgo+
Pgo+PiBTbyB3ZSBjYW4gZGVmaW5lIHR3byB2ZXJzaW9ucyAnRkJfTVRVJyBmb3IgYmNhc3QuYyBh
bmQgbXNnLmMsIHN1Y2ggYXMgQ1JZUFRPX01UVQo+PiBhbmQgTk9OX0NSWVBUT19NVFUuIEFuZCB3
aXRoaW4gdGlwY19idWZfYWNxdWlyZSgpLCB3ZSBkZWNpZGUgd2hpY2ggdmVyc2lvbgo+PiBCVUZf
SEVBRFJPT00gdG8gdXNlIGJ5IHRoZSBkYXRhIHNpemU/IFN1Y2ggYXM6Cj4+Cj4+IGludCBidWZf
c2l6ZTsKPj4gaWYgKElTX0VOQUJMRUQoQ09ORklHX1RJUENfQ1JZUFRPKSAmJiBzaXplID09IE5P
Tl9DUllQVE9fTVRVKSB7Cj4+ICAgICAgIGJ1Zl9zaXplID0gc2l6ZSArIEJVRl9IRUFEUk9PTV9u
b24tY3J5cHRvICsgQlVGX1RBSUxST09NX25vbi1jcnlwdG87Cj4+IH0gZWxzZSB7Cj4+ICAgICAg
IGJ1Zl9zaXplID0gc2l6ZSArIEJVRl9IRUFEUk9PTV9jcnlwdG8gKyBCVUZfVEFJTFJPT01fY3J5
cHRvOwo+PiB9Cj4+Cj4+IElzIHRoaXMgZmVlbGluZz8KPj4gKEl0J3MgYSBsaXR0bGUgd2VpcmQg
dG8gY2hlY2sgd2hldGhlciB0aGUgZGF0YSBzaG91bGQgYmUgY3J5cHRvIGJ5IGRhdGEgc2l6ZSku
Cj4+Cj4+IFRoYW5rcyEKPj4gTWVuZ2xvbmcgRG9uZwo+IChSZW1vdmVkIG5ldGRldiwgRGF2aWQg
TWlsbGVyIGV0YyBmcm9tIHRocmVhZCkKPgo+IEkgdGhpbmsgb3VyIG1haW4gbWlzdGFrZSBpcyB0
aGF0IHdlIGFyZSB0cnlpbmcgdG8gImNvbXBlbnNhdGUiIGZvciBhCj4gYmVoYXZpb3IgaW4gdGlw
Y19idWZfYWNxdWlyZSgpIHRoYXQgZG9lbnMndCBmaXQgb3VyIHB1cnBvc2VzLgo+Cj4gV2hhdCBp
ZiB3ZSBkbyB0aGUgZm9sbG93aW5nOgo+IDEpIFdlIGRlZmluZSBCVUZfSEVBRFJPT00gYW5kIEJV
Rl9UQUlMUk9PTSBhcyB3ZSBkbyBub3csIHBsdXMgYSBGQl9NVFUKPiBhcyB5b3Ugc3VnZ2VzdCwg
YWxsIGluc2lkZSBtc2cuYy4KPiAyKSBXZSBjcmVhdGUgYSBuZXcgaW5saW5lIGZ1bmN0aW9uIHRp
cGNfYWxsb2Nfc2tiKGludCBoZWFkcm9vbSwgaW50Cj4gdGFpbHJvb20sIGludCBzaXplKSBpbiBt
c2cuYwo+ICAgwqDCoMKgwqAgVGhpcyBmdW5jdGlvbiBkb2VzIHRoZSBqb2IgdGhhdCB0aXBjX2J1
Zl9hY3FpcmUoKSBkb2VzIG5vdy4KPiAzKSBXZSBsZXQgdGlwY19idWZfYWNxdWlyZSgpIGNhbGwg
dGhpcyBmdW5jdGlvbiBhcwo+IHRpcGNfYWxsb2Nfc2tiKEJVRl9IRUFEUk9PTSwgQlVGX1RBSUxS
T09NLCBzaXplKTsKPiAgIMKgwqDCoCBBbHRlcm5hdGl2ZWx5LCB3ZSBza2lwIHRoZSBCVUZfSEVB
RFJPT00vQlVGX1RBSUxST09NIG1hY3Jvcwo+IGFsdG9nZXRoZXIgYW5kbWFrZSB0aGUgY29kZSBp
biB0aXBjX2J1Zl9hY3F1aXJlKCkgY29uZGl0aW9uYWwgYXMgeW91Cj4gZGlkLCBidXQgd2l0aG91
dCB0ZXN0aW5nIGZvciBzaXplLiBBY3R1YWxseSwgSSB0aGluayBJIGxpa2UgdGhpcyBiZXR0ZXIu
Ck1heWJlIGV2ZW4gYmV0dGVyOiB3ZSBrZWVwIEJVRl9IRUFEUk9PTSwgYnV0IG9ubHkgZGVmaW5l
IGl0IGFzIApMTF9NQVhfSEVBREVSICsgNDgsIGkuZS4gdGhlIG5vbi1jcnlwdG8gdmFsdWUuCldl
IHN0aWxsIGtlZXAgdGhlIGNvbmRpdGlvbmFsIGNhbGwgaW4gdGlwY19idWZfYWNxdWlyZSgpLCBh
bmQgYWRkIHRoZSAKY3J5cHRvLWhlYWRlciBleHRyYXMgZXhwbGljdGx5IHdoZW4gbmVlZGVkLgpU
aGF0IHdheSwgd2Ugb25seSBuZWVkIHRvIGNoYW5nZSBpbiBvbmUgcGxhY2UgaWYgd2UgZGVjaWRl
IHRvIGV4cGFuZCB0aGUgCmhlYWRyb29tLgovLy9qb24KCj4gNCkgV2UgbGV0IHRoZSBmYWxsYmFj
ayBmdW5jdGlvbiBpbiBtc2cuYyBjYWxsIGl0IGFzCj4gdGlwY19hbGxvY19za2IoTExfTUFYX0hF
QURFUiArIDQ4LCAwLCBPTkVQQUdFX1NLQik7Cj4gNSkgV2UgbGV0IHRoZSB1c2VyIGluIGJjYXN0
LmMgZ2V0IGFjY2VzIHRvIHRoZSBjYWxjdWxhdGVkIHZhbHVlIG9mCj4gRkJfTVRVIGFzIGEgZnVu
Y3Rpb24gb3IgZ2xvYmFsIHZhbHVlLCBsaWtlIHlvdSBkaWQgaW4gdjIuCj4KPiBJIHN1Z2dlc3Qg
eW91IHNlbmQgdjMgdG8gdGlwYy1kaXNjdXNzaW9uIChpZiB5b3UgYXJlIGEgbWVtYmVyKSBhbmQg
dGhlCj4gcmVjaXBpZW50cyBvZiB0aGlzIG1haWwgZmlyc3QsIHNvIHdlIGRvbid0IHNwYW0gdGhl
IG5ldGRldiBsaXN0IHdpdGgKPiBpbnRlcm1lZGlhdGUgdmVyc2lvbnMgb2YgdGhpcyBzZXJpZXMu
Cj4KPiAvLy9qb24KPgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby90aXBjLWRpc2N1c3Npb24K
