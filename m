Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987A1D0098
	for <lists+tipc-discussion@lfdr.de>; Tue, 12 May 2020 23:21:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYcLP-0006Rk-GY; Tue, 12 May 2020 21:21:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jYcLO-0006RY-5Y
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 21:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GZ5ocMFNORVMZ8J18X5VoXaiEIfALSPYMSFzlsDBB8=; b=ltJdJlzxsY+7xf8ervgkPtVXX
 9sUc/hSJ4mIU2zwz25RpSoMRW9Pgn+751ztGQjY9aqcgk1VQLlmfGcjGzYmqkroW3STURLtMeo8ex
 MWeZIL1seRUcwBB4ykoXqnfagStnAiX+7fl+Yg3I+3UX2rLRzLErFn6VsQJSZQM39kOtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:To:References:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/GZ5ocMFNORVMZ8J18X5VoXaiEIfALSPYMSFzlsDBB8=; b=ICETxkwD9mdmX9LIU6yJ2X39X9
 uqoBT8879TUvnIPPe0Ly6phGpu6+aAxHT2D0fSZlSkj0E8db7yTxG5l7HpiK5IqCkC70gLyvoYo2o
 CW5e4gdpMSk9Fd7N2A0TLk2oCYuM526BNzMLzc/3ao4Ya5MU4cprts+R0vLwaTVS7xuo=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jYcLI-00BrJe-HY
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 21:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589318486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/GZ5ocMFNORVMZ8J18X5VoXaiEIfALSPYMSFzlsDBB8=;
 b=a0/vb++lVP+vKHxTjixyZW1kQPdWZLvO7QP2Y5G4xtOQ9a4eqs2+pKquwtK2itJRhO3S09
 QTnSBG5vcYdqAqSkAIc5Pi7fAEasAdZFpJ+NGS/2Is3k42cDoSfpmoJiqislKYLuIE+tFd
 mTVL7nhLMExg8n+FmifMbof2jhcpqww=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-HbQD65DTOLqB8UFvQyZSCQ-1; Tue, 12 May 2020 17:21:23 -0400
X-MC-Unique: HbQD65DTOLqB8UFvQyZSCQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8229C1005510;
 Tue, 12 May 2020 21:21:22 +0000 (UTC)
Received: from [10.10.113.139] (ovpn-113-139.rdu2.redhat.com [10.10.113.139])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F041660F8D;
 Tue, 12 May 2020 21:21:20 +0000 (UTC)
References: <669a42d2-57b1-49db-54f8-7636c747ceb1@redhat.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 Xin Long <lxin@redhat.com>, Ying Xue <ying.xue@windriver.com>,
 Shuang Li <shuali@redhat.com>
From: Jon Maloy <jmaloy@redhat.com>
X-Forwarded-Message-Id: <669a42d2-57b1-49db-54f8-7636c747ceb1@redhat.com>
Message-ID: <6593ff17-05bb-2b94-6229-7f2a7a8c462c@redhat.com>
Date: Tue, 12 May 2020 17:21:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <669a42d2-57b1-49db-54f8-7636c747ceb1@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYcLI-00BrJe-HY
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Fwd: Re: FW: [PATCH 2/2] tipc: update a binding
 service via broadcast
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

