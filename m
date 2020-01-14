Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA1013B66E
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 Jan 2020 01:11:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1irWHS-0003wj-UF; Wed, 15 Jan 2020 00:11:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maloy@donjonn.com>) id 1irWHQ-0003wb-QH
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jan 2020 00:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4KqEzDwMVUljDwqnKYFbfmYG6QCU1nPS0jjtjdtezv0=; b=XSlHHzeOzv2BHcuFGTR1+zbef
 aH7tUGG6jEfubH+sfUJcmU1amKKtNo50U1qTzYaxM1q/3Q5WEcPMlYqJwKcuEYd9UaGSnGoQ0fUt1
 1abK4A7uZtSKZdo088jtDdYDd0FPhORPcAfFN2Y7c5+Ggh8EeIcwOlYVsn+Df9huoLU3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4KqEzDwMVUljDwqnKYFbfmYG6QCU1nPS0jjtjdtezv0=; b=gf86x2htKxhN6FxnTU0kPpHNuv
 Af2wFbg46tupGIkKI1/b+iZARy6cavx2q61L1YEQJYZCOViof1Rw/xHcxmx8kGGapaQMQeBU3bKDe
 KdLy62FBrz7WGocu9MQsyHbamf18PfyfGEI96jbB1EaxgSPYpIKIm4m+2kjLtBGVfJjg=;
Received: from sonic309-28.consmr.mail.ne1.yahoo.com ([66.163.184.154])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1irWHO-003hbP-RZ
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jan 2020 00:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579047076; bh=4KqEzDwMVUljDwqnKYFbfmYG6QCU1nPS0jjtjdtezv0=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=hNuPuWvnaGXGsJSNM3y9ma81VJzSyf0zptYDdLdV51uXapTqnOriwgN0p0zcjaxQVC4PHNHrAumgOUUW1uTN9k3iHOWHGRG8v0Zgl70xXzZV+C72rq+5FJeROcPXfnHzKFBUEFA+ryEGb+FKC1jhb+WhiNNYBmiT7xKdFQ2/ef8zdQqN1/SEK+oQhezGnC+I2OeR+CDvVUCeDr98mVu9SANcSohmmKa5PLXBUCNcV2dqGsJGJjmza9u0PFR8QrfUGsJAVGqFSpRVm2ExitL2vRxD/OskgfEtijDlgchbIPFuQXJe24Gxww/a/zDZvHYhabxEzvGhNx28AkY0oQtpKQ==
X-YMail-OSG: w8PJB_AVM1nDlrCtG0P_9J8cbNY1_gnREztMMgUK9Seqx0piwZTK6TWtOE4gPj1
 Re2HQRbKFrqNRUXjBho_42.IwcjKp0f7EwCYx4KQ7GHvwU1RwPNft_c4Gc9ewQy_djz0PsTNdPD5
 1Khs1_5icz0CHOVDh_QUj8YnErclsC.KAdcX2msCckpnChS6UGrbIcaGaWoCpjvpieTNrRCR_Qj8
 AwzpkAFoOBikccMTMF1EAodIrel1VO2NHqtCQzU2K50aEuNUTVPv9pEzEBq7xfsAbjIPGoSa.Mdb
 iLjD8vXnmRdoSbG_8rLYDVUIcLaFOlovYGfdpmdYJYR1lGYnBhj4tmyceKbCsQQO.ddjNJvb7S8N
 jQbOerQ9yQIVarG4ekke94YBviAP5xXR1HJKMYnYJGP709qkTEQu7bTlJOtQENawZKEjx2VJ36mL
 .F.mJKcnfN37wQeBS7wjhh3iMqN2br9o5bBsf9xJ24FJWNGqjrhdamUUNF8OKu1stTsBiQzqsb_q
 aKfj7eNCiqSz7M39gWSa_X5XkeIZMx5o00u6_vODoFL3Qvx48.PtP.1_dADvfM9iEVChRySPI6so
 WX0_RzlowmC.opAOAMMshd0esYKaso1hAmd7YmsrraDDYB.YbDducymnx1eM9CU3oktbrQv1fAj7
 PZ8Csw56jLBru0mBWx2e5ETzfJjWAKNBOPExBfZ4ygJ_tugiJAPa0lm7XxaSsbeWc4O0A_Z6_7rK
 .0qSW9h0w8bUrdQulTs6gy5srGD2s844m3cT6HQ_rifrAOE8McSOjeRwSjp80vI4QMK9LeAR_Lfw
 B1fpaRMiS9gtrNsUqzs6mHrQS5olxnP0rrxsukslLbTRu5TOtLOsWSxk8hl_R5Gep9o5ulqowyvv
 JZPdf25CVzK3dz_Gj7GFPsbRo.sUSQj_d4ccEoF5KUrL72FFhyn7_iQvx_jkLEbKMDd0tT1B49MY
 mADJb8txecInQ0a29EWwRdvD2eeEEF5W9MTRp28gUZbwx3a3K_yh1fn3TcqskEvmhS.5459isx5c
 z0oORUVLZUoh5y_BsrfzYJ.CsN1UB5g4tmli2aExVeQaKE4VhljqZyDNEBWkRQ1bijNLhf8bRoPd
 0URLCY3hTF_yoHAS5PFVUo8a5gjFjxeO_gU4Dvwj87trZbJbp_dRUkav7Oe0931SY17TsO75lgvQ
 FYMIpzDI48w7ikhFFMBz5LA1YkJlMseGcmSF_UlfIgKTftSUiM8dE19HqtgxIL3zlwWd9izkDQUE
 biJ5ZJWYvEIrhvH2PvVuz2fRD7wytLJaOIcKLF0DuqnJU7YAD1kwtDwqiKv2mOsJlQAtDOgOHMLV
 M8A--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Wed, 15 Jan 2020 00:11:16 +0000
