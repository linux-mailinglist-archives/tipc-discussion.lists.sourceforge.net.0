Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 626FA152547
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Feb 2020 04:43:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1izBbH-0000yb-TE; Wed, 05 Feb 2020 03:43:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1izBbG-0000yN-HY
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Feb 2020 03:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M3XvmcHusk2NLIfIPh8KNbANxo/i8zD7CzvB6bQIazo=; b=O311/bfe6nUztWRVeoFu/qMdyB
 vpaZjYV7A+mh+tUrGt730f9dKCckCHA8JYcOc20FciLc0Hk5BWuBMPawGmHMKZHGt92FGssmAxsum
 Kg6W1aky1z/7ATofT9d5z5dc+QOIsOVWOs3hTJYfWNm7HD0kBs7lDIpRT8WYzLcaLj9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M3XvmcHusk2NLIfIPh8KNbANxo/i8zD7CzvB6bQIazo=; b=Q
 8QBvr95VJGpMOXSoO7chawMzpr0IE4npPoHmHYyYHEr6iMZ+l/XVUaYZgx/kuGigImdnkROn6gzwr
 UAsQiKeuYKB2CQX3Y10O8lkP1JSgtQoQMSUWtfOVEW3qeMCSDeQhyyyrglD0aepIGslcloKr8nykN
 LiZyCTzDXYPx9gl4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izBb9-00AYfr-Ux
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Feb 2020 03:43:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id D1C384656A;
 Wed,  5 Feb 2020 14:43:21 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1580874201; bh=
 J2PssC/WTmSpVLlbjVMHcwwJ7gQBV7vZJsWf7ACnZlY=; b=dm2hWtL/EyHlZZnm
 jG/FiqwF2CNNMAitc3gBKW2D6zFLpszq9JG+6m5sKi5fSPTFV+vBtGNbNElsEgDp
 f0043OC9AB5FnaUhs83/yv9ryaQKYi/gsMh4rEB5ZQCPPW9du90P2UzzxFXI7Cwy
 xfNNb+5MKiRe2wDD/oJLxh6OdT8=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rUFYl6O0g59q; Wed,  5 Feb 2020 14:43:21 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 49BCD4CBD2;
 Wed,  5 Feb 2020 14:43:21 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4606D4656A;
 Wed,  5 Feb 2020 14:43:20 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  5 Feb 2020 10:43:12 +0700
