Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6C28C555
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 01:42:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kS7Sj-0002xm-J5; Mon, 12 Oct 2020 23:42:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kS7Sj-0002xg-1U
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xFEPPHM7GZUP1G4JgeqTWVYtnumFMgbakeS6l4HfqwA=; b=JujnO/NGBbMpRc4wRoLUrJs95h
 ZleRmjpjyO4Mdhg40erRkA0iR0T2lNKgK6OvS8zcSS/zNEV6TRF5vvTXEgqJaYVwvU7eJI7XkUBOU
 skSCSu5tp6K5mlQZgzGrGvzeezNZXnpknTlhxSarZwrljgZHCyDV2Bs2FTeu1OIVZm1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xFEPPHM7GZUP1G4JgeqTWVYtnumFMgbakeS6l4HfqwA=; b=A5z5iTgB8lTZB+hEuM1Q8DBaD7
 mtWlUpRMm6BluOMAxu2SDGmJ2+9VIYb3bmP7DJ7ekuj3wvSrqHRxZpT2rCqI3GmqygY6DuVohMevu
 tRqwsbTGoexjIqPG+NkAZlKt0gTmujKZZ+EGPrTnZg3+X/mN2GuBeAmTX2Basim5pMCw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kS7Sd-00CmC9-S5
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:42:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602546142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xFEPPHM7GZUP1G4JgeqTWVYtnumFMgbakeS6l4HfqwA=;
 b=P3TNhdZN5ge7eLVqNLI3f37nq22pjYWpCxDdWkJZ56hvVmMepkgV5nuBuwziBabdtI7bk0
 gjaxXsfeWj6aStDokAXaPVNj5Je/kVLaW2CAUQahTJ7rzXXqReNusqJOnlB2X7xBiVYibp
 etHbCoKEubxJEWcaqfE+eZwkz6t6938=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-jP6b45KrPK6mnwV4KqMZJw-1; Mon, 12 Oct 2020 19:42:20 -0400
X-MC-Unique: jP6b45KrPK6mnwV4KqMZJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71F011DDEA;
 Mon, 12 Oct 2020 23:42:19 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B048127BBF;
 Mon, 12 Oct 2020 23:42:18 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20201008022219.8212-1-hoang.h.le@dektech.com.au>
 <d34511c4-b6b0-3853-bc20-bab460eefc46@redhat.com>
 <VI1PR05MB46055EEDB75E7F42CDD0B786F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <a63a0fb7-398d-f425-6f2a-f7cd03e6ce8f@redhat.com>
