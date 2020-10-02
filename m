Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C6281EBE
	for <lists+tipc-discussion@lfdr.de>; Sat,  3 Oct 2020 00:58:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kOU08-0002Iv-OQ; Fri, 02 Oct 2020 22:58:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kOU05-0002IF-On
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 22:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C9o2X/O/VlalwVq5KUE+CkdNuA0jwDYfmZpEuUc1tk8=; b=kFKhaDlsaTSSGMVzRYDfT56pBi
 q2ma26hJIOs1o+E15ehjZ5+Y5gjRdx2c7fWvwarL7dTKGQ91n27V/jTzNougnIDF3bn0b//nWySD1
 r7E8GX5o/vcSfHlLT0xN1oqOOwAko65liPz8MNZ3IXWirnf6oAYf5LJEHjBWkwEjvr/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C9o2X/O/VlalwVq5KUE+CkdNuA0jwDYfmZpEuUc1tk8=; b=REgJC0RXQJxZANcyoegTVCe5r4
 BZRTbERbDy6pqqQ/1TZ8zwfRd+2Qn9OteQtvpzDqCe7LilEhIws2zYPQkfPfD1+/zen/U3oPqshak
 Y+DQzMHWGi3ETIMuJFj7ppo9vqjWHTvLKzymx5UsaR8uOK7MffuDGCtNwAC5KXlOp674=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kOU00-00Eg9C-4l
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 22:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601679467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C9o2X/O/VlalwVq5KUE+CkdNuA0jwDYfmZpEuUc1tk8=;
 b=EP6ANmbvLP/GgIj1NGRPOauVcx0R1c5g8PigxjEzY17IN36qppEpH9eZG040JVSLzcFnBb
 C1dcr1ra1ZeMMWl09fnf1HQ/DZeyj2SAE1YCUWudtP4+aZwVW8E2tskiXegk82c7WZu9dv
 hxnSv6O3GVunS3T3KRaFKGtn3dJxerY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-tGuEtgcQNwaOlnc7iSIYxQ-1; Fri, 02 Oct 2020 18:57:41 -0400
X-MC-Unique: tGuEtgcQNwaOlnc7iSIYxQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B4F6805EE4;
 Fri,  2 Oct 2020 22:57:40 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57859702E7;
 Fri,  2 Oct 2020 22:57:39 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, tipc-dek <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
 <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <1033b2cd-488e-dff3-e2a1-156b4cace1ce@redhat.com>
Date: Fri, 2 Oct 2020 18:57:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tipc.py]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kOU00-00Eg9C-4l
Subject: Re: [tipc-discussion] tipc.py
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

