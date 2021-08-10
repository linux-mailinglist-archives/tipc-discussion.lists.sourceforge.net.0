Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 416CA3E7C98
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Aug 2021 17:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mDTsO-0004nd-M4; Tue, 10 Aug 2021 15:41:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maloy@donjonn.com>) id 1mDTsN-0004nN-Iv
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 15:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlcFoAG8zygepex1Y3hmjtv3sd1ecjcgqVRZV5DDrlQ=; b=PTVhczoNPXqb6S7z30+0+KmIW
 mFeKvBxh985l23j1peaRKAv0fSi+86o6nvm5GJbPnhAWCcVMO+Swb0SmhV7z7Bq4LPWGafwzknE6v
 N2am3TPiaZBvx+Mg0wT3Exh8kgQdCpJszkQCHYaq/Xzh1Fc1h4/Ozs6wS0+BujWJ41qus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xlcFoAG8zygepex1Y3hmjtv3sd1ecjcgqVRZV5DDrlQ=; b=M1vWAExC+tcHyCSjsiT/+7Y+jK
 eCfnrYhUHuH2Lhcg9oAIEd1sJahY1/i1DpIZIknvULu6juzsiIn3JZQ5JqF0KHd41QXj++Sg9umcc
 L/7pe+blsPu3mYXUw9tARuSM7UMxXkSwvPwyx5XPMZ4Aqxx6XkfDgTDXwoRxpDGtQ5Jw=;
