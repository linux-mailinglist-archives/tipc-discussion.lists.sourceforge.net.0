Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C210F0B9
	for <lists+tipc-discussion@lfdr.de>; Mon,  2 Dec 2019 20:39:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ibrXB-0000Xd-KF; Mon, 02 Dec 2019 19:39:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maloy@donjonn.com>) id 1ibrXA-0000XN-3g
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 19:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fyz3+HxJg3/OoxUOwJ2sZ74hBS2//Ogs1IbIq0qi5lc=; b=Si/gPC1FahL2Lw3IKJ5r0otHX
 EWjUdI5tXCDO9xtpSvGvBTV6BHfVQXorl1Vlgx4qPgONwEViTM71dib6nLPcepnrp9MIOuvBQGoTW
 yRy6emB+zX6K+2Sf657a7b7KOiGlZ5zOwf3Y22Pb6CW+FUGVkhThOStoJmRRZaeMmjbsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fyz3+HxJg3/OoxUOwJ2sZ74hBS2//Ogs1IbIq0qi5lc=; b=MPGgFZ4uZ2sSJR8e08rXAXf4u3
 zf1A6bUSHWnVbcAH0t2XSvFepMq6qemx6I7d69LyWmcMmBuRQVRVNGVPlFADRLjbeFbidtXREYyou
 zVlQu0Y8kP6qFqrYkgqRmm7lOo7a53lotDa8MqoiQvowVGYLbifcegLuHhE7tX48lqH0=;
Received: from sonic302-28.consmr.mail.ne1.yahoo.com ([66.163.186.154])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ibrX7-004SIo-Q3
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 19:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1575315532; bh=fyz3+HxJg3/OoxUOwJ2sZ74hBS2//Ogs1IbIq0qi5lc=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=jVA3VNZGrxYjBT3TDYE4pIrVw+zK8SLcO+CA2xcvUyuxepVXqbPF8zMXkvIOMUwgnpZ0XnrXsnyjTXxf8mXHqdqwqC7Wyob/EGYPmcFePK/Aez2wsKXgZp/CPc16U0PuOSOqqBzXpIn8dnFy3M3omF9tsJEKbYQ6oNcOfLblt0rPbrBKOXQ9ES7+SJP2ZksexXG4Ve6MCmozaVBNgCGIAbbJsmYhfarJEqiD2P+o3vwCvxtesCdYjX0nxnHzm21A4yZgEsRIXz8BYc2FMTzkkHAJRbW49bqrAwbJ5AUVAGBooIKKn8uQkAxSCHej61guFH0nNH0wQy/lthIj34V81A==
X-YMail-OSG: ..2N0p0VM1m.NQKw2tVrbPFQgHn8iQkC9a0J2oMJK0IwGoJK.IIuWrrb933QoPb
 WjGl7tB8_rnCI8UiFyWQ4.e6oP1ubNJkql7oaIpgneItKTJ1Etj987phYHXPj9zk63XY0TJ1lq2m
 2edJmr7Sm0Bh8fE3rbVZSylycCisFQXwQxtpBY37d598FO33i3.Lpom.5V9NCWumqTFpJ.uDfGRC
 fMp898AE1iFTpcfhf2eYbDnCur4bBsdB1lVErE_p84Q_0.xnYywE.DxQKgzSlp1vm8qZbYc3T4a_
 eozY.UHtuVQ.aoeEKW4cE.j0pK.PK7VW98QssSCEq5rv93GNcefMFTQy0llFtLWtMBhIFCyEguus
 uU3kaJIneZHilecA8va59s.8B8b9.kdhXUK.easNprYDOKkCxLmPiP5TSq7DJCwde5OckAy8ISeI
 PZfkhKynpqU210zilfLaUkRMlgT9R6kFR5xu_S_vEshJaU3siN.KSIwC7ZPOXiCtv5ucEaPhRbPf
 hviDDpI9b5_T_6ge9iJKCtA.ANQU5j2zxKs6v0qDVjzEOtFOI5opPR_yzwcj9bGdEIuIgofTXXEf
 UrHa674mpfw7VU0wDSGJHugmK.3D09gNT2XamKfXC0SzOVTBEhpKRIIob.FrheavZsVzB7.j8o_L
 QZWDYiDEmQTv1.8zn6q07pVVIxRnlHCPNElKLGEfxKp3u13qhb90iFkt3hPEi_o_LXHia2GUELSb
 4fBhnzOCiJj8XdW_5dWqQ9bI.VbzYHFsgLONDn41JlUSt9DpVZ0JFR8XumPDxmTSyMmxffb8zOR8
 vX42_wdbaLG8cPSglKDx49T28BrSn8ItrWNE.LpM57hpmVh9AdDP2AfUEC1x524xhMUQofqom1DB
 KmMAqV9efsJSlKG9PM1XfgNGYkPu9PZb3k6ETIzuwySsVlIQXgqB3yREYtTzcAlTA4ag_1MJOk19
 nF2jWbewRYnkOL2cTGCAVMDikO6ijWn5YP_nAQTACvjiWBpDAQZtvxJ.HdrrYsFf9Ykx1PNjBM4D
 V55yMw93kVqCrc8nqHeZNdaa47YKhp40y0ca0RR3EVdBBpSTE4ZR004C5NdxMmqCykXYNYRnnQ9T
 dxN66AsQJM8BnMPvQK4_CudrfJ86gmLoS3Zb9nxOXBNfh4f5IiIMNPJRAXKUckCUpaHA_6byDRGH
 bY9bN_yjqlcl8Vl2EjKWZY7n6rQZXCBIXHHdja2JarUQshyZuw2lv2BKXd1IMZcTya4_KQEnHby1
 7U.Hbh2Z.XPfbK34eq8O_5MBIXHy3FE.ty.0h6KE5kZZDYBrVSFBJpZF2_u2Q4TFMsKlIZz4HaoL
 U_BGDdVGM4eJu0Fn3P.XuD6QeQbAtW2mbJaZYz9ISqj_CNsbZhcCbXd.NOTxglvJPeBBFAsGGP4R
 ja4xFA59inl12sPbZqjYNZlfW
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Mon, 2 Dec 2019 19:38:52 +0000
Date: Mon, 2 Dec 2019 19:07:18 +0000 (UTC)
From: Jon Maloy <maloy@donjonn.com>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com, 
 ying.xue@windriver.com, Tuong Lien <tuong.t.lien@dektech.com.au>
