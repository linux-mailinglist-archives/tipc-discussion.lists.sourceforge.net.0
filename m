Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BA3181B82
	for <lists+tipc-discussion@lfdr.de>; Wed, 11 Mar 2020 15:39:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jC2WR-0007Us-D6; Wed, 11 Mar 2020 14:39:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jC2WQ-0007Ui-0i
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Mar 2020 14:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y+Ya+uts2CYLd6znJrbRoxQR2kW8iK8Mk3P58wzWv14=; b=QNIcu9/j4CVbDrrVd2s/afYM5
 CgqNKRO8KP6GXeFmMOFR87SZRCcmHYqywoUnTKa83PSX9Kloqxvc4scgWkjITlfpWciiRWruQc5X2
 mb+xnjffajliLmGf8/v+XtvBbOnyVTYvaZ2FbuaamkQE0Bzu4dYuqc551dJpoiFrk1538=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y+Ya+uts2CYLd6znJrbRoxQR2kW8iK8Mk3P58wzWv14=; b=CK1hlMf8j+aAFmj7blzIThkygq
 Aw7oZ892MXM0ep2pldVI1jILDYJxg0I5JUt7Pk5rlOLWBWqKaZq5IuZ5RbuYeigTarxVrnIm0gzyI
 MsXnzYL5+G+uEzGK/jbl/Yl+7yj+D/KmJQInWPztJqxH5cFlQHR/ctdnRmq7wGNyJ/4k=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jC2WK-004nXX-Ep
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Mar 2020 14:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583937573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y+Ya+uts2CYLd6znJrbRoxQR2kW8iK8Mk3P58wzWv14=;
 b=dIKoAz9QZL7iFZKkPRBKgU7yiep+D8EI+bnm6XihoqftXZMrnhVidx0/8CIaC05tnJhJjJ
 8C4w+cZRkzcUP3CZ61jCRks95bddz2+Fet+R4jHZ5fbnBzxfkmabXpbrE1LBwQbxLm6Hcj
 GN5cCmIc0Ble78ZZBnkjsNNjmLj2GMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-QFYk-1RDPdO2r6UOqdgHMw-1; Wed, 11 Mar 2020 10:39:30 -0400
X-MC-Unique: QFYk-1RDPdO2r6UOqdgHMw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C93C477;
 Wed, 11 Mar 2020 14:39:29 +0000 (UTC)
