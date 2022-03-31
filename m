Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B754EDF29
	for <lists+tipc-discussion@lfdr.de>; Thu, 31 Mar 2022 18:55:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nZy4i-0004ar-P4; Thu, 31 Mar 2022 16:55:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1nZy4g-0004ag-SA
 for tipc-discussion@lists.sourceforge.net; Thu, 31 Mar 2022 16:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZToWZTWG2RatZjFZuNOLSxQ2WgnIc03BVug5gHu45Xk=; b=NkQHAnEfMc7W3PUMPKHl3aty/9
 E9ZFHJIc8KoYwZA5CTvilzLTWNKHYTlzjw2kKvheE3n7Mv5+pGbIqBdhqHxquFDB0g37JgJvl2/VX
 tlHWVzuqQC0HIbiWXF+Oq+mHXcWx4sjqvYcw6VQYmWz0HW5Yqy2dcHU25vSok1qqwvNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZToWZTWG2RatZjFZuNOLSxQ2WgnIc03BVug5gHu45Xk=; b=Zj1+WGz9Q5SC/i74TPmeE/6mOM
 9I7/CN6jB13RLOkVGUn7mw13CGIm06JMd9O+vxjrr9b/8ndSJohZ7uGDC4sYGxrIfzcNyKQQ7lqgT
 Pa/lYiFgaOjAVt/fjxmEBQvwxjVzWE+6zHsKratAeycJR6vmcrLhlyIpVasMt5k/C3EE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZy4d-000rtE-EC
 for tipc-discussion@lists.sourceforge.net; Thu, 31 Mar 2022 16:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648745696;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZToWZTWG2RatZjFZuNOLSxQ2WgnIc03BVug5gHu45Xk=;
 b=edU7XxDp6ZELc6w6P3q5JjnGk91nah7GBQFBrbDX7Gs2ETzcPYa55oFco3jQ8mrp7FRRoi
 N0BQT22Ku+3GuaRDEU27N2e7GMKWA/gIweixLYy5D+RKjk65RKMsjpXLk1GxPMLPq9JxP+
 3Z/hDTU6G7hby8xqo2NHg9LNZZ+U1GU=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-643-JkiKXmiZMYGRL8fBD7GiAg-1; Thu, 31 Mar 2022 12:54:55 -0400
X-MC-Unique: JkiKXmiZMYGRL8fBD7GiAg-1
Received: by mail-qt1-f200.google.com with SMTP id
 f7-20020a05622a1a0700b002e06d6279d5so15755478qtb.7
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 31 Mar 2022 09:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZToWZTWG2RatZjFZuNOLSxQ2WgnIc03BVug5gHu45Xk=;
 b=rna676x0UGNBiHvqWTIRDpBad6/fB1Fm+4ZnZL3U24B+hKZ7ChLCelL1pVYffQxWWu
 iC4gcg8ZGqCOSfvxO3MB59PgrVwTE+M42SFxSaTVaGbgr6vhiiDcnWWrMvde/f+ZDrCK
 K6Tlf+CidQMcnyaM+fO+2CBrTEgKY70SVoA39YGvWqbzoqR7VZbAdXtBkqtpVzP/FqK9
 G6LPaj/THdJvEKB27qzoNHZtlU4hdiYBN1JxY2IfxsTAKaem/1bqQYP23G13bAShRGep
 mzEO1cUJLal2BVbzeXtvIbbDFZ5YCRzfFcf6ih2thbsvzJ8kon80NpCNB8XaE49JQ0gk
 4OPA==
X-Gm-Message-State: AOAM5324h87kD2Dg2FSHNj+9N46wiYI3rLPHyiqksi2WUmwIG+siYG5c
 k76Icnz+FMBxl69u3YoCQDeMeVz+paLBbZ49NMLWMk7QH3d2zXIvTK8CnQsycXxCtlT9DhBXCJj
 TPccJWd73M01EvBOKKGqtjoWKklD3XWJdpLzV
X-Received: by 2002:a05:6214:d0a:b0:441:895:6e10 with SMTP id
 10-20020a0562140d0a00b0044108956e10mr37050976qvh.70.1648745694568; 
 Thu, 31 Mar 2022 09:54:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/zvDc9XumUGcwDsPiLJXLHWwCOXDUQjv4SWRvpgccMWnCRkuKX4ywh92US3bMoyU8ZCoolw==
