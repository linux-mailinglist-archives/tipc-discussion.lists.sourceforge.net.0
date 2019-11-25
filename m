Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAC7108A05
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Nov 2019 09:27:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZ9iM-0002XS-5w; Mon, 25 Nov 2019 08:27:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iZ9iJ-0002XJ-RF
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8zITq1zY4gTqR8wInuK2ZPiGZBFHrvq84G5cc3qZh5U=; b=ITEuTggGs86+KGOz85Z7S+DF+s
 qKd9ZwCex9HFkAABPCa7KTOdMQjPAFZu7jOO/vr9dCw0o/Uxz8E7OTtubwyJzWmSVqIcaF0ZasuCg
 bLueWwkMZtWhODKoQPwWq3oJjKjv0tpM7J91Po8XGkByq0jK+e4VfSMfRm5XoXuysjVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8zITq1zY4gTqR8wInuK2ZPiGZBFHrvq84G5cc3qZh5U=; b=IB58E54uxM3CVn4pdyMYYUW5Yz
 aWol9Y6BP2sPAf7kE5S5NVCsF4AZqzbrSyNH7wCz3Zyrochl5dT8WD1l/hq1V1KJMXgH5nEaFrpZl
 +aXiutQCT4jTpNDM9JQRaHVFH+LTbmBB/c1mlSl1hYULoaDcTUihg0W+73L/U31bhRPQ=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZ9iH-00CzG0-MQ
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:27:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 1A09C4A5C6;
 Mon, 25 Nov 2019 19:27:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1574670430; bh=UGseDtK/XhcRVM
 8l2LjrtCL1DBCG3NyegQf1lhBpAxM=; b=rF9gdHaPmstPsCawN6OOuhfZyP1wDj
 6L+bhTiaGlkJDa9odZ3Umzf+P8iKL/VRDEUGxeQf7mwf0rh/isdMX4LIqVB3Ig4e
 MFWkGjmFzgdH4tO2XfcgFPodVB+ISA9r0BpWasezvLRKUB6xo4QuzK2qoSGXJk0+
 DEV8fDAtEjB3c=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id muTaMk-sViUL; Mon, 25 Nov 2019 19:27:10 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id E406B4A5C7;
 Mon, 25 Nov 2019 19:27:10 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id D02EB4A5C6;
 Mon, 25 Nov 2019 19:27:09 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'tung quang nguyen'" <tung.q.nguyen@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>, <ying.xue@windriver.com>
References: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
 <023a01d5a369$8c192790$a44b76b0$@dektech.com.au>