Date: Mon, 12 Oct 2020 19:42:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <VI1PR05MB46055EEDB75E7F42CDD0B786F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kS7Sd-00CmC9-S5
Subject: Re: [tipc-discussion] [net-next] tipc: introduce smooth change to
 replicast
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAxMC84LzIwIDExOjM2IFBNLCBIb2FuZyBIdXUgTGUgd3JvdGU6Cj4gSGkgSm9uLAo+Cj4g
U2VlIG15IGlubGluZSBjb21tZW50Lgo+Cj4gVGhhbmtzLAo+IEhvYW5nCj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+Cj4+
IFNlbnQ6IEZyaWRheSwgT2N0b2JlciA5LCAyMDIwIDE6MjcgQU0KPj4gVG86IEhvYW5nIEh1dSBM
ZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT47IG1hbG95QGRvbmpvbm4uY29tOyB5aW5nLnh1
ZUB3aW5kcml2ZXIuY29tOyB0aXBjLQo+PiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dAo+PiBTdWJqZWN0OiBSZTogW25ldC1uZXh0XSB0aXBjOiBpbnRyb2R1Y2Ugc21vb3RoIGNoYW5n
ZSB0byByZXBsaWNhc3QKPj4KPj4KPj4KPj4gT24gMTAvNy8yMCAxMDoyMiBQTSwgSG9hbmcgSHV1
IExlIHdyb3RlOgo+Pj4gSW4gY29tbWl0IGNhZDI5MjlkYzQzMiAoInRpcGM6IHVwZGF0ZSBhIGJp
bmRpbmcgc2VydmljZSB2aWEgYnJvYWRjYXN0IiksCj4+PiBXZSB1c2UgYnJvYWRjYXN0IHRvIHVw
ZGF0ZSBhIGJpbmRpbmcgc2VydmljZSBmb3IgYSBsYXJnZSBjbHVzdGVyLgo+Pj4gSG93ZXZlciwg
aWYgd2UgdHJ5IHRvIHB1Ymxpc2ggYSB0aG91c2FuZHMgb2Ygc2VydmljZXMgYXQgdGhlCj4+PiBz
YW1lIHRpbWUsIHdlIG1heSB0byBnZXQgImxpbmsgb3ZlcmZsb3ciIGhhcHBlbiBiZWNhdXNlIG9m
IHF1ZXVlIGxpbWl0Cj4+PiBoYWQgcmVhY2hlZC4KPj4+Cj4+PiBXZSBub3cgaW50cm9kdWNlIGEg
c21vb3RoIGNoYW5nZSB0byByZXBsaWNhc3QgaWYgdGhlIGJyb2FkY2FzdCBsaW5rIGhhcwo+Pj4g
cmVhY2ggdG8gdGhlIGxpbWl0IG9mIHF1ZXVlLgo+PiBUbyBtZSB0aGlzIGJlYXRzIHRoZSB3aG9s
ZSBwdXJwb3NlIG9mIHVzaW5nIGJyb2FkY2FzdCBkaXN0cmlidXRpb24gaW4KPj4gdGhlIGZpcnN0
IHBsYWNlLgo+PiBXZSB3YW50ZWQgdG8gc2F2ZSBDUFUgYW5kIG5ldHdvcmsgcmVzb3VyY2VzIGJ5
IHVzaW5nwqAgYnJvYWRjYXN0LCBhbmQKPj4gdGhlbiwgd2hlbiB0aGluZ3MgZ2V0IHRvdWdoLCB3
ZSBmYWxsIGJhY2sgdG8gdGhlIHN1cHBvc2VkbHkgbGVzcwo+PiBlZmZpY2llbnQgcmVwbGljYXN0
IG1ldGhvZC4gTm90IGdvb2QuCj4+Cj4+IEkgd29uZGVyIHdoYXQgaXMgcmVhbGx5IGhhcHBlbmlu
ZyB3aGVuIHRoaXMgb3ZlcmZsb3cgc2l0dWF0aW9uIG9jY3Vycy4KPj4gRmlyc3QsIHRoZSByZXNl
dCBsaW1pdCBpcyBkaW1lbnNpb25lZCBzbyB0aGF0IGl0IHNob3VsZCBiZSBwb3NzaWJsZSB0bwo+
PiBwdWJsaXNoIE1BWF9QVUJMSUNBVElPTlMgKDY1aykgcHVibGljYXRpb25zIGluIG9uZSBzaG90
Lgo+PiBXaXRoIGZ1bGwgYnVuZGxpbmcsIHdoaWNoIGlzIHdoYXQgSSBleHBlY3QgaGVyZSwgdGhl
cmUgYXJlIDE0NjAvMjAgPSA3Mwo+PiBwdWJsaWNhdGlvbiBpdGVtcyBpbiBlYWNoIGJ1ZmZlciwg
c28gdGhlIHJlc2V0IGxpbWl0ICg9PW1heF9idWxrKSBzaG91bGQKPj4gYmUgNjVrLzczID0gODk3
IGJ1ZmZlcnMuCj4gW0hvYW5nXSBObywgaXQncyBub3QgcmlnaHQhCj4gQXMgSSBzdGFnZWQgaW4g
YW5vdGhlciBjb21taXQgdGhhdCB0aGUgcmVzZXQgbGltaXQgaXMgMzUwIGJ1ZmZlcnMgKDY1ay8o
Mzc0NC8yMCkpID0+ICMxLgo+IHdoZXJlOgo+IEZCX01UVT0zNzQ0Cj4gYW5kIGlmIGEgdXNlciBz
ZXQgd2luZG93IHNpemUgaXMgNTAsIHdlIGFyZSBmYWxsYmFjayB0byAzMiB3aW5kb3ctc2l6ZSA9
PiAjMi4KPiBTbywgaWYgdGhlIGJyb2FkY2FzdCBsaW5rIGlzIHVuZGVyIGhpZ2ggbG9hZCB0cmFm
ZmljLCB3ZSB3aWxsIHJlYWNoIHRvIHRoZSBsaW1pdCBlYXNpbHkgKCMxICsgIzIpLgpZZXMuIEkg
ZGlkbid0IHJldmlldyB5b3VyIHByZXZpb3VzIHBhdGNoZXMgYmVmb3JlIG1ha2luZyB0aGlzIGNv
bW1lbnQuCj4KPj4gTXkgZmlndXJlcyBhcmUganVzdCBmcm9tIHRoZSB0b3Agb2YgbXkgaGVhZCwg
c28geW91IHNob3VsZCBkb3VibGUgY2hlY2sKPj4gdGhlbSwgYnV0IEkgZmluZCBpdCB1bmxpa2Vs
eSB0aGF0IHdlIGhpdCB0aGlzIGxpbWl0IHVubGVzcyB0aGVyZSBpcyBhCj4+IGxvdCBvZiBvdGhl
ciBicm9hZGNhc3QgZ29pbmcgb24gYXQgdGhlIHNhbWUgdGltZSwgYW5kIGV2ZW4gdGhlbiBJIGZp
bmQKPj4gaXQgdW5saWtlbHkuCj4gW0hvYW5nXQo+IEkganVzdCBpbXBsZW1lbnQgYSBzaW1wbGUg
YXBwbGljYXRpb246Cj4gWy4uLl0KPiBudW1fc2VydmljZSA9IDEwawo+IGZvciAoaT0wO2k8bnVt
X3NlcnZpY2U7IGkrKykKPiAgICAgIGJpbmQoc29ja2V0LCBzZXJ2aWNlPGk+KTsKPiBbLi4uXQo+
Cj4gVGhlbiwgcnVuIHRoaXMgYXBwOyBzbGVlcCAyOyBraWxsIFNJR0lOVCBhcHA7IFRoZW4sIHRo
ZSBwcm9ibGVtIGlzIHJlcHJvZHVjaWJsZS4KPiAgIAo+PiBJIHN1Z2dlc3QgeW91IHRyeSB0byBm
aW5kIG91dCB3aGF0IGlzIHJlYWxseSBnb2luZyBvbiB3aGVuIHdlIHJlYWNoIHRoaXMKPj4gc2l0
dWF0aW9uLgo+PiAtV2hhdCBleGFjdGx5IGlzIGluIHRoZSBiYWNrbG9nIHF1ZXVlPwo+PiAtT25s
eSBwdWJsaWNhdGlvbnM/Cj4+IC1Ib3cgbWFueT8KPj4gLUEgbWl4dHVyZSBvZiBwdWJsaWNhdGlv
bnMgYW5kIG90aGVyIHRyYWZmaWM/Cj4gT25seSBwdWJsaWNhdGlvbi93aXRoZHJhd24gYnVmZmVy
cywgYXJvdW5kIG1vcmUgdGhvdXNhbmRzLgo+Cj4+IC1IYXMgYnVuZGxpbmcgcmVhbGx5IHdvcmtl
ZCBhcyBzdXBwb3NlZD8KPj4gLURvIHdlIHN0aWxsIGhhdmUgc29tZSBpc3N1ZSB3aXRoIHRoZSBi
cm9hZGNhc3QgbGluayB0aGF0IHN0b3BzIGJ1ZmZlcnMKPj4gYmVpbmcgYWNrZWQgYW5kIHJlbGVh
c2VkIGluIGEgdGltZWx5IG1hbm5lcj8KSSBzdXNwZWN0IHlvdSBtZWFuIE5PIGluIHRoaXMgY2Fz
ZSA7LSkKPj4gLSBIYXZlIHlvdSBiZWVuIGFibGUgdG8gZHVtcCBvdXQgc3VjaCBpbmZvIHdoZW4g
dGhpcyBwcm9ibGVtIG9jY3Vycz8KPj4gLSBBcmUgeW91IGFibGUgdG8gcmUtcHJvZHVjZSBpdCBp
biB5b3VyIG93biBzeXN0ZW0/Cj4gVGhlc2UgYW5zd2VycyBhcmUgWUVTCj4KPj4gSW4gdGhlIGVu
ZCBpdCBtaWdodCBiZSBhcyBzaW1wbGUgYXMgaW5jcmVhc2luZyB0aGUgcmVzZXQgbGltaXQsIGJ1
dCB3ZQo+PiByZWFsbHkgc2hvdWxkIHRyeSB0byB1bmRlcnN0YW5kIHdoYXQgaXMgaGFwcGVuaW5n
IGZpcnN0Lgo+IFllcywgSSB0aGluayBzby4gQXMgcHJldmlvdXMgcGF0Y2ggSSBtYWRlIHRoZSBj
b2RlIGNoYW5nZSB0byB1cGRhdGUgcXVldWUgYmFja2xvZyBzdXBwb3J0aW5nIHRvIDg3MyBidWZm
ZXJzLgo+IEJ1dCBpZiBJIGluY3JlYXNlIG51bWJlciBvZiBzZXJ2aWNlcyBpbiBteSBhcHAgdXAg
dG8gMjBrIChub3QgcmVhbD8/PikgLiBUaGUgaXNzdWUgaXMgYWJsZSB0byByZXByb2R1Y2UgYXMg
d2VsbC4KV2h5IGRvZXMgaXQgc3RpbGwgaGFwcGVuPyBUaGUgbmV3IGxpbWl0IGlzIGNhbGN1bGF0
ZWQgdG8gYmUgc2FmZSBmb3IgNjVrIApwdWJsaWNhdGlvbnMsIHNvIHdoeSBkb2VzIGl0IGZhaWwg
YWxyZWFkeSBhdCAyMGs/CkFjY29yZGluZyB0byB0aGUgbG9vcCB5b3Ugc2hvdyBhYm92ZSB5b3Ug
b25seSBkbyBwdWJsaWNhdGlvbnMsIG5vIAp3aXRoZHJhd2Fscywgc28geW8gc2hvdWxkIG5vdCBl
dmVuIHRoZW9yZXRpY2FsbHkgYmUgYWJsZSB0byByZWFjaCB0aGUgCnJlc2V0IGxpbWl0LgpXaGF0
IGlzIGhhcHBlbmluZz8KTGV0J3MgZGlzY3VzcyB0aGlzIHRvbW9ycm93LgoKLy8vam9uCgo+IFRo
YXQgaXMgdGhlIHJlYXNvbiB3aHkgSSBwcm9wb3NlIHRoaXMgbmV3IHNvbHV0aW9uICsgY29tYmlu
ZSB3aXRoIHR3byBwcmV2aW91cyBwYXRjaGVzIHRvIHNvbHZlIHRoZSBwcm9ibGVtIGNvbXBsZXRl
bHkuCj4+IFJlZ2FyZHMKPj4gLy8vam9uCj4+Cj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBIb2FuZyBI
dXUgTGUgPGhvYW5nLmgubGVAZGVrdGVjaC5jb20uYXU+Cj4+PiAtLS0KPj4+ICAgIG5ldC90aXBj
L2xpbmsuYyB8ICA1ICsrKystCj4+PiAgICBuZXQvdGlwYy9ub2RlLmMgfCAxMiArKysrKysrKysr
LS0KPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbGluay5jIGIvbmV0L3RpcGMvbGluay5j
Cj4+PiBpbmRleCAwNmI4ODBkYTJhOGUuLmNhOTA4ZWFkNzUzYSAxMDA2NDQKPj4+IC0tLSBhL25l
dC90aXBjL2xpbmsuYwo+Pj4gKysrIGIvbmV0L3RpcGMvbGluay5jCj4+PiBAQCAtMTAyMiw3ICsx
MDIyLDEwIEBAIGludCB0aXBjX2xpbmtfeG1pdChzdHJ1Y3QgdGlwY19saW5rICpsLCBzdHJ1Y3Qg
c2tfYnVmZl9oZWFkICpsaXN0LAo+Pj4gICAgCS8qIEFsbG93IG92ZXJzdWJzY3JpcHRpb24gb2Yg
b25lIGRhdGEgbXNnIHBlciBzb3VyY2UgYXQgY29uZ2VzdGlvbiAqLwo+Pj4gICAgCWlmICh1bmxp
a2VseShsLT5iYWNrbG9nW2ltcF0ubGVuID49IGwtPmJhY2tsb2dbaW1wXS5saW1pdCkpIHsKPj4+
ICAgIAkJaWYgKGltcCA9PSBUSVBDX1NZU1RFTV9JTVBPUlRBTkNFKSB7Cj4+PiAtCQkJcHJfd2Fy
bigiJXM8JXM+LCBsaW5rIG92ZXJmbG93IiwgbGlua19yc3RfbXNnLCBsLT5uYW1lKTsKPj4+ICsJ
CQlwcl93YXJuX3JhdGVsaW1pdGVkKCIlczwlcz4sIGxpbmsgb3ZlcmZsb3ciLAo+Pj4gKwkJCQkJ
ICAgIGxpbmtfcnN0X21zZywgbC0+bmFtZSk7Cj4+PiArCQkJaWYgKGxpbmtfaXNfYmNfc25kbGlu
ayhsKSkKPj4+ICsJCQkJcmV0dXJuIC1FT1ZFUkZMT1c7Cj4+PiAgICAJCQlyZXR1cm4gLUVOT0JV
RlM7Cj4+PiAgICAJCX0KPj4+ICAgIAkJcmMgPSBsaW5rX3NjaGVkdWxlX3VzZXIobCwgaGRyKTsK
Pj4+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9ub2RlLmMgYi9uZXQvdGlwYy9ub2RlLmMKPj4+IGlu
ZGV4IGQyNjllYmUzODJlMS4uYTM3OTc2NjEwMzY3IDEwMDY0NAo+Pj4gLS0tIGEvbmV0L3RpcGMv
bm9kZS5jCj4+PiArKysgYi9uZXQvdGlwYy9ub2RlLmMKPj4+IEBAIC0xNzUwLDE1ICsxNzUwLDIz
IEBAIHZvaWQgdGlwY19ub2RlX2Jyb2FkY2FzdChzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdCBza19i
dWZmICpza2IsIGludCByY19kZXN0cykKPj4+ICAgIAlzdHJ1Y3QgdGlwY19ub2RlICpuOwo+Pj4g
ICAgCXUxNiBkdW1teTsKPj4+ICAgIAl1MzIgZHN0Owo+Pj4gKwlpbnQgcmMgPSAwOwo+Pj4KPj4+
ICAgIAkvKiBVc2UgYnJvYWRjYXN0IGlmIGFsbCBub2RlcyBzdXBwb3J0IGl0ICovCj4+PiAgICAJ
aWYgKCFyY19kZXN0cyAmJiB0aXBjX2JjYXN0X2dldF9tb2RlKG5ldCkgIT0gQkNMSU5LX01PREVf
UkNBU1QpIHsKPj4+ICsJCXR4c2tiID0gcHNrYl9jb3B5KHNrYiwgR0ZQX0FUT01JQyk7Cj4+PiAr
CQlpZiAoIXR4c2tiKQo+Pj4gKwkJCWdvdG8gcmNhc3Q7Cj4+PiAgICAJCV9fc2tiX3F1ZXVlX2hl
YWRfaW5pdCgmeG1pdHEpOwo+Pj4gLQkJX19za2JfcXVldWVfdGFpbCgmeG1pdHEsIHNrYik7Cj4+
PiAtCQl0aXBjX2JjYXN0X3htaXQobmV0LCAmeG1pdHEsICZkdW1teSk7Cj4+PiArCQlfX3NrYl9x
dWV1ZV90YWlsKCZ4bWl0cSwgdHhza2IpOwo+Pj4gKwkJcmMgPSB0aXBjX2JjYXN0X3htaXQobmV0
LCAmeG1pdHEsICZkdW1teSk7Cj4+PiArCQlpZiAocmMgPT0gLUVPVkVSRkxPVykKPj4+ICsJCQln
b3RvIHJjYXN0Owo+Pj4gKwkJa2ZyZWVfc2tiKHNrYik7Cj4+PiAgICAJCXJldHVybjsKPj4+ICAg
IAl9Cj4+Pgo+Pj4gK3JjYXN0Ogo+Pj4gICAgCS8qIE90aGVyd2lzZSB1c2UgbGVnYWN5IHJlcGxp
Y2FzdCBtZXRob2QgKi8KPj4+ICAgIAlyY3VfcmVhZF9sb2NrKCk7Cj4+PiAgICAJbGlzdF9mb3Jf
ZWFjaF9lbnRyeV9yY3UobiwgdGlwY19ub2RlcyhuZXQpLCBsaXN0KSB7CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