Date: Tue, 14 Jan 2020 23:50:59 +0000 (UTC)
From: Jon Maloy <maloy@donjonn.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, 
 Jay Pelletier <jpelletier@netnumber.com>
Message-ID: <168818824.11614195.1579045859813@mail.yahoo.com>
In-Reply-To: <CH2PR18MB34316BAA676F2844DAD31620D9350@CH2PR18MB3431.namprd18.prod.outlook.com>
References: <CH2PR18MB34316BAA676F2844DAD31620D9350@CH2PR18MB3431.namprd18.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11;
 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/79.0.3945.117 Safari/537.36
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.184.154 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: netnumber.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1irWHO-003hbP-RZ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Disabled port detection
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

IEhpIEpheSxVbmZvcnR1bmF0ZWx5IHRoZXJlIGlzIG5vIHN1Y2ggZmVhdHVyZSBpbiBUSVBDLiBU
SVBDIG9uIG5vZGUgQSB3aWxsIGRldGVjdCB0aGF0IHRoZSBjb25uZWN0aXZpdHkgdG8gYWxsIG90
aGVyIG5vZGVzIGlzIGxvc3QsIGFuZCB2aWNlIHZlcnNhLCBidXQgdGhlcmUgaXMgbm8gd2F5IHRo
ZXkgY2FuIHRlbGwgKndoeSogdGhpcyBoYXBwZW5lZC4KLy8vSm9uCgogICAgT24gTW9uZGF5LCBK
YW51YXJ5IDEzLCAyMDIwLCAxMjo0ODo0NyBQTSBHTVQtNSwgSmF5IFBlbGxldGllciA8anBlbGxl
dGllckBuZXRudW1iZXIuY29tPiB3cm90ZTogIAogCiBIZWxsbyBhbGwsCgpJIGhhdmUgYSBiaXQg
b2YgYSBnZW5lcmFsIHF1ZXN0aW9uLsKgIElzIFRJUEMgYWJsZSB0byBkZXRlY3Qgd2hlbiBhIHBv
cnQgb24gYSBuZXR3b3JrIHN3aXRjaCBpcyBkaXNhYmxlZD8KClRvIGZ1cnRoZXIgaWxsdXN0cmF0
ZSwgaGVyZSBpcyB0aGUgc2NlbmFyaW86CgpBIDMgbm9kZSBjbHVzdGVyIHdoZXJlIGVhY2ggbm9k
ZSBpcyBjb25uZWN0ZWQgdG8gb25lIGFub3RoZXIgdmlhIGEgbmV0d29yayBzd2l0Y2guwqAgV2hl
biB0aGUgcG9ydCBmb3IgdGhlIGNvbm5lY3Rpb24gb2Ygb25lIG9mIHRoZSBub2RlcyAobGV0cyBj
YWxsIGl0IE5vZGUgQSkgaXMgZGlzYWJsZWQgKG5vdCBkaXNjb25uZWN0ZWQpLCBOb2RlIEEgaXMg
cmVwb3J0aW5nIHRoYXQgdGhlIHN0YXR1cyBvZiB0aGUgYmVhcmVyIHN0aWxsIGFjdGl2ZS7CoCBJ
cyB0aGVyZSBhbnkgd2F5IGZvciBOb2RlIEEgdG8gcHJvcGVybHkgcmVwb3J0IHRoZSBzdGF0dXMg
b2YgaXRzIGJlYXJlciBpbiB0aGlzIHNjZW5hcmlvPwoKVGhhbmtzIGluIGFkdmFuY2UsCkpheSBQ
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRp
c2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNj
dXNzaW9uCiAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
aXBjLWRpc2N1c3Npb24K
