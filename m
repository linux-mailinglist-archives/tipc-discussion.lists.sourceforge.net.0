Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EB415458A
	for <lists+tipc-discussion@lfdr.de>; Thu,  6 Feb 2020 14:56:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1izhe0-0004CZ-1R; Thu, 06 Feb 2020 13:56:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1izhdy-0004CN-6I
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Feb 2020 13:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K1DxPEntbvPQJ2vZDZEC7I66vNd1NzgEfqLur8MQ2KY=; b=fJgf7ijOVTZ6dlAr8POiqLM58
 aI9MODMx6O/633BD/6nKaYs2ezGAyra4uWwW3YyrOTN67MkP/KQqq3E6Ib3iNSeTpJgS64CoCR+tK
 a1kmFsgNEZtR3UcvbpFsCYAOOfdPdJd+gnX9Wppl1ndP+H1QpFdgqmXLjfIb7LiSmg4YY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:
 To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K1DxPEntbvPQJ2vZDZEC7I66vNd1NzgEfqLur8MQ2KY=; b=YZJv9ipwnB3HCcb/9h+rKTCZFg
 e0dVAgw+nk/rKERjyA96OU/9MaRTjizvNQ7g4/5uZmMfbU6+Epo0Pl/xZ83QO/XinmuI1DO7d0SMu
 Gq/fA8QwDctRJB7S0m3T/4R47gOXc/hvdr9ru1yNO32Kt0fb8yK1YsGPjfnVOEtbmrOI=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1izhdt-00BwRT-MN
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Feb 2020 13:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580997382;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=K1DxPEntbvPQJ2vZDZEC7I66vNd1NzgEfqLur8MQ2KY=;
 b=eEb2vCi1xsX38zuuaxhynESPOdJK9ypNFrds4o3avIs3ZhGGpQ62/+IY7r+2rrouvnYgu0
 GY23+h4jKAIrwm9IodSLr5kXDrNgLB6T7zpvAa8NIyWZA8xrD5mFDaLmpIvpZ40LyKT5Fa
 eglgvqQW64V93k49wWXgl4Xbyfocw7g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-taNSO8cgPdCxSflr8DVyDw-1; Thu, 06 Feb 2020 08:56:17 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F099101FC6C;
 Thu,  6 Feb 2020 13:56:16 +0000 (UTC)
Received: from jmaloy.remote.csb (ovpn-126-211.rdu2.redhat.com [10.10.126.211])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A35655C1B0;
 Thu,  6 Feb 2020 13:56:13 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200205034312.13318-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <0acb5e11-ffff-cf05-cb0e-1d49da0986e5@redhat.com>
Date: Thu, 6 Feb 2020 08:56:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200205034312.13318-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: taNSO8cgPdCxSflr8DVyDw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1izhdt-00BwRT-MN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [net] tipc: fix successful connect() but
 timed out
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