In-Reply-To: <023a01d5a369$8c192790$a44b76b0$@dektech.com.au>
Date: Mon, 25 Nov 2019 15:27:08 +0700
Message-ID: <03ff01d5a36a$21cbc180$65634480$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQOR/MOD0tOccC9d7K74CmrUvuwQ/gFvCY7ipBdhpoA=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iZ9iH-00CzG0-MQ
Subject: Re: [tipc-discussion] [net] tipc: fix memory leak in socket
 streaming
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgVHVuZywKCk9raWUsIGdvdCBpdC4gSSBsb3N0IHRyYWNrIHdoZW4geW91ciBwYXRjaCB3YXMg
c2VudCBpbiBBdWd1c3QuLi4g4pi5LgpBbnl3YXksIEkgdGhpbmsgeW91IGNhbiBjb25zaWRlciBt
eSBjb21taXQgbWVzc2FnZSB3aGljaCBoaWdobGlnaHRzIHRoaXMgYXMgYSBtZW1vcnkgbGVhayBp
c3N1ZSBzZXJpb3VzbHkuCgpCUi9UdW9uZwoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJv
bTogdHVuZyBxdWFuZyBuZ3V5ZW4gPHR1bmcucS5uZ3V5ZW5AZGVrdGVjaC5jb20uYXU+IApTZW50
OiBNb25kYXksIE5vdmVtYmVyIDI1LCAyMDE5IDM6MjMgUE0KVG86ICdUdW9uZyBMaWVuJyA8dHVv
bmcudC5saWVuQGRla3RlY2guY29tLmF1PjsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldDsgam9uLm1hbG95QGVyaWNzc29uLmNvbTsgbWFsb3lAZG9uam9ubi5jb207IHlpbmcu
eHVlQHdpbmRyaXZlci5jb20KU3ViamVjdDogUkU6IFt0aXBjLWRpc2N1c3Npb25dIFtuZXRdIHRp
cGM6IGZpeCBtZW1vcnkgbGVhayBpbiBzb2NrZXQgc3RyZWFtaW5nCgpIaSBUdW9uZywKCkkgZml4
ZWQgaXQgaW4gdGhpcyBjb21taXQgIlt0aXBjLWRpc2N1c3Npb25dIFtuZXQgdjEgMi8zXSB0aXBj
OiBmaXggd3JvbmcKc29ja2V0IHJlZmVyZW5jZSBjb3VudGVyIGFmdGVyIHRpcGNfc2tfdGltZW91
dCgpIHJldHVybnMiIGJ1dCBJIGhhdmUgbm90CnNlbnQgdG8gRGF2aWQgeWV0LgpJIGludGVuZGVk
IHRvIHNlbmQgaXQgaW4gYSBzZXJpZXMgb2YgcGF0Y2ggZm9yIGZpeGluZyBidWdzIGF0IHNvY2tl
dCBsYXllci4KClRoYW5rcy4KCkJlc3QgcmVnYXJkcywKVHVuZyBOZ3V5ZW4KCi0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCkZyb206IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNv
bS5hdT4gClNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjUsIDIwMTkgMzoxMyBQTQpUbzogdGlwYy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgam9uLm1hbG95QGVyaWNzc29uLmNvbTsK
bWFsb3lAZG9uam9ubi5jb207IHlpbmcueHVlQHdpbmRyaXZlci5jb20KU3ViamVjdDogW3RpcGMt
ZGlzY3Vzc2lvbl0gW25ldF0gdGlwYzogZml4IG1lbW9yeSBsZWFrIGluIHNvY2tldCBzdHJlYW1p
bmcKCkluIGNhc2Ugb2Ygc3RyZWFtIHNvY2tldHMsIGEgcGVyLXNvY2tldCB0aW1lciBpcyBzZXQg
dXAgZm9yIGVpdGhlciB0aGUKU1lOIGF0dGVtcHQgb3IgY29ubmVjdGlvbiBzdXBlcnZpc2lvbiBt
ZWNoYW5pc20uIFdoZW4gdGhlIHNvY2tldCB0aW1lcgpleHBpcmVzLCBhbiBhcHByb3ByaWF0ZSBh
Y3Rpb24gKGkuZS4gc2VuZGluZyBTWU4gb3IgUFJPQkUgbWVzc2FnZSkKd291bGQgYmUgdGFrZW4g
anVzdCBpbiB0aGUgY2FzZSB0aGUgc29ja2V0IGlzIG5vdCBiZWluZyBvd25lZCBieSB1c2VyCihl
LmcuIHZpYSB0aGUgJ2xvY2tfc29jaygpJykuCgpJbiB0aGUgbGF0dGVyIGNhc2UsIHRoZXJlIGlz
IG5vdGhpbmcgYnV0IHRoZSB0aW1lciBpcyByZS1zY2hlZHVsZWQgZm9yCmEgc2hvcnQgcGVyaW9k
IG9mIHRpbWUgKH4gNTBtcykgdG8gdHJ5IGFnYWluLiBUaGUgZnVuY3Rpb24ganVzdCBtYWtlcyBh
CidyZXR1cm4nIGltbWVkaWF0ZWx5IHdpdGhvdXQgZGVjcmVhc2luZyB0aGUgc29ja2V0ICdyZWZj
bnQnIHdoaWNoIHdhcwpoZWxkIGluIGFkdmFuY2UgZm9yIHRoZSB0aW1lciBjYWxsYmFjayBpdHNl
bGYhIFRoZSBzYW1lIGhhcHBlbnMgaWYgYXQKdGhlIG5leHQgdGltZSwgdGhlIHNvY2tldCBpcyBz
dGlsbCBidXN5Li4uCgpBcyBhIHJlc3VsdCwgdGhlIHNvY2tldCAncmVmY250JyBpcyBpbmNyZWFz
ZWQgd2l0aG91dCBkZWNyZWFzaW5nLCBzbwp0aGUgc29jayBvYmplY3QgY2Fubm90IGJlIGZyZWVk
IGF0IGFsbCAoZHVlIHRvICdyZWZjbnQnICE9IDApIGV2ZW4gd2hlbgp0aGUgY29ubmVjdGlvbiBp
cyBjbG9zZWQgYW5kIHVzZXIgcmVsZWFzZXMgYWxsIHJlbGF0ZWQgcmVzb3VyY2VzLgoKVGhlIG1l
bW9yeSBsZWFrIGlzIGhhcmQgdG8gZGV0ZWN0IGJlY2F1c2UgdGhlIHByb2JlIGludGVydmFsIGlz
IHNldCB0bwoxIGhvdXIgc2luY2UgdGhlIGNvbm5lY3Rpb24gaXMgZXN0YWJsaXNoZWQsIGJ1dCBp
biB0aGUgY2FzZSBvZiBhIFNZTgphdHRlbXB0LCB0aGF0IGNhbiBiZSBtdWNoIG1vcmUgbGlrZWx5
LgoKVGhlIGNvbW1pdCBmaXhlcyB0aGUgYnVnIGJ5IGNhbGxpbmcgdGhlICdzb2NrX3B1dCgpJyBp
biB0aGUgY2FzZQptZW50aW9uZWQgYWJvdmUsIHRoZW4gdGhlIHNvY2tldCAncmVmY250JyB3aWxs
IGJlIGluY3JlYXNlZCAmIGRlY3JlYXNlZApjb3JyZWN0bHkgYW5kIHRoZSBzb2NrIG9iamVjdCBj
YW4gYmUgcmVsZWFzZWQgbGF0ZXIuCgpGaXhlczogMGQ1ZmNlYmYzYzM3ICgidGlwYzogcmVmYWN0
b3IgdGlwY19za190aW1lb3V0KCkgZnVuY3Rpb24iKQpTaWduZWQtb2ZmLWJ5OiBUdW9uZyBMaWVu
IDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+Ci0tLQogbmV0L3RpcGMvc29ja2V0LmMgfCA0
ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9uZXQvdGlwYy9zb2NrZXQuYyBiL25ldC90aXBjL3NvY2tldC5jCmluZGV4IGEx
YzhkNzIyY2EyMC4uZDY3YzM3NDdkMmMzIDEwMDY0NAotLS0gYS9uZXQvdGlwYy9zb2NrZXQuYwor
KysgYi9uZXQvdGlwYy9zb2NrZXQuYwpAQCAtMjc1Nyw3ICsyNzU3LDcgQEAgc3RhdGljIHZvaWQg
dGlwY19za190aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0ICp0KQogCWlmIChzb2NrX293bmVkX2J5
X3VzZXIoc2spKSB7CiAJCXNrX3Jlc2V0X3RpbWVyKHNrLCAmc2stPnNrX3RpbWVyLCBqaWZmaWVz
ICsgSFogLyAyMCk7CiAJCWJoX3VubG9ja19zb2NrKHNrKTsKLQkJcmV0dXJuOworCQlnb3RvIGV4
aXQ7CiAJfQogCiAJaWYgKHNrLT5za19zdGF0ZSA9PSBUSVBDX0VTVEFCTElTSEVEKQpAQCAtMjc3
NSw2ICsyNzc1LDggQEAgc3RhdGljIHZvaWQgdGlwY19za190aW1lb3V0KHN0cnVjdCB0aW1lcl9s
aXN0ICp0KQogCQl0aXBjX2Rlc3RfcHVzaCgmdHNrLT5jb25nX2xpbmtzLCBwbm9kZSwgMCk7CiAJ
CXRzay0+Y29uZ19saW5rX2NudCA9IDE7CiAJfQorCitleGl0OgogCXNvY2tfcHV0KHNrKTsKIH0K
IAotLSAKMi4xMy43CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby90aXBjLWRpc2N1c3Npb24KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