Y2MgdG8gdGlwYy1kaXNjdXNzaW9uIGFuZCBvdGhlcnMuCi8vL2pvbgoKCi0tLS0tLS0tIEZvcndh
cmRlZCBNZXNzYWdlIC0tLS0tLS0tClN1YmplY3Q6IAlSZTogRlc6IFtQQVRDSCAyLzJdIHRpcGM6
IHVwZGF0ZSBhIGJpbmRpbmcgc2VydmljZSB2aWEgYnJvYWRjYXN0CkRhdGU6IAlUdWUsIDEyIE1h
eSAyMDIwIDE0OjM4OjI5IC0wNDAwCkZyb206IAlKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29t
PgpUbzogCUhvYW5nIEh1dSBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT4sIG1hbG95QGRv
bmpvbm4uY29tIAo8bWFsb3lAZG9uam9ubi5jb20+CgoKCkhpIEhvYW5nLApJIGhhZCB0byByZS1y
ZWFkIHRoZSBkaXNjdXNzaW9uIHdlIGhhZCBiYWNrIGluIE5vdmVtYmVyIHRvIHJlZnJlc2ggbXkg
Cm1lbW9yeSBhYm91dCB0aGlzLgpUbyBtZSB2MiBsb29rcyBsaWtlIGEgYmV0dGVyIGJhc2UgZm9y
IGZ1cnRoZXIgZGV2ZWxvcG1lbnQgdGhhbiB0aGUgbW9zdCAKcmVjZW50IHZlcnNpb24sCnNvIEkg
YW0gc29ycnkgdG8gaGF2ZSB3YXN0ZWQgeW91ciB0aW1lIGhlcmUuIEkgYW0gc3RpbGwgY29udmlu
Y2VkIHRoYXQgCnRoZSBtY2FzdC9yY2FzdCBzeW5jaApwcm90b2NvbCB3ZSBkZXZlbG9wZWQgY2Fu
IHNvbHZlIGFsbW9zdCBhbGwgb3VyIHByb2JsZW1zIGlmIHdlIHVuZGVyc3RhbmQgCnRvIHVzZSBp
dCByaWdodC4KCldoYXQgYWJvdXQgdGhlIGZvbGxvd2luZzoKClNlbmRpbmcgc2lkZToKCi0gRXZl
biB0aGUgaW5pdGlhbCBidWxrIGlzIHNlbnQgdmlhIHRpcGNfbXhhc3RfeG1pdCgpLCBidXQgd2l0
aCBvbmx5IG9uZQogwqAgZGVzdGluYXRpb24gbm9kZcKgIGFuZCBhcyAibWFuZGF0b3J5IHJjYXN0
Ii4gVGhlIGJyb2FkY2FzdCBsaW5rIG1heQogwqAgc3RpbGwgY2hvb3NlIHRvIHNlbmQgaXQgYXMg
YmNhc3QgaW4gY2FzZSByY2FzdCBoYXMgYmVlbiBtYW51YWxseSBkaXNhYmxlZAogwqAgYnkgdGhl
IHVzZXIsIGJ1dCB0aGUgc3VycGx1cyBtZXNzYWdlcyB3aWxsIGJlIGRyb3BwZWQgb24gdGhlCiDC
oCBub24tZGVzdGluYXRpb24gbm9kZXMuIChJbiBjYXNlIG9mIGxlZ2FjeSBub2RlcyB0aGlzIGlz
IGNlcnRhaW4sIGluIHRoZQogwqAgY2FzZSBvZiBuZXdlciBub2RlcyB3ZSBtdXN0IG1ha2Ugc3Vy
ZSB0aGF0IGl0IGhhcHBlbnMgYnkgc2V0dGluZwogwqAgdGhlICdkZXN0bm9kZScgZmllbGQgaW4g
dGhlIGhlYWRlciBhbmQgYWx3YXlzIGNoZWNrIGZvciB0aGlzIGluCiDCoCB0aXBjX25hbWVkX3Jj
digpLinCoCBJIHRoaW5rIHRoaXMgaXMgYSB3ZWlyZCBhbmQgcmFyZSBjYXNlIHdoZXJlIHdlCiDC
oCBjYW4gYWNjZXB0IHRoZSBleHRyYSBvdmVyaGVhZCBvZiBicm9hZGNhc3QuIFVuZGVyIGFsbCBu
b3JtYWwKIMKgIGNvbmRpdGlvbnMgcmNhc3Qgd2lsbCBiZSB1c2VkIGhlcmUuCi0gUmVndWxhciBQ
VUJMSVNIL1dJVEhEUkFXIG1lc3NhZ2VzIGFyZSBzZW50IGFzICJtYW5kYXRvcnkgYmNhc3QiLAog
wqAgb3IgaWYgc29tZSBub2RlcyBkb24ndCBub3Qgc3VwcG9ydCBUSVBDX01DQVNUX1JCQ1RMIGFz
ICJtYW5kYXRvcnkgcmNhc3QiLgogwqAgVGhlIGJyb2FkY2FzdCBsaW5rIG1heSBzdGlsbCBjaG9v
c2UgdG8gc2VuZCBpdCBhcyByY2FzdCwgYnV0IHRoaXMgaXMgCm5vdGhpbmcKIMKgIHdlIG5lZWQg
dG8gd29ycnkgYWJvdXQgYXMgbG9uZyBhcyB0aGUgc3luY3Jvbml6YXRpb24gbWVjaGFuaXNtIGlz
CiDCoCBhY3RpdmUuIFVuZGVyIGFsbCBub3JtYWwgY29uZGl0aW9ucyBiY2FzdCB3aWxsIGJlIHNl
bGVjdGVkIHdoZW4gcG9zc2libGUsCiDCoCBzaW5jZcKgIGFsbCBub2RlcyBhcmUgZGVzdGluYXRp
b25zLgoKUmVjZWl2aW5nIHNpZGU6Ci0gV2UgbmVlZCBhIGRlZmVycmVkIHF1ZXVlLCBidXQgbGFz
dCB0aW1lIGkgbWlzc2VkIHRoYXQgd2UgZG9uJ3QgbmVlZAogwqAgb25lIHBlciBub2RlLCBpdCBp
cyBzdWZmaWNpZW50IHRvIGhhdmUgYSBnbG9iYWwgb25lLCBhcyB5b3Ugd2VyZSAKc3VnZ2VzdGlu
Zy4KIMKgIFNvIHRvIG1lIHRoZSBjb2RlIGlzIG9rIGhlcmUuCi0gQXMgbWVudGlvbmVkIGVhcmxp
ZXIsIHRpcGNfbmFtZWRfcmN2KCkgb25seSBhY2NlcHRzIG1lc3NhZ2VzIHdoZXJlCiDCoCBkZXN0
bm9kZSBpcyAic2VsZiIgKGJ1bGspIG9yIHplcm8gKHB1Ymxpc2gvd2l0aGRyYXcpLgoKVGhlIHBv
aW50IHdpdGggYWxsIHRoaXMgaXMgdGhhdCBhbGwgbWVzc2FnZXMgd2lsbCBub3cgYmUgc3ViamVj
dCB0byB0aGUKIMKgc3luY2hyb25pemF0aW9uIG1lY2hhbmlzbSwgc28gdGhlIGJ1bGsgbWVzc2Fn
ZXMgYXJlCmd1YXJhbnRlZWQgdG8gYmUgZGVsaXZlcmVkIGluIG9yZGVyIGFuZCBhaGVhZCBvZiBp
bmRpdmlkdWFsCnB1YmxpY2F0aW9ucy93aXRoZHJhd3MsIGFuZCBldmVuIHRvcG9sb2d5IGNoYW5n
ZXMgd2lsbCBhbG1vc3QKbmV2ZXIgbGVhZCB0byBjaGFuZ2Ugb2Ygc2VuZGluZyBtZXRob2QgYW5k
IG5lZWQgZm9yIHN5bmNocm9uaXphdGlvbi4KV2UgbXVzdCBtYWtlIG9uZSBjaGFuZ2UgdG8gdGhl
IGJyb2FkY2FzdCBwcm90b2NvbCB0aG91Z2g6IGV2ZW4KIm1hbmRhdG9yeSIgbWVzc2FnZXMgbXVz
dCBiZSBtYWRlIHN1YmplY3QgdG8gdGhlIHN5bmNocm9uaXphdGlvbgptZWNoYW5pc20sIHNvbWV0
aGluZyB0aGF0IGRvZXNuJ3Qgc2VlbSB0byBiZSB0aGUgY2FzZSBub3cuCigiT3IgbWF5YmUgd2Ug
ZG9uJ3QgbmVlZCB0byBzZXQgIm1hbmRhdG9yeSIgYXQgYWxsPyBUaGlzIG5lZWRzIHRvCiDCoCBi
ZSBjaGVja2VkLikKClRoZSBhZHZhbnRhZ2Ugb2YgdGhpcyBtZXRob2QgaXMgc2ltcGxpY2l0eS4K
LSBXZSBkb24ndCBuZWVkIGFueSBzZXBhcmF0ZSBzeW5jaHJvbml6YXRpb24gbWVjaGFuaXNtIGZv
cgogwqAgTkFNRV9ESVNUUiBtZXNzYWdlcyBhdCBhbGwsIHdlIGp1c3QgdXNlIHdoYXQgaXMgYWxy
ZWFkeSB0aGVyZS4KClRoZSBkaXNhZHZhbnRhZ2UgaXMgdGhhdCB0aGVyZSB3aWxsIGJlIGEgbG90
IG9mIFNZTiBtZXNzYWdlcyBzZW50CmlmIHdlIGFyZSBub3QgY2FyZWZ1bC4KLSBFdmVyeSB0aW1l
IGEgbmV3IG5vZGUgY29tZXMgdXAsIHRoZSBvdGhlciBub2RlcyB3aWxsIHNlbmQgaXQgYQogwqAg
YSBiY2FzdCBTWU4gYmVmb3JlIHRoZXkgc2VuZCB0aGUgYnVsaywgYmVjYXVzZSB0aGV5IGJlbGll
dmUgdGhleSBoYXZlCiDCoCBqdXN0IHN3aXRjaGVkwqAgZnJvbSBiY2FzdCAobm9ybWFsIG1vZGUp
wqAgdG8gcmNhc3QgKGJ1bGsgbW9kZSkuCiDCoCBUaGlzIG9uZSBpcyBpbiByZWFsaXR5IHVubmVj
ZXNzYXJ5LCBzaW5jZSB3ZSBjYW4gYmUgc3VyZSB0aGF0CiDCoCB0aGUgbmV3IG5vZGUgaGFzIG5v
dCBiZWVuIHNlbnQgYW55IHByZXZpb3VzIGJjYXN0IHRoYXQgbmVlZHMKIMKgIHRvIGJlIHN5bmNo
ZWQgd2l0aC4KLSBBdCB0aGUgZmlyc3QgcHVibGljYXRpb24vd2l0aGRyYXcgc2VudCBhZnRlciB0
aGUgYnVsayB0aGUgbmVpZ2hib3IKIMKgIG5vZGVzIHdpbGzCoCBzZW5kIGFuIHJjYXN0wqAgU1lO
IHRvIGFsbCBvdGhlciBub2RlcywgYmVjYXVzZSB0aGV5IGp1c3QKIMKgICJzd2l0Y2hlZCIgYmFj
a8KgIGZyb20gcmNhc3QgdG8gYmNhc3QuCiDCoCBJbiB0aGlzIGNhc2Ugd2UgcmVhbGx5IG5lZWQg
dG8gc2VuZCBhbiByY2FzdCBTWU4gdG8gdGhlIG5ldyBub2RlCiDCoCB0aGF0IGNhbWUgdXAsIHNp
bmNlIHRoaXMgaXMgdGhlIG9ubHkgb25lIHdoZXJlIHRoZXJlIGlzIHJpc2sgb2YKIMKgIGEgcmFj
ZS4gVGhpcyBtZXNzYWdlIGRvZXMgaW4gcmVhbGl0eSBzZXJ2ZSBhcyAiZW5kLW9mLWJ1bGsiIG1l
c3NhZ2UKIMKgIGJ1dCBpcyBoYW5kbGVkIGxpa2UgYW55IG90aGVyIFNZTiBieSB0aGUgcmVjaXZp
bmcgdGlwY19tY2FzdF9maWx0ZXJfcmN2KCkKIMKgIFNvLCB0byBhdm9pZCB0aGlzIHRoZSBicm9h
ZGNhc3QgcHJvdG9jb2wgbmVlZHMgdG8gYmUgYWJsZSB0byByZWNvZ25pemUKIMKgIE5BTUVfRElT
VFIgbWVzc2FnZXMgYW5kIHRyZWF0IHRoZW4gc2xpZ2h0bHkgZGlmZmVyZW50IGZyb20gdGhlIG90
aGVycywKIMKgIG9yIGl0IG5lZWRzIHRvIGJlIHRvbGQgd2hhdCB0byBkbyBieSB0aGUgbmFtZV9k
aXN0ci5jIGNvZGUgdmlhIHRoZSBBUEkuCiDCoCBNYXliZSBhIGNvdXBsZSBvZiBuZXcgZmllbGRz
IGluIHN0cnVjdCB0aXBjX21jYXN0X21ldGhvZD8KCldoYXQgZG8geW91IHRoaW5rPwoKUmVnYXJk
cwovLy9qb24KCgpPbiA1LzEyLzIwIDY6MjIgQU0sIEhvYW5nIEh1dSBMZSB3cm90ZToKPiBKdXN0
IGZvcndhcmQgdGhlIHBhdGNoIEkgbWVudGlvbmVkLgo+Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPiBGcm9tOiBIb2FuZyBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT4KPiBTZW50
OiBUdWVzZGF5LCBOb3ZlbWJlciAxOSwgMjAxOSA1OjAxIFBNCj4gVG86IGpvbi5tYWxveUBlcmlj
c3Nvbi5jb207IG1hbG95QGRvbmpvbm4uY29tOyB0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdQo+IFN1
YmplY3Q6IFtQQVRDSCAyLzJdIHRpcGM6IHVwZGF0ZSBhIGJpbmRpbmcgc2VydmljZSB2aWEgYnJv
YWRjYXN0Cj4KPiBDdXJyZW50bHksIHVwZGF0aW5nIGJpbmRpbmcgdGFibGUgKGFkZCBzZXJ2aWNl
IGJpbmRpbmcgdG8KPiBuYW1lIHRhYmxlL3dpdGhkcmF3IGEgc2VydmljZSBiaW5kaW5nKSBpcyBi
ZWluZyBzZW50IG92ZXIgcmVwbGljYXN0Lgo+IEhvd2V2ZXIsIGlmIHdlIGFyZSBzY2FsaW5nIHVw
IGNsdXN0ZXJzIHRvID4gMTAwIG5vZGVzL2NvbnRhaW5lcnMgdGhpcwo+IG1ldGhvZCBpcyBsZXNz
IGFmZmVjdGlvbiBiZWNhdXNlIG9mIGxvb3BpbmcgdGhyb3VnaCBub2RlcyBpbiBhIGNsdXN0ZXIg
b25lCj4gYnkgb25lLgo+Cj4gSXQgaXMgd29ydGggdG8gdXNlIGJyb2FkY2FzdCB0byB1cGRhdGUg
YSBiaW5kaW5nIHNlcnZpY2UuIFRoZW4gYmluZGluZwo+IHRhYmxlIHVwZGF0ZXMgaW4gYWxsIG5v
ZGVzIGZvciBvbmUgc2hvdC4KPgo+IFRoZSBtZWNoYW5pc20gaXMgYmFja3dhcmQgY29tcGF0aWJs
ZSBhcyBzeW5jIG1lc3NhZ2Ugc2xpZW50IGRyb3BwZWQuCj4KPiB2MjogcmVzb2x2ZSBzeW5jaHJv
bml6YXRpb24gcHJvYmxlbSB3aGVuIHN3aXRjaGluZyBmcm9tIHVuaWNhc3QgdG8KPiBicm9hZGNh
c3QKPgo+IFNpZ25lZC1vZmYtYnk6IEhvYW5nIExlIDxob2FuZy5oLmxlQGRla3RlY2guY29tLmF1
Pgo+IC0tLQo+IG5ldC90aXBjL2JjYXN0LmMgfCAzICsrLQo+IG5ldC90aXBjL2xpbmsuYyB8IDYg
KysrKysrCj4gbmV0L3RpcGMvbmFtZV90YWJsZS5jIHwgMzMgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tCj4gbmV0L3RpcGMvbmFtZV90YWJsZS5oIHwgNCArKysrCj4gbmV0L3RpcGMv
bm9kZS5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiBuZXQvdGlwYy9u
b2RlLmggfCAyICsrCj4gNiBmaWxlcyBjaGFuZ2VkLCA3NiBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL25ldC90aXBjL2JjYXN0LmMgYi9uZXQvdGlwYy9iY2Fz
dC5jCj4gaW5kZXggZTA2ZjA1ZDU1NTM0Li40NGVkNDgxZmVjNDcgMTAwNjQ0Cj4gLS0tIGEvbmV0
L3RpcGMvYmNhc3QuYwo+ICsrKyBiL25ldC90aXBjL2JjYXN0LmMKPiBAQCAtMzI0LDcgKzMyNCw4
IEBAIHN0YXRpYyBpbnQgdGlwY19tY2FzdF9zZW5kX3N5bmMoc3RydWN0IG5ldCAqbmV0LCAKPiBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+IGhkciA9IGJ1Zl9tc2coc2tiKTsKPiBpZiAobXNnX3VzZXIo
aGRyKSA9PSBNU0dfRlJBR01FTlRFUikKPiBoZHIgPSBtc2dfaW5uZXJfaGRyKGhkcik7Cj4gLSBp
ZiAobXNnX3R5cGUoaGRyKSAhPSBUSVBDX01DQVNUX01TRykKPiArIGlmIChtc2dfdXNlcihoZHIp
ICE9IE5BTUVfRElTVFJJQlVUT1IgJiYKPiArIG1zZ190eXBlKGhkcikgIT0gVElQQ19NQ0FTVF9N
U0cpCj4gcmV0dXJuIDA7Cj4gLyogQWxsb2NhdGUgZHVtbXkgbWVzc2FnZSAqLwo+IGRpZmYgLS1n
aXQgYS9uZXQvdGlwYy9saW5rLmMgYi9uZXQvdGlwYy9saW5rLmMKPiBpbmRleCBmYjcyMDMxMjI4
YzkuLmEyZTlhNjRkNWEwZiAxMDA2NDQKPiAtLS0gYS9uZXQvdGlwYy9saW5rLmMKPiArKysgYi9u
ZXQvdGlwYy9saW5rLmMKPiBAQCAtMTE5MCw2ICsxMTkwLDggQEAgc3RhdGljIGJvb2wgdGlwY19k
YXRhX2lucHV0KHN0cnVjdCB0aXBjX2xpbmsgKmwsIAo+IHN0cnVjdCBza19idWZmICpza2IsCj4g
c3RydWN0IHNrX2J1ZmZfaGVhZCAqaW5wdXRxKQo+IHsKPiBzdHJ1Y3Qgc2tfYnVmZl9oZWFkICpt
Y19pbnB1dHEgPSBsLT5iY19yY3ZsaW5rLT5pbnB1dHE7Cj4gKyBzdHJ1Y3QgbmFtZV90YWJsZSAq
bnQgPSB0aXBjX25hbWVfdGFibGUobC0+bmV0KTsKPiArIHN0cnVjdCBza19idWZmX2hlYWQgKmRl
Zm5xID0gJm50LT5kZWZlcl9uYW1lZHE7Cj4gc3RydWN0IHRpcGNfbXNnICpoZHIgPSBidWZfbXNn
KHNrYik7Cj4gc3dpdGNoIChtc2dfdXNlcihoZHIpKSB7Cj4gQEAgLTEyMTEsNiArMTIxMywxMCBA
QCBzdGF0aWMgYm9vbCB0aXBjX2RhdGFfaW5wdXQoc3RydWN0IHRpcGNfbGluayAKPiAqbCwgc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwKPiBjYXNlIE5BTUVfRElTVFJJQlVUT1I6Cj4gbC0+YmNfcmN2bGlu
ay0+c3RhdGUgPSBMSU5LX0VTVEFCTElTSEVEOwo+IHNrYl9xdWV1ZV90YWlsKGwtPm5hbWVkcSwg
c2tiKTsKPiArCj4gKyBzcGluX2xvY2tfYmgoJmRlZm5xLT5sb2NrKTsKPiArIHRpcGNfbWNhc3Rf
ZmlsdGVyX21zZyhsLT5uZXQsIGRlZm5xLCBsLT5uYW1lZHEpOwo+ICsgc3Bpbl91bmxvY2tfYmgo
JmRlZm5xLT5sb2NrKTsKPiByZXR1cm4gdHJ1ZTsKPiBjYXNlIE1TR19CVU5ETEVSOgo+IGNhc2Ug
VFVOTkVMX1BST1RPQ09MOgo+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9uYW1lX3RhYmxlLmMgYi9u
ZXQvdGlwYy9uYW1lX3RhYmxlLmMKPiBpbmRleCA2NmE2NWMyY2RiMjMuLjU5M2RjZDExMzU3ZiAx
MDA2NDQKPiAtLS0gYS9uZXQvdGlwYy9uYW1lX3RhYmxlLmMKPiArKysgYi9uZXQvdGlwYy9uYW1l
X3RhYmxlLmMKPiBAQCAtNjE1LDkgKzYxNSwxMSBAQCBzdHJ1Y3QgcHVibGljYXRpb24gKnRpcGNf
bmFtZXRibF9wdWJsaXNoKHN0cnVjdCAKPiBuZXQgKm5ldCwgdTMyIHR5cGUsIHUzMiBsb3dlciwK
PiBzdHJ1Y3QgdGlwY19uZXQgKnRuID0gdGlwY19uZXQobmV0KTsKPiBzdHJ1Y3QgcHVibGljYXRp
b24gKnAgPSBOVUxMOwo+IHN0cnVjdCBza19idWZmICpza2IgPSBOVUxMOwo+ICsgYm9vbCByY2Fz
dDsKPiBzcGluX2xvY2tfYmgoJnRuLT5uYW1ldGJsX2xvY2spOwo+ICsgcmNhc3QgPSBudC0+cmNh
c3Q7Cj4gaWYgKG50LT5sb2NhbF9wdWJsX2NvdW50ID49IFRJUENfTUFYX1BVQkwpIHsKPiBwcl93
YXJuKCJCaW5kIGZhaWxlZCwgbWF4IGxpbWl0ICV1IHJlYWNoZWRcbiIsIFRJUENfTUFYX1BVQkwp
Owo+IGdvdG8gZXhpdDsKPiBAQCAtNjMyLDggKzYzNCwxOCBAQCBzdHJ1Y3QgcHVibGljYXRpb24g
KnRpcGNfbmFtZXRibF9wdWJsaXNoKHN0cnVjdCAKPiBuZXQgKm5ldCwgdTMyIHR5cGUsIHUzMiBs
b3dlciwKPiBleGl0Ogo+IHNwaW5fdW5sb2NrX2JoKCZ0bi0+bmFtZXRibF9sb2NrKTsKPiAtIGlm
IChza2IpCj4gLSB0aXBjX25vZGVfYnJvYWRjYXN0KG5ldCwgc2tiKTsKPiArIGlmIChza2IpIHsK
PiArIC8qIFVzZSBicm9hZGNhc3QgaWYgYWxsIG5vZGVzIHN1cHBvcnQgYnJvYWRjYXN0IE5BTUVf
RElTVFIgKi8KPiArIGlmICh0aXBjX25ldChuZXQpLT5jYXBhYmlsaXRpZXMgJiBUSVBDX01DQVNU
X1JCQ1RMKSB7Cj4gKyB0aXBjX25vZGVfYnJvYWRjYXN0X25hbWVkX3B1Ymxpc2gobmV0LCBza2Is
ICZyY2FzdCk7Cj4gKyBzcGluX2xvY2tfYmgoJnRuLT5uYW1ldGJsX2xvY2spOwo+ICsgbnQtPnJj
YXN0ID0gcmNhc3Q7Cj4gKyBzcGluX3VubG9ja19iaCgmdG4tPm5hbWV0YmxfbG9jayk7Cj4gKyB9
IGVsc2Ugewo+ICsgLyogT3RoZXJ3aXNlLCBiZSBiYWNrd2FyZHMgY29tcGF0aWJsZSAqLwo+ICsg
dGlwY19ub2RlX2Jyb2FkY2FzdChuZXQsIHNrYik7Cj4gKyB9Cj4gKyB9Cj4gcmV0dXJuIHA7Cj4g
fQo+IEBAIC02NDgsOCArNjYwLDEwIEBAIGludCB0aXBjX25hbWV0Ymxfd2l0aGRyYXcoc3RydWN0
IG5ldCAqbmV0LCB1MzIgCj4gdHlwZSwgdTMyIGxvd2VyLAo+IHUzMiBzZWxmID0gdGlwY19vd25f
YWRkcihuZXQpOwo+IHN0cnVjdCBza19idWZmICpza2IgPSBOVUxMOwo+IHN0cnVjdCBwdWJsaWNh
dGlvbiAqcDsKPiArIGJvb2wgcmNhc3Q7Cj4gc3Bpbl9sb2NrX2JoKCZ0bi0+bmFtZXRibF9sb2Nr
KTsKPiArIHJjYXN0ID0gbnQtPnJjYXN0Owo+IHAgPSB0aXBjX25hbWV0YmxfcmVtb3ZlX3B1Ymwo
bmV0LCB0eXBlLCBsb3dlciwgdXBwZXIsIHNlbGYsIGtleSk7Cj4gaWYgKHApIHsKPiBAQCAtNjY0
LDcgKzY3OCwxNiBAQCBpbnQgdGlwY19uYW1ldGJsX3dpdGhkcmF3KHN0cnVjdCBuZXQgKm5ldCwg
dTMyIAo+IHR5cGUsIHUzMiBsb3dlciwKPiBzcGluX3VubG9ja19iaCgmdG4tPm5hbWV0YmxfbG9j
ayk7Cj4gaWYgKHNrYikgewo+IC0gdGlwY19ub2RlX2Jyb2FkY2FzdChuZXQsIHNrYik7Cj4gKyAv
KiBVc2UgYnJvYWRjYXN0IGlmIGFsbCBub2RlcyBzdXBwb3J0IGJyb2FkY2FzdCBOQU1FX0RJU1RS
ICovCj4gKyBpZiAodGlwY19uZXQobmV0KS0+Y2FwYWJpbGl0aWVzICYgVElQQ19NQ0FTVF9SQkNU
TCkgewo+ICsgdGlwY19ub2RlX2Jyb2FkY2FzdF9uYW1lZF9wdWJsaXNoKG5ldCwgc2tiLCAmcmNh
c3QpOwo+ICsgc3Bpbl9sb2NrX2JoKCZ0bi0+bmFtZXRibF9sb2NrKTsKPiArIG50LT5yY2FzdCA9
IHJjYXN0Owo+ICsgc3Bpbl91bmxvY2tfYmgoJnRuLT5uYW1ldGJsX2xvY2spOwo+ICsgfSBlbHNl
IHsKPiArIC8qIE90aGVyd2lzZSwgYmUgYmFja3dhcmRzIGNvbXBhdGlibGUgKi8KPiArIHRpcGNf
bm9kZV9icm9hZGNhc3QobmV0LCBza2IpOwo+ICsgfQo+IHJldHVybiAxOwo+IH0KPiByZXR1cm4g
MDsKPiBAQCAtNzQ2LDYgKzc2OSw5IEBAIGludCB0aXBjX25hbWV0YmxfaW5pdChzdHJ1Y3QgbmV0
ICpuZXQpCj4gSU5JVF9MSVNUX0hFQUQoJm50LT5jbHVzdGVyX3Njb3BlKTsKPiByd2xvY2tfaW5p
dCgmbnQtPmNsdXN0ZXJfc2NvcGVfbG9jayk7Cj4gdG4tPm5hbWV0YmwgPSBudDsKPiArIC8qICdi
dWxrJyB1cGRhdGVkIG1lc3NhZ2VzIHZpYSB1bmljYXN0ICovCj4gKyBudC0+cmNhc3QgPSB0cnVl
Owo+ICsgc2tiX3F1ZXVlX2hlYWRfaW5pdCgmbnQtPmRlZmVyX25hbWVkcSk7Cj4gc3Bpbl9sb2Nr
X2luaXQoJnRuLT5uYW1ldGJsX2xvY2spOwo+IHJldHVybiAwOwo+IH0KPiBAQCAtNzg0LDYgKzgx
MCw3IEBAIHZvaWQgdGlwY19uYW1ldGJsX3N0b3Aoc3RydWN0IG5ldCAqbmV0KQo+ICogcHVibGlj
YXRpb25zLCB0aGVuIHJlbGVhc2UgdGhlIG5hbWUgdGFibGUKPiAqLwo+IHNwaW5fbG9ja19iaCgm
dG4tPm5hbWV0YmxfbG9jayk7Cj4gKyBza2JfcXVldWVfcHVyZ2UoJm50LT5kZWZlcl9uYW1lZHEp
Owo+IGZvciAoaSA9IDA7IGkgPCBUSVBDX05BTUVUQkxfU0laRTsgaSsrKSB7Cj4gaWYgKGhsaXN0
X2VtcHR5KCZudC0+c2VydmljZXNbaV0pKQo+IGNvbnRpbnVlOwo+IGRpZmYgLS1naXQgYS9uZXQv
dGlwYy9uYW1lX3RhYmxlLmggYi9uZXQvdGlwYy9uYW1lX3RhYmxlLmgKPiBpbmRleCBmNzkwNjYz
MzRjYzguLmI4Y2RmMmEyOWQ0OCAxMDA2NDQKPiAtLS0gYS9uZXQvdGlwYy9uYW1lX3RhYmxlLmgK
PiArKysgYi9uZXQvdGlwYy9uYW1lX3RhYmxlLmgKPiBAQCAtOTUsNiArOTUsOCBAQCBzdHJ1Y3Qg
cHVibGljYXRpb24gewo+ICogLSB1c2VkIGJ5IG5hbWVfZGlzdHIgdG8gc2VuZCBidWxrIHVwZGF0
ZXMgdG8gbmV3IG5vZGVzCj4gKiAtIHVzZWQgYnkgbmFtZV9kaXN0ciBkdXJpbmcgcmUtaW5pdCBv
ZiBuYW1lIHRhYmxlCj4gKiBAbG9jYWxfcHVibF9jb3VudDogbnVtYmVyIG9mIHB1YmxpY2F0aW9u
cyBpc3N1ZWQgYnkgdGhpcyBub2RlCj4gKyAqIEBkZWZlcl9uYW1lZHE6IHRlbXBvcmFyaWx5IHF1
ZXVlIGZvciAnc3luY2hpbmcnIHVwZGF0ZQo+ICsgKiBAcmNhc3Q6IHByZXZpb3VzIG1ldGhvZCB1
c2VkIHRvIHB1Ymxpc2gvd2l0aGRyYXcgYSBzZXJ2aWNlCj4gKi8KPiBzdHJ1Y3QgbmFtZV90YWJs
ZSB7Cj4gc3RydWN0IGhsaXN0X2hlYWQgc2VydmljZXNbVElQQ19OQU1FVEJMX1NJWkVdOwo+IEBA
IC0xMDIsNiArMTA0LDggQEAgc3RydWN0IG5hbWVfdGFibGUgewo+IHN0cnVjdCBsaXN0X2hlYWQg
Y2x1c3Rlcl9zY29wZTsKPiByd2xvY2tfdCBjbHVzdGVyX3Njb3BlX2xvY2s7Cj4gdTMyIGxvY2Fs
X3B1YmxfY291bnQ7Cj4gKyBzdHJ1Y3Qgc2tfYnVmZl9oZWFkIGRlZmVyX25hbWVkcTsKPiArIGJv
b2wgcmNhc3Q7Cj4gfTsKPiBpbnQgdGlwY19ubF9uYW1lX3RhYmxlX2R1bXAoc3RydWN0IHNrX2J1
ZmYgKnNrYiwgc3RydWN0IAo+IG5ldGxpbmtfY2FsbGJhY2sgKmNiKTsKPiBkaWZmIC0tZ2l0IGEv
bmV0L3RpcGMvbm9kZS5jIGIvbmV0L3RpcGMvbm9kZS5jCj4gaW5kZXggYWFmNTk1NjEzZTZlLi5i
MDU4NjQ3ZmE3OGIgMTAwNjQ0Cj4gLS0tIGEvbmV0L3RpcGMvbm9kZS5jCj4gKysrIGIvbmV0L3Rp
cGMvbm9kZS5jCj4gQEAgLTI5ODEsMyArMjk4MSwzNSBAQCB2b2lkIHRpcGNfbm9kZV9wcmVfY2xl
YW51cF9uZXQoc3RydWN0IG5ldCAKPiAqZXhpdF9uZXQpCj4gfQo+IHJjdV9yZWFkX3VubG9jaygp
Owo+IH0KPiArCj4gK2ludCB0aXBjX25vZGVfYnJvYWRjYXN0X25hbWVkX3B1Ymxpc2goc3RydWN0
IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVmZiAKPiAqc2tiLAo+ICsgYm9vbCAqcmNhc3QpCj4gK3sK
PiArIHN0cnVjdCB0aXBjX21jX21ldGhvZCBtZXRob2QgPSB7LnJjYXN0ID0gKnJjYXN0fTsKPiAr
IHN0cnVjdCBza19idWZmX2hlYWQgeG1pdHE7Cj4gKyBzdHJ1Y3QgdGlwY19ubGlzdCBkZXN0czsK
PiArIHN0cnVjdCB0aXBjX25vZGUgKm47Cj4gKyB1MTYgY29uZ19saW5rX2NudDsKPiArIGludCBy
YyA9IDA7Cj4gKwo+ICsgX19za2JfcXVldWVfaGVhZF9pbml0KCZ4bWl0cSk7Cj4gKyBfX3NrYl9x
dWV1ZV90YWlsKCZ4bWl0cSwgc2tiKTsKPiArCj4gKyB0aXBjX25saXN0X2luaXQoJmRlc3RzLCB0
aXBjX293bl9hZGRyKG5ldCkpOwo+ICsgcmN1X3JlYWRfbG9jaygpOwo+ICsgbGlzdF9mb3JfZWFj
aF9lbnRyeV9yY3UobiwgdGlwY19ub2RlcyhuZXQpLCBsaXN0KSB7Cj4gKyBpZiAoaW5fb3duX25v
ZGUobmV0LCBuLT5hZGRyKSkKPiArIGNvbnRpbnVlOwo+ICsgaWYgKCFub2RlX2lzX3VwKG4pKQo+
ICsgY29udGludWU7Cj4gKyB0aXBjX25saXN0X2FkZCgmZGVzdHMsIG4tPmFkZHIpOwo+ICsgfQo+
ICsgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gKwo+ICsgcmMgPSB0aXBjX21jYXN0X3htaXQobmV0LCAm
eG1pdHEsICZtZXRob2QsICZkZXN0cywgJmNvbmdfbGlua19jbnQpOwo+ICsgKnJjYXN0ID0gbWV0
aG9kLnJjYXN0Owo+ICsKPiArIHRpcGNfbmxpc3RfcHVyZ2UoJmRlc3RzKTsKPiArIF9fc2tiX3F1
ZXVlX3B1cmdlKCZ4bWl0cSk7Cj4gKyByZXR1cm4gcmM7Cj4gK30KPiBkaWZmIC0tZ2l0IGEvbmV0
L3RpcGMvbm9kZS5oIGIvbmV0L3RpcGMvbm9kZS5oCj4gaW5kZXggYTY4MDNiNDQ5YTJjLi5kN2Qx
OWY5OTMyYjEgMTAwNjQ0Cj4gLS0tIGEvbmV0L3RpcGMvbm9kZS5oCj4gKysrIGIvbmV0L3RpcGMv
bm9kZS5oCj4gQEAgLTEyNCw0ICsxMjQsNiBAQCBpbnQgdGlwY19ubF9ub2RlX3NldF9rZXkoc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwgCj4gc3RydWN0IGdlbmxfaW5mbyAqaW5mbyk7Cj4gaW50IHRpcGNf
bmxfbm9kZV9mbHVzaF9rZXkoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IGdlbmxfaW5mbyAq
aW5mbyk7Cj4gI2VuZGlmCj4gdm9pZCB0aXBjX25vZGVfcHJlX2NsZWFudXBfbmV0KHN0cnVjdCBu
ZXQgKmV4aXRfbmV0KTsKPiAraW50IHRpcGNfbm9kZV9icm9hZGNhc3RfbmFtZWRfcHVibGlzaChz
dHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdCBza19idWZmIAo+ICpza2IsCj4gKyBib29sICpyY2FzdCk7
Cj4gI2VuZGlmCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3RpcGMtZGlzY3Vzc2lvbgo=
