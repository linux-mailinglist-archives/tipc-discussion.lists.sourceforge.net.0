Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F860212F91
	for <lists+tipc-discussion@lfdr.de>; Fri,  3 Jul 2020 00:36:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jr7oU-00035j-9a; Thu, 02 Jul 2020 22:36:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jr7oT-00035d-EM
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jul 2020 22:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t8yHBPCrwvvRCtmZy1zQTLpJgqavpATTBj7KgDTZ7t4=; b=jIc3NwkoP5n4EX4kxSFTIBKLhf
 f/wTVE0jlARONLYHkARKpus4Ve2pHxqGa0mQsX16hifTTAf5lJX2FrIV014qQcU8Oh6+hkKTVFWGI
 lEQhRyqWjU7zxkwZhfL3hFdfCgEhLJVfqJhLhXT0oTMEWEi2J0LW1oE9R+vkHU2hfJRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t8yHBPCrwvvRCtmZy1zQTLpJgqavpATTBj7KgDTZ7t4=; b=SK+01kK5keVI2lfwS6bh/tA7XL
 x+BBsJ11uLVu5oSAoWUx9dmiK31urhDXxyEPR9Haae48I3mjQUrdXpsOwfyCcDUlqG5Quag0k7/ho
 DfCZ4xFSkj3zvjZ1n0dyIVV3nFG9dcc650qUWzrZOPsXQWATNYgtM7EomwfIh5BFAw4Y=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jr7oR-00BJzl-Eu
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jul 2020 22:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593729364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t8yHBPCrwvvRCtmZy1zQTLpJgqavpATTBj7KgDTZ7t4=;
 b=f+M2UDaJlbvjMrWgz+Zwz47So44LKPzO2TmJblad0UOnijmkSjzLF5IQV2jes5uhyV77qI
 qTvIrKPBhodQhcFlXYsQV4ZZsu9lyB0rrpQrw2Rwz6K44Lwbv+vbdbKd10O9psqW2bYsCD
 FW4lgT+5vm9+GDvT9PlIJQYMt8TQ2fs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-_06wHqthPfqn_ADOt58Giw-1; Thu, 02 Jul 2020 18:36:00 -0400
X-MC-Unique: _06wHqthPfqn_ADOt58Giw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46089800597;
 Thu,  2 Jul 2020 22:35:59 +0000 (UTC)
Received: from [10.10.116.137] (ovpn-116-137.rdu2.redhat.com [10.10.116.137])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFFC37789B;
 Thu,  2 Jul 2020 22:35:57 +0000 (UTC)
From: Jon Maloy <jmaloy@redhat.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
 <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
 <AM6PR0502MB3925E154B7FE11260E4434CBE26C0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
 <6176fdec-0587-0284-1ba2-f6bd699d641a@redhat.com>
