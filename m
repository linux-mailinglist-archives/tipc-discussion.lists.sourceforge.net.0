Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38187459A19
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Nov 2021 03:27:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mpLWs-0008Gx-Md; Tue, 23 Nov 2021 02:27:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <maloy@donjonn.com>) id 1mpLWr-0008Gq-E4
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Nov 2021 02:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eB0hr3EzAFEgyieoGg+28tOaBJxo4es512n1XnXqMoo=; b=Lhc9aDWE2H1pwpzsCBwCxgvGm
 DsJl3zw01j16BD9MoDB7Q1npXYTS0b9xOFGZ5IOL6CC75Wimn5t1gqZRM4YQCnaz4yECDJy100+tj
 bTvu/IgekQnmDTZ4JI9J4T+ZolwBNmQcENPBTyf1ixlZJdrKDbyzPiCMtNN7EJRA7u7Vo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eB0hr3EzAFEgyieoGg+28tOaBJxo4es512n1XnXqMoo=; b=ijv0R0Ow4MA5mOv11A4+UuichN
 3gbKpYV2cayeUlUj5/0hrsGQjzhUz+7EGFzD+larniBWGP0vNPWan1ew+vGKvILlttgqSYxuSiAiK
 QEi0XPrHD06gO/4sySpaJu2oCt6JB4iWEBpSLglOQ6D/OE2DwVaAyQcD3FKDemHgNC6M=;
