Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DD53A27F8
	for <lists+tipc-discussion@lfdr.de>; Thu, 10 Jun 2021 11:12:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lrGjY-0006QP-GZ; Thu, 10 Jun 2021 09:12:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lrGjW-0006QG-A6
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mz888PGr3bhoVkjzBvi1JMvGV9uPrCCgKM642MMZF3U=; b=Z2cokWuSLNIMcq7tLw9lJjiP2W
 KDhwKDXThyF2fBnvhj+zuI3qLJBpkcaMaPFmjDq0Bl/9+QxcY2gFhjKmSftjCarvFE51LMml1+8+2
 aU5HvAbvE7Zfmc2f6Rlua5Udal02hPFAXG4S0yVnaLcPXVaQOFnRtMUBI0rEZmDImny0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mz888PGr3bhoVkjzBvi1JMvGV9uPrCCgKM642MMZF3U=; b=WlJ2cOXDpuylDBKFmvSPGTKZB+
 6yjqjadH6dQB5nhXBSD5PhqYkG29aVMCpoAl4wg1ZnyvwSr5x0/kbkv9ZSaySrxT9MqJzLhk3QCGd
 y9gsrxIHb5yzwK1lqs/UbF7+bYvNkZjc/Nq4XI6rK0j2UnxTriKC08BIB8OJ1VzyUNYA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lrGjV-0001Bo-9s
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623316328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mz888PGr3bhoVkjzBvi1JMvGV9uPrCCgKM642MMZF3U=;
 b=g9e1sHVm+I7oAFkCJkHTVBX8He2K8jH3jY0m6wywvrj317AP0rCDbqHaXANUJmPqVYbXhr
 S5gVrVjGVu/qAbOOigzljFH/SbeKt9HR6JsaLuPZQkFHZM0D0imQOgWfkN0e9+TEUIiLS/
 PGtvdZiX9cGFReg2cuZWqdreBrSqUDs=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-fYZZHp8rOAWgQNvHSMzV5Q-1; Thu, 10 Jun 2021 05:12:07 -0400
X-MC-Unique: fYZZHp8rOAWgQNvHSMzV5Q-1
Received: by mail-qk1-f198.google.com with SMTP id
 81-20020a370e540000b02903aacdbd70b7so2483802qko.23
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 10 Jun 2021 02:12:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mz888PGr3bhoVkjzBvi1JMvGV9uPrCCgKM642MMZF3U=;
 b=DvwU15U9kL8hjm/dKoPxWOCQelWoN0jpqzsR1SpnoMipQlkvWiyumNfzcRnYT6RWDZ
 1ujm1Zk0QgDmzqN1o/a9iW9Q7RSSHx6XskYlvyKkOwkiR/HrY7ASSim9MCWNJjQZZlNl
 rU0hqmAdyf2XjCQQ5r908HiGm9+DoCG4MdStBp2H+UwDhAMfITQT3lB5Zn4lq1LbZz7z
 6NPwwDIY58hOzods2tN8CyUXGpGuWQtcKHyifTckl9xpVImRq34VETFM/5vFK0tHjwef
 rjEVP6nl6TOTFjIDIBDPyzbSIGWWDOzTGklPAmMVthkt9PhjsKqFv3PsqNoOIFvmNwdo
 kC+w==
X-Gm-Message-State: AOAM533qsM1zh+9spr8kirHb81wZFQFnqDXOU5WtjcsZBBxEVgcZzV2c
 fipBkAu4GMRs2ZGlR2On1N+N/OwLAFAL0eIFpSndSpGQQr7o4aEDCXzovFHU6RI5RurfTobUUok
 fnxjPkpiNBlpoDjtnJn+g1MamXZCtXH2CSoI6
X-Received: by 2002:a37:b6c4:: with SMTP id g187mr3629444qkf.491.1623316326757; 
 Thu, 10 Jun 2021 02:12:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1x6We9j1zn1Rl1N4aSoDTigcgB7uyuIt5KGnHxQMtHyGsvhQcYo/718gKNuaxJNxNi8zxxw==
X-Received: by 2002:a37:b6c4:: with SMTP id g187mr3629429qkf.491.1623316326549; 
 Thu, 10 Jun 2021 02:12:06 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id h17sm1853042qtk.23.2021.06.10.02.12.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Jun 2021 02:12:06 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <20210609103251.534270-1-dong.menglong@zte.com.cn>
 <672e78df-5bb0-78eb-3022-f942978138f5@redhat.com>
 <CADxym3ZCV94BzHviTxK1G5Kt1Z+1LbbNr6=B=9GjBqGfzrk_Kw@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <caa07557-985c-7e50-5b80-d8cdcd902e19@redhat.com>
