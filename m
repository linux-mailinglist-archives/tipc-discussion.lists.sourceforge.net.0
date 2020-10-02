Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F00EB281EC5
	for <lists+tipc-discussion@lfdr.de>; Sat,  3 Oct 2020 00:59:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kOU1j-0002Uk-U2; Fri, 02 Oct 2020 22:59:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kOU1j-0002UZ-A3
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 22:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MmerLIiQoRKV1wDttrfV1u2L2Lltjs66j/yESHIWdIY=; b=RufaHQmMD6qwW6wylAztItG4Qw
 5TycfhWXm/gYWauT634S61rtpYPpTMSthLjhTKnkMGb1uKS8jLHV6A8SZ4osxnXDTDdEusAkUyqFi
 Unz2cwCeBwRFxzkVyyzUg8lmko8DPClzJ8pprzstmJNG2VNRnFh4C5NlBgYtBIuBKzxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MmerLIiQoRKV1wDttrfV1u2L2Lltjs66j/yESHIWdIY=; b=kFYf/mxw2+iWBKecy3fw2bWksV
 KzrnT9M0c7OPi3Uosejw8KdNS2Gxa/PS7SMM6BqIN0NgFIf99hbJT7DPIBNINzd7YMCqP1st/UOPx
 RNi35Qws/XgBQdk4bUKl+xVmykHCLzb2FtjDCQl7oj/+TVvK2OEsSZ5zqOXbYkVpf8zY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kOU1Y-000P3Z-Jx
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 22:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601679570;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MmerLIiQoRKV1wDttrfV1u2L2Lltjs66j/yESHIWdIY=;
 b=XRRVnV1v+hPJsuDSIyGqRi0raFfPA7+DP3paxnOJ3qBl6r1LfZcTUs8wmy8DkrOv9OwqGN
 B+c270kETc4VimpCu9xf2XMVcrhXAa6n/GZ7swxpWTFG9pX0u9sjyE5D10Nn6yx6UQQQGi
 iIELniIzie4fD0VHGUkBK3UKbJIKTrE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-4m7hVRC5MR27TRDqo4durg-1; Fri, 02 Oct 2020 18:59:26 -0400
X-MC-Unique: 4m7hVRC5MR27TRDqo4durg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B3208015B1;
 Fri,  2 Oct 2020 22:59:25 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D976E75120;
 Fri,  2 Oct 2020 22:59:24 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, tipc-dek <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
 <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <eb659d57-3aa4-226e-0e06-0a52db96df36@redhat.com>
