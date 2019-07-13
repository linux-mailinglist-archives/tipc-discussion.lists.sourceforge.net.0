Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B9367812
	for <lists+tipc-discussion@lfdr.de>; Sat, 13 Jul 2019 05:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:MIME-Version:Message-ID:To:Date:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=Y3HXLMwlHX0/UOhFcwth7ueBcUA6KAPpngLHSmOsidE=; b=Gf7dtqcvt9aGKPngn1xfWA2+l
	14QyW5MZ9JJevjjRS2HQj6MGQ3/aVH5sVm+IrEvyZa3K+AmmOtP+fozlrzwIJYjkGcmapU9dtceop
	nIyA8RoVMTlGhSmUcayo2+eX8T04Py1f5LcUFDXNCsUC9M4nIOvnW94haX/xJ7c54UHzo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hm9Bk-0006jv-Vx; Sat, 13 Jul 2019 03:59:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lmk_in@yahoo.com>) id 1hm9Bj-0006jW-8s
 for tipc-discussion@lists.sourceforge.net; Sat, 13 Jul 2019 03:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Subject:
 Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=otCbsZBbxjo0TlC6A4esO1PAGzuF4VV5/IXZXeaBgYc=; b=OtSUU4WAQ0OBW0uVFmIi1yWXVs
 Ndv7wSMQ53NBT3FA1blIa2Il7N/4jxqTtjGC4mP1Ihm9Bw0BKFqtCm1EEk8fSOw4xmlnvDT42uhrq
 QDUmJxbv6CgbJ/+seVvhL2py6iR+s6pUu95hJvPqprcWD9DbamChNFp8RcHIMArTEB8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Subject:Message-ID:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=otCbsZBbxjo0TlC6A4esO1PAGzuF4VV5/IXZXeaBgYc=; b=h
 a6JQJYviO8VHdB5coHK06LCQzEuNVmJ43ko9wRnofAGsg1tXt4vIdH9Fx5krOTtyPMHDMx3TWY2Om
 YHt8XxAiDJlvFJBHhZLo9jw2eiytfnjw3ZTjmbUQMum9o8XwmfzUGpnbIZQeDr7X8H1krudJhkwod
 xBZI4kHnFYtVhvWY=;