Message-ID: <95139192.7738812.1575313638476@mail.yahoo.com>
In-Reply-To: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
References: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108
 Safari/537.36
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.186.154 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ibrX7-004SIo-Q3
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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

IEFja2VkLWJ5OiBKb24KICAgIE9uIE1vbmRheSwgTm92ZW1iZXIgMjUsIDIwMTksIDAzOjEyOjQ1
IEFNIEdNVC01LCBUdW9uZyBMaWVuIDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+IHdyb3Rl
OiAgCiAKIEluIGNhc2Ugb2Ygc3RyZWFtIHNvY2tldHMsIGEgcGVyLXNvY2tldCB0aW1lciBpcyBz
ZXQgdXAgZm9yIGVpdGhlciB0aGUKU1lOIGF0dGVtcHQgb3IgY29ubmVjdGlvbiBzdXBlcnZpc2lv
biBtZWNoYW5pc20uIFdoZW4gdGhlIHNvY2tldCB0aW1lcgpleHBpcmVzLCBhbiBhcHByb3ByaWF0
ZSBhY3Rpb24gKGkuZS4gc2VuZGluZyBTWU4gb3IgUFJPQkUgbWVzc2FnZSkKd291bGQgYmUgdGFr
ZW4ganVzdCBpbiB0aGUgY2FzZSB0aGUgc29ja2V0IGlzIG5vdCBiZWluZyBvd25lZCBieSB1c2Vy
CihlLmcuIHZpYSB0aGUgJ2xvY2tfc29jaygpJykuCgpJbiB0aGUgbGF0dGVyIGNhc2UsIHRoZXJl
IGlzIG5vdGhpbmcgYnV0IHRoZSB0aW1lciBpcyByZS1zY2hlZHVsZWQgZm9yCmEgc2hvcnQgcGVy
aW9kIG9mIHRpbWUgKH4gNTBtcykgdG8gdHJ5IGFnYWluLiBUaGUgZnVuY3Rpb24ganVzdCBtYWtl
cyBhCidyZXR1cm4nIGltbWVkaWF0ZWx5IHdpdGhvdXQgZGVjcmVhc2luZyB0aGUgc29ja2V0ICdy
ZWZjbnQnIHdoaWNoIHdhcwpoZWxkIGluIGFkdmFuY2UgZm9yIHRoZSB0aW1lciBjYWxsYmFjayBp
dHNlbGYhIFRoZSBzYW1lIGhhcHBlbnMgaWYgYXQKdGhlIG5leHQgdGltZSwgdGhlIHNvY2tldCBp
cyBzdGlsbCBidXN5Li4uCgpBcyBhIHJlc3VsdCwgdGhlIHNvY2tldCAncmVmY250JyBpcyBpbmNy
ZWFzZWQgd2l0aG91dCBkZWNyZWFzaW5nLCBzbwp0aGUgc29jayBvYmplY3QgY2Fubm90IGJlIGZy
ZWVkIGF0IGFsbCAoZHVlIHRvICdyZWZjbnQnICE9IDApIGV2ZW4gd2hlbgp0aGUgY29ubmVjdGlv
biBpcyBjbG9zZWQgYW5kIHVzZXIgcmVsZWFzZXMgYWxsIHJlbGF0ZWQgcmVzb3VyY2VzLgoKVGhl
IG1lbW9yeSBsZWFrIGlzIGhhcmQgdG8gZGV0ZWN0IGJlY2F1c2UgdGhlIHByb2JlIGludGVydmFs
IGlzIHNldCB0bwoxIGhvdXIgc2luY2UgdGhlIGNvbm5lY3Rpb24gaXMgZXN0YWJsaXNoZWQsIGJ1
dCBpbiB0aGUgY2FzZSBvZiBhIFNZTgphdHRlbXB0LCB0aGF0IGNhbiBiZSBtdWNoIG1vcmUgbGlr
ZWx5LgoKVGhlIGNvbW1pdCBmaXhlcyB0aGUgYnVnIGJ5IGNhbGxpbmcgdGhlICdzb2NrX3B1dCgp
JyBpbiB0aGUgY2FzZQptZW50aW9uZWQgYWJvdmUsIHRoZW4gdGhlIHNvY2tldCAncmVmY250JyB3
aWxsIGJlIGluY3JlYXNlZCAmIGRlY3JlYXNlZApjb3JyZWN0bHkgYW5kIHRoZSBzb2NrIG9iamVj
dCBjYW4gYmUgcmVsZWFzZWQgbGF0ZXIuCgpGaXhlczogMGQ1ZmNlYmYzYzM3ICgidGlwYzogcmVm
YWN0b3IgdGlwY19za190aW1lb3V0KCkgZnVuY3Rpb24iKQpTaWduZWQtb2ZmLWJ5OiBUdW9uZyBM
aWVuIDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+Ci0tLQogbmV0L3RpcGMvc29ja2V0LmMg
fCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9uZXQvdGlwYy9zb2NrZXQuYyBiL25ldC90aXBjL3NvY2tldC5jCmluZGV4
IGExYzhkNzIyY2EyMC4uZDY3YzM3NDdkMmMzIDEwMDY0NAotLS0gYS9uZXQvdGlwYy9zb2NrZXQu
YworKysgYi9uZXQvdGlwYy9zb2NrZXQuYwpAQCAtMjc1Nyw3ICsyNzU3LDcgQEAgc3RhdGljIHZv
aWQgdGlwY19za190aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0ICp0KQogwqDCoMKgIGlmIChzb2Nr
X293bmVkX2J5X3VzZXIoc2spKSB7CiDCoMKgwqAgwqDCoMKgIHNrX3Jlc2V0X3RpbWVyKHNrLCAm
c2stPnNrX3RpbWVyLCBqaWZmaWVzICsgSFogLyAyMCk7CiDCoMKgwqAgwqDCoMKgIGJoX3VubG9j
a19zb2NrKHNrKTsKLcKgwqDCoCDCoMKgwqAgcmV0dXJuOworwqDCoMKgIMKgwqDCoCBnb3RvIGV4
aXQ7CiDCoMKgwqAgfQogCiDCoMKgwqAgaWYgKHNrLT5za19zdGF0ZSA9PSBUSVBDX0VTVEFCTElT
SEVEKQpAQCAtMjc3NSw2ICsyNzc1LDggQEAgc3RhdGljIHZvaWQgdGlwY19za190aW1lb3V0KHN0
cnVjdCB0aW1lcl9saXN0ICp0KQogwqDCoMKgIMKgwqDCoCB0aXBjX2Rlc3RfcHVzaCgmdHNrLT5j
b25nX2xpbmtzLCBwbm9kZSwgMCk7CiDCoMKgwqAgwqDCoMKgIHRzay0+Y29uZ19saW5rX2NudCA9
IDE7CiDCoMKgwqAgfQorCitleGl0OgogwqDCoMKgIHNvY2tfcHV0KHNrKTsKIH0KIAotLSAKMi4x
My43CgogIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0
aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlw
Yy1kaXNjdXNzaW9uCg==
