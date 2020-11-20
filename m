Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B482BB156
	for <lists+tipc-discussion@lfdr.de>; Fri, 20 Nov 2020 18:25:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kgAAC-0001HU-2B; Fri, 20 Nov 2020 17:25:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kgAAA-0001HI-L5
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 17:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yMQMTWGQg1Unx60kJOPnUxoHfXYIHW02auWrcmHB38c=; b=QNUFM6trHgxG7zk1sT8D6ql7W9
 EH+pbFNJikFFDTUluq+/8GmXWttgm4wBpFrXQdWogVX/6u7jDJUyb7laS8N7tDW7kqbkkHeKWTDNs
 NWZgAVQeNbfdY+zxb0GriP8TLqUzrIvka2Sh5EkshG0HTPHvU5rk4VW9SqGQGHnFLfKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yMQMTWGQg1Unx60kJOPnUxoHfXYIHW02auWrcmHB38c=; b=GiKbXVVmVgPTY2QzMOYMAdN1My
 x1Qf9PGzOR0fIIbawyYFPBSckN8bw8oyebXjF8znyYaSICqH06JZCfCnsrrgXdHNs8iwhT7RrJFtt
 1X2z2fByrE4l0aIOaCY8mKZZ+HjCKDz/Hk8teccuP/bAK/HNW09XWoRQNTHLBKYdQ8eE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kgAA5-003VBw-IC
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 17:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605893123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yMQMTWGQg1Unx60kJOPnUxoHfXYIHW02auWrcmHB38c=;
 b=eU5aCEmMlWU5Bhhto8oVOUqIOTbRJATpxVfc7sBCMDwVTHNpYgMwT02iCB9Yyvw3kdSkQl
 7aGEYlVG3d9KnYJJ+gT3FbxIv4cSShwi6S+zak3X0Jiqt82nIXZDLzYQRjesjG8vIZdETY
 Zhg/67QdN8VH1BMF8sTtAYPN7AORtN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-16wSZX5MOl-JzahZCUD68A-1; Fri, 20 Nov 2020 12:25:21 -0500
X-MC-Unique: 16wSZX5MOl-JzahZCUD68A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EC70185A0C4;
 Fri, 20 Nov 2020 17:25:20 +0000 (UTC)
Received: from [10.10.114.220] (ovpn-114-220.rdu2.redhat.com [10.10.114.220])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A31BC19C71;
 Fri, 20 Nov 2020 17:25:19 +0000 (UTC)
To: Howard Finer <howard@thefiners.net>, tipc-discussion@lists.sourceforge.net
References: <036301d6bef6$b7d7e520$2787af60$@thefiners.net>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d8bcb856-fffb-ead8-1424-01e4068e2234@redhat.com>
Date: Fri, 20 Nov 2020 12:25:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <036301d6bef6$b7d7e520$2787af60$@thefiners.net>
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
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kgAA5-003VBw-IC
Subject: Re: [tipc-discussion] tipc over an active/backup bond device
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