CgpPbiAxMC8xLzIwIDExOjA0IFBNLCBIb2FuZyBIdXUgTGUgd3JvdGU6Cj4gSGkgSm9uLAo+Cj4g
SSd2ZSBkb25lIHRoaXMgYSBsb25nIHRpbWUgYWdvOgo+IDUwNTdmOGJiNGRlMCB0aXBjdXRpbHM6
IGludHJvZHVjZSBweXRob24gYXBpCj4KPiBCYXNpY2FsbHksIGl0IHdvcmtzIHdpdGggUHl0aG9u
IDIuCj4KPiBSZWdhcmRzLAo+IEhvYW5nClNvcnJ5LCBJIG1peGVkIGl0IHVwIGFuZCB0aG91Z2h0
IGl0IHdhcyBUdW9uZy4gVGhlIHJlYXNvbiBJIHNhaWQgaXQgCmxvb2tlZCAidW5maW5pc2hlZCIg
d2FzIGFsbCB0aGUgIlRPRE86IiBsaW5lcyBJIHNlZSBpbiB0aXBjLnB5LgpXaGF0IGFyZSB0aG9z
ZT8KCi8vL2pvbgoKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSm9uIE1h
bG95IDxqbWFsb3lAcmVkaGF0LmNvbT4KPj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDIsIDIwMjAg
NDo1NiBBTQo+PiBUbzogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgdGlw
Yy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1PjsgWGluIExvbmcgPGx1Y2llbi54aW5AZ21h
aWwuY29tPjsgWWluZyBYdWUKPj4gPHlpbmcueHVlQHdpbmRyaXZlci5jb20+Cj4+IFN1YmplY3Q6
IHRpcGMucHkKPj4KPj4gSSBhbSB1cGRhdGluZyB0aGUgcHJvZ3JhbW1lcidzIG1hbnVhbCwgYW5k
IHJlYWxpemVkIHRoYXQgdGhlIFB5dGhvbiBBUEkKPj4gaXMgbWlzc2luZy4KPj4gU2luY2UgdGhl
cmUgYXJlIHNvIG1hbnkgcHJvZ3JhbW1lcnMga25vd2luZyBQeXRob24gbm93YWRheXMsIGJ1dCBu
b3QgQywKPj4gSSB0aGluayBpdCB3b3VsZAo+PiBiZSB2ZXJ5IHVzZWZ1bCB0byBoYXZlIHRoaXMg
QVBJIGluIHRoZSBtYW51YWwsIHNvIHRob3NlIHByb2dyYW1tZXJzIGNhbgo+PiBnZXQgYSBmZWVs
aW5nCj4+IGZvciBob3cgc2ltcGxlIGl0IHRvIHVzZSBUSVBDLgo+Pgo+PiBUdW9uZyBzdGFydGVk
IGRldmVsb3BtZW50IG9mIGFuIEFQSSBiYXNlZCBvbiB0aGUgbGlidGlwYyBDLUFQSSwgYnV0IGl0
Cj4+IHNlZW1zIHRvIG1lIGl0IHdhcyBuZXZlciBmaW5pc2hlZC4KPj4gSG93ZXZlciwgUHl0aG9u
IGRvZXMgc2luY2UgYSBsb25nIHRpbWUgaGF2ZSBuYXRpdmUgVElQQyBzdXBwb3J0LAo+PiBhbGxl
Z2VkbHkgYm90aCBpbiBQeXRob24gMiBhbmQgUHl0b24gMy4KPj4gSSBoYWQgbmV2ZXIgc2VlbiB0
aGF0IEFQSSB1bnRpbCBub3csIGJ1dCBhZnRlciBzb21lIGdvb2dsaW5nIEkgY2FtZSBvdmVyCj4+
IHRoZSBmb2xsb3dpbmcgbGluaywgdGhhdCBzZWVtcyB0byBjb250YWluCj4+IHRoYXQgbmF0aXZl
IGltcGxlbWVuYXRpb246Cj4+Cj4+IGh0dHBzOi8vYmxpdGlyaS5jb20uYXIvcC9weXRpcGMvCj4+
Cj4+IEkgd29uZGVyIGlmIGFueWJvZHkgaGFzIHRoZSB0aW1lIHRvIHRyeSB0aGlzIG9uZSwgYW5k
IHZlcmlmeSwgdXNpbmcgdGhlCj4+IGV4YW1wbGVzLCB0aGF0IGl0IHJlYWxseSB3b3Jrcy4KPj4g
SXQgd291bGQgYmUgZW1iYXJyYXNzaW5nIHRvIGFkZCB0aGlzIHRvIHRoZSBtYW51YWwgaWYgaXQg
dHVybnMgb3V0IGl0Cj4+IGRvZXNuJ3Qgd29yay4KPj4KPj4gUmVnYXJkcwo+PiAvLy9qb24KPj4K
Pj4gUFMuIERvZXMgYW55Ym9keSB2b2x1bnRlZXIgdG8gYmUgYmVjb21lIGNvLW1haW50YWluZXIg
b2YgdGhlIGhvbWUgcGFnZQo+PiBhbmQgcHJvamVjdCBwYWdlCj4+ICAgwqDCoMKgwqDCoCBhdCBT
b3VyY2VGb3JnZT8gSSB0aGluayB3ZSBzaG91bGQgZXZlbiBjb25zaWRlciBtb3ZpbmcgaXQgdG8K
Pj4gR2l0TGFiIG9yIEdpdEh1Yi4KPj4gICDCoMKgwqDCoMKgIFNpbmNlIHdlIGhhdmUgb3VyIG93
biBkb21haW4gKHRpcGMuaW8pIHRoYXQgY291bGQgZWFzaWx5IGJlCj4+IHJlLXN0ZWVyZWQgdG8g
YSBkaWZmZXJlbnQKPj4gICDCoMKgwqDCoMKgIGhvc3Qgc3lzdGVtLgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
