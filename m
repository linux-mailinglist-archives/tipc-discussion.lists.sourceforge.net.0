Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7253569893
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 Jul 2019 17:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MgrwoOtXZLvW9iNndQcPU+lcgON1GmtMpaZKz/dehZU=; b=NyvrppB1J7uMXn+ZjstgbJtQq
	SeSH9g0IqUZS6dTm8fpZ2nF3zTqxZdPmN/w18D8B/ApVxUcRML5NLTSgjYyUtWtMHiVAbtetQ3Coi
	/OS0z8OKC+LkXQl3nyUFxAjflRbvLoy3SVgJEv6Il8wu31aNM0+Xo/QWZQHHOiHamuzOA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hn3E6-00060H-MU; Mon, 15 Jul 2019 15:49:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lmk_in@yahoo.com>) id 1hn3E5-00060A-Dm
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 15:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=koOJ+E1gfEH1Fbp3VL8kAbUe1OaXxw4CdZqKv8ttGYI=; b=K1OoOl5Hhe9dtdjswC5qyNLhx
 IQUR9cDYDcwS6b7UarivcE2+PRhxDTvh5yqmOAF4lC/ppN4YrcMUmhmKqNb74dwPF6zr2IpGGB45A
 vzuZJAcb0YL4eV1E8qUYI1C5nrdBIxf+C+1VBmUcyddqzkWh0DqsRh7W8IoRv2LtEZr5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=koOJ+E1gfEH1Fbp3VL8kAbUe1OaXxw4CdZqKv8ttGYI=; b=GuDkcgdel1h74ZkIgGWH+dYBHK
 kXcMXSJOjQL0LfT1WBrmPQ9mA/fZgJrTMRaaAHhcrB1/Epq5+RfEAGVQW0ysIrfzndxX0Sm3NYLrD
 Izwigyd5e5maXgJynjvclfww0zR5duOG3KKrxzpP3+dBihtRm/0OiM20vMZk72eSJU7U=;