QWNrZWQtYnk6IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+CgoKT24gMi80LzIwIDEwOjQz
IFBNLCBUdW9uZyBMaWVuIHdyb3RlOgo+IEluIGNvbW1pdCA3NGNkYzkwMzViODIgKCJ0aXBjOiBm
aXggd3JvbmcgY29ubmVjdCgpIHJldHVybiBjb2RlIiksIHdlCj4gZml4ZWQgdGhlIGlzc3VlIHdp
dGggdGhlICdjb25uZWN0KCknIHRoYXQgcmV0dXJucyB6ZXJvIGV2ZW4gdGhvdWdoIHRoZQo+IGNv
bm5lY3RpbmcgaGFzIGZhaWxlZCBieSB3YWl0aW5nIGZvciB0aGUgY29ubmVjdGlvbiB0byBiZSAn
RVNUQUJMSVNIRUQnCj4gcmVhbGx5LiBIb3dldmVyLCB0aGUgYXBwcm9hY2ggaGFzIG9uZSBkcmF3
YmFjayBpbiBjb25qdW5jdGlvbiB3aXRoIG91cgo+ICdsaWdodHdlaWdodCcgY29ubmVjdGlvbiBz
ZXR1cCBtZWNoYW5pc20gdGhhdCB0aGUgZm9sbG93aW5nIHNjZW5hcmlvCj4gY2FuIGhhcHBlbjoK
Pgo+ICAgICAgICAgICAgKHNlcnZlcikgICAgICAgICAgICAgICAgICAgICAgICAoY2xpZW50KQo+
Cj4gICAgICstIGFjY2VwdCgpfCAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgIHdh
aXRfZm9yX2Nvbm4oKQo+ICAgICB8ICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgfGNv
bm5lY3QoKSAtLS0tLS0tKwo+ICAgICB8ICAgICAgICAgIHw8LS0tLS0tLVtTWU5dLS0tLS0tLS0t
fCAgICAgICAgICAgICAgICAgPiBzbGVlcGluZwo+ICAgICB8ICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgKkNPTk5FQ1RJTkcgICAgICAgfAo+ICAgICB8LS0tLS0tLS0tPipFU1RBQkxJ
U0hFRCAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgfAo+ICAgICAgICAgICAgICAgIHwtLS0t
LS0tLVtBQ0tdLS0tLS0tLS0+KkVTVEFCTElTSEVEICAgICAgPiB3YWtldXAoKQo+ICAgICAgICAg
IHNlbmQoKXwtLS0tLS0tLVtEQVRBXS0tLS0tLS0+fFwgICAgICAgICAgICAgICAgPiB3YWtldXAo
KQo+ICAgICAgICAgIHNlbmQoKXwtLS0tLS0tLVtEQVRBXS0tLS0tLS0+fCB8ICAgICAgICAgICAg
ICAgPiB3YWtldXAoKQo+ICAgICAgICAgICAgLiAgIC4gICAgICAgICAgLiAgICAgICAgICAgLiB8
LT4gcmVjdnEgICAgICAgLgo+ICAgICAgICAgICAgLiAgIC4gICAgICAgICAgLiAgICAgICAgICAg
LiB8ICAgICAgICAgICAgICAgLgo+ICAgICAgICAgIHNlbmQoKXwtLS0tLS0tLVtEQVRBXS0tLS0t
LS0+fC8gICAgICAgICAgICAgICAgPiB3YWtldXAoKQo+ICAgICAgICAgY2xvc2UoKXwtLS0tLS0t
LVtGSU5dLS0tLS0tLS0+KkRJU0NPTk5FQ1RJTkcgICAgfAo+ICAgICAgICAgICAgICAgICpESVND
T05ORUNUSU5HICAgICAgICAgfCAgICAgICAgICAgICAgICAgfAo+ICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+PiBzY2hlZHVsZSgpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IHdh
aXQgYWdhaW4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgRVRJTUVET1VUCj4KPiBVcG9uIHRoZSByZWNlaXB0IG9mIHRoZSBz
ZXJ2ZXIgJ0FDSycsIHRoZSBjbGllbnQgYmVjb21lcyAnRVNUQUJMSVNIRUQnCj4gYW5kIHRoZSAn
d2FpdF9mb3JfY29ubigpJyBwcm9jZXNzIGlzIHdva2VuIHVwIGJ1dCBub3QgcnVuLiBNZWFud2hp
bGUsCj4gdGhlIHNlcnZlciBzdGFydHMgdG8gc2VuZCBhIG51bWJlciBvZiBkYXRhIGZvbGxvd2lu
ZyBieSBhICdjbG9zZSgpJwo+IHNob3J0bHkgd2l0aG91dCB3YWl0aW5nIGFueSByZXNwb25zZSBm
cm9tIHRoZSBjbGllbnQsIHdoaWNoIHRoZW4gZm9yY2VzCj4gdGhlIGNsaWVudCBzb2NrZXQgdG8g
YmUgJ0RJU0NPTk5FQ1RJTkcnIGltbWVkaWF0ZWx5LiBXaGVuIHRoZSB3YWl0Cj4gcHJvY2VzcyBp
cyBzd2l0Y2hlZCB0byBiZSBydW5uaW5nLCBpdCBjb250aW51ZXMgdG8gd2FpdCB1bnRpbCB0aGUg
dGltZXIKPiBleHBpcmVzIGJlY2F1c2Ugb2YgdGhlIHVuZXhwZWN0ZWQgc29ja2V0IHN0YXRlLiBU
aGUgY2xpZW50ICdjb25uZWN0KCknCj4gd2lsbCBmaW5hbGx5IGdldCDigJgtRVRJTUVET1VU4oCZ
IGFuZCBmb3JjZSB0byByZWxlYXNlIHRoZSBzb2NrZXQgd2hlcmVhcwo+IHRoZXJlIHJlbWFpbnMg
dGhlIG1lc3NhZ2VzIGluIGl0cyByZWNlaXZlIHF1ZXVlLgo+Cj4gT2J2aW91c2x5IHRoZSBpc3N1
ZSB3b3VsZCBub3QgaGFwcGVuIGlmIHRoZSBzZXJ2ZXIgaGFkIHNvbWUgZGVsYXkgcHJpb3IKPiB0
byBpdHMgJ2Nsb3NlKCknIChvciB0aGUgbnVtYmVyIG9mICdEQVRBJyBtZXNzYWdlcyBpcyBsYXJn
ZSBlbm91Z2gpLAo+IGJ1dCBhbnkga2luZCBvZiBkZWxheSB3b3VsZCBtYWtlIHRoZSBjb25uZWN0
aW9uIHNldHVwL3NodXRkb3duICJoZWF2eSIuCj4gV2Ugc29sdmUgdGhpcyBieSBzaW1wbHkgYWxs
b3dpbmcgdGhlICdjb25uZWN0KCknIHJldHVybnMgemVybyBpbiB0aGlzCj4gcGFydGljdWxhciBj
YXNlLiBUaGUgc29ja2V0IGlzIGFscmVhZHkgJ0RJU0NPTk5FQ1RJTkcnLCBzbyBhbnkgZnVydGhl
cgo+IHdyaXRlIHdpbGwgZ2V0ICctRVBJUEUnIGJ1dCB0aGUgc29ja2V0IGlzIHN0aWxsIGFibGUg
dG8gcmVhZCB0aGUKPiBtZXNzYWdlcyBleGlzdGluZyBpbiBpdHMgcmVjZWl2ZSBxdWV1ZS4KPgo+
IE5vdGU6IFRoaXMgc29sdXRpb24gZG9lc24ndCBicmVhayB0aGUgcHJldmlvdXMgb25lIGFzIGl0
IGRlYWxzIHdpdGggYQo+IGRpZmZlcmVudCBzaXR1YXRpb24gdGhhdCB0aGUgc29ja2V0IHN0YXRl
IGlzICdESVNDT05ORUNUSU5HJyBidXQgaGFzIG5vCj4gZXJyb3IgKGkuZS4gc2stPnNrX2VyciA9
IDApLgo+Cj4gRml4ZXM6IDc0Y2RjOTAzNWI4MiAoInRpcGM6IGZpeCB3cm9uZyBjb25uZWN0KCkg
cmV0dXJuIGNvZGUiKQo+IFNpZ25lZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBk
ZWt0ZWNoLmNvbS5hdT4KPiAtLS0KPiAgIG5ldC90aXBjL3NvY2tldC5jIHwgMiArKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL25ldC90aXBjL3Nv
Y2tldC5jIGIvbmV0L3RpcGMvc29ja2V0LmMKPiBpbmRleCBmOWI0ZmI5MmMwYjEuLjY5M2U4OTAy
MTYxZSAxMDA2NDQKPiAtLS0gYS9uZXQvdGlwYy9zb2NrZXQuYwo+ICsrKyBiL25ldC90aXBjL3Nv
Y2tldC5jCj4gQEAgLTI0NDEsNiArMjQ0MSw4IEBAIHN0YXRpYyBpbnQgdGlwY193YWl0X2Zvcl9j
b25uZWN0KHN0cnVjdCBzb2NrZXQgKnNvY2ssIGxvbmcgKnRpbWVvX3ApCj4gICAJCQlyZXR1cm4g
LUVUSU1FRE9VVDsKPiAgIAkJaWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKQo+ICAgCQkJcmV0
dXJuIHNvY2tfaW50cl9lcnJubygqdGltZW9fcCk7Cj4gKwkJaWYgKHNrLT5za19zdGF0ZSA9PSBU
SVBDX0RJU0NPTk5FQ1RJTkcpCj4gKwkJCWJyZWFrOwo+ICAgCj4gICAJCWFkZF93YWl0X3F1ZXVl
KHNrX3NsZWVwKHNrKSwgJndhaXQpOwo+ICAgCQlkb25lID0gc2tfd2FpdF9ldmVudChzaywgdGlt
ZW9fcCwgdGlwY19za19jb25uZWN0ZWQoc2spLAoKLS0gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRp
cGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
