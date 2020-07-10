Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF3C21BD1A
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 20:37:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtxuD-0002Qp-0P; Fri, 10 Jul 2020 18:37:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jtxuB-0002Qi-LA
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 18:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YM4pqngs9LPRPwiQVmfrGO7h/k7P2VAPNdiQbkJd2HQ=; b=irDdkNWw0cCE16vSP4f8M2YeQU
 SH42coo8gLpY0R/eGYt0SdPSHF3ZOUyQ/ZmPAbzzTKZjn3IxCZ1y8gBJnPLE6UGdbDWKCeg4V2cI0
 koq/UOYQjakgP6H9Jbxu7i8eKUzGMdFpMAmF6RO7EPQJt469yEUCmHCLyRNXcEIkloQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YM4pqngs9LPRPwiQVmfrGO7h/k7P2VAPNdiQbkJd2HQ=; b=Aoo0AFIzok96fOW9SosyjCcImh
 rLbrN2kn9AdzKJe4h2TLBOy8cYuRuJA5nbH3/GNcOQM/vgAYRKzoF4HRh8cwUutLT5gfGlm32/0Rj
 jZ/F+MQQ1nM6PQ/Gc8O9mwLZD60t7C9YEbxWIDhGEjJLJF90jKxG6+PQD+eZFvYz/HJQ=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jtxuA-00GPOh-4v
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 18:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594406260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YM4pqngs9LPRPwiQVmfrGO7h/k7P2VAPNdiQbkJd2HQ=;
 b=HUfJZhx+qXbl30Vy0R+Aa77IaJkU75w0v2Fhqn3tU72S+9JXUleVmaxjdXHnbH0/h/6eX/
 CsOYxaU4xhvWkjI9LB7hk+6bs9nLV9IjAXiJdg+GwTAm6tTUiF9Xl1c5OUoTiWLC1wIvez
 G9L2mMeq4BNCjIUpYLyZ1eDunfTDiAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-9OYxoBu9NTmQs_CxiqSNMQ-1; Fri, 10 Jul 2020 14:37:39 -0400
X-MC-Unique: 9OYxoBu9NTmQs_CxiqSNMQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8067F10059A4;
 Fri, 10 Jul 2020 18:37:37 +0000 (UTC)
