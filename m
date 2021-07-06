Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 832543BC579
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 06:28:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0chD-0005Fu-Pf; Tue, 06 Jul 2021 04:28:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maloy@donjonn.com>) id 1m0chB-0005Fm-HK
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 04:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:To:From:In-Reply-To:
 Subject:Date:Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GIrYT0DbrfTeFOG84NS43vSvR20m5LfYI3f3Ced7Sn8=; b=fbqC91BTHPxazip/Dq59Pg0wLJ
 p057yKlb8w/Qz8hJBrRKQM/ypX9zWyJLR8AUXQ1BGoeFwvsSpfYkkHml41ikug6hUQb/B7LWa3nDo
 4sGMu48bc2nHicBabcs/xtQkWS8Wb6gCALUvzQZNeNnxswhVTS58rrBC5wbuJA0eUnFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:To:From:In-Reply-To:Subject:Date:Sender:
 Reply-To:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GIrYT0DbrfTeFOG84NS43vSvR20m5LfYI3f3Ced7Sn8=; b=CsjCy3Xgk0cv+RJoLmoTC+H6dK
 ktHmgAboCceRn5UWCyG7OQ0cbNQafNGCUCkqQlPahK+3GTVe/rkutW1w4PYDCIMRPTXnO0G0S8rrb
 uQUsEoXRglacdNEr2VLfhpFg9FS0Sn+cwKW4El3lgkMIdIq4Yve7OkfXacGaaq8qayb0=;
Received: from sonic308-16.consmr.mail.ne1.yahoo.com ([66.163.187.39])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0ch1-00Blfn-U4
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 04:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1625545694; bh=GIrYT0DbrfTeFOG84NS43vSvR20m5LfYI3f3Ced7Sn8=;
 h=Date:Subject:In-Reply-To:From:To:From:Subject:Reply-To;
 b=LZoUkW/qB00XK3Pe4ArWvw5oWiMDrw3h+3mWBMimY1lrZ12p2Gy5AjdWVJ5NyM6hjC8y3E73g2duYAeszpINW1hbupwESSm6Zgt+1UAsFRDPDz7oUT0y0Yn4JQTnmXoLDVg0tcz0S4c9FwcMqtFKXwFFyioilP0dtdO2Wmoj/2DhZ35uvz69s+5Y+pIr83/9D4LsKFK5SUofZ/rBQzo9lf0iEcl4CIsgXRN6n0MUxWehx47JSGQ2vosQn14xJ2ofVOh5lLnPFINl/8lf23IGN+peoaIG5GtEpy7OJL6V6FL1L/fxgi6fT9xIN4Hze6QpJjwwX1YtSWbnEAcy670hpA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1625545694; bh=etqs6RkljuJcrQCuM9eDikt+nt2kO2EQvlxsIKXNq8/=;
 h=X-Sonic-MF:Date:Subject:From:To:From:Subject;
 b=t5GPGQVjlLe1WgsL7crBWn+TiXbP3GehQCno+B6ka+fkJIYhvPNfjpEdDaPUpuSExVKpX/WNTwAZDwsi9bVLGNmY59N22e9z5ZaBCbzlRhKrG7xag4w76idzsIIgXThaMSbtu7zNG5D3q2lBfbLCnlm2oICw85hT9KhnyXXEvCIJWwJZJ2QtVH/DmyZnV4HedoD3uQOkn4HGqNOHSd9+G4DBCogt4N/o+ejBopfkorTpF1ewAAPCqqV/jiADjknx8D7ZK/EEbbVy1QA5Q8zzfiu/5R19HaMBsSSfibhQ95QbH/aHKgOIrKMBgTgmvLwxP4k4agE7n9uJichYSRblvQ==
