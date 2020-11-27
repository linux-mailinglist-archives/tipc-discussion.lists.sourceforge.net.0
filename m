Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E047B2C68B0
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Nov 2020 16:28:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kiff7-0003b0-4e; Fri, 27 Nov 2020 15:27:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kifec-0003Y0-H1
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 15:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UGf7U+cwbrsftotX0EsmknVm7hAlVo54eux8qinqCxU=; b=GWkq7/RFQep2DLAqQgQWbtqUCX
 bc3w74sAAIyNEdPSwgRQ7cb4Tg8vnUvmzCQ+Li7wLOA4wBbnp7vVVoyyNggfrLQKKq2USifZcwo5/
 lgm0KCP4rPq2mCvkyFfGYkSKFPXYouROb1wWaVhe7I2ZMAo6sXIePw10KYRZ0fxmyVEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UGf7U+cwbrsftotX0EsmknVm7hAlVo54eux8qinqCxU=; b=C3GaNCIy3LRg6UhfxxZeXsZ6H4
 c+kb3LrK2mfqu/VkabKtbCu4L3LpGSrB317H8Aj6+9uo+zsZ6O9t4hJN/B7WDGNnpAVwuvw6esB4E
 v/GDYrwp+uxNroXYahHVLK7xnDvJi1dnGlyMEMqQj48T+novV0Vm6kYeEIfbvco0Fr5A=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kifeX-001aea-7C
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 15:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606490824;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UGf7U+cwbrsftotX0EsmknVm7hAlVo54eux8qinqCxU=;
 b=JQx1W7YZ824T6It06e+A5r/KD+4fDqeDCBs1T7YOdYkzJ6UiQ2oqVn1uohw7BqV8f/tXhb
 gTPF5kQ1lvSbnV1Q2pTptrmViglnC5SlPQOoJFQfOK9eePcmQfU8i1qK/9vyVW6xYU5+x/
 AumwaFCBu+fDBAk6rmSvN6lB8YX9yKY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-4_xe3DiCNq661kNCgUBu4g-1; Fri, 27 Nov 2020 10:27:02 -0500
X-MC-Unique: 4_xe3DiCNq661kNCgUBu4g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE16E1005D50;
 Fri, 27 Nov 2020 15:27:00 +0000 (UTC)
Received: from [10.10.113.94] (ovpn-113-94.rdu2.redhat.com [10.10.113.94])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8159E5D9D3;
 Fri, 27 Nov 2020 15:26:59 +0000 (UTC)
From: Jon Maloy <jmaloy@redhat.com>
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201127050111.4595-1-hoang.h.le@dektech.com.au>
 <d08c5950-aa88-100d-f47a-1ad3a025d3cc@redhat.com>
Message-ID: <9709886f-1d40-bab6-6c14-88d01ccf423b@redhat.com>
Date: Fri, 27 Nov 2020 10:26:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <d08c5950-aa88-100d-f47a-1ad3a025d3cc@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kifeX-001aea-7C
Subject: Re: [tipc-discussion] [net] tipc: fix incompatiable mtu of
 transmission
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

cy9pbmNvbXBhdGlhYmxlL2luY29tcGF0aWJsZQoKClN0aWxsIGFja2VkCi8vL2pvbgoKT24gMTEv
MjcvMjAgMTA6MTQgQU0sIEpvbiBNYWxveSB3cm90ZToKPgo+Cj4gT24gMTEvMjcvMjAgMTI6MDEg
QU0sIEhvYW5nIEh1dSBMZSB3cm90ZToKPj4gRnJvbTogSG9hbmcgTGUgPGhvYW5nLmgubGVAZGVr
dGVjaC5jb20uYXU+Cj4+Cj4+IEluIGNvbW1pdCA2ODJjZDNjZjk0NmI2Cj4+ICgidGlwYzogY29u
ZmdpdXJlIGFuZCBhcHBseSBVRFAgYmVhcmVyIE1UVSBvbiBydW5uaW5nIGxpbmtzIiksIHdlCj4+
IGludHJvZHVjZWQgYSBmdW5jdGlvbiB0byBjaGFuZ2UgVURQIGJlYXJlciBNVFUgYW5kIGFwcGxp
ZWQgdGhpcyBuZXcgCj4+IHZhbHVlCj4+IGFjcm9zcyBleGlzdGluZyBwZXItbGluay4gSG93ZXZl
ciwgd2UgZGlkIG5vdCBhcHBseSB0aGlzIG5ldyBNVFUgCj4+IHZhbHVlIGF0Cj4+IG5vZGUgbGV2
ZWwuIFRoaXMgbGVhZCB0byBwYWNrZXQgZHJvcHBlZCBhdCBsaW5rIGxldmVsIGlmIGl0cyBzaXpl
IGlzCj4+IGdyZWF0ZXIgdGhhbiBuZXcgTVRVIHZhbHVlLgo+Pgo+PiBUbyBmaXggdGhpcyBpc3N1
ZSwgd2UgYWxzbyBhcHBseSB0aGlzIG5ldyBNVFUgdmFsdWUgZm9yIG5vZGUgbGV2ZWwuCj4+Cj4+
IEZpeGVzOiA2ODJjZDNjZjk0NmI2ICgidGlwYzogY29uZmdpdXJlIGFuZCBhcHBseSBVRFAgYmVh
cmVyIE1UVSBvbiAKPj4gcnVubmluZyBsaW5rcyIpCj4+IFNpZ25lZC1vZmYtYnk6IEhvYW5nIExl
IDxob2FuZy5oLmxlQGRla3RlY2guY29tLmF1Pgo+PiAtLS0KPj4gwqAgbmV0L3RpcGMvbm9kZS5j
IHwgMiArKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9uZXQvdGlwYy9ub2RlLmMgYi9uZXQvdGlwYy9ub2RlLmMKPj4gaW5kZXggY2Q2N2I3
ZDUxNjlmLi45ZjY5NzVkZDc4NzMgMTAwNjQ0Cj4+IC0tLSBhL25ldC90aXBjL25vZGUuYwo+PiAr
KysgYi9uZXQvdGlwYy9ub2RlLmMKPj4gQEAgLTIxODIsNiArMjE4Miw4IEBAIHZvaWQgdGlwY19u
b2RlX2FwcGx5X3Byb3BlcnR5KHN0cnVjdCBuZXQgKm5ldCwgCj4+IHN0cnVjdCB0aXBjX2JlYXJl
ciAqYiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAocHJvcCA9PSBUSVBD
X05MQV9QUk9QX01UVSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aXBj
X2xpbmtfc2V0X210dShlLT5saW5rLCBiLT5tdHUpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+
PiArwqDCoMKgwqDCoMKgwqAgLyogVXBkYXRlIE1UVSBmb3Igbm9kZSBsaW5rIGVudHJ5ICovCj4+
ICvCoMKgwqDCoMKgwqDCoCBlLT5tdHUgPSB0aXBjX2xpbmtfbXNzKGUtPmxpbmspOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgdGlwY19ub2RlX3dyaXRlX3VubG9jayhuKTsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIHRpcGNfYmVhcmVyX3htaXQobmV0LCBiZWFyZXJfaWQsICZ4bWl0cSwgJmUtPm1hZGRy
LCBOVUxMKTsKPj4gwqDCoMKgwqDCoCB9Cj4gQWNrZWQtYnk6IEpvbiBNYWxveSA8am1hbG95QHJl
ZGhhdC5jb20+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4gdGlwYy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