Message-Id: <20200205034312.13318-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1izBb9-00AYfr-Ux
Subject: [tipc-discussion] [net] tipc: fix successful connect() but timed out
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SW4gY29tbWl0IDc0Y2RjOTAzNWI4MiAoInRpcGM6IGZpeCB3cm9uZyBjb25uZWN0KCkgcmV0dXJu
IGNvZGUiKSwgd2UKZml4ZWQgdGhlIGlzc3VlIHdpdGggdGhlICdjb25uZWN0KCknIHRoYXQgcmV0
dXJucyB6ZXJvIGV2ZW4gdGhvdWdoIHRoZQpjb25uZWN0aW5nIGhhcyBmYWlsZWQgYnkgd2FpdGlu
ZyBmb3IgdGhlIGNvbm5lY3Rpb24gdG8gYmUgJ0VTVEFCTElTSEVEJwpyZWFsbHkuIEhvd2V2ZXIs
IHRoZSBhcHByb2FjaCBoYXMgb25lIGRyYXdiYWNrIGluIGNvbmp1bmN0aW9uIHdpdGggb3VyCids
aWdodHdlaWdodCcgY29ubmVjdGlvbiBzZXR1cCBtZWNoYW5pc20gdGhhdCB0aGUgZm9sbG93aW5n
IHNjZW5hcmlvCmNhbiBoYXBwZW46CgogICAgICAgICAgKHNlcnZlcikgICAgICAgICAgICAgICAg
ICAgICAgICAoY2xpZW50KQoKICAgKy0gYWNjZXB0KCl8ICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgd2FpdF9mb3JfY29ubigpCiAgIHwgICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICB8Y29ubmVjdCgpIC0tLS0tLS0rCiAgIHwgICAgICAgICAgfDwtLS0tLS0tW1NZTl0t
LS0tLS0tLS18ICAgICAgICAgICAgICAgICA+IHNsZWVwaW5nCiAgIHwgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAqQ09OTkVDVElORyAgICAgICB8CiAgIHwtLS0tLS0tLS0+KkVTVEFC
TElTSEVEICAgICAgICAgICB8ICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgfC0tLS0t
LS0tW0FDS10tLS0tLS0tLT4qRVNUQUJMSVNIRUQgICAgICA+IHdha2V1cCgpCiAgICAgICAgc2Vu
ZCgpfC0tLS0tLS0tW0RBVEFdLS0tLS0tLT58XCAgICAgICAgICAgICAgICA+IHdha2V1cCgpCiAg
ICAgICAgc2VuZCgpfC0tLS0tLS0tW0RBVEFdLS0tLS0tLT58IHwgICAgICAgICAgICAgICA+IHdh
a2V1cCgpCiAgICAgICAgICAuICAgLiAgICAgICAgICAuICAgICAgICAgICAuIHwtPiByZWN2cSAg
ICAgICAuCiAgICAgICAgICAuICAgLiAgICAgICAgICAuICAgICAgICAgICAuIHwgICAgICAgICAg
ICAgICAuCiAgICAgICAgc2VuZCgpfC0tLS0tLS0tW0RBVEFdLS0tLS0tLT58LyAgICAgICAgICAg
ICAgICA+IHdha2V1cCgpCiAgICAgICBjbG9zZSgpfC0tLS0tLS0tW0ZJTl0tLS0tLS0tLT4qRElT
Q09OTkVDVElORyAgICB8CiAgICAgICAgICAgICAgKkRJU0NPTk5FQ1RJTkcgICAgICAgICB8ICAg
ICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICB+fn5+
fn5+fn5+fn5+fn5+fn4+IHNjaGVkdWxlKCkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgd2FpdCBhZ2FpbgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBFVElNRURPVVQKClVwb24gdGhl
IHJlY2VpcHQgb2YgdGhlIHNlcnZlciAnQUNLJywgdGhlIGNsaWVudCBiZWNvbWVzICdFU1RBQkxJ
U0hFRCcKYW5kIHRoZSAnd2FpdF9mb3JfY29ubigpJyBwcm9jZXNzIGlzIHdva2VuIHVwIGJ1dCBu
b3QgcnVuLiBNZWFud2hpbGUsCnRoZSBzZXJ2ZXIgc3RhcnRzIHRvIHNlbmQgYSBudW1iZXIgb2Yg
ZGF0YSBmb2xsb3dpbmcgYnkgYSAnY2xvc2UoKScKc2hvcnRseSB3aXRob3V0IHdhaXRpbmcgYW55
IHJlc3BvbnNlIGZyb20gdGhlIGNsaWVudCwgd2hpY2ggdGhlbiBmb3JjZXMKdGhlIGNsaWVudCBz
b2NrZXQgdG8gYmUgJ0RJU0NPTk5FQ1RJTkcnIGltbWVkaWF0ZWx5LiBXaGVuIHRoZSB3YWl0CnBy
b2Nlc3MgaXMgc3dpdGNoZWQgdG8gYmUgcnVubmluZywgaXQgY29udGludWVzIHRvIHdhaXQgdW50
aWwgdGhlIHRpbWVyCmV4cGlyZXMgYmVjYXVzZSBvZiB0aGUgdW5leHBlY3RlZCBzb2NrZXQgc3Rh
dGUuIFRoZSBjbGllbnQgJ2Nvbm5lY3QoKScKd2lsbCBmaW5hbGx5IGdldCDigJgtRVRJTUVET1VU
4oCZIGFuZCBmb3JjZSB0byByZWxlYXNlIHRoZSBzb2NrZXQgd2hlcmVhcwp0aGVyZSByZW1haW5z
IHRoZSBtZXNzYWdlcyBpbiBpdHMgcmVjZWl2ZSBxdWV1ZS4KCk9idmlvdXNseSB0aGUgaXNzdWUg
d291bGQgbm90IGhhcHBlbiBpZiB0aGUgc2VydmVyIGhhZCBzb21lIGRlbGF5IHByaW9yCnRvIGl0
cyAnY2xvc2UoKScgKG9yIHRoZSBudW1iZXIgb2YgJ0RBVEEnIG1lc3NhZ2VzIGlzIGxhcmdlIGVu
b3VnaCksCmJ1dCBhbnkga2luZCBvZiBkZWxheSB3b3VsZCBtYWtlIHRoZSBjb25uZWN0aW9uIHNl
dHVwL3NodXRkb3duICJoZWF2eSIuCldlIHNvbHZlIHRoaXMgYnkgc2ltcGx5IGFsbG93aW5nIHRo
ZSAnY29ubmVjdCgpJyByZXR1cm5zIHplcm8gaW4gdGhpcwpwYXJ0aWN1bGFyIGNhc2UuIFRoZSBz
b2NrZXQgaXMgYWxyZWFkeSAnRElTQ09OTkVDVElORycsIHNvIGFueSBmdXJ0aGVyCndyaXRlIHdp
bGwgZ2V0ICctRVBJUEUnIGJ1dCB0aGUgc29ja2V0IGlzIHN0aWxsIGFibGUgdG8gcmVhZCB0aGUK
bWVzc2FnZXMgZXhpc3RpbmcgaW4gaXRzIHJlY2VpdmUgcXVldWUuCgpOb3RlOiBUaGlzIHNvbHV0
aW9uIGRvZXNuJ3QgYnJlYWsgdGhlIHByZXZpb3VzIG9uZSBhcyBpdCBkZWFscyB3aXRoIGEKZGlm
ZmVyZW50IHNpdHVhdGlvbiB0aGF0IHRoZSBzb2NrZXQgc3RhdGUgaXMgJ0RJU0NPTk5FQ1RJTkcn
IGJ1dCBoYXMgbm8KZXJyb3IgKGkuZS4gc2stPnNrX2VyciA9IDApLgoKRml4ZXM6IDc0Y2RjOTAz
NWI4MiAoInRpcGM6IGZpeCB3cm9uZyBjb25uZWN0KCkgcmV0dXJuIGNvZGUiKQpTaWduZWQtb2Zm
LWJ5OiBUdW9uZyBMaWVuIDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+Ci0tLQogbmV0L3Rp
cGMvc29ja2V0LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvbmV0L3RpcGMvc29ja2V0LmMgYi9uZXQvdGlwYy9zb2NrZXQuYwppbmRleCBmOWI0
ZmI5MmMwYjEuLjY5M2U4OTAyMTYxZSAxMDA2NDQKLS0tIGEvbmV0L3RpcGMvc29ja2V0LmMKKysr
IGIvbmV0L3RpcGMvc29ja2V0LmMKQEAgLTI0NDEsNiArMjQ0MSw4IEBAIHN0YXRpYyBpbnQgdGlw
Y193YWl0X2Zvcl9jb25uZWN0KHN0cnVjdCBzb2NrZXQgKnNvY2ssIGxvbmcgKnRpbWVvX3ApCiAJ
CQlyZXR1cm4gLUVUSU1FRE9VVDsKIAkJaWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKQogCQkJ
cmV0dXJuIHNvY2tfaW50cl9lcnJubygqdGltZW9fcCk7CisJCWlmIChzay0+c2tfc3RhdGUgPT0g
VElQQ19ESVNDT05ORUNUSU5HKQorCQkJYnJlYWs7CiAKIAkJYWRkX3dhaXRfcXVldWUoc2tfc2xl
ZXAoc2spLCAmd2FpdCk7CiAJCWRvbmUgPSBza193YWl0X2V2ZW50KHNrLCB0aW1lb19wLCB0aXBj
X3NrX2Nvbm5lY3RlZChzayksCi0tIAoyLjEzLjcKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBj
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