Received: from [10.10.120.78] (ovpn-120-78.rdu2.redhat.com [10.10.120.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2B9276FEC3;
 Fri, 10 Jul 2020 18:37:35 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ca3ee945-261f-cc3b-eea4-96a74a11311e@redhat.com>
Date: Fri, 10 Jul 2020 14:37:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtxuA-00GPOh-4v
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] tipc: add more features to
 TIPC encryption
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

CgpPbiA3LzEwLzIwIDY6MTEgQU0sIFR1b25nIExpZW4gd3JvdGU6Cj4gSGkgSm9uL2FsbCwKPgo+
IEFzIG1lbnRpb25lZCwgSSdkIGxpa2UgdG8gc2hhcmUgdGhlIHNlcmllcyB0aGF0IEkgaGF2ZSBh
ZGRlZCBzb21lIG5ldwo+IGZlYXR1cmVzIGluIG9yZGVyIHRvIGNvbXBsZXRlIHRoZSBUSVBDIGVu
Y3J5cHRpb246Cj4KPiAtIFBhdGNoIDEgKCJ0aXBjOiBmaXggdXNpbmcgc21wX3Byb2Nlc3Nvcl9p
ZCgpIGluIHByZWVtcHRpYmxlIik6Cj4gLSBQYXRjaCAyICgidGlwYzogb3B0aW1pemUga2V5IHN3
aXRjaGluZyB0aW1lIGFuZCBsb2dpYyIpOgo+IFRoZXNlIHR3byBwYXRjaGVzIGp1c3QgZG8gYSBi
dWctZml4IGFuZCBvcHRpbWl6YXRpb24gZm9yIHRoZSBjb2RlIGFzCj4gYSBwcmVwYXJhdGlvbiBm
b3IgbGF0ZXIgY29tbWl0cy4KPgo+IC0gUGF0Y2ggMyAoInRpcGM6IGludHJvZHVjZSBlbmNyeXB0
aW9uIG1hc3RlciBrZXkiKToKPiBUaGlzIHdpbGwgaW50cm9kdWNlIGEgJ21hc3RlciBrZXknIHN1
cHBvcnQgd2hpY2ggaXMgc2V0IGJ5IHVzZXIgYXMgYQo+ICdsb25nLXRlcm0nIG9yIHN0YXRpYyBr
ZXkgKGUuZy4gc2hhcmVkIGJldHdlZW4gbm9kZXMgaW4gdGhlIGNsdXN0ZXIgaW4KPiB1c2VyIGNv
bnRyb2wgd2F5KS4gSXQgd2lsbCBhY3QgbGlrZSBhIGtleSBlbmNyeXB0aW9uIGtleSBmb3IgdGhl
IGxhdGVyCj4ga2V5IGV4Y2hhbmdlLCBhcyB3ZWxsIGFzIGFsbG93IGEgbmV3IG5vZGUgam9pbnMg
dGhlIGNsdXN0ZXIgd2hpbGUgaXQKPiBoYXMgbm8ga25vd2xlZGdlIG9mIGN1cnJlbnQgYWN0aXZl
IHNlc3Npb24ga2V5cyBpbiB0aGUgZXhpc3Rpbmcgbm9kZXMuCj4KPiBUaGUgbWFzdGVyIGtleSBz
ZXR0aW5nIHdpbGwgdXNlIHRoZSBzYW1lICd0aXBjIG5vZGUgc2V0IGtleScgY29tbWFuZAo+IGJ1
dCB3aXRoIGEgJ21hc3RlcicgZmxhZyAoc2VlIGJlbG93KS4KPgo+IC0gUGF0Y2ggNCAoInRpcGM6
IGFkZCBhdXRvbWF0aWMgc2Vzc2lvbiBrZXkgZXhjaGFuZ2UiKToKPiBUWCBrZXkgb2YgYSBub2Rl
IHdpbGwgbm93IGJlIGFibGUgdG8gYmUgZXhjaGFuZ2VkIHRvIHBlZXIgbm9kZXMgKAo+IGVuY3J5
cHRlZC9kZWNyeXB0ZWQgYnkgdGhlIG1hc3RlciBrZXkpIGFuZCBhdHRhY2hlZCBhcyB0aGUKPiBj
b3JyZXNwb25kaW5nIFJYIGtleXMgYXV0b21hdGljYWxseS4gQSBub2RlIGNhbiBhbHNvICdyZXF1
ZXN0JyBmb3IgYSBUWAo+IGtleSBmcm9tIHBlZXIgd2hlbmV2ZXIgbmVlZGVkLgo+Cj4gVGhpcyB3
aWxsIGVuYWJsZSB1cyB0byBkbyB0aGUgbGF0ZXIgcmVrZXlpbmcsIGFuZCBhbHNvIG1ha2UgYSBu
ZXcgbm9kZQo+IGJlaW5nIGFibGUgdG8gb2J0YWluIHRoZSBzZXNzaW9uIGtleXMgZnJvbSBleGlz
dGluZyBub2Rlcy4KPgo+IC0gUGF0Y2ggNSAoInRpcGM6IGFkZCBhdXRvbWF0aWMgcmVrZXlpbmcg
Zm9yIGVuY3J5cHRpb24ga2V5Iik6Cj4gRmluYWxseSwgdGhpcyBwYXRjaCB3aWxsIGFkZCB0aGUg
YXV0b21hdGljIHJla2V5aW5nIHdoaWNoIHdpbGwgZ2VuZXJhdGUKPiBhIHNlc3Npb24ga2V5IG9u
IGVhY2ggbm9kZSBhdCBhIHNwZWNpZmljIGludGVydmFsLiBUaGUga2V5IHdpbGwgYmUKPiBhbHNv
IGRpc3RyaWJ1dGVkIGF1dG9tYXRpY2FsbHkgdG8gcGVlciBub2Rlcywgc28gaXQgd2lsbCBiZSBz
d2l0Y2hlZCB0bwo+IGJlIGFjdGl2ZSBzaG9ydGx5IGFuZCB0cmFmZmljIHdpbGwgYmUgZmluYWxs
eSBlbmNyeXB0ZWQvZGVjcnlwdGVkIGJ5Cj4gdGhhdCBuZXcga2V5Lgo+Cj4gVGhlIHJla2V5aW5n
IGludGVydmFsIGlzIGNvbmZpZ3VyYWJsZSBhcyB3ZWxsLCBhbHNvIHVzZXIgY2FuIGRpc2FibGUg
b3IKPiB0cmlnZ2VyIGFuIGltbWVkaWF0ZSByZWtleWluZyBpZiBoZSB3YW50cy4KPgo+IEJlc2lk
ZXMsIHRoZXJlIHdpbGwgYmUgYSBwYXRjaCBpbiB0aGUgJ2lwcm91dGUyL3RpcGMnIGluY2x1ZGlu
ZyB0aGUgbmV3Cj4gJ3RpcGMgbm9kZSBzZXQga2V5JyBjb21tYW5kIG9wdGlvbnMsIGJhc2ljYWxs
eSBpdCB3aWxsIGxvb2sgbGlrZSB0aGlzOgo+Cj4gLS0tLS0tLS0tCj4gJHRpcGMgbm9kZSBzZXQg
a2V5IC0taGVscAo+IFVzYWdlOiB0aXBjIG5vZGUgc2V0IGtleSBLRVkgW2FsZ25hbWUgQUxHTkFN
RV0gW1BST1BFUlRJRVNdCj4gICAgICAgICB0aXBjIG5vZGUgc2V0IGtleSByZWtleWluZyBSRUtF
WUlORwo+Cj4gS0VZCj4gICAgU3ltbWV0cmljIEtFWSAmIFNBTFQgYXMgYSBjb21wb3NpdGUgQVND
SUkgb3IgaGV4IHN0cmluZyAoMHguLi4pIGluIGZvcm06Cj4gICAgW0tFWTogMTYsIDI0IG9yIDMy
IG9jdGV0c11bU0FMVDogNCBvY3RldHNdCj4KPiBBTEdOQU1FCj4gICAgQ2lwaGVyIGFsZ29yaXRo
bSBbZGVmYXVsdDogImdjbShhZXMpIl0KPgo+IFBST1BFUlRJRVMKPiAgICBtYXN0ZXIgICAgICAg
ICAgICAgICAgLSBTZXQgS0VZIGFzIGEgY2x1c3RlciBtYXN0ZXIga2V5Cj4gICAgPGVtcHR5PiAg
ICAgICAgICAgICAgIC0gU2V0IEtFWSBhcyBhIGNsdXN0ZXIga2V5Cj4gICAgbm9kZWlkIE5PREVJ
RCAgICAgICAgIC0gU2V0IEtFWSBhcyBhIHBlci1ub2RlIGtleSBmb3Igb3duIG9yIHBlZXIKPgo+
IFJFS0VZSU5HCj4gICAgSU5URVJWQUwgICAgICAgICAgICAgIC0gU2V0IHJla2V5aW5nIGludGVy
dmFsIChpbiBtaW51dGVzKSBbMDogZGlzYWJsZV0KPiAgICBub3cgICAgICAgICAgICAgICAgICAg
LSBUcmlnZ2VyIG9uZSAoZmlyc3QpIHJla2V5aW5nIGltbWVkaWF0ZWx5Cj4KPiBFWEFNUExFUwo+
ICAgIHRpcGMgbm9kZSBzZXQga2V5IDB4NzQ2ODY5NzM1RjY5NzM1RjYxNUY2QjY1NzkzMTM2NUY3
MzYxNkM3NAo+ICAgIHRpcGMgbm9kZSBzZXQga2V5IHRoaXNfaXNfYV9rZXkxNl9zYWx0IGFsZ25h
bWUgImdjbShhZXMpIiBub2RlaWQgMTAwMTAwMgo+ICAgIHRpcGMgbm9kZSBzZXQga2V5IHRoaXNf
aXNfYV9tYXN0ZXJfa2V5IG1hc3RlciByZWtleWluZyBub3cKPiAgICB0aXBjIG5vZGUgc2V0IGtl
eSByZWtleWluZyA2MDAKPiAtLS0tLS0tLS0KPgo+IFNvLCBwbGVhc2UgaGVscCBjaGVjayB0aGUg
cGF0Y2hlcyBhbmQgZ2l2ZSB5b3VyIGNvbW1lbnRzLCB0aGFua3MgYSBsb3QhCj4KPiBCUi9UdW9u
ZwpJIGhhdmVuJ3QgcmV2aWV3ZWQgdGhpcyB5ZXQsIGJ1dCBzdGlsbCBoYXZlIGEgY29tbWVudCBh
bmQgYSBxdWVzdGlvbi4KMSkgSXQgd291bGQgc291bmQgbGVzcyBzY2FyeSBpZiB3ZSBjYWxsIHRo
aXMgYSAiY2x1c3RlciBrZXkiIGluc3RlYWQgb2YgCmEgIm1hc3RlciBrZXkiCjIpIERvIHlvdSBo
YXZlIGFueSB0aG91Z2h0cyBhYm91dCBob3cgd2UgY2FuIHJlcGxhY2UgdGhpcyBrZXkgaWYgaXQg
ZXZlciAKZ2V0cyBjb21wcm9taXNlZD8KIMKgwqDCoCBUbyBtZSBpdCBzb3VuZHMgbGlrZSB3aWxs
IG5lZWQgYSB1c2VyIHNwYWNlIFRMUyBiYXNlZCBmcmFtZXdvcmsgCmFmdGVyIGFsbCB0byBhY2hp
ZXZlIHRoaXMuCgpSZWdhcmRzCi8vL2pvbgoKPgo+IFR1b25nIExpZW4gKDUpOgo+ICAgIHRpcGM6
IGZpeCB1c2luZyBzbXBfcHJvY2Vzc29yX2lkKCkgaW4gcHJlZW1wdGlibGUKPiAgICB0aXBjOiBv
cHRpbWl6ZSBrZXkgc3dpdGNoaW5nIHRpbWUgYW5kIGxvZ2ljCj4gICAgdGlwYzogaW50cm9kdWNl
IGVuY3J5cHRpb24gbWFzdGVyIGtleQo+ICAgIHRpcGM6IGFkZCBhdXRvbWF0aWMgc2Vzc2lvbiBr
ZXkgZXhjaGFuZ2UKPiAgICB0aXBjOiBhZGQgYXV0b21hdGljIHJla2V5aW5nIGZvciBlbmNyeXB0
aW9uIGtleQo+Cj4gICBpbmNsdWRlL3VhcGkvbGludXgvdGlwYy5oICAgICAgICAgfCAgIDIgKwo+
ICAgaW5jbHVkZS91YXBpL2xpbnV4L3RpcGNfbmV0bGluay5oIHwgICAyICsKPiAgIG5ldC90aXBj
L2NyeXB0by5jICAgICAgICAgICAgICAgICB8IDk4NiArKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLQo+ICAgbmV0L3RpcGMvY3J5cHRvLmggICAgICAgICAgICAgICAgIHwgIDQx
ICstCj4gICBuZXQvdGlwYy9saW5rLmMgICAgICAgICAgICAgICAgICAgfCAgIDUgKwo+ICAgbmV0
L3RpcGMvbXNnLmggICAgICAgICAgICAgICAgICAgIHwgIDEwICstCj4gICBuZXQvdGlwYy9uZXRs
aW5rLmMgICAgICAgICAgICAgICAgfCAgIDIgKwo+ICAgbmV0L3RpcGMvbm9kZS5jICAgICAgICAg
ICAgICAgICAgIHwgIDg5ICsrLS0KPiAgIG5ldC90aXBjL25vZGUuaCAgICAgICAgICAgICAgICAg
ICB8ICAgMiArCj4gICBuZXQvdGlwYy9zeXNjdGwuYyAgICAgICAgICAgICAgICAgfCAgIDkgKwo+
ICAgMTAgZmlsZXMgY2hhbmdlZCwgODYyIGluc2VydGlvbnMoKyksIDI4NiBkZWxldGlvbnMoLSkK
PgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBj
LWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1k
aXNjdXNzaW9uCg==