Received: from sonic315-27.consmr.mail.ne1.yahoo.com ([66.163.190.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpLWr-0006jZ-Gr
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Nov 2021 02:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1637634443; bh=eB0hr3EzAFEgyieoGg+28tOaBJxo4es512n1XnXqMoo=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=IGJj95jQ20yNRDBF4KHTpVbEeoM4NQYCbwGo7DJagUtPpmEUxXPL36xqhG7v6l8azdSXLy8lVQo/Yfyjb8m/PXGIXFA+5GGgi7JVhxHUwx4eJEyoImky0Jb+eMxlwVSElBU5tr/enWqLN9ynZuC5aHzyO1lms6U67lV2oEpiTnJ8wLXymMPPx/zZvBwcV+Ob62d1TYD8l0R0DwKeiNvWDZNtJ/UzXy7zSF1oX5MYNurOevGZC+4c6RZPY5MxE4fd49YSyuJ3R3Y2j+tj9zQpGWePJBQ65tRWQWIj5qsv4PdKECQvqDzyNC7HccJnCe6sNC5kBaPl8wP1DBfLAyKyFA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1637634443; bh=J44dex4V+6A4yk0Yh3qSeFO9hxFa7VpCsBZUWI/xho7=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=rwp+kvyy5eaA5ajSwdOkWgC9a0PehK8afx5N4QyNMnOaagn0QNCCEEr8+7v4TKdrVMfCd8PJG4lI/eOYQPtvNjpKSB3usF/1dLapL4U8Ss+Cs8VSpiV1vDe6EJH+OcLM7NQNYhIyzNMx7bbGcVYZ22h7PsdySPLIy211LQ9tXuNpneitIAXHEnl61FypDzOnzCVKaab7enqYfyCjuqJeSCmgKQdK0HgipBKyf8LF1LBs12SF5XofbCiU328Z26kBFj0mAV/QDeTQ/b/BvdfPVl07E1VSYN7AHIyWeaEiTxjDQ/xabBBQr+9BW/TE0LMm3Jh9Jq6Lkcqhk8yTNpPGbA==
X-YMail-OSG: DyKggvwVM1ksm9okYolhb43Rhb0z1mAOJHHWn7WZHU.sZcP6dPPQ6e9MuzruGNw
 PflLSTJtwTVyNHKVwb0QphlBcqiXXWSy_4OvIzVHfDghr64.H9ZjD4nSL65ytJw_FWxvs_jziltf
 NCMHHT6ksSereKOmRe9QsP7TWKFW.h5tkNpBkMuGdW_3pSurNHMlZE86xVKxvNLhKiZAVMs0qPHk
 Hg.5MnDs58qReO9FescBJT.lJL5jbBTAx2.2MJDMhbQyyS6bO2MsJE4oiSQ7LIgj6CNQUumj4s3f
 Bmj_M8WT81fCO28N10N7bqd_ECd4_ZYDjr7p5yS0G.k2lxdIGjKalTvxvlt31GQ0xEwYvofKdUWE
 xBUS9xrqgcQFpJ6VLsnH9vX5mKsEpGBz1bltdUpidFIhvsiG.Mo.ZjZNedQcmKxddmlHgDICOeXY
 HqPBDeaDbjmXizk3V7aOXpQUo35fRyRkEszpphyJg0ZOqGzOJWT46GUCqKCIQlqZEKFYvUMhIaBm
 ki.spnEOA5ClMGbG4Mw5bB.euQfV8dNyKHSeutJHGuFCKmekYvUTi1CnLrbhuIMDywAuTvCzseja
 QXBHCN5OdA4G8Hs.qrT9c0Nmy_eBPFqc540biQ7hj.sqsVKCBEB0O4FnaZV9NFnDA88UQlaJKPsy
 R5MbjAThrE_a13h.NrZYJIanhn45_k8V0pF9gcCZf1vro0hs384WAvhLfvoLhvAalik3OkC5RUmh
 8r0Cwao56YibOyxScgA2CbaefbRHrZv2p5gJI9G16P8o.XSpt1dCOUk0hacYmlQFqp1FXXZ8psA2
 WsRgz8XHCurFDY6gzIW3DHKKY3tG.GopB0yK1KPAJdPodsqQKjBzV7SwA0EvvU.M9uY789d6c_Ro
 SahchWd4UvOCEUgEmEjI2v1XRxDobudHCIGZziEHwukVatF5IahBJoM_yt8NnSblOVOaYsk_uEwO
 CTgWAIa4X.KbyVTQ8rTnnHmm2Y4UO4xG9vn7k1ZohEN5kf5YplLBCeLbpinsks43Qn_h85vmLV6.
 Wu0AYNVoP9BH683ZjQjaiHLBJAz3yIL9kA_l3C2ic3f55LXhwCMakMd9IueC7GVFOuo8v7a63BJo
 BqeqKsbTXgub7LHnL1UN.UogHgKIQUreJBvXrATQZuqjl1iNu9wOnYaZfyg0i5k_IsRx0DqxMTaC
 4d.jiQVVtosL9ohxy2R1xhJogR4ecMRq4Ll4gWHNQRJHMPQkG1Lq4TJmx9leNHxtJvuYyNe.pKqo
 kHDeKnXm3F0LUOM98N.WT34KOxVic87JJpNCBEsxYWdx50B7xD8ehiEzt1psdidH1hHQN2O.GUkM
 7epZMFk.hv81CHMzFuD61ZQfCUQVaabQNw_b8Cyzklfs3XBMbTI7h.1hKQ8oU9HkKX1zBiJ382OR
 gE0zU4SbC4XDxcb26tuDYa9S2L6w_A4vK9SEm8PjTVAL4D0YOg6IWzZzPq6H5U5FeVIxbYYgaaBk
 gnBjk8wdAKQW98WVSFxIUbXLgp737yJRoblVCqqqPlXl3Vn8eSbW1v.h8P.X0nsYjS1Ogzc9vuM4
 VR2i.bqukWJt3dbzr_f7otnkDK6pa.KsyDRPMGzhrw5kMGRy2FjSXQ9Mx0BVx9L7Oz7_D_TnzF3e
 hILCrToFfKHRg8IfFZPaFo25tQ2X366MLEvUw8adXvpvujEjtmehXoki6UcvIOxa3gMQRi6bggWR
 owJnOOyb5nfxAEk7buIRtWxv0EYbvoUHEYnHjnLE167kRbXYIEyGLH89mB9SYULe5vYB9j9JMHdA
 uHxcv9gWxNvJI4iK5yzpCcuFyXoR97Pu5MfmEH3INWDXyVVR434.myVNhJJEyIFjUBM7FKb1J1nv
 vJsZCOAykv5zHChSeySl_TbY9t7_SyHKuROuSf6g0wtG45Ms_azXO2aBXnClWkk8dF8t4QGSw1J2
 eYv9oNqfrXRCP7HRZkdKA.azTc2VV4X.kg0zyOemLS_mFDgcjE2KtxhsYJ9lHMt8f_JANf94ZRRn
 GxfVqWflilOPtzpZMPwPuatd4JbX_9n16MJ0Fg.q6TGukF2COdEr2tnFaHoIeEVBA99eJ.q0fACO
 _2NgM3k0muv1SkVZwIPwX95p.nP62nHT7fsl6ORQ5KY3Nopr16ImhhhbMgawFev8M5DZmK7ZBJMB
 gncpRLwaSrmJbBuuhy_cJsPnff2pxPC4MapIzb7My39vq6gUXUwCkVOWisxAMGWTAV8ejepDQr7l
 sjZyi7gSoUVeZV3wAO3re8YhK9g--
X-Sonic-MF: <maloy@donjonn.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.ne1.yahoo.com with HTTP; Tue, 23 Nov 2021 02:27:23 +0000
Date: Tue, 23 Nov 2021 01:41:14 +0000 (UTC)
From: Jon Maloy <maloy@donjonn.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Xin Long <lucien.xin@gmail.com>
Message-ID: <1247568756.4538470.1637631674727@mail.yahoo.com>
In-Reply-To: <4666eadb17aa2ed47fadee50b4813be38cf7da2d.1637515912.git.lucien.xin@gmail.com>
References: <4666eadb17aa2ed47fadee50b4813be38cf7da2d.1637515912.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19306 YMailNorrin
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, November 21, 2021, 12:32:19 PM EST,
 Xin Long <lucien.xin@gmail.com>
 wrote: When a skb comes to tipc_aead_encrypt(),
 it's always linear. The unlikely
 check 'skb_cloned(skb) && tailen <= skb_tailroom(skb)' can completely be
 taken care of in skb_cow_data() by the code in branc [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.190.153 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.163.190.153 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mpLWr-0006jZ-Gr
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: delete the unlikely
 branch in tipc_aead_encrypt
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

IAoKICAgIE9uIFN1bmRheSwgTm92ZW1iZXIgMjEsIDIwMjEsIDEyOjMyOjE5IFBNIEVTVCwgWGlu
IExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPiB3cm90ZTogIAogCiBXaGVuIGEgc2tiIGNvbWVz
IHRvIHRpcGNfYWVhZF9lbmNyeXB0KCksIGl0J3MgYWx3YXlzIGxpbmVhci4gVGhlCnVubGlrZWx5
IGNoZWNrICdza2JfY2xvbmVkKHNrYikgJiYgdGFpbGVuIDw9IHNrYl90YWlscm9vbShza2IpJwpj
YW4gY29tcGxldGVseSBiZSB0YWtlbiBjYXJlIG9mIGluIHNrYl9jb3dfZGF0YSgpIGJ5IHRoZSBj
b2RlCmluIGJyYW5jaCAiaWYgKCFza2JfaGFzX2ZyYWdfbGlzdCgpKSIuCgpBbHNvLCByZW1vdmUg
dGhlICdUT0RPOicgYW5ub3RhdGlvbiwgYXMgdGhlIHBhZ2VzIGluIHNrYnMgYXJlIG5vdAp3cml0
YWJsZSwgc2VlIG1vcmUgb24gY29tbWl0IDNjZjQzNzVhMDkwNCAoInRpcGM6IGRvIG5vdCB3cml0
ZQpza2Jfc2hpbmZvIGZyYWdzIHdoZW4gZG9pbmcgZGVjcnl0aW9uIikuCgpTaWduZWQtb2ZmLWJ5
OiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Ci0tLQogbmV0L3RpcGMvY3J5cHRvLmMg
fCAxOSArKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvdGlwYy9jcnlwdG8uYyBiL25ldC90
aXBjL2NyeXB0by5jCmluZGV4IGU3MDE2NTFmNjUzMy4uYzVlZWZlNGE4YzRkIDEwMDY0NAotLS0g
YS9uZXQvdGlwYy9jcnlwdG8uYworKysgYi9uZXQvdGlwYy9jcnlwdG8uYwpAQCAtNzU3LDIxICs3
NTcsMTAgQEAgc3RhdGljIGludCB0aXBjX2FlYWRfZW5jcnlwdChzdHJ1Y3QgdGlwY19hZWFkICph
ZWFkLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogwqDCoMKgIMKgwqDCoCDCoMKgwqAgc2tiX3RhaWxy
b29tKHNrYiksIHRhaWxlbik7CiDCoMKgwqAgfQogCi3CoMKgwqAgaWYgKHVubGlrZWx5KCFza2Jf
Y2xvbmVkKHNrYikgJiYgdGFpbGVuIDw9IHNrYl90YWlscm9vbShza2IpKSkgewotwqDCoMKgIMKg
wqDCoCBuc2cgPSAxOwotwqDCoMKgIMKgwqDCoCB0cmFpbGVyID0gc2tiOwotwqDCoMKgIH0gZWxz
ZSB7Ci3CoMKgwqAgwqDCoMKgIC8qIFRPRE86IFdlIGNvdWxkIGF2b2lkIHNrYl9jb3dfZGF0YSgp
IGlmIHNrYiBoYXMgbm8gZnJhZ19saXN0Ci3CoMKgwqAgwqDCoMKgICogZS5nLiBieSBza2JfZmls
bF9wYWdlX2Rlc2MoKSB0byBhZGQgYW5vdGhlciBwYWdlIHRvIHRoZSBza2IKLcKgwqDCoCDCoMKg
wqAgKiB3aXRoIHRoZSB3YW50ZWQgdGFpbGVuLi4uIEhvd2V2ZXIsIHBhZ2Ugc2ticyBsb29rIG5v
dCBvZnRlbiwKLcKgwqDCoCDCoMKgwqAgKiBzbyB0YWtlIGl0IGVhc3kgbm93IQotwqDCoMKgIMKg
wqDCoCAqIENsb25lZCBza2JzIGUuZy4gZnJvbSBsaW5rX3htaXQoKSBzZWVtcyBubyBjaG9pY2Ug
dGhvdWdoIDooCi3CoMKgwqAgwqDCoMKgICovCi3CoMKgwqAgwqDCoMKgIG5zZyA9IHNrYl9jb3df
ZGF0YShza2IsIHRhaWxlbiwgJnRyYWlsZXIpOwotwqDCoMKgIMKgwqDCoCBpZiAodW5saWtlbHko
bnNnIDwgMCkpIHsKLcKgwqDCoCDCoMKgwqAgwqDCoMKgIHByX2VycigiVFg6IHNrYl9jb3dfZGF0
YSgpIHJldHVybmVkICVkXG4iLCBuc2cpOwotwqDCoMKgIMKgwqDCoCDCoMKgwqAgcmV0dXJuIG5z
ZzsKLcKgwqDCoCDCoMKgwqAgfQorwqDCoMKgIG5zZyA9IHNrYl9jb3dfZGF0YShza2IsIHRhaWxl
biwgJnRyYWlsZXIpOworwqDCoMKgIGlmICh1bmxpa2VseShuc2cgPCAwKSkgeworwqDCoMKgIMKg
wqDCoCBwcl9lcnIoIlRYOiBza2JfY293X2RhdGEoKSByZXR1cm5lZCAlZFxuIiwgbnNnKTsKK8Kg
wqDCoCDCoMKgwqAgcmV0dXJuIG5zZzsKIMKgwqDCoCB9CiAKIMKgwqDCoCBwc2tiX3B1dChza2Is
IHRyYWlsZXIsIHRhaWxlbik7Ci0tIAoyLjI3LjAKCkFja2VkLWJ5OiBKb24gTWFsb3kgPGptYWxv
eUByZWRoYXQuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3RpcGMtZGlzY3Vzc2lvbgogIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
