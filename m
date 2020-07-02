Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EE3212F7C
	for <lists+tipc-discussion@lfdr.de>; Fri,  3 Jul 2020 00:29:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jr7ha-0003N9-F1; Thu, 02 Jul 2020 22:29:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jr7hZ-0003N1-0J
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jul 2020 22:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jLZUrbSr4o/WwLhfPkki/b6QldnsTRt+5TsQQUuLUAA=; b=WiO4j3XuAbqk92Ixj9ejyPhGwJ
 h0CrUKaXX1UBW5CQ+q9VlM5DC82koeoC9v77M0hfUgJ7qLLAkVb39L5WIauDYwwXJDJWLHT+Hcafl
 4bUymffEcBWeT1+Z4CUxlxpmoVhRxCmJBr6seAk2ei27xJSZgpxqOLAqedMdaUMgA1qM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jLZUrbSr4o/WwLhfPkki/b6QldnsTRt+5TsQQUuLUAA=; b=kP+YOyGH9Tuy2uNi2tTyC326nE
 65w6QL+qFl8oLbSya+Hq4UUaZMuJGo/R2kMlis1FYtQMhnIK+AFxn9YCiUwLVq4F8U9chZy7DTDtm
 cro0A/WMT3RLhS5NXX9/EO8nFsPikWdlRXHmLCuaUHoQyxaa4MfmhZ1YRZr+R2KOdD4Q=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jr7hT-009JXL-Hb
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jul 2020 22:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593728926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jLZUrbSr4o/WwLhfPkki/b6QldnsTRt+5TsQQUuLUAA=;
 b=Ks/xkW0nxeoK6hkmfftTB5aEjnG8aWtll0Mb+I/cVRudb8zpE/lBmCQPVzJM1ycAOZ0fdg
 vaKLnau/yDT1TOYbHpwlRGQjPcOlz1SQjEXDiMtmc6yMbulfFqNQ1swGTWJ3lDTN2AzhRd
 U5odAUq3cFMHLrwySUAF1dVPKNZsIes=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-_oebrQ-pNRqn9t9dXZcpEg-1; Thu, 02 Jul 2020 18:28:44 -0400
X-MC-Unique: _oebrQ-pNRqn9t9dXZcpEg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CECA18FE860;
 Thu,  2 Jul 2020 22:28:43 +0000 (UTC)
Received: from [10.10.116.137] (ovpn-116-137.rdu2.redhat.com [10.10.116.137])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 85AAE778A5;
 Thu,  2 Jul 2020 22:28:41 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
 <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
 <AM6PR0502MB3925E154B7FE11260E4434CBE26C0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <6176fdec-0587-0284-1ba2-f6bd699d641a@redhat.com>
Date: Thu, 2 Jul 2020 18:28:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB3925E154B7FE11260E4434CBE26C0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
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
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jr7hT-009JXL-Hb
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