Received: from sonic302-20.consmr.mail.sg3.yahoo.com ([106.10.242.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hn3E3-002UUU-D7
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 15:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1563205748; bh=koOJ+E1gfEH1Fbp3VL8kAbUe1OaXxw4CdZqKv8ttGYI=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=Pg+EibjArjGyWgX4BvgoTTNXzlH9oK7eZESAtoOE0PTlIbmGLU0cM7oXk1x/P+9OBYV6HvkYSsmYlbTrqWx4FgLbPghCeRGgPSY3vFkGvLLU5BPc/qkA5TdO5cq72afjvNZhStzuYhRPyG9HgrKbvt5TVii3qUC+FypaMIZit6EfIYIy1dQvI27/xr1M5pwBERaaWc9H97cp5HkCSxjq8OaD1Fb7WxXggA6Ogp4oTFtxeAJAtepaAvtkEPY3H4bHTydLKY/lB52USXNQiP0NVh6+pjBB4BmsYmEjQe3ySsSkHrZftVZxx+HvQXlERxEvSclsZ9+OM1lEwdPRqot2iw==
X-YMail-OSG: iZi1WlsVM1mijlhwIWWLxqETi5.s0bCivOh8zMdTQb2Q1XmPcjVe3QyR5tGwfxw
 eB2G9d96mlu.pe.d4WlpJxHgau.gjBiEbEWkwaJvODXJr1BXW7B.2QgnEUDKf2DsXtnXcGgp.K05
 7CZ1DE6AKZnkqvDa2HBTX9TWwgWPIH8FaJzA3SGX99sK9v1F8JEd4XnN8ntfh5lIyhdvZZQeI07s
 vwwXZ9mdjYhLthASMivdqJZLZ9sWKBIcmbW.Yts33uAR93UgNad2DxuZ8GEflBiC3BSt_9umqa56
 gnqrc3K..A9TZVL.bwS2Ikj5kIw_C4hpYezRgbdnRr3J6fE6ni3NXGCnYZHGzsYLpj5wJyIDyEk_
 0Dn6LZtmff4ihPTPcAi08xEU5MppcZTvvJVoKO01qCmdGtnbcoWo_9ljnPSqLkDJD3KI9NMrayLS
 kXh92zuV6sSbl80VgifxV1F8Xg86bXmw0xImBBt9fRfSdxtL7LG2nHy2kGMRLQ5bSy8kB_RaQ2vJ
 yX9ukeSRPTMkEuBF1euVCUr25HBkXD2sIbHvZuSGMaHsrgO3JS3TwXavlD4.lsc5G8_OiJHRLKTp
 Ez23Cc6d9lC_GIAKBFNSNPalv7FfWzFutDOPpgcqSCwNmPxgsy7A0G34Kt7F3uzsyqklkiho.DAm
 FfhRwAGy14KJvqRPCEjF04b.yF0BwgXSB7PEFv.0QWC2LtisFZwvpu4aMBBLT8TFRqVfGU3RlFLJ
 HaCd9M7Z2PwSkE0sqUJBNMndAo0Yn7mlpDK9mxsKnIJyPVk2.l3rHg._KJ0PmzcYL8jKpeSkKAUm
 jzXxUPR_N.i6rMNoEKnBdEcJvKgtd7RP7NIWlsIbieOZ8Y8BhLMg79e8XfrjYnDNs5c_6dpG1kIj
 cK0lOC2Px5dLMFapcJf8vNKLINl3qLqVqzi694H6JbqJ8LUGFx_JhbShRaVPWOXoR.WDiRUfDvVo
 uLcBCqp1RT9g7JcptcMXR6MGZHqQgG6mYyCczR1OtScwBu1_S9AoSODOeKmjpGW9CMlJk650h34s
 wMV.5kUEFHfOABlW8iky.JwNKVR_7bq71NylCM7Csay01CKs290Ijejg7vGcgX6zNAxYTEmvaV5q
 1hBcjFEMBUiijwL80oXgZKUZu9X3vD1otUn4w9QL4J0P9eLsezSbEcUVu7NF_sgaygSHPfUnhDLv
 9ZeTqSXWt6.kZKZJBNOHJlqacGCJme90iqexp5YXver9dX03HGjB_Bpx4
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.sg3.yahoo.com with HTTP; Mon, 15 Jul 2019 15:49:08 +0000
Date: Mon, 15 Jul 2019 15:49:04 +0000 (UTC)
To: tipc-discussion@lists.sourceforge.net, Ying Xue <ying.xue@windriver.com>
Message-ID: <972611549.1456135.1563205744665@mail.yahoo.com>
In-Reply-To: <df6091ec-b1db-659f-b2ed-eb18ea40c111@windriver.com>
References: <1593727072.553762.1562990335581.ref@mail.yahoo.com>
 <1593727072.553762.1562990335581@mail.yahoo.com>
 <df6091ec-b1db-659f-b2ed-eb18ea40c111@windriver.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/75.0.3770.100 Safari/537.36
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lmk_in[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [106.10.242.140 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [106.10.242.140 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hn3E3-002UUU-D7
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC ; config trouble ; help request
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
From: Mahesh Kumar via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Mahesh Kumar <lmk_in@yahoo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

IEhpIFlpbmcsClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIGxldHRpbmcgbWUga25vdy5EbyB3ZSBz
dXNwZWN0IGFueSByZWxhdGVkIGlvY3RsKCkgcGF0Y2hlcz8uwqBjb3VsZCB5b3UgcGxlYXNlIHBv
aW50IG1lIHRvIGxpbmsgd2hlcmUgd2UgY2FuIHJldmlldyB0aGUgVElQQyBwYXRjaGVzIHRoYXQg
d2VudCBpbiB0aGUga2VybmVsLj8uCk11Y2ggYXBwcmVjaWF0ZSB0aGUgaGVscC4KdGhhbmtzICYg
cmVnYXJkc01haGVzaCBrdW1hci5MCiAgICBPbiBNb25kYXksIDE1IEp1bHksIDIwMTksIDAyOjU2
OjMyIGFtIEdNVC03LCBZaW5nIFh1ZSA8eWluZy54dWVAd2luZHJpdmVyLmNvbT4gd3JvdGU6ICAK
IAogT24gNy8xMy8xOSAxMTo1OCBBTSwgTWFoZXNoIEt1bWFyIHZpYSB0aXBjLWRpc2N1c3Npb24g
d3JvdGU6Cj4gVGlwYyBUZWFtLAo+IAo+IEdyZWV0aW5ncyEuCj4gSSBoYXZlIGJlZW4gdXNpbmcg
VElQQyBmb3IgYWJvdXQgYSB5ZWFyIHdpdGhvdXQgYW55IGlzc3VlSG93ZXZlciB0aGUgVElQQyB0
b29sIGlzIGJhaWxpbmcgb3V0IHdoZW4gSSB0cmllZCB0byBzZXQgYWRkcmVzcywgYmVhcmVyCj4g
Cj4gCj4gLyAjIHRpcGMgbm9kZSBzZXQgYWRkciAxLjEuMTAwCj4gCj4gZXJyb3I6IE9wZXJhdGlv
biBub3QgcGVybWl0dGVkCj4gCj4gLyAjIHRpcGMgYmVhcmVyIGVuYWJsZSBtZWRpYSBldGggZGV2
wqBpZW9iYwo+IAo+IGVycm9yOiBJbnZhbGlkIGFyZ3VtZW50Cj4gCj4gLyAjCj4gCj4gSSBhbSB1
c2luZyB0aGUgbmV3IGtlcm5lbCBub3c7Cj4gwqB1bmFtZSAtYUxpbnV4IDJjM2YwYjAwMTkwMF8x
X1JQXzAgNC40LjE4MCAjMSBTTVAgVHVlIEp1biAyNSAxNTozNjoxMCBQRFQgMjAxOSB4ODZfNjQg
eDg2XzY0IHg4Nl82NCBHTlUvTGludXgKPiDCoGRtZXNnIG91dHB1dCA7IGdyZXAgLWkgVElQQyBk
LnR4dFvCoCDCoDI5LjQzNjU5OV0gdGlwYzogQWN0aXZhdGVkICh2ZXJzaW9uIDIuMC4wKVvCoCDC
oDI5LjQzNjc2OF0gdGlwYzogU3RhcnRlZCBpbiBzaW5nbGUgbm9kZSBtb2RlCgpTdXNwZWN0ZWQg
c29tZSBUSVBDIHBhdGNoZXMgaW50ZWdyYXRlZCB0aHJvdWdoIDQuNC4xODAgcmVsZWFzZQppbnRy
b2R1Y2VkIHJlZ3Jlc3Npb24uIFRoZSBtb3N0IHNpbXBsZXN0IG1ldGhvZCB0byBpZGVudGlmeSB0
aGUgaXNzdWUgaXMKdG8gcmV2ZXJ0IHNvbWUgVElQQyBwYXRjaGVzIHRvIGlkZW50aWZ5IHdoaWNo
IG9uZXMgY2F1c2VkIHRoZSByZWdyZXNzaW9uLgoKPiAKPiBbMmMzZjBiMDAxOTAwXzFfUlBfMDov
XSQgdGlwYy1jb25maWcgLW50VHlwZcKgIMKgIMKgIMKgTG93ZXLCoCDCoCDCoCBVcHBlcsKgIMKg
IMKgIFBvcnQgSWRlbnRpdHnCoCDCoCDCoCDCoCDCoCDCoCDCoCBQdWJsaWNhdGlvbiBTY29wZTDC
oCDCoCDCoCDCoCDCoCAxNjc4MTMxM8KgIMKgMTY3ODEzMTPCoCDCoDwxLjEuMTowPsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIDE2NzgxMzEzwqAgwqAgem9uZTHCoCDCoCDCoCDCoCDCoCAxwqAg
wqAgwqAgwqAgwqAgMcKgIMKgIMKgIMKgIMKgIDwxLjEuMTo0ODMzOTA4NzQ+wqAgwqAgwqAgwqAg
wqAgNDgzMzkwODc1wqAgwqBub2RlMcKgIMKgIMKgIMKgIMKgIDg4wqAgwqAgwqAgwqAgwqA4OMKg
IMKgIMKgIMKgIMKgPDEuMS4xOjI4NzA5NDMzMjY+wqAgwqAgwqAgwqAgwqAyODcwOTQzMzI3wqAg
em9uZTE1MDAzwqAgwqAgwqAgNcKgIMKgIMKgIMKgIMKgIDXCoCDCoCDCoCDCoCDCoCA8MS4xLjE6
MzU1Njc4MTA5Nj7CoCDCoCDCoCDCoCDCoDM1NTY3ODEwOTfCoCB6b25lWzJjM2YwYjAwMTkwMF8x
X1JQXzA6L10kwqAKPiAKPiBwbGVhc2UgbGV0IG1lIGtub3cgaWYgYW55IGlzc3VlLgo+IHRoYW5r
cyAmIHJlZ2FyZHNNYWhlc2gga3VtYXIuTAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+
IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPiAKICAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