Date: Thu, 10 Jun 2021 05:12:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADxym3ZCV94BzHviTxK1G5Kt1Z+1LbbNr6=B=9GjBqGfzrk_Kw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lrGjV-0001Bo-9s
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
Cc: Xin Long <lxin@redhat.com>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Ck9uIDYvOS8yMSA4OjU2IEFNLCBNZW5nbG9uZyBEb25nIHdyb3RlOgo+IE9uIFdlZCwgSnVuIDks
IDIwMjEgYXQgNjo0NyBQTSBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPiB3cm90ZToKPj4K
Pj4KPj4gT24gNi85LzIxIDY6MzIgQU0sIG1lbmdsb25nOC5kb25nQGdtYWlsLmNvbSB3cm90ZToK
Pj4+IEZyb206IE1lbmdsb25nIERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbj4KPj4+Cj4+
PiBJbiB0aGUgZmlyc3QgcGF0Y2gsIEZCX01UVSBpcyByZWRlZmluZWQgdG8gbWFrZSBzdXJlIGRh
dGEgc2l6ZSB3aWxsIG5vdAo+Pj4gZXhjZWVkIFBBR0VfU0laRS4gQmVzaWRlcywgSSByZW1vdmVk
IHRoZSBhbGlnbm1lbnQgZm9yIGJ1Zl9zaXplIGluCj4+PiB0aXBjX2J1Zl9hY3F1aXJlLCBiZWNh
dXNlIHNrYl9hbGxvY19mY2xvbmUgd2lsbCBkbyB0aGUgYWxpZ25tZW50IGpvYi4KPj4+Cj4+PiBJ
biB0aGUgc2Vjb25kIHBhdGNoLCBJIHJlbW92ZWQgYWxpZ24oKSBpbiBtc2cuYyBhbmQgcmVwbGFj
ZSBpdCB3aXRoCj4+PiBBTElHTigpLgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+IE1lbmdsb25nIERvbmcg
KDIpOgo+Pj4gICAgIG5ldDogdGlwYzogZml4IEZCX01UVSBlYXQgdHdvIHBhZ2VzCj4+PiAgICAg
bmV0OiB0aXBjOiByZXBsYWNlIGFsaWduKCkgd2l0aCBBTElHTiBpbiBtc2cuYwo+Pj4KPj4+ICAg
IG5ldC90aXBjL2JjYXN0LmMgfCAgMiArLQo+Pj4gICAgbmV0L3RpcGMvbXNnLmMgICB8IDMxICsr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPj4+ICAgIG5ldC90aXBjL21zZy5oICAgfCAg
MyArKy0KPj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRp
b25zKC0pCj4+Pgo+PiBOQUNLLgo+PiBZb3UgbXVzdCBoYXZlIG1pc3NlZCBteSBsYXN0IG1haWwg
YmVmb3JlIHlvdSBzZW50IG91dCB0aGlzLiAgV2UgaGF2ZSB0bwo+PiBkZWZpbmUgYSBzZXBhcmF0
ZSBtYWNybyBmb3IgYmNhc3QuYywgc2luY2UgdGhvc2UgYnVmZmVycyBzb21ldGltZXMgd2lsbAo+
PiBuZWVkIGVuY3J5cHRpb24uCj4+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLgo+IE5vLCBubywg
SSBkaWRuJ3QgbWlzcyB5b3VyIG1haWwuIEkgdGhpbmsgaXQgY2FuIG1ha2UgdXMgY2xlYXIgYWJv
dXQgd2hhdCBhbmQgaG93Cj4gdG8gZG8gYnkgc2VuZGluZyB0aGUgVjIgcGF0Y2hlcy4KPgo+IFNv
IHdlIGNhbiBkZWZpbmUgdHdvIHZlcnNpb25zICdGQl9NVFUnIGZvciBiY2FzdC5jIGFuZCBtc2cu
Yywgc3VjaCBhcyBDUllQVE9fTVRVCj4gYW5kIE5PTl9DUllQVE9fTVRVLiBBbmQgd2l0aGluIHRp
cGNfYnVmX2FjcXVpcmUoKSwgd2UgZGVjaWRlIHdoaWNoIHZlcnNpb24KPiBCVUZfSEVBRFJPT00g
dG8gdXNlIGJ5IHRoZSBkYXRhIHNpemU/IFN1Y2ggYXM6Cj4KPiBpbnQgYnVmX3NpemU7Cj4gaWYg
KElTX0VOQUJMRUQoQ09ORklHX1RJUENfQ1JZUFRPKSAmJiBzaXplID09IE5PTl9DUllQVE9fTVRV
KSB7Cj4gICAgICBidWZfc2l6ZSA9IHNpemUgKyBCVUZfSEVBRFJPT01fbm9uLWNyeXB0byArIEJV
Rl9UQUlMUk9PTV9ub24tY3J5cHRvOwo+IH0gZWxzZSB7Cj4gICAgICBidWZfc2l6ZSA9IHNpemUg
KyBCVUZfSEVBRFJPT01fY3J5cHRvICsgQlVGX1RBSUxST09NX2NyeXB0bzsKPiB9Cj4KPiBJcyB0
aGlzIGZlZWxpbmc/Cj4gKEl0J3MgYSBsaXR0bGUgd2VpcmQgdG8gY2hlY2sgd2hldGhlciB0aGUg
ZGF0YSBzaG91bGQgYmUgY3J5cHRvIGJ5IGRhdGEgc2l6ZSkuCj4KPiBUaGFua3MhCj4gTWVuZ2xv
bmcgRG9uZwooUmVtb3ZlZCBuZXRkZXYsIERhdmlkIE1pbGxlciBldGMgZnJvbSB0aHJlYWQpCgpJ
IHRoaW5rIG91ciBtYWluIG1pc3Rha2UgaXMgdGhhdCB3ZSBhcmUgdHJ5aW5nIHRvICJjb21wZW5z
YXRlIiBmb3IgYSAKYmVoYXZpb3IgaW4gdGlwY19idWZfYWNxdWlyZSgpIHRoYXQgZG9lbnMndCBm
aXQgb3VyIHB1cnBvc2VzLgoKV2hhdCBpZiB3ZSBkbyB0aGUgZm9sbG93aW5nOgoxKSBXZSBkZWZp
bmUgQlVGX0hFQURST09NIGFuZCBCVUZfVEFJTFJPT00gYXMgd2UgZG8gbm93LCBwbHVzIGEgRkJf
TVRVIAphcyB5b3Ugc3VnZ2VzdCwgYWxsIGluc2lkZSBtc2cuYy4KMikgV2UgY3JlYXRlIGEgbmV3
IGlubGluZSBmdW5jdGlvbiB0aXBjX2FsbG9jX3NrYihpbnQgaGVhZHJvb20sIGludCAKdGFpbHJv
b20sIGludCBzaXplKSBpbiBtc2cuYwogwqDCoMKgwqAgVGhpcyBmdW5jdGlvbiBkb2VzIHRoZSBq
b2IgdGhhdCB0aXBjX2J1Zl9hY3FpcmUoKSBkb2VzIG5vdy4KMykgV2UgbGV0IHRpcGNfYnVmX2Fj
cXVpcmUoKSBjYWxsIHRoaXMgZnVuY3Rpb24gYXMgCnRpcGNfYWxsb2Nfc2tiKEJVRl9IRUFEUk9P
TSwgQlVGX1RBSUxST09NLCBzaXplKTsKIMKgwqDCoCBBbHRlcm5hdGl2ZWx5LCB3ZSBza2lwIHRo
ZSBCVUZfSEVBRFJPT00vQlVGX1RBSUxST09NIG1hY3JvcyAKYWx0b2dldGhlciBhbmRtYWtlIHRo
ZSBjb2RlIGluIHRpcGNfYnVmX2FjcXVpcmUoKSBjb25kaXRpb25hbCBhcyB5b3UgCmRpZCwgYnV0
IHdpdGhvdXQgdGVzdGluZyBmb3Igc2l6ZS4gQWN0dWFsbHksIEkgdGhpbmsgSSBsaWtlIHRoaXMg
YmV0dGVyLgo0KSBXZSBsZXQgdGhlIGZhbGxiYWNrIGZ1bmN0aW9uIGluIG1zZy5jIGNhbGwgaXQg
YXMgCnRpcGNfYWxsb2Nfc2tiKExMX01BWF9IRUFERVIgKyA0OCwgMCwgT05FUEFHRV9TS0IpOwo1
KSBXZSBsZXQgdGhlIHVzZXIgaW4gYmNhc3QuYyBnZXQgYWNjZXMgdG8gdGhlIGNhbGN1bGF0ZWQg
dmFsdWUgb2YgCkZCX01UVSBhcyBhIGZ1bmN0aW9uIG9yIGdsb2JhbCB2YWx1ZSwgbGlrZSB5b3Ug
ZGlkIGluIHYyLgoKSSBzdWdnZXN0IHlvdSBzZW5kIHYzIHRvIHRpcGMtZGlzY3Vzc2lvbiAoaWYg
eW91IGFyZSBhIG1lbWJlcikgYW5kIHRoZSAKcmVjaXBpZW50cyBvZiB0aGlzIG1haWwgZmlyc3Qs
IHNvIHdlIGRvbid0IHNwYW0gdGhlIG5ldGRldiBsaXN0IHdpdGggCmludGVybWVkaWF0ZSB2ZXJz
aW9ucyBvZiB0aGlzIHNlcmllcy4KCi8vL2pvbgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBj
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