Received: from sonic310-21.consmr.mail.sg3.yahoo.com ([106.10.244.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hm9Bh-00GzTS-1W
 for tipc-discussion@lists.sourceforge.net; Sat, 13 Jul 2019 03:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1562990337; bh=otCbsZBbxjo0TlC6A4esO1PAGzuF4VV5/IXZXeaBgYc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=e/HC5pwy1NUg4kQ0wdd/1U53/qiaypQ4VbKluT99Qup2c8euShG8JtxDD1tHN3KdTJc6olFoZFEbn4KWcl8F9efxDzmzLe8AuHFBvk4e2GxW4gg51MNno5hnKnbhzuQ5sq5VzFllG62oMtzGOS573kjMRqS9b5aYYgARg7mkuGR3qNSpnSmgT7Fdp0Pb6jwNZ4kY8KdoXeOFlymi/kenjalCSXvucF8UI9h4U+HYZ0RM/jYwkACNkuPrIf7spjbpTdP2va5PfFwnx4YTc9TnG6OuijTnu/2Y12F9juLHNJ2PMtbXvwXFGDhi8TMYYkV/THPFboVxL1Ou/Ftiuj3Znw==
X-YMail-OSG: XCp74x8VM1lNy7YjUQfqbc5_bVX_OYNltCjZJ9IG9hpyKnUQ6SDzWf1IDgcmRJi
 bC7PUviOoZNFpXzAwsuGr8yYmecstu3N2GvGIgL6OJ9pQBpOuArct4hTp0mXp7jpc02DImQmk6yM
 CPxfzxxg7KZOMYKzqtS28V_ryX_2VMh41HdjRRwXERqEyBsM8FT2EcRnBMzJtRd7Fc8qxEHjwJua
 46yFWJq6ji.BetSBAQXDQLr_cSkWi33aU3rZVy4bbL9Omj2NYlCOo_GQovjaUwYAPWN9w8Kr6qrH
 mulH11DeDjC8Owug6Xl..H.ZXB2OEBD3Ab9fvswV8gt.MzY6XfD9OrA_jvftFDqR3UwieIHXPnG1
 W0sdtp0JNAF6gY4zT7aX.u8y5G4rxb8YQrabfOVkRK6z0vfArsMbB.N9feecCNVnRok.PBm6qR0C
 R4dnPMmdeRhMfUmdBL.DKbbTmUVr7yIhEaoiN9mo6Ba0OOpHNNcj.le6tS_KNdTKfpUo0C4s7PG6
 8tCNiJi.HKDqZ46l4FPW9FgQJKNe9xgvRXEAmz9_PY3d82kfGOJAzTqspQwNN_YK6zu7x2P5elLU
 2_GtQfvyIxETPRgVch563qbwmwauDaHOmCAqk2OHoKCYeeo2xiMtQDYSltEHgNdRymMxlW69hHrK
 i54I6dZrXU9H_L9dcrNiaNgX.Xt7LSIs_tdE85hTiPsM1IRqO5qWa0Kct5yViZIREQSjQxwQK78O
 A5a6pjOKftCFUO9hr0gpi_x60.eTPOH_yT08eMaOMZGPz8wxDC3SZqPHsAgtdbS.Oe..YucHzWob
 KgX0W0MD8pyZWPt2Wn70Mn1dudfzTWVHinFm1ATlFaK3ghLHDcTyQiZKbMdzdR4xFr8v1i45zzRq
 JCaXicane0YTRdYkEslG8dTJgBWFdyZVZcaU73iU3tgsXCw__3rQNgR55Kn.hsdSO1tWkXhOQRUc
 iGHS1H43baRVKoaKP3yC8BaY0yonyYg0aFiV9kE.U2Wnjmy9hAeFkzf45.N8qK7V30OFFQcL1vcd
 PZc484SutqZcrMhSpIT0tKc6fhnGVP65LA0fDCbVgVJqdlv0_Pb7CNLK45F8BJBtuJfj84KR3a0D
 djSHEak89.ltxKbrcXh9Ji9QbSWrWSMyqFgxrGA_Bk0aTjvgENyW_cUbudLNrV5y8lRfxjQYgtoU
 NBkUyMTLy.vEg5iuaHDhwO_jHlAdn5HoShvjjplLe2w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.sg3.yahoo.com with HTTP; Sat, 13 Jul 2019 03:58:57 +0000
Date: Sat, 13 Jul 2019 03:58:55 +0000 (UTC)
To: tipc-discussion@lists.sourceforge.net
Message-ID: <1593727072.553762.1562990335581@mail.yahoo.com>
MIME-Version: 1.0
References: <1593727072.553762.1562990335581.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/75.0.3770.100 Safari/537.36
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lmk_in[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [106.10.244.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-Headers-End: 1hm9Bh-00GzTS-1W
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC ; config trouble ; help request
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

VGlwYyBUZWFtLAoKR3JlZXRpbmdzIS4KSSBoYXZlIGJlZW4gdXNpbmcgVElQQyBmb3IgYWJvdXQg
YSB5ZWFyIHdpdGhvdXQgYW55IGlzc3VlSG93ZXZlciB0aGUgVElQQyB0b29sIGlzIGJhaWxpbmcg
b3V0IHdoZW4gSSB0cmllZCB0byBzZXQgYWRkcmVzcywgYmVhcmVyCgoKLyAjIHRpcGMgbm9kZSBz
ZXQgYWRkciAxLjEuMTAwCgplcnJvcjogT3BlcmF0aW9uIG5vdCBwZXJtaXR0ZWQKCi8gIyB0aXBj
IGJlYXJlciBlbmFibGUgbWVkaWEgZXRoIGRldsKgaWVvYmMKCmVycm9yOiBJbnZhbGlkIGFyZ3Vt
ZW50CgovICMKCkkgYW0gdXNpbmcgdGhlIG5ldyBrZXJuZWwgbm93OwrCoHVuYW1lIC1hTGludXgg
MmMzZjBiMDAxOTAwXzFfUlBfMCA0LjQuMTgwICMxIFNNUCBUdWUgSnVuIDI1IDE1OjM2OjEwIFBE
VCAyMDE5IHg4Nl82NCB4ODZfNjQgeDg2XzY0IEdOVS9MaW51eArCoGRtZXNnIG91dHB1dCA7IGdy
ZXAgLWkgVElQQyBkLnR4dFvCoCDCoDI5LjQzNjU5OV0gdGlwYzogQWN0aXZhdGVkICh2ZXJzaW9u
IDIuMC4wKVvCoCDCoDI5LjQzNjc2OF0gdGlwYzogU3RhcnRlZCBpbiBzaW5nbGUgbm9kZSBtb2Rl
CgpbMmMzZjBiMDAxOTAwXzFfUlBfMDovXSQgdGlwYy1jb25maWcgLW50VHlwZcKgIMKgIMKgIMKg
TG93ZXLCoCDCoCDCoCBVcHBlcsKgIMKgIMKgIFBvcnQgSWRlbnRpdHnCoCDCoCDCoCDCoCDCoCDC
oCDCoCBQdWJsaWNhdGlvbiBTY29wZTDCoCDCoCDCoCDCoCDCoCAxNjc4MTMxM8KgIMKgMTY3ODEz
MTPCoCDCoDwxLjEuMTowPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDE2NzgxMzEzwqAgwqAg
em9uZTHCoCDCoCDCoCDCoCDCoCAxwqAgwqAgwqAgwqAgwqAgMcKgIMKgIMKgIMKgIMKgIDwxLjEu
MTo0ODMzOTA4NzQ+wqAgwqAgwqAgwqAgwqAgNDgzMzkwODc1wqAgwqBub2RlMcKgIMKgIMKgIMKg
IMKgIDg4wqAgwqAgwqAgwqAgwqA4OMKgIMKgIMKgIMKgIMKgPDEuMS4xOjI4NzA5NDMzMjY+wqAg
wqAgwqAgwqAgwqAyODcwOTQzMzI3wqAgem9uZTE1MDAzwqAgwqAgwqAgNcKgIMKgIMKgIMKgIMKg
IDXCoCDCoCDCoCDCoCDCoCA8MS4xLjE6MzU1Njc4MTA5Nj7CoCDCoCDCoCDCoCDCoDM1NTY3ODEw
OTfCoCB6b25lWzJjM2YwYjAwMTkwMF8xX1JQXzA6L10kwqAKCnBsZWFzZSBsZXQgbWUga25vdyBp
ZiBhbnkgaXNzdWUuCnRoYW5rcyAmIHJlZ2FyZHNNYWhlc2gga3VtYXIuTAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
