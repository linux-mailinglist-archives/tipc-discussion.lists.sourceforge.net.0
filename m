Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F01406053
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Sep 2021 02:08:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mOU68-0001KV-Ug; Fri, 10 Sep 2021 00:08:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mOU67-0001KP-KO
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 00:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CDAnHHv4zexC0mIvzeqrLimfkXqodpy4Vig+bW91mbQ=; b=AhA/q/YywbRkRaT90ZteEMvQd2
 ewWGrhJSwP9IAhddXdd+8DNVHg9ssULbytUZ1KiN6URWAB/VjZoNgY7HignnO98PKrFJzDT2GSez5
 AN219VGhlqdS2ApMFhroJHXbpmRhu41XQePOyORmu4YU2i0Tt4N/q6e4O9QyTAMtAtE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CDAnHHv4zexC0mIvzeqrLimfkXqodpy4Vig+bW91mbQ=; b=CF+/ktuVJsxR41k+SEUvt8PfkI
 ROk9CNUD0RjZ2TT+WKBRbIEEQ9fZAJcSBOVyxhJY7OazCbld7u3+qchYbfTn2SMjH5DH7m5x8MyID
 39UFAVgqiK9cDolVYhcmea08XZo1k4WXnFSj0wKyP7GJanmA6j0Ehzdja6a5QzrlK4J4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOU65-005Rd4-Sn
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 00:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631232524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CDAnHHv4zexC0mIvzeqrLimfkXqodpy4Vig+bW91mbQ=;
 b=RlL86ORMxn5tjWCqVZ+QL3NZ8hbQs+CfZ6ljuRtUJMFEB7vHyZxN2oGlcPpnyunbHFUUtW
 jwh9xyNFlonJshZ2rGpebMns+hwajRNGHt0HCnO2w18pmgcqQ+8wsthO45O6JJGlezRByI
 15n1eUJxZNbX4qPbUk++qByp5Rl9nXA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-CoeViv33O5SCvHV2jz9rsg-1; Thu, 09 Sep 2021 20:08:43 -0400
X-MC-Unique: CoeViv33O5SCvHV2jz9rsg-1
Received: by mail-qk1-f197.google.com with SMTP id
 23-20020a05620a071700b00426392c0e6eso358251qkc.4
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 09 Sep 2021 17:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CDAnHHv4zexC0mIvzeqrLimfkXqodpy4Vig+bW91mbQ=;
 b=RnoK9LSZpiRHbCevs8/k8cdLDvuBtKqt6FtTfMDnN9w+/301effxsUh2XudnMXYhd5
 Ttkpu5gVHJLqYQKJlYbkq9VwfFVBBP9tXXZjxJzgW2G3PZ3YofoOeJjbL1d/g3u0GHdo
 1azSzf7Q9A7DjA5R3+DzF8PqWxyIaBn/9YxGbRGzLGIm0pgYRMuc682aIhiLIgV9Eqkn
 vlAlmv08Y9PxvYVEhC1xm0jAfA499SZ2HQHyB24gP10LUhECu4ZZVZnsLuf5CGdyfuvc
 +k4AvX6aSnC1nnfWcqGxfE9YdXp/Zw8eRQ6Qe9V9gtux3IauwcX9nDNnHJzvbJ9YBl0t
 Ds5A==
X-Gm-Message-State: AOAM530FKNQDIOVqmxelaruOumPUGmKFKDPMD4bD323e4NxGbeT7j0TH
 NNewNKK4vusMiKiZgtkws22+7t7O7bwhVHxOiDtVtIUhILQhMu5UfNWEmkGxMYpCztN5T4FobpM
 gyOSPlCeDP6K+9yGbfs6EyyifY+LYB4x4D3cCNnUz3xnSV0cw8ysbn7tu5Vk5sycOBCNjNxoiJs
 zjkQho9HYf2A==
X-Received: by 2002:ac8:14d:: with SMTP id f13mr5665275qtg.400.1631232522308; 
 Thu, 09 Sep 2021 17:08:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkbo9Tkk6vbOtJMj/apuwB2TMkiHBaKrr9m1zot/JnapFGD82YfwXWILu6P2CJwRkwp49Wbw==
X-Received: by 2002:ac8:14d:: with SMTP id f13mr5665259qtg.400.1631232522045; 
 Thu, 09 Sep 2021 17:08:42 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id d12sm2116618qtq.61.2021.09.09.17.08.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Sep 2021 17:08:41 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <cover.1625595705.git.lucien.xin@gmail.com>
 <70956cd091fc886c080765c8ec2cab2a76bb9fbf.1625595705.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <63c01cc1-a861-0de1-c70d-9be228cdddc8@redhat.com>