X-Received: by 2002:a05:6214:d0a:b0:441:895:6e10 with SMTP id
 10-20020a0562140d0a00b0044108956e10mr37050948qvh.70.1648745694253; 
 Thu, 31 Mar 2022 09:54:54 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 y196-20020a3764cd000000b0067d51bbacdfsm13035497qkb.107.2022.03.31.09.54.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Mar 2022 09:54:53 -0700 (PDT)
Message-ID: <ff3f66ae-6dad-f56f-149f-3587c7181d35@redhat.com>
Date: Thu, 31 Mar 2022 12:54:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Paolo Abeni <pabeni@redhat.com>, Niels Dossche <dossche.niels@gmail.com>, 
 tipc-discussion@lists.sourceforge.net
References: <20220329161213.93576-1-dossche.niels@gmail.com>
 <c80aa031a57d1d4a98dc3fbc98863d35e5fc9b58.camel@redhat.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <c80aa031a57d1d4a98dc3fbc98863d35e5fc9b58.camel@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/31/22 10:28, Paolo Abeni wrote: > On Tue, 2022-03-29
 at 18:12 +0200, Niels Dossche wrote: >> Currently, n->keepalive_intv is written
 to while n is locked by a read >> lock instead of a write lock [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nZy4d-000rtE-EC
Subject: Re: [tipc-discussion] [PATCH net] tipc: use a write lock for
 keepalive_intv instead of a read lock
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
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAzLzMxLzIyIDEwOjI4LCBQYW9sbyBBYmVuaSB3cm90ZToKPiBPbiBUdWUsIDIwMjItMDMt
MjkgYXQgMTg6MTIgKzAyMDAsIE5pZWxzIERvc3NjaGUgd3JvdGU6Cj4+IEN1cnJlbnRseSwgbi0+
a2VlcGFsaXZlX2ludHYgaXMgd3JpdHRlbiB0byB3aGlsZSBuIGlzIGxvY2tlZCBieSBhIHJlYWQK
Pj4gbG9jayBpbnN0ZWFkIG9mIGEgd3JpdGUgbG9jay4gVGhpcyBzZWVtcyB0byBtZSB0byBicmVh
ayB0aGUgYXRvbWljaXR5Cj4+IGFnYWluc3Qgb3RoZXIgcmVhZGVycy4KPj4gQ2hhbmdlIHRoaXMg
dG8gYSB3cml0ZSBsb2NrIGluc3RlYWQgdG8gc29sdmUgdGhlIGlzc3VlLgo+Pgo+PiBOb3RlOgo+
PiBJIGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgc3RhdGljIGFuYWx5c2VyIHRvIGRldGVjdCBt
aXNzaW5nIGxvY2tzCj4+IHVzaW5nIHR5cGUtYmFzZWQgc3RhdGljIGFuYWx5c2lzIGFzIG15IG1h
c3RlcidzIHRoZXNpcwo+PiBpbiBvcmRlciB0byBvYnRhaW4gbXkgbWFzdGVyJ3MgZGVncmVlLgo+
PiBJZiB5b3Ugd291bGQgbGlrZSB0byBoYXZlIG1vcmUgZGV0YWlscywgcGxlYXNlIGxldCBtZSBr
bm93Lgo+PiBUaGlzIHdhcyBhIHJlcG9ydGVkIGNhc2UuIEkgbWFudWFsbHkgdmVyaWZpZWQgdGhl
IHJlcG9ydCBieSBsb29raW5nCj4+IGF0IHRoZSBjb2RlLCBzbyB0aGF0IEkgZG8gbm90IHNlbmQg
d3JvbmcgaW5mb3JtYXRpb24gb3IgcGF0Y2hlcy4KPj4gQWZ0ZXIgY29uY2x1ZGluZyB0aGF0IHRo
aXMgc2VlbXMgdG8gYmUgYSB0cnVlIHBvc2l0aXZlLCBJIGNyZWF0ZWQKPj4gdGhpcyBwYXRjaC4g
SSBoYXZlIGJvdGggY29tcGlsZS10ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgcnVudGltZS10ZXN0ZWQK
Pj4gdGhpcyBwYXRjaCBvbiB4ODZfNjQuIFRoZSBlZmZlY3Qgb24gYSBydW5uaW5nIHN5c3RlbSBj
b3VsZCBiZSBhCj4+IHBvdGVudGlhbCByYWNlIGNvbmRpdGlvbiBpbiBleGNlcHRpb25hbCBjYXNl
cy4KPj4gVGhpcyBpc3N1ZSB3YXMgZm91bmQgb24gTGludXggdjUuMTcuCj4+Cj4+IEZpeGVzOiBm
NWQ2YzNlNWEzNTkgKCJ0aXBjOiBmaXggbm9kZSBrZWVwIGFsaXZlIGludGVydmFsIGNhbGN1bGF0
aW9uIikKPj4gU2lnbmVkLW9mZi1ieTogTmllbHMgRG9zc2NoZSA8ZG9zc2NoZS5uaWVsc0BnbWFp
bC5jb20+Cj4+IC0tLQo+PiAgIG5ldC90aXBjL25vZGUuYyB8IDQgKystLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9uZXQvdGlwYy9ub2RlLmMgYi9uZXQvdGlwYy9ub2RlLmMKPj4gaW5kZXggNmVmOTVjZTU2NWJk
Li5kYTg2N2RkYjkzZjUgMTAwNjQ0Cj4+IC0tLSBhL25ldC90aXBjL25vZGUuYwo+PiArKysgYi9u
ZXQvdGlwYy9ub2RlLmMKPj4gQEAgLTgwNiw5ICs4MDYsOSBAQCBzdGF0aWMgdm9pZCB0aXBjX25v
ZGVfdGltZW91dChzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKPj4gICAJLyogSW5pdGlhbCBub2RlIGlu
dGVydmFsIHRvIHZhbHVlIGxhcmdlciAoMTAgc2Vjb25kcyksIHRoZW4gaXQgd2lsbCBiZQo+PiAg
IAkgKiByZWNhbGN1bGF0ZWQgd2l0aCBsaW5rIGxvd2VzdCB0b2xlcmFuY2UKPj4gICAJICovCj4+
IC0JdGlwY19ub2RlX3JlYWRfbG9jayhuKTsKPj4gKwl0aXBjX25vZGVfd3JpdGVfbG9jayhuKTsK
PiBJIGFncmVlIHdpdGggSG9hbmcswqB0aGlzIHNob3VsZCBiZSBzYWZlIGV2ZW4gd2l0aG91dCB3
cml0ZSBsb2NrLCBhcwo+IHRpcGNfbm9kZV90aW1lb3V0KCkgaXMgdGhlIG9ubHkgZnVuY3Rpb24g
bW9kaWZ5aW5nIGtlZXBhbGl2ZV9pbnR2LCBhbmQKPiBzdWNoIGZ1bmN0aW9uIGlzIGludm9rZWQg
b25seSBieSBhIHRpbWVyLCBzbyB3ZSBhcmUgZ3VhcmFudGVlZGVkIHRoZXJlCj4gYXJlIG5vIHBv
c3NpYmxlIGNvbmN1cnJlbnQgdXBkYXRlcy4uLgo+Cj4+ICAgCW4tPmtlZXBhbGl2ZV9pbnR2ID0g
MTAwMDA7Cj4+IC0JdGlwY19ub2RlX3JlYWRfdW5sb2NrKG4pOwo+PiArCXRpcGNfbm9kZV93cml0
ZV91bmxvY2sobik7Cj4+ICAgCWZvciAoYmVhcmVyX2lkID0gMDsgcmVtYWlucyAmJiAoYmVhcmVy
X2lkIDwgTUFYX0JFQVJFUlMpOyBiZWFyZXJfaWQrKykgewo+PiAgIAkJdGlwY19ub2RlX3JlYWRf
bG9jayhuKTsKPiAuLi5vdGhlcndpc2Ugd2UgaGF2ZSBhIHNpbWlsYXIgaXNzdWUgaGVyZTogYSBm
ZXcgbGluZSBiZWxvdwo+IGtlZXBhbGl2ZV9pbnR2IGlzIHVwZGF0ZWQgdmlhIHRpcGNfbm9kZV9j
YWxjdWxhdGVfdGltZXIoKSwgc3RpbGwgdW5kZXIKPiB0aGUgcmVhZCBsb2NrCj4KPiBUaGFua3Mh
Cj4KPiBQYW9sbwo+CkhvYW5nJ3MgYW5kIFBhb2xvJ3MgY29uY2x1c2lvbiBpcyBjb3JyZWN0LgpU
aGUgcGF0Y2ggaXMgbm90IG5lZWRlZC4KLy8vam9uCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
