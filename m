Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 310931570E5
	for <lists+tipc-discussion@lfdr.de>; Mon, 10 Feb 2020 09:36:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j14Xz-0005ao-OO; Mon, 10 Feb 2020 08:36:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1j14Xy-0005aP-MX
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 08:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=816v7F619hxsjBGipR0lzylb6EW3wrpKFOVvlhdvy0U=; b=dgJuFiGkHmvEOWHGR7+DG73+Xp
 LdIF5Am6L6tUyLpf0W+JYp4BiAyNGJqbTf0C8zAISsJBF5gk3VW+MJ5CTuHB7f0hCilRo/JC6HH54
 krjvLdXzPN1Set6JwclD/EmhUKqkdG0wU+vXI8CgYEogy4eDpJFUpFsRgQ2SPjo/TxJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=816v7F619hxsjBGipR0lzylb6EW3wrpKFOVvlhdvy0U=; b=E
 89eFJWgiSqFnx5GlgvklSPqkVS1PSJ/4WKN6EcP0hclSbiFgj6GaTKi02r/1KHzEfDu+7WPqReOsS
 zgI2bgZG5hwmcyIn+BM6iVJtQUQQfxTkiNwWzPniTYf8JC/AfLlgSO4H25HsD9hXTQBwIT1tBxjtd
 dv8HTuEzMthP9EPA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j14Xu-00H1Fy-PU
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 08:36:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CAC474CED9;
 Mon, 10 Feb 2020 19:35:51 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1581323751; bh=
 qvB3o0SkGfxHZGh9syTq9zEyk3CFUBn0LIH0pAV5lII=; b=gQlEbqkPB3QFeiJ7
 PDizSFPqdyL6WlAJ/Bdoxz+lg727S8TdhEAKyDSyqsp31f4XRXHD+DGqxR/1fnvw
 QrPNokME9G/c0CTPYiBWS0iDczewuou+dpzLRySyndgW57Fqgto+41nGZa8Es13G
 e02SSzxi5T1gZQZNLPNphlVygEM=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Jp1gaIMIONHN; Mon, 10 Feb 2020 19:35:51 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 431954CEDE;
 Mon, 10 Feb 2020 19:35:51 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id D5C3C4CED9;
 Mon, 10 Feb 2020 19:35:49 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Mon, 10 Feb 2020 15:35:44 +0700
Message-Id: <20200210083544.31501-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j14Xu-00H1Fy-PU
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SW4gY29tbWl0IDk1NDZhMGI3Y2UwMCAoInRpcGM6IGZpeCB3cm9uZyBjb25uZWN0KCkgcmV0dXJu
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
IGJ1dCBoYXMgbm8KZXJyb3IgKGkuZS4gc2stPnNrX2VyciA9IDApLgoKRml4ZXM6IDk1NDZhMGI3
Y2UwMCAoInRpcGM6IGZpeCB3cm9uZyBjb25uZWN0KCkgcmV0dXJuIGNvZGUiKQpBY2tlZC1ieTog
WWluZyBYdWUgPHlpbmcueHVlQHdpbmRyaXZlci5jb20+CkFja2VkLWJ5OiBKb24gTWFsb3kgPGpv
bi5tYWxveUBlcmljc3Nvbi5jb20+ClNpZ25lZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQu
bGllbkBkZWt0ZWNoLmNvbS5hdT4KLS0tCiBuZXQvdGlwYy9zb2NrZXQuYyB8IDIgKysKIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9uZXQvdGlwYy9zb2NrZXQu
YyBiL25ldC90aXBjL3NvY2tldC5jCmluZGV4IGY5YjRmYjkyYzBiMS4uNjkzZTg5MDIxNjFlIDEw
MDY0NAotLS0gYS9uZXQvdGlwYy9zb2NrZXQuYworKysgYi9uZXQvdGlwYy9zb2NrZXQuYwpAQCAt
MjQ0MSw2ICsyNDQxLDggQEAgc3RhdGljIGludCB0aXBjX3dhaXRfZm9yX2Nvbm5lY3Qoc3RydWN0
IHNvY2tldCAqc29jaywgbG9uZyAqdGltZW9fcCkKIAkJCXJldHVybiAtRVRJTUVET1VUOwogCQlp
ZiAoc2lnbmFsX3BlbmRpbmcoY3VycmVudCkpCiAJCQlyZXR1cm4gc29ja19pbnRyX2Vycm5vKCp0
aW1lb19wKTsKKwkJaWYgKHNrLT5za19zdGF0ZSA9PSBUSVBDX0RJU0NPTk5FQ1RJTkcpCisJCQli
cmVhazsKIAogCQlhZGRfd2FpdF9xdWV1ZShza19zbGVlcChzayksICZ3YWl0KTsKIAkJZG9uZSA9
IHNrX3dhaXRfZXZlbnQoc2ssIHRpbWVvX3AsIHRpcGNfc2tfY29ubmVjdGVkKHNrKSwKLS0gCjIu
MTMuNwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0
aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlw
Yy1kaXNjdXNzaW9uCg==