SGkgSG93YXJkLApUaGlzIGlzIHRoZSBjb2RlIGV4ZWN1dGVkIHdoZW4gVElQQyByZWNlaXZlcyBh
IE5FVERFVl9DSEFOR0UgZXZlbnQ6Cgpzd2l0Y2ggKGV2dCkgewp8wqDCoMKgwqDCoMKgIGNhc2Ug
TkVUREVWX0NIQU5HRToKfMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgIGlmIChuZXRpZl9jYXJy
aWVyX29rKGRldikgJiYgbmV0aWZfb3Blcl91cChkZXYpKSB7CnzCoMKgwqDCoMKgwqAgfMKgwqDC
oMKgwqDCoCB8wqDCoMKgwqDCoMKgIHRlc3RfYW5kX3NldF9iaXRfbG9jaygwLCAmYi0+dXApOwp8
wqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoCBicmVhazsKfMKgwqDCoMKg
wqDCoCB8wqDCoMKgwqDCoMKgIH0KfMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgIGZhbGx0aHJv
dWdoOwp8wqDCoMKgwqDCoMKgIGNhc2UgTkVUREVWX0dPSU5HX0RPV046CnzCoMKgwqDCoMKgwqAg
fMKgwqDCoMKgwqDCoCBjbGVhcl9iaXRfdW5sb2NrKDAsICZiLT51cCk7CnzCoMKgwqDCoMKgwqAg
fMKgwqDCoMKgwqDCoCB0aXBjX3Jlc2V0X2JlYXJlcihuZXQsIGIpOwp8wqDCoMKgwqDCoMKgIHzC
oMKgwqDCoMKgwqAgYnJlYWs7CnzCoMKgwqDCoMKgwqAgY2FzZSBORVRERVZfVVA6CnzCoMKgwqDC
oMKgwqAgfMKgwqDCoMKgwqDCoCB0ZXN0X2FuZF9zZXRfYml0X2xvY2soMCwgJmItPnVwKTsKfMKg
wqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgIGJyZWFrOwp8wqDCoMKgwqDCoMKgIGNhc2UgTkVUREVW
X0NIQU5HRU1UVToKClNvLCB1bmxlc3MgdGhlIGJvbmQgaW50ZXJmYWNlIHJlYWxseSByZXBvcnRz
IHRoYXQgaXQgaXMgZ29pbmcgZG93biBUSVBDIApkb2Vzbid0IHJlc2V0IGFueSBsaW5rcy4gQW5k
IGlmIGl0ICpkb2VzKiByZXBvcnQgdGhhdCBpdCBpcyBnb2luZyBkb3duLCAKd2hhdCBlbHNlIGNh
biB3ZSBkbz8KVG8gbWUgdGhpcyBsb29rcyBtb3JlIGxpa2UgYSBwcm9ibGVtIHdpdGggdGhlIGJv
bmQgZGV2aWNlIHJhdGhlciB0aGFuIAp3aXRoIFRJUEMsIGJ1dCB3ZSBtaWdodCBvZiBjb3Vyc2Ug
aGF2ZSBtaXN1bmRlcnN0b29kIGl0cyBleHBlY3RlZCBiZWhhdmlvci4KV2Ugd2lsbCBsb29rIGlu
dG8gdGhpcy4KT24gYSBkaWZmZXJlbnQgbm90ZSwgeW91IGNvdWxkIGluc3RlYWQgb21pdCB0aGUg
Ym9uZCBpbnRlcmZhY2UgYW5kIHRyeSAKdXNpbmcgZHVhbCBUSVBDIGxpbmtzLCB3aGljaCB3b3Jr
IGluIGFjdGl2ZS1hY3RpdmUgbW9kZSBhbmQgZ2l2ZSBiZXR0ZXIgCnBlcmZvcm1hbmNlLgpJcyB0
aGF0IGFuIG9wdGlvbiBmb3IgeW91PwoKQlIKSm9uIE1hbG95CgoKT24gMTEvMTkvMjAgMTE6MzYg
UE0sIEhvd2FyZCBGaW5lciB3cm90ZToKPiBJIGFtIHRyeWluZyB0byB1c2UgVElQQyAoa2VybmVs
IHZlcnNpb24gNC4xOSkgb3ZlciBhIGJvbmQgZGV2aWNlIHRoYXQgaXMKPiBjb25maWd1cmVkIGZv
ciBhY3RpdmUtYmFja3VwIGFuZCBhcnAgbW9uaXRvcmluZyBmb3IgdGhlIHNsYXZlcy4gSWYgYSBz
bGF2ZQo+IGdvZXMgZG93biwgVElQQyBpcyByZWNlaXZpbmcgYSBuZXRkZXZfY2hhbmdlIGR1cmlu
ZyB0aGUgdGltZWZyYW1lIHRoYXQgdGhlCj4gYm9uZCBkZXZpY2UgaXMgd29ya2luZyB0b3dhcmRz
IGJyaW5pbmcgdXAgdGhlIG5ldyBzbGF2ZS4gIFRoaXMgY2F1c2VzIFRJUEMKPiB0byBkaXNhYmxl
IHRoZSBiZWFyZXIsIHdoaWNoIGluIHR1cm4gY2F1c2VzIGEgdGVtcG9yYXJ5IGxvc3Mgb2YKPiBj
b21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIG5vZGVzLgo+Cj4gICAKPgo+IEluc3RydW1lbnRhdGlv
biBvZiB0aGUgYm9uZCBhbmQgdGlwYyBkcml2ZXJzIHNob3dzIHRoZSBmb2xsb3dpbmc6Cj4KPiA8
Nj4gMSAyMDIwLTExLTE5VDIzOjU4OjMzLjExMTU0OSswMTowMCBMQUJOQlM1QSBrZXJuZWwgLSAt
IC0gWyAgMTUzLjY1NTc3Nl0KPiBFbmFibGVkIGJlYXJlciA8ZXRoOmJvbmQwPiwgcHJpb3JpdHkg
MTAKPgo+IDw2PiAxIDIwMjAtMTEtMjBUMDA6MDc6NTguNTQ0MDQwKzAxOjAwIExBQk5CUzVBIGtl
cm5lbCAtIC0gLSBbICA3MTguNzk5MjU5XQo+IGJvbmQwOiBib25kX2FiX2FycF9jb21taXQ6IEJP
TkRfTElOS19ET1dOOiBsaW5rIHN0YXR1cyBkZWZpbml0ZWx5IGRvd24gZm9yCj4gaW50ZXJmYWNl
IGV0aDEsIGRpc2FibGluZyBpdAo+Cj4gPDY+IDEgMjAyMC0xMS0yMFQwMDowNzo1OC41NDQwNjMr
MDE6MDAgTEFCTkJTNUEga2VybmVsIC0gLSAtIFsgIDcxOC43OTkyNjFdCj4gYm9uZDA6IGJvbmRf
YWJfYXJwX2NvbW1pdDogZG9fZmFpbG92ZXIsIGJsb2NrIG5ldHBvbGxfdHggYW5kIGNhbGwKPiBz
ZWxlY3RfYWN0aXZlX3NsYXZlCj4KPiA8Nj4gMSAyMDIwLTExLTIwVDAwOjA3OjU4LjU0NDA2OSsw
MTowMCBMQUJOQlM1QSBrZXJuZWwgLSAtIC0gWyAgNzE4Ljc5OTI2M10KPiBib25kMDogYm9uZF9z
ZWxlY3RfYWN0aXZlX3NsYXZlOiBib25kX2ZpbmRfYmVzdF9zbGF2ZSByZXR1cm5lZCBOVUxMCj4K
PiA8Nj4gMSAyMDIwLTExLTIwVDAwOjA3OjU4LjU0NDA3MiswMTowMCBMQUJOQlM1QSBrZXJuZWwg
LSAtIC0gWyAgNzE4Ljc5OTM0N10KPiBib25kMDogYm9uZF9zZWxlY3RfYWN0aXZlX3NsYXZlOiBu
b3cgcnVubmluZyB3aXRob3V0IGFueSBhY3RpdmUgaW50ZXJmYWNlIQo+Cj4gPDY+IDEgMjAyMC0x
MS0yMFQwMDowNzo1OC41NDQwODArMDE6MDAgTEFCTkJTNUEga2VybmVsIC0gLSAtIFsgIDcxOC43
OTkzNDldCj4gYm9uZDA6IGJvbmRfYWJfYXJwX2NvbW1pdDogZG9fZmFpbG92ZXIsIHJldHVybmVk
IGZyb20gc2VsZWN0X2FjdGl2ZV9zbGF2ZQo+IGFuZCB1bmJsb2NrIG5ldHBvbGwgdHgKPgo+IDw2
PiAxIDIwMjAtMTEtMjBUMDA6MDc6NTguNTQ0MDgxKzAxOjAwIExBQk5CUzVBIGtlcm5lbCAtIC0g
LSBbICA3MTguNzk5NjExXQo+IFJlc2V0dGluZyBiZWFyZXIgPGV0aDpib25kMD4KPgo+IDw2PiAx
IDIwMjAtMTEtMjBUMDA6MDc6NTguNjU1NTM1KzAxOjAwIExBQk5CUzVBIGtlcm5lbCAtIC0gLSBb
ICA3MTguOTA3MjQ1XQo+IGJvbmQwOiBib25kX2FiX2FycF9jb21taXQ6IEJPTkRfTElOS19VUDog
bGluayBzdGF0dXMgZGVmaW5pdGVseSB1cCBmb3IKPiBpbnRlcmZhY2UgZXRoMAo+Cj4gPDY+IDEg
MjAyMC0xMS0yMFQwMDowNzo1OC42NTU1NDUrMDE6MDAgTEFCTkJTNUEga2VybmVsIC0gLSAtIFsg
IDcxOC45MDcyNDddCj4gYm9uZDA6IGJvbmRfYWJfYXJwX2NvbW1pdDogZG9fZmFpbG92ZXIsIGJs
b2NrIG5ldHBvbGxfdHggYW5kIGNhbGwKPiBzZWxlY3RfYWN0aXZlX3NsYXZlCj4KPiA8Nj4gMSAy
MDIwLTExLTIwVDAwOjA3OjU4LjY1NTU0OCswMTowMCBMQUJOQlM1QSBrZXJuZWwgLSAtIC0gWyAg
NzE4LjkwNzI0OF0KPiBib25kMDogYm9uZF9zZWxlY3RfYWN0aXZlX3NsYXZlOiBib25kX2ZpbmRf
YmVzdF9zbGF2ZSByZXR1cm5lZCBzbGF2ZSBldGgwCj4KPiA8Nj4gMSAyMDIwLTExLTIwVDAwOjA3
OjU4LjY1NTU1OSswMTowMCBMQUJOQlM1QSBrZXJuZWwgLSAtIC0gWyAgNzE4LjkwNzI0OV0KPiBi
b25kMDogbWFraW5nIGludGVyZmFjZSBldGgwIHRoZSBuZXcgYWN0aXZlIG9uZQo+Cj4gPDY+IDEg
MjAyMC0xMS0yMFQwMDowNzo1OC42NTU1NjIrMDE6MDAgTEFCTkJTNUEga2VybmVsIC0gLSAtIFsg
IDcxOC45MDc1NjBdCj4gYm9uZDA6IGJvbmRfc2VsZWN0X2FjdGl2ZV9zbGF2ZTogZmlyc3QgYWN0
aXZlIGludGVyZmFjZSB1cCEKPgo+ICAgCj4KPiBXaXRoIGFycCBiYXNlZCBtb25pdG9yaW5nIG9u
bHkgMSBzbGF2ZSB3aWxsIGJlICd1cCcuICBXaGVuIHRoZSBhY3RpdmUgc2xhdmUKPiBnb2VzIGRv
d24sIHRoZSBvdGhlciBzbGF2ZSBuZWVkcyB0byBiZSBicm91Z2h0IHVwLiAgRHVyaW5nIHRoYXQg
dGltZWZyYW1lIHdlCj4gc2VlIFRJUEMgaXMgcmVzZXR0aW5nIHRoZSBiZWFyZXIuICAgIFRoYXQg
ZGVmZWF0cyB0aGUgZW50aXJlIHB1cnBvc2Ugb2YKPiB1c2luZyB0aGUgYm9uZCBkZXZpY2UuCj4K
PiBJdCBzZWVtcyB0aGF0IHRoZSBoYW5kbGluZyBvZiB0aGUgbmV0ZGV2X2NoYW5nZSBldmVudCBm
b3IgYSBhY3RpdmUvYmFja3VwCj4gYm9uZCBkZXZpY2UgaXMgbm90IGNvcnJlY3QuICBJdCBuZWVk
cyB0byBsZWF2ZSB0aGUgYmVhcmVyIGludGFjdCBzbyB0aGF0Cj4gd2hlbiB0aGUgYmFja3VwIHNs
YXZlIGlzIGJyb3VnaHQgdXAgdGhlIGNvbW11bmljYXRpb24gaXMgcHJvcGVybHkgcmVzdG9yZWQK
PiB3aXRob3V0IGFueSB1cHBlciBsYXllciBhcHBsaWNhdGlvbnMgYmVpbmcgYXdhcmUgdGhhdCBz
b21ldGhpbmcgaGFwcGVuZWQgYXQKPiB0aGUgbG93ZXIgbGV2ZWwuCj4KPiAgIAo+Cj4gVGhhbmtz
LAo+Cj4gSG93YXJkCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IHRpcGMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRp
cGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
