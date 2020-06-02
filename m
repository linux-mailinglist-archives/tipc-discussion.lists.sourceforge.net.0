Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 691381EBD32
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 15:38:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jg775-0000S1-F5; Tue, 02 Jun 2020 13:37:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jg773-0000Rp-QT
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 13:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vSuTKjoC1pzMAxdivPl3MCW20LQsipXNAS0859hMI6I=; b=iHR4067fN6x4R9jkzR5pJSUpI5
 PhH4oXEgZiL+OTXMyhPwhZWkL1gPNmMFyc7YhN7VFreN4nGVeW638gj2N/1HeeP4t6uCd/5gJUQai
 exFv4tJi7qvyrje0CpilCJz0BvulL52Q3FR1uFrIsP6fj0fi03W+HO0Bth1TCEno2vVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vSuTKjoC1pzMAxdivPl3MCW20LQsipXNAS0859hMI6I=; b=Ky1Lsmneg16E/AJP0myPkvKx0S
 mk/2L+hEF72obe8UhseIba7nmhCZaoiaP2PQZRvAFZhNOQTNahLBXUCgyU86Y+blHZreM0cI5JCpy
 wtUNnaL//D4VJy6z4BF2w9TxEtGtHe6XdC8GpZC2usu1V0P5K7TECSMN3xH64fJ2ZqRs=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jg770-006Ugw-3v
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 13:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591105056;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vSuTKjoC1pzMAxdivPl3MCW20LQsipXNAS0859hMI6I=;
 b=Pz/7sh6vlHk6uAPxZvuLOzYhdR0b9gEjyuN4IiqkIBiCvOmDEhfMoU/d8GbuorgcbyV/1s
 ONSPvHF21NPA4vduaysZJWHZyIx8wPT/DqMXtkz+kTZBdFhP9acMWSEdgTAulmc3OmN/co
 6kr3NJtWUEXUDp0QrkcCdNIlQXQzkSs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-PuZETs49OimkOtO-cO3sSw-1; Tue, 02 Jun 2020 09:37:30 -0400
X-MC-Unique: PuZETs49OimkOtO-cO3sSw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 977ED83DB39;
 Tue,  2 Jun 2020 13:37:28 +0000 (UTC)