Date: Fri, 2 Oct 2020 18:59:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
X-Headers-End: 1kOU1Y-000P3Z-Jx
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
IDIuCkRvIHlvdSB0aGluayBpdCB5b3Ugd291bGQgaGF2ZSB0aW1lIHRvIGRvIHRoaXMgZm9yIFB5
dGhvbiAzPwpQeXRob24gMiBpcyBwcmFjdGljYWxseSBkZWFkIG5vdywgYXMgd2UgYWxsIGtub3cu
CgpSZWdhcmRzCi8vL2pvbgo+Cj4gUmVnYXJkcywKPiBIb2FuZwo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPgo+PiBTZW50
OiBGcmlkYXksIE9jdG9iZXIgMiwgMjAyMCA0OjU2IEFNCj4+IFRvOiB0aXBjLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0OyB0aXBjLWRlayA8dGlwYy1kZWtAZGVrdGVjaC5jb20uYXU+
OyBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+OyBZaW5nIFh1ZQo+PiA8eWluZy54dWVA
d2luZHJpdmVyLmNvbT4KPj4gU3ViamVjdDogdGlwYy5weQo+Pgo+PiBJIGFtIHVwZGF0aW5nIHRo
ZSBwcm9ncmFtbWVyJ3MgbWFudWFsLCBhbmQgcmVhbGl6ZWQgdGhhdCB0aGUgUHl0aG9uIEFQSQo+
PiBpcyBtaXNzaW5nLgo+PiBTaW5jZSB0aGVyZSBhcmUgc28gbWFueSBwcm9ncmFtbWVycyBrbm93
aW5nIFB5dGhvbiBub3dhZGF5cywgYnV0IG5vdCBDLAo+PiBJIHRoaW5rIGl0IHdvdWxkCj4+IGJl
IHZlcnkgdXNlZnVsIHRvIGhhdmUgdGhpcyBBUEkgaW4gdGhlIG1hbnVhbCwgc28gdGhvc2UgcHJv
Z3JhbW1lcnMgY2FuCj4+IGdldCBhIGZlZWxpbmcKPj4gZm9yIGhvdyBzaW1wbGUgaXQgdG8gdXNl
IFRJUEMuCj4+Cj4+IFR1b25nIHN0YXJ0ZWQgZGV2ZWxvcG1lbnQgb2YgYW4gQVBJIGJhc2VkIG9u
IHRoZSBsaWJ0aXBjIEMtQVBJLCBidXQgaXQKPj4gc2VlbXMgdG8gbWUgaXQgd2FzIG5ldmVyIGZp
bmlzaGVkLgo+PiBIb3dldmVyLCBQeXRob24gZG9lcyBzaW5jZSBhIGxvbmcgdGltZSBoYXZlIG5h
dGl2ZSBUSVBDIHN1cHBvcnQsCj4+IGFsbGVnZWRseSBib3RoIGluIFB5dGhvbiAyIGFuZCBQeXRv
biAzLgo+PiBJIGhhZCBuZXZlciBzZWVuIHRoYXQgQVBJIHVudGlsIG5vdywgYnV0IGFmdGVyIHNv
bWUgZ29vZ2xpbmcgSSBjYW1lIG92ZXIKPj4gdGhlIGZvbGxvd2luZyBsaW5rLCB0aGF0IHNlZW1z
IHRvIGNvbnRhaW4KPj4gdGhhdCBuYXRpdmUgaW1wbGVtZW5hdGlvbjoKPj4KPj4gaHR0cHM6Ly9i
bGl0aXJpLmNvbS5hci9wL3B5dGlwYy8KPj4KPj4gSSB3b25kZXIgaWYgYW55Ym9keSBoYXMgdGhl
IHRpbWUgdG8gdHJ5IHRoaXMgb25lLCBhbmQgdmVyaWZ5LCB1c2luZyB0aGUKPj4gZXhhbXBsZXMs
IHRoYXQgaXQgcmVhbGx5IHdvcmtzLgo+PiBJdCB3b3VsZCBiZSBlbWJhcnJhc3NpbmcgdG8gYWRk
IHRoaXMgdG8gdGhlIG1hbnVhbCBpZiBpdCB0dXJucyBvdXQgaXQKPj4gZG9lc24ndCB3b3JrLgo+
Pgo+PiBSZWdhcmRzCj4+IC8vL2pvbgo+Pgo+PiBQUy4gRG9lcyBhbnlib2R5IHZvbHVudGVlciB0
byBiZSBiZWNvbWUgY28tbWFpbnRhaW5lciBvZiB0aGUgaG9tZSBwYWdlCj4+IGFuZCBwcm9qZWN0
IHBhZ2UKPj4gICDCoMKgwqDCoMKgIGF0IFNvdXJjZUZvcmdlPyBJIHRoaW5rIHdlIHNob3VsZCBl
dmVuIGNvbnNpZGVyIG1vdmluZyBpdCB0bwo+PiBHaXRMYWIgb3IgR2l0SHViLgo+PiAgIMKgwqDC
oMKgwqAgU2luY2Ugd2UgaGF2ZSBvdXIgb3duIGRvbWFpbiAodGlwYy5pbykgdGhhdCBjb3VsZCBl
YXNpbHkgYmUKPj4gcmUtc3RlZXJlZCB0byBhIGRpZmZlcmVudAo+PiAgIMKgwqDCoMKgwqAgaG9z
dCBzeXN0ZW0uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by90aXBjLWRpc2N1c3Npb24K