Message-ID: <540044fd-b541-ff83-a512-04870983ddc1@redhat.com>
Date: Thu, 2 Jul 2020 18:35:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <6176fdec-0587-0284-1ba2-f6bd699d641a@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jr7oR-00BJzl-Eu
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect unicast link window
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA3LzIvMjAgNjoyOCBQTSwgSm9uIE1hbG95IHdyb3RlOgo+Cj4KPiBPbiA2LzMwLzIwIDk6
MzkgUE0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToKPj4KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+PiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPgo+Pj4gU2VudDog
VHVlc2RheSwgSnVuZSAzMCwgMjAyMCAxMToyNiBQTQo+Pj4gVG86IFR1b25nIFRvbmcgTGllbiA8
dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1PjsgCj4+PiBtYWxveUBkb25qb25uLmNvbTsgeWlu
Zy54dWVAd2luZHJpdmVyLmNvbTsgdGlwYy0KPj4+IGRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cj4+PiBDYzogdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1Pgo+Pj4gU3Vi
amVjdDogUmU6IFtuZXRdIHRpcGM6IGZpeCBpbmNvcnJlY3QgdW5pY2FzdCBsaW5rIHdpbmRvdwo+
Pj4KPj4+Cj4+Pgo+Pj4gT24gNi8zMC8yMCAxMjo1NiBBTSwgVHVvbmcgTGllbiB3cm90ZToKPj4+
PiBJbiBjb21taXQgMTZhZDNmNDAyMmJiICgidGlwYzogaW50cm9kdWNlIHZhcmlhYmxlIHdpbmRv
dyBjb25nZXN0aW9uCj4+Pj4gY29udHJvbCIpLCB3ZSBlbmFibGUgdXNlciB0byBzZXQgdGhlIGxp
bmsgJ21heF93aW4nIHZhbHVlIHdoaWNoIGlzIAo+Pj4+IHVzZWQKPj4+PiBhcyB0aGUgdXBwZXIg
dGhyZXNob2xkIGZvciB0aGUgdmFyaWFibGUgbGluayB3aW5kb3cgYWxnb3JpdGhtIGxhdGVyLgo+
Pj4+Cj4+Pj4gSG93ZXZlciwgc2luY2UgaXQgaXMgZG9uZSBieSB0aGUgc2FtZSBuZXRsaW5rIGNv
bW1hbmQgcHJvcGVydHkKPj4+PiAnVElQQ19OTEFfUFJPUF9XSU4nIHRoYXQgd2FzIHVzZWQgdG8g
c2V0IHRoZSBhY3R1YWwgbGluayB3aW5kb3cgCj4+Pj4gYmVmb3JlLAo+Pj4+IGl0IGFwcGVhcnMg
dG8gYmUgYSBub24gYmFja3dhcmQgY29tcGF0aWJsZSBpc3N1ZSB3aGVuIHVzZXIgdHJpZXMgdG8g
Cj4+Pj4gZ2V0Cj4+Pj4gdGhlIHZhbHVlIGJhY2sgYnV0IGZpbmRzIGEgZGlmZmVyZW50IHZhbHVl
IChpLmUuIHRoZSB2YXJpYWJsZSAKPj4+PiB3aW5kb3cgYXQKPj4+PiB0aGF0IG1vbWVudCkuCj4+
Pj4KPj4+PiBCZXNpZGVzLCB0aGVyZSBpcyBhbm90aGVyIGZsYXcgd2l0aCB0aGUgJ21heF93aW4n
IHdoZXJlIGl0IGlzIHNldCAKPj4+PiB0byBiZQo+Pj4+ICdUSVBDX01BWF9MSU5LX1dJTicgKGku
ZS4gODE5MSkgYnkgZGVmYXVsdCB0aGF0IGlzIG9idmlvdXNseSAKPj4+PiB1bmV4cGVjdGVkCj4+
Pj4gKHRoZSB2YXJpYWJsZSBsaW5rIHdpbmRvdyB3aWxsIHRha2UgcGxhY2UgYW5kIGdvIGJleW9u
ZCB0aGF0IG1pZ2h0IAo+Pj4+IGhhcm0KPj4+PiB0aGUgdW5kZXJseWluZyBkZXZpY2UuLi4pLiBU
aGUgdmFsdWUgaXMgYWN0dWFsbHkgZGVyaXZlZCBmcm9tIHRoZSAKPj4+PiBsb3dlcgo+Pj4+IGJl
YXJlciAmIG1lZGlhIGxheWVycyAoaS5lLiAnZXRoJyBtZWRpYSkgYXQgdGhlIGluaXRpYWxpemlu
ZyB0aW1lIAo+Pj4+IHdoZXJlCj4+Pj4gdGhlIGRlZmF1bHQgdmFsdWUgc2hvdWxkIGJlICdUSVBD
X0RFRl9MSU5LX1dJTicgKGkuZS4gNTApIGluc3RlYWQuCj4+Pj4KPj4+PiBXZSBmaXggdGhlIGlz
c3VlICMxIGJ5IHJldHVybmluZyB0aGUgJ21heF93aW4nIHdoaWNoIGlzIGV4YWN0bHkgdGhlIAo+
Pj4+IG9uZQo+Pj4+IHNldCBieSB1c2VyLCB3aGlsZSBzZXR0aW5nIGJhY2sgdGhlICdtYXhfd2lu
JyBmb3IgdGhlICdldGgnIG1lZGlhIAo+Pj4+IHRvIGJlCj4+Pj4gdGhlIHNhaWQgdmFsdWUgZm9y
IHRoZSAjMi4KPj4+Pgo+Pj4+IE5vdGU6IHRoZSBjaGFuZ2VzIGRvIG5vdCBhZmZlY3QgdGhlIHZh
cmlhYmxlIGxpbmsgd2luZG93IG1lY2hhbmlzbSwgCj4+Pj4gYnV0Cj4+Pj4gbWFrZSB0aGUgcmln
aHQgdGhpbmcgaS5lLiBpdCB3aWxsIHdvcmsgb25seSB3aGVuIHVzZXIgcmVhbGx5IHdhbnRzLgo+
Pj4gSWYgdW5kZXJzdGFuZCB0aGlzIHJpZ2h0IHZhcmlhYmxlIHdpbmRvdyBmbG93IGNvbnRyb2wg
d2lsbCBub3cgaW4KPj4+IHByYWN0aWNlIGJlIGRpc2FibGVkIGJ5IGRlZmF1bHQsIGFuZCBvbmx5
IGJlIGFjdGl2YXRlZCBpZiB0aGUgdXNlcgo+Pj4gZXhwbGljaXRseSBzZXRzIG1heF93aW4gdG8g
c29tZXRoaW5nID4+IDUwLiBSaWdodD8KPj4gWWVzLCBJIHN1cHBvc2UgdGhpcyBpcyB0aGUgcmln
aHQgd2F5LCB0aGUgZGVmYXVsdCB2YWx1ZSBzaG91bGQgYmUgYXQgCj4+IDUwIGFzIGJlZm9yZSBh
bmQgdXNlciBoYXMgaXRzIGNvbnRyb2wgZnVsbHkuIE9yLCBkbyB5b3Ugd2FudCBpdCB0byBiZSAK
Pj4gODE4MSwgYnV0IEkgdGhpbmsgaXQgaXMgdG9vIGJpZyBieSBkZWZhdWx0IGFuZCB3ZSB3aWxs
IG5lZWQgdG8gCj4+IGV4cGxhaW4gaXQgc29tZWhvdyBiZWNhdXNlIG9uZSB3aWxsIGNlcnRhaW5s
eSBiZSBzdXJwcmlzZWQgdG8gc2VlIAo+PiB0aGF0IHZhbHVlIGluIFRJUEMgcHJpbnRvdXRzLi4u
ID8KPiBPbmUgaW1wb3J0YW50IHByb3BlcnR5IG9mIFRJUEMgaXMgdG8ga2VlcCBhbGwgbmVlZCBm
b3IgY29uZmlndXJhdGlvbiAKPiBhdCBhIG1pbmltdW0uIElmIGEgdXNlciBleHBsaWNpdGx5IGhh
cyB0byBzZXQgYSBjb25maWd1cmF0aW9uIHZhbHVlIHRvIAo+IG1ha2UgVElQQyBwZXJmb3JtYW5j
ZSBvcHRpbWFswqAgKGFuZCB3ZSBrbm93IG5vdyB0aGF0IHRoZSBkaWZmZXJlbmNlIAo+IGJldHdl
ZW4gYSBmaXggNTAgYnVmZmVyIHdpbmRvdyBhbmQgYSB2YXJpYWJsZSBvbmUgaXMgaHVnZSkgSSBk
b24ndCAKPiBmaW5kIHRoYXQgdmVyeSBzYXRpc2ZhY3RvcnkuCj4KPiBCdXQgSSBhZG1pdCB3ZSBo
YXZlIGEgZGlsZW1tYS4gV2hhdCB3ZSBoYXZlIGRvbmUgaXMgdG8gY2hhbmdlIHRoZSAKPiBzZW1h
bnRpYyBtZWFuaW5nIG9mIHNldHRpbmcvZ2V0dGluZyB0aGUgd2luZG93IGZyb20gImZpeCBzbGlk
aW5nIAo+IHByb3RvY29sIHdpbmRvdyIgdG8gIm1heCBhbGxvd2FibGUgd2luZG93Ii7CoCBJIGNh
biBxdWl0ZSB3ZWxsIAo+IHVuZGVyc3RhbmQgdGhhdCBzb21lb25lIHdpdGhpbiAvLy8gZm91bmQg
aXQgY29uZnVzaW5nIHRvIGRpc2NvdmVyIHRoYXQgCj4gYSB2YWx1ZSB0aGF0IHdhcyBwcmV2aW91
c2x5IDUwIG5vdyBpcyA4MTgxLCBhbmQgd2FudHMgaXQgYmFjayB0byBob3cgCj4gaXTCoCB1c2Vk
IHRvIGJlLgo+Cj4gSG93ZXZlciwgSSBkb24ndCB0aGluayB0aGlzIGtpbmQgb2YgInVzZXIgZXhw
ZWN0YXRpb24iIGFib3V0IGEgZGVlcGx5IAo+IGludGVybmFsIHNldHRpbmcgb2YgVElQQyBpcyBh
IHZhbGlkIHJlYXNvbiB0byBjcmlwcGxlIHByb3RvY29sIAo+IHBlcmZvcm1hbmNlLiBJbiB0aGUg
cGFzdCB0aGUgdXNlcnMgd291bGQgc2V0IHRoaXMgdmFsdWUgdG8gYWNoaWV2ZSAKPiBiZXR0ZXIg
cGVyZm9ybWFuY2UsIHdoaWxlIGl0IGluIHJlYWxpdHkgaXMgaXJyZWxldmFudCBub3csIC1pdCBj
YW4gCj4gb25seSBtYWtlIHBlcmZvcm1hbmNlIHBvb3Jlci4KPgo+IEluIG15IHZpZXcgd2UgaGF2
ZSB0d28gb3B0aW9uczoKPiAxKSBXZSBjb3VsZCBhZGQgYSBkdW1teSB2YWx1ZSB0aGF0IHNldHMg
YW5kIHJlYWRzIHRoZSB1c2VyJ3MgdmFsdWUgCj4ganVzdCB0byBtYWtlIGhpbSBoYXBweS4KPiAy
KSBXZSBjb3VsZCBzZXQgdGhlIGRlZmF1bHQgdmFsdWUgdG8gZS5nLiAxMDAwIHRvIG1ha2UgaXQg
bG9vayBtb3JlIAo+IHJlYXNvbmFibGUgdG8gdGhlIHVzZXIsIGJ1dCB3aXRoIG5vIHByYWN0aWNh
bCBlZmZlY3Qgb24gdGhlIHByb3RvY29sLiAKVGhpcyBoYXMgdG8gYmUgdmVyaWZpZWQgb2YgY291
cnNlLgovLy9qb24KPiBUaGVuLCBpZiB0aGUgdXNlciBoYXMgaGlzIG93biBsZWdhY3kgc2V0dGlu
ZyBhdCBlLmcuIDMwMCBoZSB3aWxsIAo+IHByb2JhYmx5IGRpc2NvdmVyIHBvb3JlciBwZXJmb3Jt
YW5jZSwgYW5kIGNob29zZSB0byBrZWVwIHRoZSBkZWZhdWx0IAo+IHZhbHVlLiBBbmQgaWYgaGUg
ZG9lc24ndCB0aGVuIGl0IGlzIGhpcyBvd24gcHJvYmxlbS4KPgo+IFRoaW5raW5nIG1vcmUgYWJv
dXQgdGhpcywgSSB3b3VsZCBnbyBmb3IgdGhlIHNlY29uZCBvcHRpb24uCj4gRWl0aGVyIHdheSB3
ZSB3aWxsIGhhdmUgdG8gYmUgcmVhZHkgdG8gZXhwbGFpbiB0byB0aGUgdXNlcnMgd2h5IHdlIAo+
IGhhdmUgbWFkZSB0aGlzIGNoYW5nZSwgYW5kIHRoYXQgdGhlcmUgaXMgbm8gcmVhc29uIGZvciB0
aGVtIHRvIHRvdWNoIAo+IHRoaXMgdmFsdWUgaW4gdGhlIGZ1dHVyZS4KPgo+IC8vL2pvbgo+Cj4K
Pgo+Pgo+PiBCUi9UdW9uZwo+Pj4gLy8vam9uCj4+Pgo+Pj4+IEZpeGVzOiAxNmFkM2Y0MDIyYmIg
KCJ0aXBjOiBpbnRyb2R1Y2UgdmFyaWFibGUgd2luZG93IGNvbmdlc3Rpb24gCj4+Pj4gY29udHJv
bCIpCj4+Pj4gUmVwb3J0ZWQtYnk6IEhvYW5nIExlIDxob2FuZy5oLmxlQGRla3RlY2guY29tLmF1
Pgo+Pj4+IFJlcG9ydGVkLWJ5OiBUaGFuZyBOZ28gPHRoYW5nLmgubmdvQGRla3RlY2guY29tLmF1
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNv
bS5hdT4KPj4+PiAtLS0KPj4+PiDCoMKgIG5ldC90aXBjL2V0aF9tZWRpYS5jIHwgMiArLQo+Pj4+
IMKgwqAgbmV0L3RpcGMvbGluay5jwqDCoMKgwqDCoCB8IDIgKy0KPj4+PiDCoMKgIDIgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAt
LWdpdCBhL25ldC90aXBjL2V0aF9tZWRpYS5jIGIvbmV0L3RpcGMvZXRoX21lZGlhLmMKPj4+PiBp
bmRleCA4YjBiYjYwMDYwMmQuLjY3NWI5NDdlYWI4OSAxMDA2NDQKPj4+PiAtLS0gYS9uZXQvdGlw
Yy9ldGhfbWVkaWEuYwo+Pj4+ICsrKyBiL25ldC90aXBjL2V0aF9tZWRpYS5jCj4+Pj4gQEAgLTkz
LDcgKzkzLDcgQEAgc3RydWN0IHRpcGNfbWVkaWEgZXRoX21lZGlhX2luZm8gPSB7Cj4+Pj4gwqDC
oMKgwqDCoMKgIC5wcmlvcml0ecKgwqDCoCA9IFRJUENfREVGX0xJTktfUFJJLAo+Pj4+IMKgwqDC
oMKgwqDCoCAudG9sZXJhbmNlwqDCoMKgID0gVElQQ19ERUZfTElOS19UT0wsCj4+Pj4gwqDCoMKg
wqDCoMKgIC5taW5fd2luwqDCoMKgID0gVElQQ19ERUZfTElOS19XSU4sCj4+Pj4gLcKgwqDCoCAu
bWF4X3dpbsKgwqDCoCA9IFRJUENfTUFYX0xJTktfV0lOLAo+Pj4+ICvCoMKgwqAgLm1heF93aW7C
oMKgwqAgPSBUSVBDX0RFRl9MSU5LX1dJTiwKPj4+PiDCoMKgwqDCoMKgwqAgLnR5cGVfaWTCoMKg
wqAgPSBUSVBDX01FRElBX1RZUEVfRVRILAo+Pj4+IMKgwqDCoMKgwqDCoCAuaHdhZGRyX2xlbsKg
wqDCoCA9IEVUSF9BTEVOLAo+Pj4+IMKgwqDCoMKgwqDCoCAubmFtZcKgwqDCoMKgwqDCoMKgID0g
ImV0aCIKPj4+PiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbGluay5jIGIvbmV0L3RpcGMvbGluay5j
Cj4+Pj4gaW5kZXggZWUzYjhkMDU3NmI4Li4yODgzNGRhZmRjOTggMTAwNjQ0Cj4+Pj4gLS0tIGEv
bmV0L3RpcGMvbGluay5jCj4+Pj4gKysrIGIvbmV0L3RpcGMvbGluay5jCj4+Pj4gQEAgLTI2NjIs
NyArMjY2Miw3IEBAIGludCBfX3RpcGNfbmxfYWRkX2xpbmsoc3RydWN0IG5ldCAqbmV0LCAKPj4+
PiBzdHJ1Y3QgdGlwY19ubF9tc2cgKm1zZywKPj4+PiDCoMKgwqDCoMKgwqAgaWYgKG5sYV9wdXRf
dTMyKG1zZy0+c2tiLCBUSVBDX05MQV9QUk9QX1RPTCwgbGluay0+dG9sZXJhbmNlKSkKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHByb3BfbXNnX2Z1bGw7Cj4+Pj4gwqDCoMKgwqDCoMKg
IGlmIChubGFfcHV0X3UzMihtc2ctPnNrYiwgVElQQ19OTEFfUFJPUF9XSU4sCj4+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbGluay0+d2luZG93KSkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsaW5rLT5tYXhfd2luKSkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHByb3Bf
bXNnX2Z1bGw7Cj4+Pj4gwqDCoMKgwqDCoMKgIGlmIChubGFfcHV0X3UzMihtc2ctPnNrYiwgVElQ
Q19OTEFfUFJPUF9QUklPLCBsaW5rLT5wcmlvcml0eSkpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZ290byBwcm9wX21zZ19mdWxsOwo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IHRp
cGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