Received: from [10.10.117.121] (ovpn-117-121.rdu2.redhat.com [10.10.117.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 417085D9CC;
 Tue,  2 Jun 2020 13:37:27 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200529153408.1843975-1-jmaloy@redhat.com>
 <VI1PR05MB4605AD04EB5324EA05D76EC1F18A0@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <cece97ea-9fad-e323-78b6-448d72357e34@redhat.com>
 <DB6PR05MB45983DFC9E1362F85690A2EAF18A0@DB6PR05MB4598.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <83ebef5a-df1e-99f4-7b72-015da2704861@redhat.com>
Date: Tue, 2 Jun 2020 09:37:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <DB6PR05MB45983DFC9E1362F85690A2EAF18A0@DB6PR05MB4598.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jg770-006Ugw-3v
Subject: Re: [tipc-discussion] [ ] tipc: update a binding service via
 broadcast
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA2LzEvMjAgNzo0NSBQTSwgSG9hbmcgSHV1IExlIHdyb3RlOgo+IEhpIEpvbiwKPgo+IFNl
ZSBteSBjb21tZW50IGlubGluZS4KPgo+IEhvYW5nCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPgo+IFNlbnQ6IE1vbmRheSwg
SnVuZSAxLCAyMDIwIDc6NDAgUE0KPiBUbzogSG9hbmcgSHV1IExlIDxob2FuZy5oLmxlQGRla3Rl
Y2guY29tLmF1PjsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IENjOiBU
dW5nIFF1YW5nIE5ndXllbiA8dHVuZy5xLm5ndXllbkBkZWt0ZWNoLmNvbS5hdT47IFR1b25nIFRv
bmcgTGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1PjsgbWFsb3lAZG9uam9ubi5jb207
IHhpbmxAcmVkaGF0LmNvbTsgeWluZy54dWVAd2luZHJpdmVyLmNvbTsgcGFydGhhc2FyYXRoeS5i
aHV2YXJhZ2FuQGdtYWlsLmNvbQo+IFN1YmplY3Q6IFJlOiBbIF0gdGlwYzogdXBkYXRlIGEgYmlu
ZGluZyBzZXJ2aWNlIHZpYSBicm9hZGNhc3QKPgo+IEhpIEhvYW5nLgo+IFNlZSBiZWxvdy4KPgo+
IE9uIDYvMS8yMCA1OjMzIEFNLCBIb2FuZyBIdXUgTGUgd3JvdGU6Cj4+IEhpIEpvbiwKPj4KPj4g
VGhlcmUgaXMgYSBjb25jZXJuIGluIGZ1bmN0aW9uIHRpcGNfbm9kZV9icm9hZGNhc3QuCj4+IFNl
ZSBteSBjb21tZW50IGlubGluZS4KPj4KPj4gUmVnYXJkcywKPj4gSG9hbmcKPj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogam1hbG95QHJlZGhhdC5jb20gPGptYWxveUByZWRo
YXQuY29tPgo+PiBTZW50OiBGcmlkYXksIE1heSAyOSwgMjAyMCAxMDozNCBQTQo+PiBUbzogdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+PiBDYzogVHVuZyBRdWFuZyBOZ3V5
ZW4gPHR1bmcucS5uZ3V5ZW5AZGVrdGVjaC5jb20uYXU+OyBIb2FuZyBIdXUgTGUgPGhvYW5nLmgu
bGVAZGVrdGVjaC5jb20uYXU+OyBUdW9uZyBUb25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNo
LmNvbS5hdT47IGptYWxveUByZWRoYXQuY29tOyBtYWxveUBkb25qb25uLmNvbTsgeGlubEByZWRo
YXQuY29tOyB5aW5nLnh1ZUB3aW5kcml2ZXIuY29tOyBwYXJ0aGFzYXJhdGh5LmJodXZhcmFnYW5A
Z21haWwuY29tCj4+IFN1YmplY3Q6IFsgXSB0aXBjOiB1cGRhdGUgYSBiaW5kaW5nIHNlcnZpY2Ug
dmlhIGJyb2FkY2FzdAo+Pgo+PiBGcm9tOiBIb2FuZyBIdXUgTGUgPGhvYW5nLmgubGVAZGVrdGVj
aC5jb20uYXU+Cj4+Cj4+IEN1cnJlbnRseSwgdXBkYXRpbmcgYmluZGluZyB0YWJsZSAoYWRkIHNl
cnZpY2UgYmluZGluZyB0bwo+PiBuYW1lIHRhYmxlL3dpdGhkcmF3IGEgc2VydmljZSBiaW5kaW5n
KSBpcyBiZWluZyBzZW50IG92ZXIgcmVwbGljYXN0Lgo+PiBIb3dldmVyLCBpZiB3ZSBhcmUgc2Nh
bGluZyB1cCBjbHVzdGVycyB0byA+IDEwMCBub2Rlcy9jb250YWluZXJzIHRoaXMKPj4gbWV0aG9k
IGlzIGxlc3MgYWZmZWN0aW9uIGJlY2F1c2Ugb2YgbG9vcGluZyB0aHJvdWdoIG5vZGVzIGluIGEg
Y2x1c3RlciBvbmUKPj4gYnkgb25lLgo+IFsuLi5dCj4+ICAgIAo+PiArCS8qIFVzZSBicm9hZGNh
c3QgaWYgYWxsIG5vZGVzIHN1cHBvcnQgaXQgKi8KPj4gKwlpZiAoIXJjX2Rlc3RzKSB7Cj4+ICsJ
CV9fc2tiX3F1ZXVlX2hlYWRfaW5pdCgmeG1pdHEpOwo+PiArCQlfX3NrYl9xdWV1ZV90YWlsKCZ4
bWl0cSwgc2tiKTsKPj4gKwkJdGlwY19iY2FzdF94bWl0KG5ldCwgJnhtaXRxLCAmZHVtbXkpOwo+
PiArCQlyZXR1cm47Cj4+ICsJfQo+PiArCj4+IFtIb2FuZ10KPj4gV2UgY291bGQgbm90IHVzZSAn
cmNfZGVzdHMnIHRvIHNlbmQgYXMgYnJvYWRjYXN0IG1vZGUgYmVjYXVzZSBvZiBpdCBpcyBub3Qg
ZnVsbHkgYnJvYWRjYXN0IHN1cHBvcnRpbmcgaW4gdGhlIGNsdXN0ZXIuCj4+IEFzIHN0YXRlZCwg
aWYgdGhlcmUgaXMgYSBub2RlIGluIHRoZSBjbHVzdGVyIG5vdCBzdXBwb3J0aW5nIGJyb2FkY2Fz
dCBtb2RlLCB3ZSBuZWVkIHRvIHVzZSByZXBsaWNhc3QgaW5zdGVhZC4KPj4gVGhhdCdzIHdoeSB3
ZSBpbnRyb2R1Y2VkIHRoZSBmZWF0dXJlICJTbW9vdGggc3dpdGNoIGJldHdlZW4gcmVwbGljYXN0
L2Jyb2FkY2FzdCBpbiBiY2FzdC5jIiBhbmQgYSBuZXcgY29tbWFuZCBsaW5lIHRvIGNvbmZpZ3Vy
ZSB0aGUgYnJvYWRjYXN0IGxpbmsuCj4+IElmIHdlIGFzc3VtZSBiYXNlIG9uICdyY19kZXN0cycg
KGkuZSBjYXBhYmlsaXR5IGZsYWdzIFRJUENfTkFNRURfQkNBU1QpLCBwcm9iYWJseSAnZm9yY2Vk
IHJlcGxpY2FzdCcgY29uZmlndXJhdGlvbiBvbiBicm9hZGNhc3QgbGluayBiZWNvbWVzIHVzZWxl
c3MuIFRoZW4sIGRlc3RpbmF0aW9uIG5vZGVzIHdpbGwgYmUgbWlzc2VkIHRoZSBwdWJsaWNhdGlv
biBpdGVtLgo+IFlvdSBtaXN1bmRlcnN0YW5kIHRoaXMgZnVuY3Rpb24uIHJjX2Rlc3RzIGlzIGEg
KmNvdW50ZXIqLCBub3QgYSBmbGFnLiBJdAo+IGNvdW50cyB0aGUgbnVtYmVyIG9mIHBlZXIgbm9k
ZXMgdGhhdCBkb24ndCBzdXBwb3J0IFRJUENfTkFNRURfQkNBU1QsIGFuZAo+IGlmIHRoaXMgaXMg
bm9uLXplcm8sIHdlIHVzZSByZXBsaWNhc3QuIFNvIHRoaXMgaXMgc2FmZS4KPgo+IFtIb2FuZ10g
WWVzLCBJIGtub3cgYWJvdXQgdGhpcyBjb3VudGVyLiBXaGF0IEknbSBjb25zaWRlcmluZyBhYm91
dCB0aGUgTDIgaW50ZXJmYWNlIChlLmcgVlhMQU4pIHBzZXVkbyBzdXBwb3J0IGJyb2FkY2FzdCAo
d2UgZGlzY3Vzc2VkIHRoZSB0b3BpYyBhIHllYXIgYWdvKSwgdGhlbiwgdGhlIHNlbmRpbmcgc2lk
ZSBtdXN0IGJlIHN3aXRjaGluZyB0byByZXBsaWNhc3QgKG1ldGhvZC0+Zm9yY2VfYmNhc3QgPSB0
cnVlKS4gQnV0IGFib3ZlIGxpa2VseSBmb3JjaW5nIHRvIHVzZSBicm9hZGNhc3QgY2FyZWxlc3Mg
c2V0dGluZyBmcm9tIGJyb2FkY2FzdC9yZXBsaWNhc3QgZnJvbSBMMi4KWWVzIHlvdSBhcmUgcmln
aHQuIEkgb25seSBjaGVja2VkIHRoaXMgZm9yIFVEUCwgd2hlcmUgaXQgc2VlbXMgdG8gYmUgb2ss
IApidXQgZm9yZ290IGFib3V0IFZYTEFOLgpTdGlsbCwgd2UgY2FuIGF2b2lkIGJ1aWxkaW5nIHVw
ICdkZXN0JyBsaXN0cyBieSBtYWtpbmcgYSBzbWFsbCBjaGFuZ2UgdG8gCnRpcGNfbm9kZV9iY2Fz
dCgpOgoKLyogVXNlIGJyb2FkY2FzdCBpZiBiZWFyZXIgYW5kIGFsbCBub2RlcyBzdXBwb3J0IGl0
ICovCmlmICghcmNfZGVzdHMgJiYgdGlwY19iY2FzdF9nZXRfYnJvYWRjYXN0X21vZGUobmV0KSAh
PSBCQ0xJTktfTU9ERV9SQ0FTVCkgewogwqDCoMKgwqDCoMKgwqDCoCB1MTYgZHVtbXk7CiDCoCDC
oCDCoCDCoMKgIF9fc2tiX3F1ZXVlX2hlYWRfaW5pdCgmeG1pdHEpOwogwqDCoMKgwqDCoMKgwqDC
oCBfX3NrYl9xdWV1ZV90YWlsKCZ4bWl0cSwgc2tiKTsKIMKgwqDCoMKgwqDCoMKgwqAgdGlwY19i
Y2FzdF94bWl0KG5ldCwgJnhtaXRxLCAmZHVtbXkpOwogwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47
Cn0KCkkgcmVhbGx5IGJlbGlldmUgc2VxdWVuY2UgbnVtYmVyaW5nIGFuZCB0aGVzZSB0aHJlZSBu
ZXcgYml0cyBzb2x2ZSBvdXIgCnByb2JsZW0gaW4gYSBzaW1wbGUgYW5kIHJvYnVzdCB3YXkuClN0
cmljdGx5LCBldmVuIHRoZSAnbm9uX2xlZ2FjeScgYml0IGNvdWxkIGJlIG9taXR0ZWQsIHNpbmNl
IHRoZSByZWNlaXZlciAKYWxyZWFkeSBoYXMgdGhpcyBpbmZvIGZyb20gdGhlIGNhcGFiaWxpdHkg
bWFwLCBidXQgSSBmb3VuZCBpdCBzaW1wbGVyIHRvIApkbyBpdCB0aGF0IHdheS4gQWxzbywgSSBy
ZWFsaXplZCB0aGF0IHRpcGNfbmFtZWRfZGVxdWV1ZSgpIGZ1bmN0aW9uIGNhbiAKYmUgc2ltcGxp
ZmllZCBmdXJ0aGVyLCBzaW5jZSB0aGVyZSBjYW4gYmUgbm8gZHVwbGljYXRlIG1lc3NhZ2VzLgoK
QlIKLy8vam9uCgo+Cj4gLy8vam9uCj4KPj4gKwkvKiBPdGhlcndpc2UgdXNlIGxlZ2FjeSByZXBs
aWNhc3QgbWV0aG9kICovCj4+ICAgIAlyY3VfcmVhZF9sb2NrKCk7Cj4+ICAgIAlsaXN0X2Zvcl9l
YWNoX2VudHJ5X3JjdShuLCB0aXBjX25vZGVzKG5ldCksIGxpc3QpIHsKPj4gICAgCQlkc3QgPSBu
LT5hZGRyOwo+PiBAQCAtMTc0OSw3ICsxNzYyLDYgQEAgdm9pZCB0aXBjX25vZGVfYnJvYWRjYXN0
KHN0cnVjdCBuZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYikKPj4gICAgCQl0aXBjX25vZGVf
eG1pdF9za2IobmV0LCB0eHNrYiwgZHN0LCAwKTsKPj4gICAgCX0KPj4gICAgCXJjdV9yZWFkX3Vu
bG9jaygpOwo+PiAtCj4+ICAgIAlrZnJlZV9za2Ioc2tiKTsKPj4gICAgfQo+PiAgICAKPj4gQEAg
LTE4NDQsNyArMTg1Niw5IEBAIHN0YXRpYyB2b2lkIHRpcGNfbm9kZV9iY19yY3Yoc3RydWN0IG5l
dCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBpbnQgYmVhcmVyX2lkCj4+ICAgIAo+PiAgICAJ
LyogSGFuZGxlIE5BTUVfRElTVFJJQlVUT1IgbWVzc2FnZXMgc2VudCBmcm9tIDEuNyBub2RlcyAq
Lwo+PiAgICAJaWYgKCFza2JfcXVldWVfZW1wdHkoJm4tPmJjX2VudHJ5Lm5hbWVkcSkpCj4+IC0J
CXRpcGNfbmFtZWRfcmN2KG5ldCwgJm4tPmJjX2VudHJ5Lm5hbWVkcSk7Cj4+ICsJCXRpcGNfbmFt
ZWRfcmN2KG5ldCwgJm4tPmJjX2VudHJ5Lm5hbWVkcSwKPj4gKwkJCSAgICAgICAmbi0+YmNfZW50
cnkubmFtZWRfcmN2X254dCwKPj4gKwkJCSAgICAgICAmbi0+YmNfZW50cnkubmFtZWRfb3Blbik7
Cj4+ICAgIAo+PiAgICAJLyogSWYgcmVhc3NlbWJseSBvciByZXRyYW5zbWlzc2lvbiBmYWlsdXJl
ID0+IHJlc2V0IGFsbCBsaW5rcyB0byBwZWVyICovCj4+ICAgIAlpZiAocmMgJiBUSVBDX0xJTktf
RE9XTl9FVlQpCj4+IEBAIC0yMTA5LDcgKzIxMjMsOSBAQCB2b2lkIHRpcGNfcmN2KHN0cnVjdCBu
ZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IHRpcGNfYmVhcmVyICpiKQo+PiAg
ICAJCXRpcGNfbm9kZV9saW5rX2Rvd24obiwgYmVhcmVyX2lkLCBmYWxzZSk7Cj4+ICAgIAo+PiAg
ICAJaWYgKHVubGlrZWx5KCFza2JfcXVldWVfZW1wdHkoJm4tPmJjX2VudHJ5Lm5hbWVkcSkpKQo+
PiAtCQl0aXBjX25hbWVkX3JjdihuZXQsICZuLT5iY19lbnRyeS5uYW1lZHEpOwo+PiArCQl0aXBj
X25hbWVkX3JjdihuZXQsICZuLT5iY19lbnRyeS5uYW1lZHEsCj4+ICsJCQkgICAgICAgJm4tPmJj
X2VudHJ5Lm5hbWVkX3Jjdl9ueHQsCj4+ICsJCQkgICAgICAgJm4tPmJjX2VudHJ5Lm5hbWVkX29w
ZW4pOwo+PiAgICAKPj4gICAgCWlmICh1bmxpa2VseSghc2tiX3F1ZXVlX2VtcHR5KCZuLT5iY19l
bnRyeS5pbnB1dHExKSkpCj4+ICAgIAkJdGlwY19ub2RlX21jYXN0X3JjdihuKTsKPj4gZGlmZiAt
LWdpdCBhL25ldC90aXBjL25vZGUuaCBiL25ldC90aXBjL25vZGUuaAo+PiBpbmRleCBhNjgwM2I0
NDlhMmMuLjlmNmYxM2YxNjA0ZiAxMDA2NDQKPj4gLS0tIGEvbmV0L3RpcGMvbm9kZS5oCj4+ICsr
KyBiL25ldC90aXBjL25vZGUuaAo+PiBAQCAtNTUsNyArNTUsOCBAQCBlbnVtIHsKPj4gICAgCVRJ
UENfTUNBU1RfUkJDVEwgICAgICA9ICgxIDw8IDcpLAo+PiAgICAJVElQQ19HQVBfQUNLX0JMT0NL
ICAgID0gKDEgPDwgOCksCj4+ICAgIAlUSVBDX1RVTk5FTF9FTkhBTkNFRCAgPSAoMSA8PCA5KSwK
Pj4gLQlUSVBDX05BR0xFICAgICAgICAgICAgPSAoMSA8PCAxMCkKPj4gKwlUSVBDX05BR0xFICAg
ICAgICAgICAgPSAoMSA8PCAxMCksCj4+ICsJVElQQ19OQU1FRF9CQ0FTVCAgICAgID0gKDEgPDwg
MTEpCj4+ICAgIH07Cj4+ICAgIAo+PiAgICAjZGVmaW5lIFRJUENfTk9ERV9DQVBBQklMSVRJRVMg
KFRJUENfU1lOX0JJVCAgICAgICAgICAgfCAgXAo+PiBAQCAtNjgsNyArNjksOCBAQCBlbnVtIHsK
Pj4gICAgCQkJCVRJUENfTUNBU1RfUkJDVEwgICAgICAgfCAgIFwKPj4gICAgCQkJCVRJUENfR0FQ
X0FDS19CTE9DSyAgICAgfCAgIFwKPj4gICAgCQkJCVRJUENfVFVOTkVMX0VOSEFOQ0VEICAgfCAg
IFwKPj4gLQkJCQlUSVBDX05BR0xFKQo+PiArCQkJCVRJUENfTkFHTEUgICAgICAgICAgICAgfCAg
IFwKPj4gKwkJCQlUSVBDX05BTUVEX0JDQVNUKQo+PiAgICAKPj4gICAgI2RlZmluZSBJTlZBTElE
X0JFQVJFUl9JRCAtMQo+PiAgICAKPj4gQEAgLTEwMSw3ICsxMDMsNyBAQCBpbnQgdGlwY19ub2Rl
X3htaXRfc2tiKHN0cnVjdCBuZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwgdTMyIGRlc3Qs
Cj4+ICAgIAkJICAgICAgIHUzMiBzZWxlY3Rvcik7Cj4+ICAgIHZvaWQgdGlwY19ub2RlX3N1YnNj
cmliZShzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdCBsaXN0X2hlYWQgKnN1YnNjciwgdTMyIGFkZHIp
Owo+PiAgICB2b2lkIHRpcGNfbm9kZV91bnN1YnNjcmliZShzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVj
dCBsaXN0X2hlYWQgKnN1YnNjciwgdTMyIGFkZHIpOwo+PiAtdm9pZCB0aXBjX25vZGVfYnJvYWRj
YXN0KHN0cnVjdCBuZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYik7Cj4+ICt2b2lkIHRpcGNf
bm9kZV9icm9hZGNhc3Qoc3RydWN0IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBpbnQg
cmNfZGVzdHMpOwo+PiAgICBpbnQgdGlwY19ub2RlX2FkZF9jb25uKHN0cnVjdCBuZXQgKm5ldCwg
dTMyIGRub2RlLCB1MzIgcG9ydCwgdTMyIHBlZXJfcG9ydCk7Cj4+ICAgIHZvaWQgdGlwY19ub2Rl
X3JlbW92ZV9jb25uKHN0cnVjdCBuZXQgKm5ldCwgdTMyIGRub2RlLCB1MzIgcG9ydCk7Cj4+ICAg
IGludCB0aXBjX25vZGVfZ2V0X210dShzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBhZGRyLCB1MzIgc2Vs
LCBib29sIGNvbm5lY3RlZCk7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