X-YMail-OSG: LWVEWlwVM1l4DOVHvHg6eTpKksD_bEOvUTS8cOPvDqE.qbZA4b8.ivRFkC5HKzB
 jwpJbPgmpJnT6dgz47rB08WkuxzxcaapzOUMBQnSYD5A5nMIatgIefXv3J4ZV41Y7jFij6nc4i.Z
 u6v4TbN_fK9rX1usKbmw3uuaprarAAWk7x9hB__nPQSrXIG9Ew9ECsDxufSShghU6om3qMi8M5Qx
 WZZqnCCdJoMyzemKsgwe.4ePD9qI.W6.5TgkIy5Aw92YGZG0XK3l2tTewtJtnRzyJuJNdh4UN_kN
 hv6IghsfSBvtoEGju8Uvvm3ymrN5E3Ge150m0i8si68HKeim7FAZkP.oOrXgLPFsiyeGOt9sSWh_
 .6HKWhxEPFAyn7ZWcodQHRc_0KVBpGnm5mwvdzKx6AZKkWGNnAInuaZyfgzU0ga5GtqAkiBKpo6J
 8rCfXt.p5q0RGcxuQq_06_CmiCo2ASJw28PKG4SnYukZ43BsD_oO6uNBl_lz5sgLWmvUbI84rYU1
 mziFMG0a92OhY.10JsJqzA07Cce06naMvSS_YJ50c4dNVTyerrqfYGMQWzpncCOQfia116LW_82b
 HBA.eBRFamATuFLmKZl2sIhBg4dsDBlHCELbMP4L7.KyPT0Xp1b3Z.TOwmEKT6RvYcbmkWXwZnRP
 9Up2QQDNs_bOlfEzVyHq8pG0U67nIBMZkJLlCGNatSMputmTbUn7ARv5LQ8inpZuwfWC2GuMOSoz
 hlQtDgVsr4DxV.EIFJOJCKI54TvMUsNadF1QI4oP73Auh2k0.07Jlrzhmm3MjtOrHMsS9aR_ODQ6
 vG4SEsoYwrUSy_ZYG_Al_FhoK7Im2oe7xPKy0WFAM7wJMmrZdWL5cjU1YWUuj38ZK342ZFGyEL..
 czk7XQkYIfwmCm0kjJqOL8D5iHM.Tp53VV982whR6fHOg4Q8fTNetVuqOd6Z5SrLVnrCsVwr3X8m
 UkMt5XjojVkOom_Xeki9Fu2RiUfN_ucKINHNm8f9T2WvmXsZr_0Vkj8aYEqQ9YjzImzmwDCh6UPK
 q2O3tkpCuBU7QX3i_Brg7zEqROMamCVC_E4y2Pud3YnJ6ETG36KrDXffBq862MU6pgh9FFm97ka8
 zAtIlZKvwrOQElAMYMHfaJEkYsoUzpcfTXjnSwV.dmnr08_Sa5p4u7vW0OWJ9Lt_DqkAEnambKbv
 B90f9wDYQsZosccSxBN7KV6NmzGnIPKW6MJ5Zf3JboatACY9Wl794in6zsZrStC8d4w7cWTy40nD
 eVi6tRzXQm5TrlmxdWP09ebkv3WqTJsax_Z1YKM9OUN5CjwsjLNaqiKqNYk13Es2m7zZRmZ.xjQb
 7iXAX3VpzIRQxHjqL9l6Ix_kLXC3x9891RL9sxRbeWkBVY6kQ61PPZYx3VXhDZ0hJbXmJAiYFheK
 w4Cy_1xV.NTeNgyBnwDmnKuHuX90CnqrLvRk3V9CWEjGMYu6eMdNl_U3S0t2sobSTKo.XAMGnGz_
 sijvC0YBLySe4Id9weZ1ygh34EZ8jmKkIPI0Mbj_H4_0Prd5JQwT7e_FaSjBLPnjMg_ppoaQprQc
 .0IRo1R4UCUnuczoRJeWwzA5BstmrXtEy.aBiGrZp._kUhirxWjWwsiv_JUSRh0nJGFpPZPcXz55
 Hg4ZRDNzgp5wu8BK2ESYvnyBSvAptRLNnRVTcKoNnDzEtl1YStDp5P9b8xPOEOMzx4JakMH.AZGx
 ZVnrXUAD.pykRxo8dLj_VZYzTFG1vyPcDCjC0ozO1fM7VZYuMugTUwAPP22qDL1i8BUV5KY5fNUv
 nhK7N1Ugct.Zclz9REaNPHhfdAKrLH.n5e2AMJo8ZeUEVP7H_tE2VG1l_JIhIDEa_hl4jP96OA5.
 i4stFAAbzkeHIqpVxak8Q0v0Ib_.iG0hUo6EKUSegKh443N48aon3oUT1GBIy8iWTar1RA25TjQU
 G2YfrXr_WvTlQ4RKwXCl.eSxzDj_DNUQx2wnoSAy8SG0xuL.vvJ1Z26WtQsR_uerNc.tg_eScQcL
 aC8AOm7WXUy9F8McQ8xzlLZXhDI6Kru3zPae3Ta5NJkiSWfLMYZHoXcJjt9l7zdYI_yk0iFbruBp
 iBW2QvfGUX89uQHBiFI2a7YvQFbcCM60.1Q2iEX8NIfbuRsOiOE9E5d7kKo8EfL3V1b2HZNlyMT2
 G776ATmBMVgclVdSKhMj59.1yLtbWW7Ye6_QjSyBVF7hHus7Opg8WKTmQ8F.eohp0MkRP9zcAdAn
 Q0ERnT7j.PUQOkHlRxzMeiRRRFVzfK8sbPcPt001riGXThphKjrpNbdDljCyLHO1dX2HZ7sHPaiP
 nqjfN_N8uYjFL7T6J68.s7nfmyb8dqxOIwugZFaHdaGbjJuGi9akBxpcVR7P4HHszrZqZ40bdNT4
 E0kLPWkZD_QBt_K6NIdXSpcKalUmMnDu6JU5VLAAgsYT4_Oabo6gcqeIGOC1D.tKsupvIp7fcLzb
 ct2FIrQJ7k_lWc0YKx4zx27ntMZsz.ykZIpEKEAvUvCaWAOmUNMk35mn.G12DurC0ZsGlZTtsA6K
 mMpkwEBM3S012MMA5uyAI4vZa0afdEIKniGp277.LVbOQk98Uy8tiqULIoECL_IHR82nfIWED_BR
 18ulwNb9oRtTf92eVvfwKVH8iTSV5We6DtxhM7WAhg4vMWr.HI8PcQYxq.jsMng--