Received: from sonic312-29.consmr.mail.ne1.yahoo.com ([66.163.191.210])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDTsK-0008Gh-BP
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 15:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1628610062; bh=xlcFoAG8zygepex1Y3hmjtv3sd1ecjcgqVRZV5DDrlQ=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=HWjM1lxuzDpJ/xRajowP4E8CHiqGQPkLnFB89pMBhwqX3ixtEjqYUsj59G2JNZSxv3qsrRODg1Zf+CUwUEqNwgGqkQFxU0nlsJN8lpfqzMKDSIDaHzqTdn/yJ5m9smNpy4jkOKlECrQg4dxQKUCEBI+WM5QFL5+i+uHFOJ9l4ubNXPFVwzKR4eUV7pBZ/GFB5I4XTpzqQCVTwMbiOrSO0nh0BqPGYhSPcXl+h4aAInRP3xobGsojln4ld3QaZkrKKdwKv6zFyVxyUO39yaCBmjfOh2xRzL5Lp6Io/2/h6TL3GpMzPAjyCN0SNqhI2qSvepLUNYaoSPGHCyaPkXinkg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1628610062; bh=J57pAJq+1ak+wgFxFS7XVGpG1vTKktVq2mrmHZEYJsy=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=TgIXh+yNE1kv1eWdDzU4wGwWmaOSVq75IFHNUJNi4Wfbjkzf0ndO7UZRUFlAIiFE44ORy6XxDqwo1/4OgA1nMyUd1jMCe5dwdYST3yNcsZ9MEqgwTyXwlUYvxO/AOeF3lSLAn9dNonwewElFYbmM27zz4DVRrNp266ejW3P73rfRhmjrh9kQi7X9mYxG012Bd2L93X/IJ9x98Kvc1sPF/8B3bRo2Z1XA+8XBECgfLg7CG1er7AIoXQYQ0G64RsGuoTD3FfIzEx533HyIEwMlD6UZO+P7XHE3dF5R0msx+9d9syQpkB3780A30KhrGt0N9HcpBMVuMJ6iEg9uWj0K4w==
X-YMail-OSG: K2n1B4kVM1nurONcxVPj886dIhqlGxyNIz0oMSRrYXPI6SSne.Q4o_gcUWy9WQ2
 YdXfCvngSOAjC6Fxyk7ZjX62_tOrAogqEyjZ6Hcetr85HKtVEl4EpOyz3NVmdp0ICO2MI4S2fV2k
 gigsnvEP9uXRWetpNsMdak6MebLaZMe4.5cTPiFXRs5ozrDIDFbIX.Us.Fk8Vnjwf6wPBRVGF5e2
 60M9CgQO8zeMrYChCish3.31NTlz1H21cBynStNYxiNnwgpUQmp6I.OMrN29dFrC05WqIx.nVxf9
 gns.qIHiHzoU.8sJJ05Wg2r.3q7DdH8LHTZE6nFLix0tGD8IddhD1J9o.YfP0JfSYxsfibDsGlrB
 nfiTZuF7E_fbvsolju9UwAGPi0cvi2xwlvJQyQgxgVg_8EDpEN40FeSa8o6qbjmm51Gx1xOSAN33
 SIkwp4.Q.v.1HVfpjN6h7Z5O9LI_SwnG4GIstqMKAXDPVBcYGeIdHSs62nxMNrj4zjk4J0rd3C13
 E4l7Zo1WOGyOH483gledGh.G5jdF7_rGOyWnvt1VLVrwnOl4WyP5izzMTRCtaAMWQ34ZJ1cg1P0m
 wvFwluW5.pYMMQyjOUxD0Bz00NKrOd3hST1z4U5N7ZOHzQr4FQTe7KZP8ssmLgkoVUzcNEjLqr2r
 Ir2yPmqCTYpQmgwrxovLIrkmRNHJDp7BWPO0onAdYbQmVvcaln5d8bwN6SdwAPSWhbBTxV5Ph_DG
 jKPseo211LOvuU9P_4QQgY5gHvFGchlUjidqbogZnUrrdFd097oJS1b5Oese3O7PSY3pP1Ce.ho.
 xeeXfKUZfdT2FJpbX1ndI3JCTc4JSX3mDYmM668nWiXp.UqSsjflz5zqJDc.QWWfJoYQITJ.mif4
 zX4OmgJL1iPiuHzRHF2ordGVJJM3NHCQefg_dwCjg48r8jvZhf2VlxF7p5Ty5d9Vc.jS6dyuQmdv
 q1NPG97POqbArEc5.RmoNSnm6l2cxXWGWFPEwv5_DJOvVVf_BcxEPYFy2zmloet.8Z_Odwy.ZQtj
 M7fcn4bx7Pp4zyjB03KCr6lF2_GVE4FkUyOaWMqTdhaeHMEbd6KHd5dWsxKft4XgJsZZASkBbGoA
 hsHhKDIlF3x0yzkkQkY6sjMX4WPqzewuq1bydDj1OqcjncMZSpyAnGEGjv3UGJ.lKVGZshhRbgwz
 xmjo.1nqOs1gZXGZnMeUniCJpdmBk3KPM79cw9sEDpxJXoVnZzrYBOPoSIUsF2k4JNDfHnobjgyx
 1xWvGynfhzcrXPVWJQnYVQ1wQ5r8_ZLnz5PXOHJ0zk8T7iMetfi.O6NazGvdYTLg1Ul9TtJaNPfQ
 fosxEfYLB0WV6DyRHR2xOmYjWBfAVqjzdd1I65bhiVREwm4mhjj5Hgu3dkxTYLQ6qdD6wlwOcMOy
 xbZVGpHrcqcGTAZWP0GJpfNWde02QhhC94A1VJ_6QtUg2dmDmd1OrKlo2qkaCbtcrLFVuFUVv6EJ
 7PVlsWFsCgSN1qDj.QMwwNIOvB94NOINvPi.j8eoytkY66yGqFNz3vBHNLcPgpEecApYiL5a4gUb
 BFHmWeYERqyftY9pppnUwVkjrfpnfMXgnx3emoen3GYgQQHeu80mw2gsYX01PHh33UXp9Cgi59C2
 FJwfZxhXVwy1yDcKOxU_LHZSrGZAq9zQN9vm5Visx84I2_vAny1xIdDBrfPRJKpkegKOcDGd_3U1
 q7erLYJpvTtC.qSDo9b6N_eleQpooP81rL80D4Mbar_402e0p6i1vMSvzIfJNFPhVPQTGWW9pDvE
 7BEqGgnVKJULn0F3tYGM2ZTJa50xtw.haQSPcqwcn39oMxsu1VqlMro3oPniHLvslfwQBQI3IqE0
 FVtMnmuWgFdkRlF8yctbOHoLBwn9PKPPhmMKVi1MHV1ve2sgqFNATeNBLdfxwaaWXiZ.T.LL7zGK
 PAZs4vE1kAtVfxqinx2CqQ2kj0GJo7Mz4iOVTZcRUdyeTNB25Ey6UgH47NZJW.SNIijm69gw2rm_
 I3wzW2UDmIh4FNqGYXzI0NTPT4MIRUv.YiegfuxfTtgCRR0jZrVXfXDsQBVbx9FNU7BC8jKCfWse
 EAL3UAwwZE7uH5XbqKFpMKflo56WKm.oa_Z9aIp0.zVy43QRKew18w9mNia7pKoqi2nNEg1QDM1.
 iQz7n566XuAFmeXL45Y64PGcJ0lNKK0IDRmqNwV3YMMEYyHTwiP_mNhNAZNm7A5_wzHW9BYIV2ov
 pS78MhoE148TUkmUioqaD.1V4F_TzgoBQ1r4WkaGEl_GE8l.S32cxMH9uzTLl13FI4an0SSFZjip
 DxiE_hXT4Q3Cq_Qtv_0am4o2cQFLuPLTI6RF7bgoIRxevYXwv3CRfeXgToNDfDDj58i5Gle9A3Pm
 gyd99sPtVQIH9rYnwQ0omX42ohDcmuTaPEwkMSOxTxIB_M.f1mG165PTxxXC.dKOacbId7ZmhkvX
 dljfy5x4Eg9opgODlGazTblTcb9Qnf4bdmcr4kygEVlvvNSOKbZFWPGfjAdbi3IGhdtZh5.MLFl5
 Y_J1jN2PHczLzWe2IKGSst1uYiS9eljcEAMe.FZcR6K0kPlHmtJCTCJY00JNwBQrAtgp8D7Xgvkz
 Z5b.wTNYoX_g0pYBV8xSQjb2vxIVOCBLuC8cKpMSCzF38qQrMg2imkd6UdHeer3pt58UIJBbUX2y
 yD0T8Vk61gwuVC3Nc_8V93OjtkqMvw8dlgIDSTn2Vg4DuM8Ge