CgpPbiA2LzMwLzIwIDk6MzkgUE0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToKPgo+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29t
Pgo+PiBTZW50OiBUdWVzZGF5LCBKdW5lIDMwLCAyMDIwIDExOjI2IFBNCj4+IFRvOiBUdW9uZyBU
b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT47IG1hbG95QGRvbmpvbm4uY29t
OyB5aW5nLnh1ZUB3aW5kcml2ZXIuY29tOyB0aXBjLQo+PiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldAo+PiBDYzogdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1Pgo+PiBT
dWJqZWN0OiBSZTogW25ldF0gdGlwYzogZml4IGluY29ycmVjdCB1bmljYXN0IGxpbmsgd2luZG93
Cj4+Cj4+Cj4+Cj4+IE9uIDYvMzAvMjAgMTI6NTYgQU0sIFR1b25nIExpZW4gd3JvdGU6Cj4+PiBJ
biBjb21taXQgMTZhZDNmNDAyMmJiICgidGlwYzogaW50cm9kdWNlIHZhcmlhYmxlIHdpbmRvdyBj
b25nZXN0aW9uCj4+PiBjb250cm9sIiksIHdlIGVuYWJsZSB1c2VyIHRvIHNldCB0aGUgbGluayAn
bWF4X3dpbicgdmFsdWUgd2hpY2ggaXMgdXNlZAo+Pj4gYXMgdGhlIHVwcGVyIHRocmVzaG9sZCBm
b3IgdGhlIHZhcmlhYmxlIGxpbmsgd2luZG93IGFsZ29yaXRobSBsYXRlci4KPj4+Cj4+PiBIb3dl
dmVyLCBzaW5jZSBpdCBpcyBkb25lIGJ5IHRoZSBzYW1lIG5ldGxpbmsgY29tbWFuZCBwcm9wZXJ0
eQo+Pj4gJ1RJUENfTkxBX1BST1BfV0lOJyB0aGF0IHdhcyB1c2VkIHRvIHNldCB0aGUgYWN0dWFs
IGxpbmsgd2luZG93IGJlZm9yZSwKPj4+IGl0IGFwcGVhcnMgdG8gYmUgYSBub24gYmFja3dhcmQg
Y29tcGF0aWJsZSBpc3N1ZSB3aGVuIHVzZXIgdHJpZXMgdG8gZ2V0Cj4+PiB0aGUgdmFsdWUgYmFj
ayBidXQgZmluZHMgYSBkaWZmZXJlbnQgdmFsdWUgKGkuZS4gdGhlIHZhcmlhYmxlIHdpbmRvdyBh
dAo+Pj4gdGhhdCBtb21lbnQpLgo+Pj4KPj4+IEJlc2lkZXMsIHRoZXJlIGlzIGFub3RoZXIgZmxh
dyB3aXRoIHRoZSAnbWF4X3dpbicgd2hlcmUgaXQgaXMgc2V0IHRvIGJlCj4+PiAnVElQQ19NQVhf
TElOS19XSU4nIChpLmUuIDgxOTEpIGJ5IGRlZmF1bHQgdGhhdCBpcyBvYnZpb3VzbHkgdW5leHBl
Y3RlZAo+Pj4gKHRoZSB2YXJpYWJsZSBsaW5rIHdpbmRvdyB3aWxsIHRha2UgcGxhY2UgYW5kIGdv
IGJleW9uZCB0aGF0IG1pZ2h0IGhhcm0KPj4+IHRoZSB1bmRlcmx5aW5nIGRldmljZS4uLikuIFRo
ZSB2YWx1ZSBpcyBhY3R1YWxseSBkZXJpdmVkIGZyb20gdGhlIGxvd2VyCj4+PiBiZWFyZXIgJiBt
ZWRpYSBsYXllcnMgKGkuZS4gJ2V0aCcgbWVkaWEpIGF0IHRoZSBpbml0aWFsaXppbmcgdGltZSB3
aGVyZQo+Pj4gdGhlIGRlZmF1bHQgdmFsdWUgc2hvdWxkIGJlICdUSVBDX0RFRl9MSU5LX1dJTicg
KGkuZS4gNTApIGluc3RlYWQuCj4+Pgo+Pj4gV2UgZml4IHRoZSBpc3N1ZSAjMSBieSByZXR1cm5p
bmcgdGhlICdtYXhfd2luJyB3aGljaCBpcyBleGFjdGx5IHRoZSBvbmUKPj4+IHNldCBieSB1c2Vy
LCB3aGlsZSBzZXR0aW5nIGJhY2sgdGhlICdtYXhfd2luJyBmb3IgdGhlICdldGgnIG1lZGlhIHRv
IGJlCj4+PiB0aGUgc2FpZCB2YWx1ZSBmb3IgdGhlICMyLgo+Pj4KPj4+IE5vdGU6IHRoZSBjaGFu
Z2VzIGRvIG5vdCBhZmZlY3QgdGhlIHZhcmlhYmxlIGxpbmsgd2luZG93IG1lY2hhbmlzbSwgYnV0
Cj4+PiBtYWtlIHRoZSByaWdodCB0aGluZyBpLmUuIGl0IHdpbGwgd29yayBvbmx5IHdoZW4gdXNl
ciByZWFsbHkgd2FudHMuCj4+IElmIHVuZGVyc3RhbmQgdGhpcyByaWdodCB2YXJpYWJsZSB3aW5k
b3cgZmxvdyBjb250cm9sIHdpbGwgbm93IGluCj4+IHByYWN0aWNlIGJlIGRpc2FibGVkIGJ5IGRl
ZmF1bHQsIGFuZCBvbmx5IGJlIGFjdGl2YXRlZCBpZiB0aGUgdXNlcgo+PiBleHBsaWNpdGx5IHNl
dHMgbWF4X3dpbiB0byBzb21ldGhpbmcgPj4gNTAuIFJpZ2h0Pwo+IFllcywgSSBzdXBwb3NlIHRo
aXMgaXMgdGhlIHJpZ2h0IHdheSwgdGhlIGRlZmF1bHQgdmFsdWUgc2hvdWxkIGJlIGF0IDUwIGFz
IGJlZm9yZSBhbmQgdXNlciBoYXMgaXRzIGNvbnRyb2wgZnVsbHkuIE9yLCBkbyB5b3Ugd2FudCBp
dCB0byBiZSA4MTgxLCBidXQgSSB0aGluayBpdCBpcyB0b28gYmlnIGJ5IGRlZmF1bHQgYW5kIHdl
IHdpbGwgbmVlZCB0byBleHBsYWluIGl0IHNvbWVob3cgYmVjYXVzZSBvbmUgd2lsbCBjZXJ0YWlu
bHkgYmUgc3VycHJpc2VkIHRvIHNlZSB0aGF0IHZhbHVlIGluIFRJUEMgcHJpbnRvdXRzLi4uID8K
T25lIGltcG9ydGFudCBwcm9wZXJ0eSBvZiBUSVBDIGlzIHRvIGtlZXAgYWxsIG5lZWQgZm9yIGNv
bmZpZ3VyYXRpb24gYXQgCmEgbWluaW11bS4gSWYgYSB1c2VyIGV4cGxpY2l0bHkgaGFzIHRvIHNl
dCBhIGNvbmZpZ3VyYXRpb24gdmFsdWUgdG8gbWFrZSAKVElQQyBwZXJmb3JtYW5jZSBvcHRpbWFs
wqAgKGFuZCB3ZSBrbm93IG5vdyB0aGF0IHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gYSAKZml4IDUw
IGJ1ZmZlciB3aW5kb3cgYW5kIGEgdmFyaWFibGUgb25lIGlzIGh1Z2UpIEkgZG9uJ3QgZmluZCB0
aGF0IHZlcnkgCnNhdGlzZmFjdG9yeS4KCkJ1dCBJIGFkbWl0IHdlIGhhdmUgYSBkaWxlbW1hLiBX
aGF0IHdlIGhhdmUgZG9uZSBpcyB0byBjaGFuZ2UgdGhlIApzZW1hbnRpYyBtZWFuaW5nIG9mIHNl
dHRpbmcvZ2V0dGluZyB0aGUgd2luZG93IGZyb20gImZpeCBzbGlkaW5nIApwcm90b2NvbCB3aW5k
b3ciIHRvICJtYXggYWxsb3dhYmxlIHdpbmRvdyIuwqAgSSBjYW4gcXVpdGUgd2VsbCB1bmRlcnN0
YW5kIAp0aGF0IHNvbWVvbmUgd2l0aGluIC8vLyBmb3VuZCBpdCBjb25mdXNpbmcgdG8gZGlzY292
ZXIgdGhhdCBhIHZhbHVlIHRoYXQgCndhcyBwcmV2aW91c2x5IDUwIG5vdyBpcyA4MTgxLCBhbmQg
d2FudHMgaXQgYmFjayB0byBob3cgaXTCoCB1c2VkIHRvIGJlLgoKSG93ZXZlciwgSSBkb24ndCB0
aGluayB0aGlzIGtpbmQgb2YgInVzZXIgZXhwZWN0YXRpb24iIGFib3V0IGEgZGVlcGx5IAppbnRl
cm5hbCBzZXR0aW5nIG9mIFRJUEMgaXMgYSB2YWxpZCByZWFzb24gdG8gY3JpcHBsZSBwcm90b2Nv
bCAKcGVyZm9ybWFuY2UuIEluIHRoZSBwYXN0IHRoZSB1c2VycyB3b3VsZCBzZXQgdGhpcyB2YWx1
ZSB0byBhY2hpZXZlIApiZXR0ZXIgcGVyZm9ybWFuY2UsIHdoaWxlIGl0IGluIHJlYWxpdHkgaXMg
aXJyZWxldmFudCBub3csIC1pdCBjYW4gb25seSAKbWFrZSBwZXJmb3JtYW5jZSBwb29yZXIuCgpJ
biBteSB2aWV3IHdlIGhhdmUgdHdvIG9wdGlvbnM6CjEpIFdlIGNvdWxkIGFkZCBhIGR1bW15IHZh
bHVlIHRoYXQgc2V0cyBhbmQgcmVhZHMgdGhlIHVzZXIncyB2YWx1ZSBqdXN0IAp0byBtYWtlIGhp
bSBoYXBweS4KMikgV2UgY291bGQgc2V0IHRoZSBkZWZhdWx0IHZhbHVlIHRvIGUuZy4gMTAwMCB0
byBtYWtlIGl0IGxvb2sgbW9yZSAKcmVhc29uYWJsZSB0byB0aGUgdXNlciwgYnV0IHdpdGggbm8g
cHJhY3RpY2FsIGVmZmVjdCBvbiB0aGUgcHJvdG9jb2wuIApUaGVuLCBpZiB0aGUgdXNlciBoYXMg
aGlzIG93biBsZWdhY3kgc2V0dGluZyBhdCBlLmcuIDMwMCBoZSB3aWxsIApwcm9iYWJseSBkaXNj
b3ZlciBwb29yZXIgcGVyZm9ybWFuY2UsIGFuZCBjaG9vc2UgdG8ga2VlcCB0aGUgZGVmYXVsdCAK
dmFsdWUuIEFuZCBpZiBoZSBkb2Vzbid0IHRoZW4gaXQgaXMgaGlzIG93biBwcm9ibGVtLgoKVGhp
bmtpbmcgbW9yZSBhYm91dCB0aGlzLCBJIHdvdWxkIGdvIGZvciB0aGUgc2Vjb25kIG9wdGlvbi4K
RWl0aGVyIHdheSB3ZSB3aWxsIGhhdmUgdG8gYmUgcmVhZHkgdG8gZXhwbGFpbiB0byB0aGUgdXNl
cnMgd2h5IHdlIGhhdmUgCm1hZGUgdGhpcyBjaGFuZ2UsIGFuZCB0aGF0IHRoZXJlIGlzIG5vIHJl
YXNvbiBmb3IgdGhlbSB0byB0b3VjaCB0aGlzIAp2YWx1ZSBpbiB0aGUgZnV0dXJlLgoKLy8vam9u
CgoKCj4KPiBCUi9UdW9uZwo+PiAvLy9qb24KPj4KPj4+IEZpeGVzOiAxNmFkM2Y0MDIyYmIgKCJ0
aXBjOiBpbnRyb2R1Y2UgdmFyaWFibGUgd2luZG93IGNvbmdlc3Rpb24gY29udHJvbCIpCj4+PiBS
ZXBvcnRlZC1ieTogSG9hbmcgTGUgPGhvYW5nLmgubGVAZGVrdGVjaC5jb20uYXU+Cj4+PiBSZXBv
cnRlZC1ieTogVGhhbmcgTmdvIDx0aGFuZy5oLm5nb0BkZWt0ZWNoLmNvbS5hdT4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT4KPj4+IC0t
LQo+Pj4gICAgbmV0L3RpcGMvZXRoX21lZGlhLmMgfCAyICstCj4+PiAgICBuZXQvdGlwYy9saW5r
LmMgICAgICB8IDIgKy0KPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9ldGhfbWVkaWEuYyBi
L25ldC90aXBjL2V0aF9tZWRpYS5jCj4+PiBpbmRleCA4YjBiYjYwMDYwMmQuLjY3NWI5NDdlYWI4
OSAxMDA2NDQKPj4+IC0tLSBhL25ldC90aXBjL2V0aF9tZWRpYS5jCj4+PiArKysgYi9uZXQvdGlw
Yy9ldGhfbWVkaWEuYwo+Pj4gQEAgLTkzLDcgKzkzLDcgQEAgc3RydWN0IHRpcGNfbWVkaWEgZXRo
X21lZGlhX2luZm8gPSB7Cj4+PiAgICAJLnByaW9yaXR5CT0gVElQQ19ERUZfTElOS19QUkksCj4+
PiAgICAJLnRvbGVyYW5jZQk9IFRJUENfREVGX0xJTktfVE9MLAo+Pj4gICAgCS5taW5fd2luCT0g
VElQQ19ERUZfTElOS19XSU4sCj4+PiAtCS5tYXhfd2luCT0gVElQQ19NQVhfTElOS19XSU4sCj4+
PiArCS5tYXhfd2luCT0gVElQQ19ERUZfTElOS19XSU4sCj4+PiAgICAJLnR5cGVfaWQJPSBUSVBD
X01FRElBX1RZUEVfRVRILAo+Pj4gICAgCS5od2FkZHJfbGVuCT0gRVRIX0FMRU4sCj4+PiAgICAJ
Lm5hbWUJCT0gImV0aCIKPj4+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9saW5rLmMgYi9uZXQvdGlw
Yy9saW5rLmMKPj4+IGluZGV4IGVlM2I4ZDA1NzZiOC4uMjg4MzRkYWZkYzk4IDEwMDY0NAo+Pj4g
LS0tIGEvbmV0L3RpcGMvbGluay5jCj4+PiArKysgYi9uZXQvdGlwYy9saW5rLmMKPj4+IEBAIC0y
NjYyLDcgKzI2NjIsNyBAQCBpbnQgX190aXBjX25sX2FkZF9saW5rKHN0cnVjdCBuZXQgKm5ldCwg
c3RydWN0IHRpcGNfbmxfbXNnICptc2csCj4+PiAgICAJaWYgKG5sYV9wdXRfdTMyKG1zZy0+c2ti
LCBUSVBDX05MQV9QUk9QX1RPTCwgbGluay0+dG9sZXJhbmNlKSkKPj4+ICAgIAkJZ290byBwcm9w
X21zZ19mdWxsOwo+Pj4gICAgCWlmIChubGFfcHV0X3UzMihtc2ctPnNrYiwgVElQQ19OTEFfUFJP
UF9XSU4sCj4+PiAtCQkJbGluay0+d2luZG93KSkKPj4+ICsJCQlsaW5rLT5tYXhfd2luKSkKPj4+
ICAgIAkJZ290byBwcm9wX21zZ19mdWxsOwo+Pj4gICAgCWlmIChubGFfcHV0X3UzMihtc2ctPnNr
YiwgVElQQ19OTEFfUFJPUF9QUklPLCBsaW5rLT5wcmlvcml0eSkpCj4+PiAgICAJCWdvdG8gcHJv
cF9tc2dfZnVsbDsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3RpcGMtZGlzY3Vzc2lvbgo=