Date: Thu, 9 Sep 2021 20:10:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <70956cd091fc886c080765c8ec2cab2a76bb9fbf.1625595705.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 06/07/2021 14:22,
 Xin Long wrote: > Since there's no enough
 bit in netdev_features_t for > NETIF_F_GSO_TIPC_BIT, and tipc is using the
 simliar > code as sctp, this patch will reuse SKB_GSO_SCTP and [...] 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOU65-005Rd4-Sn
Subject: Re: [tipc-discussion] [PATCH net-next 8/8] tipc: add hardware gso
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

CgpPbiAwNi8wNy8yMDIxIDE0OjIyLCBYaW4gTG9uZyB3cm90ZToKPiBTaW5jZSB0aGVyZSdzIG5v
IGVub3VnaCBiaXQgaW4gbmV0ZGV2X2ZlYXR1cmVzX3QgZm9yCj4gTkVUSUZfRl9HU09fVElQQ19C
SVQsIGFuZCB0aXBjIGlzIHVzaW5nIHRoZSBzaW1saWFyCj4gY29kZSBhcyBzY3RwLCB0aGlzIHBh
dGNoIHdpbGwgcmV1c2UgU0tCX0dTT19TQ1RQIGFuZAo+IE5FVElGX0ZfR1NPX1NDVFBfQklUIGZv
ciB0aXBjLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFhpbiBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNv
bT4KPiAtLS0KPiAgIGluY2x1ZGUvbGludXgvc2tidWZmLmggfCAgMiAtLQo+ICAgbmV0L3RpcGMv
bm9kZS5jICAgICAgICB8IDE1ICsrKysrKysrKysrKysrLQo+ICAgbmV0L3RpcGMvb2ZmbG9hZC5j
ICAgICB8ICA0ICsrLS0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9za2J1ZmYuaCBiL2lu
Y2x1ZGUvbGludXgvc2tidWZmLmgKPiBpbmRleCAxNDhiZjBlZDczMzYuLmIyZGI5Y2Q5YTczZiAx
MDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3NrYnVmZi5oCj4gKysrIGIvaW5jbHVkZS9saW51
eC9za2J1ZmYuaAo+IEBAIC01OTksOCArNTk5LDYgQEAgZW51bSB7Cj4gICAJU0tCX0dTT19VRFBf
TDQgPSAxIDw8IDE3LAo+ICAgCj4gICAJU0tCX0dTT19GUkFHTElTVCA9IDEgPDwgMTgsCj4gLQo+
IC0JU0tCX0dTT19USVBDID0gMSA8PCAxOSwKPiAgIH07Cj4gICAKPiAgICNpZiBCSVRTX1BFUl9M
T05HID4gMzIKPiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbm9kZS5jIGIvbmV0L3RpcGMvbm9kZS5j
Cj4gaW5kZXggOTk0N2I3ZGZlMWQyLi4xN2U1OWM4ZGFjMzEgMTAwNjQ0Cj4gLS0tIGEvbmV0L3Rp
cGMvbm9kZS5jCj4gKysrIGIvbmV0L3RpcGMvbm9kZS5jCj4gQEAgLTIwNjgsNyArMjA2OCw3IEBA
IHN0YXRpYyBib29sIHRpcGNfbm9kZV9jaGVja19zdGF0ZShzdHJ1Y3QgdGlwY19ub2RlICpuLCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ICAgICogSW52b2tlZCB3aXRoIG5vIGxvY2tzIGhlbGQuIEJl
YXJlciBwb2ludGVyIG11c3QgcG9pbnQgdG8gYSB2YWxpZCBiZWFyZXIKPiAgICAqIHN0cnVjdHVy
ZSAoaS5lLiBjYW5ub3QgYmUgTlVMTCksIGJ1dCBiZWFyZXIgY2FuIGJlIGluYWN0aXZlLgo+ICAg
ICovCj4gLXZvaWQgdGlwY19yY3Yoc3RydWN0IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LCBzdHJ1Y3QgdGlwY19iZWFyZXIgKmIpCj4gK3N0YXRpYyB2b2lkIF9fdGlwY19yY3Yoc3RydWN0
IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdGlwY19iZWFyZXIgKmIpCj4g
ICB7Cj4gICAJc3RydWN0IHNrX2J1ZmZfaGVhZCB4bWl0cTsKPiAgIAlzdHJ1Y3QgdGlwY19saW5r
X2VudHJ5ICpsZTsKPiBAQCAtMjE4OSw2ICsyMTg5LDE5IEBAIHZvaWQgdGlwY19yY3Yoc3RydWN0
IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdGlwY19iZWFyZXIgKmIpCj4g
ICAJa2ZyZWVfc2tiKHNrYik7Cj4gICB9Cj4gICAKPiArdm9pZCB0aXBjX3JjdihzdHJ1Y3QgbmV0
ICpuZXQsIHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCB0aXBjX2JlYXJlciAqYikKPiArewo+
ICsJc3RydWN0IHNrX2J1ZmYgKnNlZywgKm5leHQ7Cj4gKwo+ICsJaWYgKCFza2JfaXNfZ3NvKHNr
YikgfHwgIXNrYl9pc19nc29fc2N0cChza2IpKQo+ICsJCXJldHVybiBfX3RpcGNfcmN2KG5ldCwg
c2tiLCBiKTsKPiArCj4gKwlza2JfbGlzdF93YWxrX3NhZmUoc2tiX3NoaW5mbyhza2IpLT5mcmFn
X2xpc3QsIHNlZywgbmV4dCkKPiArCQlfX3RpcGNfcmN2KG5ldCwgc2VnLCBiKTsKPiArCXNrYl9z
aGluZm8oc2tiKS0+ZnJhZ19saXN0ID0gTlVMTDsKPiArCWNvbnN1bWVfc2tiKHNrYik7Cj4gK30K
PiArCj4gICB2b2lkIHRpcGNfbm9kZV9hcHBseV9wcm9wZXJ0eShzdHJ1Y3QgbmV0ICpuZXQsIHN0
cnVjdCB0aXBjX2JlYXJlciAqYiwKPiAgIAkJCSAgICAgIGludCBwcm9wKQo+ICAgewo+IGRpZmYg
LS1naXQgYS9uZXQvdGlwYy9vZmZsb2FkLmMgYi9uZXQvdGlwYy9vZmZsb2FkLmMKPiBpbmRleCBk
MTM3Njc5ZjRkYjAuLjI2ZTM3MjE3ODYzNSAxMDA2NDQKPiAtLS0gYS9uZXQvdGlwYy9vZmZsb2Fk
LmMKPiArKysgYi9uZXQvdGlwYy9vZmZsb2FkLmMKPiBAQCAtNSw3ICs1LDcgQEAKPiAgIHN0YXRp
YyBzdHJ1Y3Qgc2tfYnVmZiAqdGlwY19nc29fc2VnbWVudChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+
ICAgCQkJCQluZXRkZXZfZmVhdHVyZXNfdCBmZWF0dXJlcykKPiAgIHsKPiAtCWlmICghKHNrYl9z
aGluZm8oc2tiKS0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RJUEMpKQo+ICsJaWYgKCEoc2tiX3NoaW5m
byhza2IpLT5nc29fdHlwZSAmIFNLQl9HU09fU0NUUCkpCj4gICAJCXJldHVybiBFUlJfUFRSKC1F
SU5WQUwpOwo+ICAgCj4gICAJcmV0dXJuIHNrYl9zZWdtZW50KHNrYiwgKGZlYXR1cmVzIHwgTkVU
SUZfRl9IV19DU1VNKSAmIH5ORVRJRl9GX1NHKTsKPiBAQCAtMzksNyArMzksNyBAQCBib29sIHRp
cGNfbXNnX2dzb19hcHBlbmQoc3RydWN0IHNrX2J1ZmYgKipwLCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LCB1MTYgc2VncykKPiAgIAo+ICAgCQlza2Jfc2hpbmZvKG5za2IpLT5mcmFnX2xpc3QgPSBoZWFk
Owo+ICAgCQlza2Jfc2hpbmZvKG5za2IpLT5nc29fc2VncyA9IDE7Cj4gLQkJc2tiX3NoaW5mbyhu
c2tiKS0+Z3NvX3R5cGUgPSBTS0JfR1NPX1RJUEM7Cj4gKwkJc2tiX3NoaW5mbyhuc2tiKS0+Z3Nv
X3R5cGUgPSBTS0JfR1NPX1NDVFA7Cj4gICAJCXNrYl9zaGluZm8obnNrYiktPmdzb19zaXplID0g
R1NPX0JZX0ZSQUdTOwo+ICAgCQlza2JfcmVzZXRfbmV0d29ya19oZWFkZXIoaGVhZCk7Cj4gICAK
PiAKCkkgZG9uwrR0IGhhdmUgbXVjaCBtb3JlIHRvIGFkZCwgLWl0IGxvb2tzIGdvb2QgdG8gbWUs
IGFuZCB3YXkgc2ltcGxlciAKdGhhbiB3aGF0IEkgd2FzIHRyeWluZyBhIGNvdXBsZSBvZiB5ZWFy
cyBhZ28uCgpJZiB5b3UgZml4IHRoZSBjaGVja3BhdGNoIGlzc3VlcyBhbmQsIG1heWJlIGlmIHBv
c3NpYmxlLCBzcGxpdCBpdCBpbnRvIAp0d28gc2VyaWVzLCB5b3UgaGF2ZSBteSBhY2suCgpQUy4g
RGlkIHlvdSB0ZXN0IHRoaXMgd2l0aCBjcnlwdG8/CgovLy9qb24KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