X-Sonic-MF: <maloy@donjonn.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Tue, 6 Jul 2021 04:28:14 +0000
Received: by kubenode540.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 8e25678478aef7af2f0481be3be3bf97; 
 Tue, 06 Jul 2021 03:57:45 +0000 (UTC)
SavedFromEmail: maloy@donjonn.com
Date: Mon, 05 Jul 2021 23:57:44 -0400
In-Reply-To: <8b84716568d37175790a2fe738a3bdf9de5914cb.1625098881.git.lucien.xin@gmail.com>
Importance: normal
From: maloy <maloy@donjonn.com>
To: Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Erin
 Shepherd <erin.shepherd@e43.eu>, tipc-discussion@lists.sourceforge.net
MIME-Version: 1.0
X-Mailer: WebService/1.1.18469
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.163.187.39 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.187.39 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
X-Headers-End: 1m0ch1-00Blfn-U4
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCHv2 net-next] tipc: keep the skb in rcv
 queue until the whole data is read
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
Message-Id: <E1m0chD-0005Fu-Pf@sfs-ml-4.v29.lw.sourceforge.com>

U2VudCBmcm9tIG15IEdhbGF4eQotLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tRnJv
bTogWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPiBEYXRlOiAyMDIxLTA2LTMwICAyMDoy
MSAgKEdNVC0wNTowMCkgVG86IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+LCBFcmluIFNo
ZXBoZXJkIDxlcmluLnNoZXBoZXJkQGU0My5ldT4sIHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQgU3ViamVjdDogW3RpcGMtZGlzY3Vzc2lvbl0gW1BBVENIdjIgbmV0LW5leHRd
IHRpcGM6IGtlZXAgdGhlIHNrYiBpbiByY3YKICBxdWV1ZSB1bnRpbCB0aGUgd2hvbGUgZGF0YSBp
cyByZWFkIEN1cnJlbnRseSwgd2hlbiB1c2Vyc3BhY2UgcmVhZHMgYSBkYXRhZ3JhbSB3aXRoIGEg
YnVmZmVyIHRoYXQgaXNzbWFsbGVyIHRoYW4gdGhpcyBkYXRhZ3JhbSwgdGhlIGRhdGEgd2lsbCBi
ZSB0cnVuY2F0ZWQgYW5kIG9ubHlwYXJ0IG9mIGl0IGNhbiBiZSByZWNlaXZlZCBieSB1c2Vycy4g
SXQgZG9lc24ndCBzZWVtIHJpZ2h0IHRoYXR1c2VycyBkb24ndCBrbm93IHRoZSBkYXRhZ3JhbSBz
aXplIGFuZCBoYXZlIHRvIHVzZSBhIGh1Z2UgYnVmZmVydG8gcmVhZCBpdCB0byBhdm9pZCB0aGUg
dHJ1bmNhdGlvbi5UaGlzIHBhdGNoIHRvIGZpeCBpdCBieSBrZWVwaW5nIHRoZSBza2IgaW4gcmN2
IHF1ZXVlIHVudGlsIHRoZXdob2xlIGRhdGEgaXMgcmVhZCBieSB1c2Vycy4gT25seSB0aGUgbGFz
dCBtc2cgb2YgdGhlIGRhdGFncmFtd2lsbCBiZSBtYXJrZWQgd2l0aCBNU0dfRU9SLCBqdXN0IGFz
IFRDUC9TQ1RQIGRvZXMuTm90ZSB0aGF0IHRoaXMgd2lsbCB3b3JrIGFzIGFib3ZlIG9ubHkgd2hl
biBNU0dfRU9SIGlzIHNldCBpbiB0aGVmbGFncyBwYXJhbWV0ZXIgb2YgcmVjdm1zZygpLCBzbyB0
aGF0IGl0IHdvbid0IGJyZWFrIGFueSBvbGQgdXNlcmFwcGxpY2F0aW9ucy52MS0+djI6wqAgLSBU
byBlbmFibGUgdGhpcyBvbmx5IHdoZW4gdGhlIGZsYWdzIHdpdGggTVNHX0VPUiBpcyBwYXNzZWQg
aW50b8KgwqDCoCByZWN2bXNnKCkgdG8gZml4IHRoZSBjb21wYXRpYmlsaXR5IGlzc3N1ZSBhcyBF
cmluIG5vdGljZWQuU2lnbmVkLW9mZi1ieTogWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29t
Pi0tLSBuZXQvdGlwYy9zb2NrZXQuYyB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLSAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSlk
aWZmIC0tZ2l0IGEvbmV0L3RpcGMvc29ja2V0LmMgYi9uZXQvdGlwYy9zb2NrZXQuY2luZGV4IDM0
YTk3ZWEzNmNjOC4uOWIwYjMxMWM3ZWMxIDEwMDY0NC0tLSBhL25ldC90aXBjL3NvY2tldC5jKysr
IGIvbmV0L3RpcGMvc29ja2V0LmNAQCAtMTg4MCw2ICsxODgwLDcgQEAgc3RhdGljIGludCB0aXBj
X3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgCWJvb2wgY29u
bmVjdGVkID0gIXRpcGNfc2tfdHlwZV9jb25uZWN0aW9ubGVzcyhzayk7IAlzdHJ1Y3QgdGlwY19z
b2NrICp0c2sgPSB0aXBjX3NrKHNrKTsgCWludCByYywgZXJyLCBobGVuLCBkbGVuLCBjb3B5OysJ
c3RydWN0IHRpcGNfc2tiX2NiICpza2JfY2I7IAlzdHJ1Y3Qgc2tfYnVmZl9oZWFkIHhtaXRxOyAJ
c3RydWN0IHRpcGNfbXNnICpoZHI7IAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiO0BAIC0xOTAzLDYgKzE5
MDQsNyBAQCBzdGF0aWMgaW50IHRpcGNfcmVjdm1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2NrLCBzdHJ1
Y3QgbXNnaGRyICptLCAJCWlmICh1bmxpa2VseShyYykpIAkJCWdvdG8gZXhpdDsgCQlza2IgPSBz
a2JfcGVlaygmc2stPnNrX3JlY2VpdmVfcXVldWUpOysJCXNrYl9jYiA9IFRJUENfU0tCX0NCKHNr
Yik7IAkJaGRyID0gYnVmX21zZyhza2IpOyAJCWRsZW4gPSBtc2dfZGF0YV9zeihoZHIpOyAJCWhs
ZW4gPSBtc2dfaGRyX3N6KGhkcik7QEAgLTE5MjIsMTggKzE5MjQsMzMgQEAgc3RhdGljIGludCB0
aXBjX3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgIAkvKiBD
YXB0dXJlIGRhdGEgaWYgbm9uLWVycm9yIG1zZywgb3RoZXJ3aXNlIGp1c3Qgc2V0IHJldHVybiB2
YWx1ZSAqLyAJaWYgKGxpa2VseSghZXJyKSkgey0JCWNvcHkgPSBtaW5fdChpbnQsIGRsZW4sIGJ1
Zmxlbik7LQkJaWYgKHVubGlrZWx5KGNvcHkgIT0gZGxlbikpLQkJCW0tPm1zZ19mbGFncyB8PSBN
U0dfVFJVTkM7LQkJcmMgPSBza2JfY29weV9kYXRhZ3JhbV9tc2coc2tiLCBobGVuLCBtLCBjb3B5
KTsrCQlpbnQgb2Zmc2V0ID0gc2tiX2NiLT5ieXRlc19yZWFkOysrCQljb3B5ID0gbWluX3QoaW50
LCBkbGVuIC0gb2Zmc2V0LCBidWZsZW4pOysJCXJjID0gc2tiX2NvcHlfZGF0YWdyYW1fbXNnKHNr
YiwgaGxlbiArIG9mZnNldCwgbSwgY29weSk7KwkJaWYgKHVubGlrZWx5KHJjKSkrCQkJZ290byBl
eGl0OysJCWlmICh1bmxpa2VseShvZmZzZXQgKyBjb3B5IDwgZGxlbikpIHsrCQkJaWYgKGZsYWdz
ICYgTVNHX0VPUikgeysJCQkJaWYgKCEoZmxhZ3MgJiBNU0dfUEVFSykpKwkJCQkJc2tiX2NiLT5i
eXRlc19yZWFkID0gb2Zmc2V0ICsgY29weTsrCQkJfSBlbHNlIHsrCQkJCW0tPm1zZ19mbGFncyB8
PSBNU0dfVFJVTkM7KwkJCQlza2JfY2ItPmJ5dGVzX3JlYWQgPSAwOysJCQl9KwkJfSBlbHNlIHsr
CQkJaWYgKGZsYWdzICYgTVNHX0VPUikrCQkJCW0tPm1zZ19mbGFncyB8PSBNU0dfRU9SOysJCQlz
a2JfY2ItPmJ5dGVzX3JlYWQgPSAwOysJCX0gCX0gZWxzZSB7IAkJY29weSA9IDA7IAkJcmMgPSAw
Oy0JCWlmIChlcnIgIT0gVElQQ19DT05OX1NIVVRET1dOICYmIGNvbm5lY3RlZCAmJiAhbS0+bXNn
X2NvbnRyb2wpKwkJaWYgKGVyciAhPSBUSVBDX0NPTk5fU0hVVERPV04gJiYgY29ubmVjdGVkICYm
ICFtLT5tc2dfY29udHJvbCkgeyAJCQlyYyA9IC1FQ09OTlJFU0VUOysJCQlnb3RvIGV4aXQ7KwkJ
fSAJfS0JaWYgKHVubGlrZWx5KHJjKSktCQlnb3RvIGV4aXQ7ICAJLyogTWFyayBtZXNzYWdlIGFz
IGdyb3VwIGV2ZW50IGlmIGFwcGxpY2FibGUgKi8gCWlmICh1bmxpa2VseShncnBfZXZ0KSkge0BA
IC0xOTU2LDkgKzE5NzMsMTAgQEAgc3RhdGljIGludCB0aXBjX3JlY3Ztc2coc3RydWN0IHNvY2tl
dCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgCQl0aXBjX25vZGVfZGlzdHJfeG1pdChzb2NrX25l
dChzayksICZ4bWl0cSk7IAl9IC0JdHNrX2FkdmFuY2VfcnhfcXVldWUoc2spOysJaWYgKCFza2Jf
Y2ItPmJ5dGVzX3JlYWQpKwkJdHNrX2FkdmFuY2VfcnhfcXVldWUoc2spOyAtCWlmIChsaWtlbHko
IWNvbm5lY3RlZCkpKwlpZiAobGlrZWx5KCFjb25uZWN0ZWQpIHx8IHNrYl9jYi0+Ynl0ZXNfcmVh
ZCkgCQlnb3RvIGV4aXQ7ICAJLyogU2VuZCBjb25uZWN0aW9uIGZsb3cgY29udHJvbCBhZHZlcnRp
c2VtZW50IHdoZW4gYXBwbGljYWJsZSAqLy0tIDIuMjcuMFNpZ25lZC1vZmYtYnk6IEpvbiBNYWxv
eSA8am1hbG95QHJlZGhhdC5jb20+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX190aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0dGlwYy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
