Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EC63D3E58
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 19:17:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6ynb-0000SG-FW; Fri, 23 Jul 2021 17:17:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maloy@donjonn.com>) id 1m6ynZ-0000SA-Jc
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1peeaLzF/uCll4A/O9mvzgv2+OAScpLHOhyBxopF8gs=; b=ZNaECt9pHrWDUuyEpXzjTgg2w
 FRt4V1aNgv0H7s++1qwHmseyE7b9enotDS+ofbSOMcGSe29x8tYtw4ifCKTnEUVsqm03zj/Zs+Hhz
 97VlKgqfIY85iub3Hus7v0E0+0/oYzk2qCGu2o6Ye+1jG2LB33WSE7uSWiXTlPJkgzZm8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1peeaLzF/uCll4A/O9mvzgv2+OAScpLHOhyBxopF8gs=; b=QsgsKX1XdBRsHB0Y+lfRwVXoa1
 PsqwFPSDNLzQSJNr03+EUdowm4hZo14+t76CABSf5rZVgx1pIrbLwLpQNGO8adYeeuBnTAqdHb12W
 SYr8ge9QLTRFHXI/ZxS1QGEKP8BZY7WH6Z69x9uM+qUUJUGQm3EWIvOCH7ztCaAeY5/w=;
Received: from sonic316-26.consmr.mail.ne1.yahoo.com ([66.163.187.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6ynN-000V02-Ku
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1627060623; bh=1peeaLzF/uCll4A/O9mvzgv2+OAScpLHOhyBxopF8gs=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=Bw1V4c6xRsXuGHooeJrYxooauSS5zxaWtcsBEDE2M8CSknM4Tf/cKqFQ9u9d0pkoNPbh8uXMk/Cnn3vfb4M2lyQUti7BHXBRuAtxN96T6uLsEuumjsYde7MMOOyXIXuqh41IZ8o7GfSCTwtKt3zFzbiV3bE+OOIST6tvaR3EBfSyDHfdja9fwMW3NdG/3s8bP2Z5MdfIG08RNjc+AJOYkl4lKyOi30mwOMBKUHHGeHoopwzpdjFTkAftFdbCsmrdyxXAN9rPL8cmZ4ssH7jpenid3W3tQYGEwlGjkfIUYfZao/wE4MB1RvdY/5X0QZRRcXHtHJHjhXUP/1ak6y3gWg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1627060623; bh=T6xNHk4Whb3CSZx2FbwGtTDceuODG9JgU9llWb2kz/s=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=m2zFjMvORDMGaoDrtRBVX3jfVbJDn4rRDlmZIuVq/k8G8RzgGn5OkLfzz10H9vd7ASEbDdApgjHFOWCWsmcPwQXNnDIT5+xiJcc9i1FHAli1emuqs9cG2r0+F6EjkQPA4suur1HcGrgK0muUOvbRSKkg1xwmDZnfrga7hGvTXP6sMhRDpczbwHyvVYCQAcNLCUqKcCAg6wxn0Bf74fNelZiQxCmzGKO0JIv8cVw/3BxcrHY5PlTAfawgYtxK9U9UVPhqthlaoRp1o/tITUyqydnBCx2XBAAAa5DwCmEP3EBF5ZUWSpq2gJEcssQhyUHE26lmsFE9zCqv86jGt/gMoQ==
X-YMail-OSG: g93.f6wVM1mIwyeqlHMskiyIfgRqJ0rOt7VlY1Eimyj5DKOhKZapAfIHJATQd2P
 ng86EqIB0HPXrotq4DlqaUmfAhEiSk.nSDFPS48ZLiXbI3SyTCqMQkxoDPso3efJiw_qHjmIYlz0
 bf0CrBC8GG3YEH_3RKVsMGcyRtgIPgsOZ6cqZwGDvoy17vOsd5fxmEN0YzKa50OXS69UmIp9_LsH
 97JY8Y_2qcGJcpxY.BFodQ4smiNhzleBht2uHAoeabUlCs1b0W6Vnjl7z3546wg2JjKtmGrEc988
 CSFCgZ.e9WP0BfU.s6svS_FZjIvoR4gAWQ9.x.4D0NDxL7mxa4rhGjropuXU9qU5KYA.OFpBxcbs
 9DHWhrSFRX06rZjckB6Ws1EhGGFF7bsMHEKlBh26xFxnQ.v.GNTAx_EXkzYpLC7JGb0nzozBFyHm
 P9egG6x2vIOUXFQN_B5MP1mmx67WenKxn66NRjew94JRNWhvaC_wZNtXJdO_mw5iGRbd9BfREI0o
 9r5oTxchHkJdCksBXRvWZLNm3NbLnqECBIpxXWweipop2p3XpZt23Xrk9EzqpM_nu.6vFIX1Ur1L
 J6ZW1l8ZsI8kpaqaE2XATIUxVUKLFuCIwvnJVKDK_vOOaeRpcogG.rOPEevK1jU83rurbQdr63DJ
 SXKHQm6SzcDoyMJ1M9sReYVGNIvM8EVjmXLZGD7KVhtkuiO3GwdGdXLHBFvoScaw2iXB6CIlDwgZ
 f8hzLzWUdFLur9QpJYwf.rSYwsfnK6j_YB4fxBlRGcwT5.pWUtZZzyn7gLpgotTZhf4fq3i.R.6q
 Auq8Ps0yPIXghqgqW7hidh2Kb1_kvKIWUdqs4IFQnGKc0TfLY9Tqr300AqDSv43WNNz8d7eWzdZj
 _z9JZamROeU86pPIv846Dd3MdEqIj.iQoTcFm1Tazscjvf_Gq8y7jB4JDYqMPWcncxHeq3oLC_Ty
 ao.RSTEJ3cwx40e44ALYMrD0JZj1LuskVXJVnzqbUbnM1iACi46mzJhlpR5LmQRgU10ymyofUQH2
 RtG76BIn.H8ZxAAigln_w6DhhTA0RZSxJ.qaYAEoUr.Z0Q7WkQLBEoZmQmxFKK.jIkcC1R7C0wab
 lZw9Hg4ibedB1arUoUbxAraPY1JhLwmDeFCgfPTLhQYe8AhDdtNWauFHJ4FeviqDhhgpqrsLNc22
 lCguqYwNXaykyV9d4hFTxoNjm9VaBYHsmJtn_9mLoztBkZ9PtCHEkrG6_EXasOys5ri79s_JBe6X
 hiM4QkSMaooeOtdLVK.mfheJM1vX76ZGBpNmqiILUNp8_WWrii50gW5BYwKUtSGNxpAmI00EvP7z
 r7hCoe6kIsaqTlT.IFiKCDSxaZarh2x.3tSBCxL1JK3n6BNqmATW8yFZMdgr9dA5HmymXnOgtfZi
 FZr0ou3f7Vh_MbIg_lYr3OAdKYhNzXQ.bwDBdkHBJCyLb0rGkszBx3xnaWNG9VqV9sawK55XyQRx
 Fsz1rEAZjnrBq3b8Bq.LN1dP22VCc871geTrKGPYl7wcZBB_UEMQJqvxlRShzb.eyNmxw8kVFGLp
 H4hEPFVcjtYyj785ouVcpkOTM2Mjp5daFM.DsUGeGULNJRF8MljjroMp2_yM9AluiGjhhzFss5.o
 vTwPEoyURZDJdZz7_Tbb5QGsW.jU2TkfHBlHK_r1Zz5DVPLlr5J5JxnCddJx.6rNMQIRwj5XFj5H
 SI7cdomy2Qvval2ERwf0BZ7gf6SZhN.hG1QY.D7t_6Vj9Abm34lsR22xAQtEvOvKQ96lEAYBeIXH
 vy5xSAX1sqw4mar3sGoyYbXPeBE11.pcpyRuzNdKhihoAxlr44c3qAD.PT9aJVB6.tUSSdqBQuuA
 mauazqtb_QkrbnhSMG1CaZwHCvg5HzDGj_swU90R.nk61YUhTfpIICUFPnyqK3eXAGkj_jbsw01E
 1bNmaVBL3XNj4LU_9qoyW_vYqMeOP4rS35u5ZuZvggn6wAgGw0BNg3TvRrf08B6wZHJwFoqs3Id7
 1AzUonWsHiio0Ci7_ZpqBXorKjix07.ZVq13y3OhI6bQzHIleO4LTw12SM48k9OMW8_eY20fdcHC
 9mrKDLIJKw6mf2zgectXRV8ZqEJPatrB163bTWMy0DeuvF6E51YO1q.sZttEweH7PwiOtdqtJ_s6
 Msn.XKWSKlnjLioGgng4Kck0HuWYnrqtf8lt4M1c7.qDctNkQs_Ll5P7l78mtskOPnUuzpmI7FRs
 BBVNQTXffJq.e2cQXAxDYfE.Lvumr4liBhQHi3vJqkULV.vcDXWxr5gy5Kd4CsHE1TOme_6StFiz
 wBLAo_k3Bl2u8ogmvj_bWir3ApaawodtS2nR3b2nRufSz6HcuHXZ3mYiG1RTvyMIFdLHIunY0qFJ
 9f3wc8gkYkpBj.mSIpdpOPa4ZmlLF5p63PbFfV9YahC6mWJgHUWxwbFbQP5DYs92Fq9Reuz69XWA
 pnO.TcvuEWV4lGSpKhxJ8veUeE.qcM9mhgStz11GjXx0Kuc.M9Lacp429rDpPf428sslIufa452j
 msi9PWGs9Vof7oExeaAorP64Dn_BUqciu1UoawM_bAylK4nuA8L7CRTIc4NUOo9hZ8TLlowXhXQ-
 -
X-Sonic-MF: <maloy@donjonn.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Fri, 23 Jul 2021 17:17:03 +0000
Date: Fri, 23 Jul 2021 17:16:58 +0000 (UTC)
From: Jon Maloy <maloy@donjonn.com>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Xin Long <lucien.xin@gmail.com>
Message-ID: <1399255250.568413.1627060618944@mail.yahoo.com>
In-Reply-To: <2d9a27d5d8b984ceb9725715437630b01132f49b.1627058390.git.lucien.xin@gmail.com>
References: <2d9a27d5d8b984ceb9725715437630b01132f49b.1627058390.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18736 YMailNorrin
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.187.152 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6ynN-000V02-Ku
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: fix an use-after-free
 issue in tipc_recvmsg
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

IAoKICAgIE9uIEZyaWRheSwgSnVseSAyMywgMjAyMSwgMTI6NDA6MjIgUE0gRURULCBYaW4gTG9u
ZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+IHdyb3RlOiAgCiAKIHN5emJvdCByZXBvcnRlZCBhbiB1
c2UtYWZ0ZXItZnJlZSBjcmFzaDoKCsKgIEJVRzogS0FTQU46IHVzZS1hZnRlci1mcmVlIGluIHRp
cGNfcmVjdm1zZysweGY3Ny8weGY5MCBuZXQvdGlwYy9zb2NrZXQuYzoxOTc5CsKgIENhbGwgVHJh
Y2U6CsKgIHRpcGNfcmVjdm1zZysweGY3Ny8weGY5MCBuZXQvdGlwYy9zb2NrZXQuYzoxOTc5CsKg
IHNvY2tfcmVjdm1zZ19ub3NlYyBuZXQvc29ja2V0LmM6OTQzIFtpbmxpbmVdCsKgIHNvY2tfcmVj
dm1zZyBuZXQvc29ja2V0LmM6OTYxIFtpbmxpbmVdCsKgIHNvY2tfcmVjdm1zZysweGNhLzB4MTEw
IG5ldC9zb2NrZXQuYzo5NTcKwqAgdGlwY19jb25uX3Jjdl9mcm9tX3NvY2srMHgxNjIvMHgyZjAg
bmV0L3RpcGMvdG9wc3J2LmM6Mzk4CsKgIHRpcGNfY29ubl9yZWN2X3dvcmsrMHhlYi8weDE5MCBu
ZXQvdGlwYy90b3BzcnYuYzo0MjEKwqAgcHJvY2Vzc19vbmVfd29yaysweDk4ZC8weDE2MzAga2Vy
bmVsL3dvcmtxdWV1ZS5jOjIyNzYKwqAgd29ya2VyX3RocmVhZCsweDY1OC8weDExZjAga2VybmVs
L3dvcmtxdWV1ZS5jOjI0MjIKCkFzIEhvYW5nIHBvaW50ZWQgb3V0LCBpdCB3YXMgY2F1c2VkIGJ5
IHNrYl9jYi0+Ynl0ZXNfcmVhZCBzdGlsbCBhY2Nlc3NlZAphZnRlciBjYWxsaW5nIHRza19hZHZh
bmNlX3J4X3F1ZXVlKCkgdG8gZnJlZSB0aGUgc2tiIGluIHRpcGNfcmVjdm1zZygpLgoKVGhpcyBw
YXRjaCBpcyB0byBmaXggaXQgYnkgYWNjZXNzaW5nIHNrYl9jYi0+Ynl0ZXNfcmVhZCBlYXJsaWVy
IHRoYW4KY2FsbGluZyB0c2tfYWR2YW5jZV9yeF9xdWV1ZSgpLgoKRml4ZXM6IGY0OTE5ZmY1OWMy
OCAoInRpcGM6IGtlZXAgdGhlIHNrYiBpbiByY3YgcXVldWUgdW50aWwgdGhlIHdob2xlIGRhdGEg
aXMgcmVhZCIpClJlcG9ydGVkLWJ5OiBzeXpib3QrZTY3NDFiOTdkNTU1MmY5N2MyNGRAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQpTaWduZWQtb2ZmLWJ5OiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBn
bWFpbC5jb20+Ci0tLQogbmV0L3RpcGMvc29ja2V0LmMgfCA4ICsrKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC90
aXBjL3NvY2tldC5jIGIvbmV0L3RpcGMvc29ja2V0LmMKaW5kZXggOWIwYjMxMWM3ZWMxLi5iMGRk
MTgzYTRkYmMgMTAwNjQ0Ci0tLSBhL25ldC90aXBjL3NvY2tldC5jCisrKyBiL25ldC90aXBjL3Nv
Y2tldC5jCkBAIC0xOTczLDEwICsxOTczLDEyIEBAIHN0YXRpYyBpbnQgdGlwY19yZWN2bXNnKHN0
cnVjdCBzb2NrZXQgKnNvY2ssIHN0cnVjdCBtc2doZHIgKm0sCiDCoMKgwqAgwqDCoMKgIHRpcGNf
bm9kZV9kaXN0cl94bWl0KHNvY2tfbmV0KHNrKSwgJnhtaXRxKTsKIMKgwqDCoCB9CiAKLcKgwqDC
oCBpZiAoIXNrYl9jYi0+Ynl0ZXNfcmVhZCkKLcKgwqDCoCDCoMKgwqAgdHNrX2FkdmFuY2Vfcnhf
cXVldWUoc2spOworwqDCoMKgIGlmIChza2JfY2ItPmJ5dGVzX3JlYWQpCivCoMKgwqAgwqDCoMKg
IGdvdG8gZXhpdDsKKworwqDCoMKgIHRza19hZHZhbmNlX3J4X3F1ZXVlKHNrKTsKIAotwqDCoMKg
IGlmIChsaWtlbHkoIWNvbm5lY3RlZCkgfHwgc2tiX2NiLT5ieXRlc19yZWFkKQorwqDCoMKgIGlm
IChsaWtlbHkoIWNvbm5lY3RlZCkpCiDCoMKgwqAgwqDCoMKgIGdvdG8gZXhpdDsKIAogwqDCoMKg
IC8qIFNlbmQgY29ubmVjdGlvbiBmbG93IGNvbnRyb2wgYWR2ZXJ0aXNlbWVudCB3aGVuIGFwcGxp
Y2FibGUgKi8KLS0gCjIuMjcuMAoKRm9yIHNvbWUgcmVhc29uIHRoaXMgb25lIGRpZCBub3Qgc2hv
dyB1cCBpbiBteSBSSCBtYWlsYm94LkFueXdheSxBY2tlZC1ieTogSm9uIE1hbG95IDxqbWFsb3lA
cmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by90aXBjLWRpc2N1c3Npb24KICAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