Received: from jmaloy.remote.csb (ovpn-125-109.rdu2.redhat.com [10.10.125.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DD1590A0E;
 Wed, 11 Mar 2020 14:39:28 +0000 (UTC)
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net
References: <1582098115-29092-1-git-send-email-tuong.t.lien@dektech.com.au>
 <2ab401d5f790$94dde8e0$be99baa0$@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d1136731-a885-14ce-5e90-ae95480bf09f@redhat.com>
Date: Wed, 11 Mar 2020 10:39:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <2ab401d5f790$94dde8e0$be99baa0$@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jC2WK-004nXX-Ep
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] FW: [PATCH] ptts: fix tipcTS failure in case
 of latency
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

TG9va3MgZ29vZC4KTm90IHN1cmUgaWYgdGhpcyBpcyBuZWVkZWTCoCBmb3IgdXRpbHMsIGJ1dCBz
dGlsbDoKQWNrZWQtYnk6IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+CgovLy9qb24KCk9u
IDMvMTEvMjAgNjozNCBBTSwgVHVvbmcgTGllbiBUb25nIHdyb3RlOgo+IFJlc2VuZCB0aGlzLi4u
IEl0IHNlZW1lZCB0byBiZSBkcm9wcGVkIHNvbWVob3cuLi4KPgo+IEJSL1R1b25nCj4KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBk
ZWt0ZWNoLmNvbS5hdT4KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDE5LCAyMDIwIDI6NDIg
UE0KPiBUbzogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgam1hbG95QHJl
ZGhhdC5jb20KPiBDYzogdGlwYy1kZWtAZGVrdGVjaC5jb20uYXU7IFR1b25nIExpZW4gPHR1b25n
LnQubGllbkBkZWt0ZWNoLmNvbS5hdT4KPiBTdWJqZWN0OiBbUEFUQ0hdIHB0dHM6IGZpeCB0aXBj
VFMgZmFpbHVyZSBpbiBjYXNlIG9mIGxhdGVuY3kKPgo+IFRoZSAncHR0cycgdGVzdCBrZWVwcyBm
YWlsZWQgd2hlbiB0ZXN0aW5nIHVuZGVyIGhpZ2ggdHJhZmZpYyB3aXRoIHNvbWUKPiBuZXR3b3Jr
IGxhdGVuY3kuIFRoaXMgaXMgYmVjYXVzZSB0aGUgJ3RpcGNUUycgc2VydmVyIHNpZGUgZG9lc24n
dCB3YWl0Cj4gbG9uZyBlbm91Z2ggYXQgaXRzICdzZWxlY3QoKScgY2FsbCwganVzdCAxcysgYW5k
IGdldHMgdGltZW91dC4gVGhlCj4gdGltZSB2YXJpYWJsZSBpcyBhbHNvIG5vdCByZS1pbml0aWF0
ZWQgYWZ0ZXIgdGhlIDFzdCB0aW1lb3V0LCBzbyB0aGUKPiBuZXh0IGF0dGVtcHRzIGp1c3QgcmV0
dXJuIHNob3J0bHkgaS5lLiB0aW1lb3V0ID0gMDoKPgo+IC4vdGlwY1RTIC12Cj4gLi4uCj4gUmVj
ZWl2ZWQgb24gMCBzb2NrZXRzIGluIHN1YnRlc3QgNiwgZXhwZWN0ZWQgMgo+IFJlY2VpdmVkIG9u
IDAgc29ja2V0cyBpbiBzdWJ0ZXN0IDYsIGV4cGVjdGVkIDIKPiBSZWNlaXZlZCBvbiAwIHNvY2tl
dHMgaW4gc3VidGVzdCA2LCBleHBlY3RlZCAyCj4gPT09PkZpbmlzaGVkIFN1YlRlc3QgNzogcmVj
ZWl2ZWQgMCBtc2dzIG9mIHN6IC0xIGF0IDIgc29ja2V0cyAoNDAgcGVyCj4gc29ja2V0KQo+IFRF
U1QgRkFJTEVEIFJlY2VpdmVkIHdyb25nIG51bWJlciBvZiBtdWx0aWNhc3QgbWVzc2FnZXMKPgo+
IFRoZSBjb21taXQgZml4ZXMgdGhlIGlzc3VlIGJ5IGluY3JlYXNpbmcgdGhlIHRpbWVvdXQgdmFs
dWUgdG8gM3MgYW5kIGFsc28KPiByZS1pbml0aWF0aW5nIGl0IGNvcnJlY3RseS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT4KPiAtLS0K
PiAgIHRlc3QvcHR0cy90aXBjX3RzX3NlcnZlci5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Rlc3Qv
cHR0cy90aXBjX3RzX3NlcnZlci5jIGIvdGVzdC9wdHRzL3RpcGNfdHNfc2VydmVyLmMKPiBpbmRl
eCAzYTJmOTZmLi5lMTAyYzk0IDEwMDY0NAo+IC0tLSBhL3Rlc3QvcHR0cy90aXBjX3RzX3NlcnZl
ci5jCj4gKysrIGIvdGVzdC9wdHRzL3RpcGNfdHNfc2VydmVyLmMKPiBAQCAtNjEwLDcgKzYxMCw3
IEBAIHZvaWQgc2VydmVyX21jYXN0Cj4gICAJCXJjdmJ1ZiA9IG1hbGxvYyg2NjAwMCk7Cj4gICAJ
YnVmID0gcmN2YnVmOwo+ICAgCXJlY3ZTeW5jVElQQyAoVFNfU1lOQ19JRF8zKTsJLyogd2FpdCBm
b3IgY2xpZW50IHRvIHRlbGwgdXMgdG8KPiBzdGFydCAqLwo+IC0JdGltZW91dC50dl9zZWMgID0g
MTsKPiArCXRpbWVvdXQudHZfc2VjICA9IDM7Cj4gICAJdGltZW91dC50dl91c2VjID0gMDsKPiAg
IAlkYmcxKCI9PT0+U3RhcnRpbmcgU3ViVGVzdCAlZFxuIiwgc3QpOwo+ICAgCj4gQEAgLTYyNSwx
MiArNjI1LDEyIEBAIHZvaWQgc2VydmVyX21jYXN0Cj4gICAJCXdoaWxlIChza19jbnQgPCBleHBf
c2tzICkgewo+ICAgCQkJZmRzID0gKnJlYWRmZHM7CQkJCj4gICAJCQludW1fcmVhZHkgPSBzZWxl
Y3QoRkRfU0VUU0laRSwgJmZkcywgTlVMTCwgTlVMTCwKPiAmdGltZW91dCk7Cj4gKwkJCXRpbWVv
dXQudHZfc2VjICA9IDM7Cj4gICAJCQlpZiAoIW51bV9yZWFkeSkgewo+ICAgCQkJCXByaW50Zigi
UmVjZWl2ZWQgb24gJXUgc29ja2V0cyBpbiBzdWJ0ZXN0Cj4gJXUsIGV4cGVjdGVkICV1XG4iLAo+
ICAgCQkJCSAgICAgICBza19jbnQsIHN0LCBleHBfbnVtW251bVN1YlRlc3RdKTsKPiAgIAkJCQli
cmVhazsKPiAgIAkJCX0KPiAtCQkJdGltZW91dC50dl9zZWMgID0gMTsKPiAgIAkJCWZvciAoaSA9
IDA7IGkgPCBUSVBDX01DQVNUX1NPQ0tFVFM7IGkrKykgewo+ICAgCQkJCQo+ICAgCQkJCWlmKCFG
RF9JU1NFVChzZFtpXSwgJmZkcykpCgotLSAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNj
dXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