X-Sonic-MF: <maloy@donjonn.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ne1.yahoo.com with HTTP; Tue, 10 Aug 2021 15:41:02 +0000
Date: Tue, 10 Aug 2021 15:10:39 +0000 (UTC)
From: Jon Maloy <maloy@donjonn.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, 
 "jmaloy@redhat.com" <jmaloy@redhat.com>, 
 "ying.xue@windriver.com" <ying.xue@windriver.com>, 
 "tung.q.nguyen@dektech.com.au" <tung.q.nguyen@dektech.com.au>, 
 Hoang Le <hoang.h.le@dektech.com.au>
Message-ID: <928739805.1505031.1628608239039@mail.yahoo.com>
In-Reply-To: <20210810093337.15926-1-hoang.h.le@dektech.com.au>
References: <20210810093337.15926-1-hoang.h.le@dektech.com.au>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18796 YMailNorrin
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.163.191.210 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.191.210 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDTsK-0008Gh-BP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [net] Revert "tipc: Return the correct errno
 code"
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

IAoKICAgIE9uIFR1ZXNkYXksIEF1Z3VzdCAxMCwgMjAyMSwgMDU6MzM6NTUgQU0gRURULCBIb2Fu
ZyBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT4gd3JvdGU6ICAKIAogVGhpcyByZXZlcnRz
IGNvbW1pdCAwZWZlYTNjNjQ5ZjAgYmVjYXVzZSBvZjoKLSBUaGUgcmV0dXJuaW5nIC1FTk9CVUYg
ZXJyb3IgaXMgZmluZSBvbiBzb2NrZXQgYnVmZmVyIGFsbG9jYXRpb24uCi0gVGhlcmUgaXMgc2lk
ZSBlZmZlY3QgaW4gdGhlIGNhbGxpbmcgcGF0aAp0aXBjX25vZGVfeG1pdCgpLT50aXBjX2xpbmtf
eG1pdCgpIHdoZW4gY2hlY2tpbmcgZXJyb3IgY29kZSByZXR1cm5pbmcuCgpGaXhlczogMGVmZWEz
YzY0OWYwICgidGlwYzogUmV0dXJuIHRoZSBjb3JyZWN0IGVycm5vIGNvZGUiKQpTaWduZWQtb2Zm
LWJ5OiBIb2FuZyBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT4KLS0tCiBuZXQvdGlwYy9s
aW5rLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvdGlwYy9saW5rLmMgYi9uZXQvdGlwYy9saW5rLmMK
aW5kZXggY2Y1ODY4NDBjYWViLi4xYjdhNDg3Yzg4NDEgMTAwNjQ0Ci0tLSBhL25ldC90aXBjL2xp
bmsuYworKysgYi9uZXQvdGlwYy9saW5rLmMKQEAgLTkxMyw3ICs5MTMsNyBAQCBzdGF0aWMgaW50
IGxpbmtfc2NoZWR1bGVfdXNlcihzdHJ1Y3QgdGlwY19saW5rICpsLCBzdHJ1Y3QgdGlwY19tc2cg
KmhkcikKIMKgwqDCoCBza2IgPSB0aXBjX21zZ19jcmVhdGUoU09DS19XQUtFVVAsIDAsIElOVF9I
X1NJWkUsIDAsCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoCDCoCDCoCBkbm9kZSwgbC0+YWRkciwg
ZHBvcnQsIDAsIDApOwogwqDCoMKgIGlmICghc2tiKQotwqDCoMKgIMKgwqDCoCByZXR1cm4gLUVO
T01FTTsKK8KgwqDCoCDCoMKgwqAgcmV0dXJuIC1FTk9CVUZTOwogwqDCoMKgIG1zZ19zZXRfZGVz
dF9kcm9wcGFibGUoYnVmX21zZyhza2IpLCB0cnVlKTsKIMKgwqDCoCBUSVBDX1NLQl9DQihza2Ip
LT5jaGFpbl9pbXAgPSBtc2dfaW1wb3J0YW5jZShoZHIpOwogwqDCoMKgIHNrYl9xdWV1ZV90YWls
KCZsLT53YWtldXBxLCBza2IpOwpAQCAtMTAzMSw3ICsxMDMxLDcgQEAgdm9pZCB0aXBjX2xpbmtf
cmVzZXQoc3RydWN0IHRpcGNfbGluayAqbCkKwqAgKgrCoCAqIENvbnN1bWVzIHRoZSBidWZmZXIg
Y2hhaW4uCsKgICogTWVzc2FnZXMgYXQgVElQQ19TWVNURU1fSU1QT1JUQU5DRSBhcmUgYWx3YXlz
IGFjY2VwdGVkCi0gKiBSZXR1cm46IDAgaWYgc3VjY2Vzcywgb3IgZXJybm86IC1FTElOS0NPTkcs
IC1FTVNHU0laRSBvciAtRU5PQlVGUyBvciAtRU5PTUVNCisgKiBSZXR1cm46IDAgaWYgc3VjY2Vz
cywgb3IgZXJybm86IC1FTElOS0NPTkcsIC1FTVNHU0laRSBvciAtRU5PQlVGUwrCoCAqLwogaW50
IHRpcGNfbGlua194bWl0KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCBza19idWZmX2hlYWQg
Kmxpc3QsCiDCoMKgwqAgwqDCoMKgIMKgIHN0cnVjdCBza19idWZmX2hlYWQgKnhtaXRxKQpAQCAt
MTA4OSw3ICsxMDg5LDcgQEAgaW50IHRpcGNfbGlua194bWl0KHN0cnVjdCB0aXBjX2xpbmsgKmws
IHN0cnVjdCBza19idWZmX2hlYWQgKmxpc3QsCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCBpZiAoIV9z
a2IpIHsKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBrZnJlZV9za2Ioc2tiKTsKIMKgwqDC
oCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBfX3NrYl9xdWV1ZV9wdXJnZShsaXN0KTsKLcKgwqDCoCDC
oMKgwqAgwqDCoMKgIMKgwqDCoCByZXR1cm4gLUVOT01FTTsKK8KgwqDCoCDCoMKgwqAgwqDCoMKg
IMKgwqDCoCByZXR1cm4gLUVOT0JVRlM7CiDCoMKgwqAgwqDCoMKgIMKgwqDCoCB9CiDCoMKgwqAg
wqDCoMKgIMKgwqDCoCBfX3NrYl9xdWV1ZV90YWlsKHRyYW5zbXEsIHNrYik7CiDCoMKgwqAgwqDC
oMKgIMKgwqDCoCB0aXBjX2xpbmtfc2V0X3NrYl9yZXRyYW5zbWl0X3RpbWUoc2tiLCBsKTsKLS0g
CjIuMzAuMgoKQWNrZWQtYnk6IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+ICAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
