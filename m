Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A476BD499
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Mar 2023 17:03:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pcq4b-00071X-4f;
	Thu, 16 Mar 2023 16:03:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nagen_kr@yahoo.co.in>) id 1pcq4Z-00071Q-Lv
 for tipc-discussion@lists.sourceforge.net;
 Thu, 16 Mar 2023 16:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3lKKGFmaSMi/wdjihHAjR6bePoDhU/ooYGLyRw55Grw=; b=LWWuHUOPQU/b8ZthBp59MRetcr
 Tv+Cq5QBMFYyTNCzGTOj6qTJ96r1Bnlwpaoj04rHSnmbMbC9bI1qTBhV+NylAxliMtm9qcgnTLeD+
 PYXRKYv90e3KN+JKnmxiunccBBA8GRb6fWB+1Nl5X8567Mc58FjQQ/lxm4RE6eoQfcOk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3lKKGFmaSMi/wdjihHAjR6bePoDhU/ooYGLyRw55Grw=; b=gHljJoqJvz/Ebzdkv6qkoJJ2n8
 vMvbGovcyCHg3izdotsgufVIfyydVI7NNgZHfVddECDl9ti1/eAz11kcR09e6/k/uE+Tkfq5lu0hP
 ViTGvYcbFpaIxc0C6shlv0EB1Mu/Ub++pJc/a8orjrEnPi9uGvwiPMRExpEgPYfTse08=;
Received: from sonic302-20.consmr.mail.sg3.yahoo.com ([106.10.242.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pcq4X-00B0SV-4D for tipc-discussion@lists.sourceforge.net;
 Thu, 16 Mar 2023 16:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1678982594; bh=3lKKGFmaSMi/wdjihHAjR6bePoDhU/ooYGLyRw55Grw=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=XGYmR0l3dX5kBJON2Mwo57G/5EHEDUsoNz+IavGqDbjFs2srFQWXno0X6gPEIIa3a1369ZyhtE6J4FZENNAkFY5xJUl1osM09Z3+oMJEmcq4AgI8DOaB2QT6PaZJOJHlfyYMP3cM/wfZrM9Lf8wganXpzqqQhXSsVBGh0gErV7J2EFF+Sj9NQ5lBb/c6NFOCV7VuY+ZO0xuROfBYx1LrSRjaq1+kNy3pWW2chJkMnsLb0vPX/BS4xxEhr9H8J/AphIhEjk2RR90h6JErE0ka8Ak+DG0tBoJhVzkJoKpr3MaTo8ls6eKjY5XRnKAtki46dPa31IhNuzVskTREJUbIYw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1678982594; bh=HJooxPeP+OXu/swi7W1KUDtM+PB03ytNx2cbtHNl6SI=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=K5OpI9Yu5uzXlMXnKlLyeUYiDkPl9vbYond4Y1zJ+pbrYqsMKo0hjlugG4lK8MzQ/A8vnLltxMvQgAPwY/jpksRrU/GXStggZ0EPNlVLjMx+u+5alDMWFTmw2iz8HIDz4CTeZcBhm/NcffFbaltfDcf3Usgw3MVAJ6uOB4BLrHwzWvAqBWERmrAdD8XWY9HR7NZlDBkQiVGCdaWAG97QUelw0tWmD4H+SPfo9srz0Zm+naJAM2LF/NSQcQon9fUkBVwegUO1XVVAlbMHSEr0RzgBTW0feEnjPbtP4GQ56JJfKQFU7WOij2ogNr2CrnXRFuQhXjxOuw9YeTJCbHzA1A==
X-YMail-OSG: _EuQKF8VM1lqhJhzoaoZ6hf_cI_3wl3eKU673svIYjNYZOYuj_6n0uEZLVQ34oY
 p6TSCvqyrIs58vit4lHJvA3gyckwQ_zgdiShSWg6c1PzmX2NM9X5JV41rpqUZn9rXST7o6Ue0Hpx
 oWw6DEKfHH46zD1tniXeTESsVI12tAV2OqhCIB67CTxz6MqFQSJLuVjfK5MPnD7Oa4GwHAn_zMwM
 oYErMiT81NoxUqyLNqVC.it89_.vVMtKUMLJtfffYjgbVQNai7Me0kBl9p.kvG0wb5XqYtDP0ly2
 1Ej0VI7FyC8zUEcu7TkphbAtNvaCylPZPXxggvEOHCPUCsZtZ7McjRu4tzhKyb8CTv34m9n2JZ3W
 KHUSgoulMDTDg.H0yuxJfgooEAHHi2aUeaiyQ0cZ3c_iNn5NaHJI57UYlo60qKTUNW3e9X_ZtDpl
 up2XyEOBZ5tUOSY2PVQxo40RdP0kQOEgdYzloivS4WNW8ABxlLOXVHO8ioMA2geB35oi_etlPv_x
 reSUXqD.MEwF5XqDNnLfmhxTq6dHt2I5CDB6rRQZBLTV1TDt.smMdT22fB.DluA4mzoJSuEeImJK
 IVSw418DZhSXOWxnmHNj1ZzUybUL_XkSYQhSg4w1cu9PijJFNipmVN_6wj9eudXYAP1U3Xk66UgR
 Ipobqc8K9mv1C3pO1Z4E2buLSwvQpbieGeBJt9XY6Bluo70lQ9UmRl30Cn4skiyGrUlnjZVSO2iH
 ZcdTglv5yCgGPHUvD8hg.Zk5YO3msOkaEP7y.RMMqpvk.zZ8SX_wpz8A_VMcAkqKMIYg4nmi_PRg
 mViBpiejcYUHIEMEeAllMY_1xeVRpGF_eioiUePJBTkFdWbb_fLaD1e5enjurMANGwP7_s0Mctmf
 RstkcpNRpvu.ZSi_e7guAql4ZBPJjHb6z2TPiyOzH0SrfCkoELVK3oMnvJLxbxBE8gdx9_qYLiZA
 Vsb9HJsZNdDC6G6YB9iAExQlnfLk4nhirzlVl5u_LfW_7hgEvIXpqIkU.3vUhR9NEYGT5d86P1VY
 UcBIhjr3nGrAD_b.FXJ3hZUCcadT4xxbyhjiC4xH3uMuXOjiazvtrKMD9CLRmC18OkjxKuunW0x5
 XpZLt3SSXrYNPpwgJMTiKlVpHncT6tdohGKWIOcatjMpinlW_ozzDSGHUhu2yICGuc7L.ANmEeSR
 WYz.rNXyrhyOiWjLWyX_zXZSyFQ60_01p.aj_BrCKIZmnn6TFho1o9FVlaAMD9PEMkdOKubiKt3J
 _Wc73fkc7vlSNoxWa9mlgzem_ztAAKCSy65RHECtKY1nSXQ_QltrYZiQ6SVPr0UmaFR6wk4LMsiB
 uDbc1O_YVLSr5cbDbX5Sr5P3EO64fGGO1hVlbrZr1ztloeDQPpM_p69.UzjuimNUFo.BsckR6J_J
 0UCo4A6JX3SJMgldG04jJ0Sm72QGuwRaSV3rVxNkv7lTY2FjRpQX6bRvixZcl.wbvPO.az5TpkQj
 8GQakm8OjhLW8esVUiqwxNRa2bSWvAIuDxx7QiuwFcCdqIX7GpebnlePqQqD4ssjGA6J9C7LCQaE
 5Wj26fID1SEJJAjzPn0v9aR3mK0bd01iQJwoGoQLj8eUChkcq352TJvRuc2.e2gkwLASsKjHyKUR
 WkJrD4mDwLSAJNCUPMAzFIv2StqGUpsBrWbtT71o_rTkc2yIM11Dx0OU84di8CdgXXXSqUqobHTY
 qcgExBQ6zvLY.sJ6h3h87Lh3GHlvSf0a.qF_80kQUu3i5C5DxRt3aKO4uWlpQK1nYrU65X27Z6ie
 DA0Li0yy1tvbMteMEzrB89JcGX5YMXq72VM8KRoVbWrRNUJbd9QuPXcPOvMAtSiILTS0yoHeeVjN
 S6Audkh6a8OVgKCYuxgAlIikrTQ2FSAQjQvxC4VC7arsIfvDqmPo7mdr4g9mD53KrXcguoETIPUB
 vnsSlCnyQ.HyMe_Bq18zO.iA.aeeO6g11NG7u7AYx1d7b6cUAPfpSpBfgoNssI2wLn5jly4jbzIZ
 uUHPjPVaZ1JLx7UXp7aobawcwYnnH18_O2rTh2YPesQ5hzSgjlG7Ro23CsOPqShWVsUUPTtOv0rw
 QdTz7BlSGpapQVm1g7eW4.7eN7XDJrGHW0y6QZaaT4h1B_F8P1MIXxItKsBBqx_8bXNnGmhf6eEa
 3_zYkbXD45PfH90FHBLhQ1503Ntv4vUPHzG0wpQWTPz_pP93u2_D7gZ4iuJFju2TWU.XgFXzhRgS
 BdOdX6SXF.eVC8By9gahPooIv6RzzPgGrKhZocii4PnKumrZwYW0-
X-Sonic-MF: <nagen_kr@yahoo.co.in>
X-Sonic-ID: 5e13ae0a-e3b0-458d-9d2f-ce190dc0d2d8
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.sg3.yahoo.com with HTTP; Thu, 16 Mar 2023 16:03:14 +0000
Date: Thu, 16 Mar 2023 16:03:12 +0000 (UTC)
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Message-ID: <346208247.784366.1678982592020@mail.yahoo.com>
In-Reply-To: <972059401.678694.1678726696686@mail.yahoo.com>
References: <1377167456.519331.1678429199618.ref@mail.yahoo.com>
 <1377167456.519331.1678429199618@mail.yahoo.com>
 <972059401.678694.1678726696686@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21311 YMailNorrin
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Jon/Tuong/Tung/Hoang/Thang,Is there any thoughts on the
    below email trails?? Thanks-Nagendra On Monday, 13 March, 2023 at 10:59:45
    pm IST, Nagendra Kumar via tipc-discussion wrote: Sending it again.....  
      On Friday, 10 March, 2023 at 11:49:59 am IST, Nagendra Kumar wrote:  
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [106.10.242.140 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [nagen_kr[at]yahoo.co.in]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1pcq4X-00B0SV-4D
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC issue
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
From: Nagendra Kumar via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Nagendra Kumar <nagen_kr@yahoo.co.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

IEhpIEpvbi9UdW9uZy9UdW5nL0hvYW5nL1RoYW5nLElzIHRoZXJlIGFueSB0aG91Z2h0cyBvbiB0
aGUgYmVsb3cgZW1haWwgdHJhaWxzPz8KVGhhbmtzLU5hZ2VuZHJhCiAgICBPbiBNb25kYXksIDEz
IE1hcmNoLCAyMDIzIGF0IDEwOjU5OjQ1IHBtIElTVCwgTmFnZW5kcmEgS3VtYXIgdmlhIHRpcGMt
ZGlzY3Vzc2lvbiA8dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4gd3JvdGU6
ICAKIAogIFNlbmRpbmcgaXQgYWdhaW4uLi4uLgrCoCDCoCBPbiBGcmlkYXksIDEwIE1hcmNoLCAy
MDIzIGF0IDExOjQ5OjU5IGFtIElTVCwgTmFnZW5kcmEgS3VtYXIgPG5hZ2VuX2tyQHlhaG9vLmNv
LmluPiB3cm90ZTrCoCAKIAogSGksV2UgYXJlIHRyeWluZyB0byB1c2UgVElQQyBvbiBSSEVMOC40
IHRvIG1hbnVhbGx5IGNvbW11bmljYXRlIE9wZW5TQUYgbm9kZXMsIHVzaW5nIFRJUEMgaW5zdGVh
ZCBvZiBUQ1AuCk9wZW5TQUYgaXMgZGVzaWduZWQgdG8gd29yayB3aXRoIFRJUEMgYnV0IG9ubHkg
YXMgTDIgYW5kLCBpbiB0aGlzIGNhc2UsIHdlIG5lZWQgSVAgcm91dGluZy4gVGhhdCdzIHdoeSB3
ZSBhcmUgY29uZmlndXJpbmcgaXQgbWFudWFsbHkuCkkgYW0gdXNpbmcgdGhlIGZvbGxvd2luZyBz
Y3JpcHQgdG8gc3RhcnQgYW5kIGNvbmZpZ3VyZSBUSVBDOiMhL2Jpbi9iYXNoClNMT1RfSUQ9JChj
YXQgIi9ldGMvb3BlbnNhZi9zbG90X2lkIilERVY9ZW5vMQptb2Rwcm9iZSB0aXBjdGlwYyBub2Rl
IHNldCBuZXRpZCAxMTExdGlwYyBub2RlIHNldCBhZGRyZXNzIDEuMS4kU0xPVF9JRHRpcGMgbm9k
ZSBzZXQgaWRlbnRpdHkgJChob3N0bmFtZSl0aXBjIGJlYXJlciBlbmFibGUgbWVkaWEgdWRwIGRl
dmljZSAkREVWIG5hbWUgJChob3N0bmFtZSl0aXBjIG1lZGlhIHNldCBtdHUgOTAwMCBtZWRpYSB1
ZHAKKENvbmZpZ3VyaW5nIFRJUEMgd2l0aCBVRFAgd2UgZ2V0IFRJUEMgdHJhZmZpYyBiZXR3ZWVu
IG5vZGVzIG9mIGRpZmZlcmVudCBjYWJpbmV0cykKIFRoZXkgaGF2ZSBhbGwgcnVuIHRoZSBzYW1l
IHNjcmlwdC4gU29tZXRpbWVzIGl0IGhhcHBlbnMgdG8gc29tZSBhbmQgc29tZXRpbWVzIGl0IGhh
cHBlbnMgdG8gb3RoZXJzIGRvaW5nIGV4YWN0bHkgdGhlIHNhbWUuIEluIHRoaXMgY2FzZSBwcm9j
cyBhbmQgc3NhZihwaWNzIGF0dGFjaGVkKSBhcmUgaW4gZGlmZmVyZW50IFZMQU5zLiBXaGVuIHRo
ZXkgYXJlIGluIHRoZSBzYW1lIFZMQU4sIHRoZXkgYWx3YXlzIHdvcmsgY29ycmVjdGx5LgoKCgpJ
IGRvbid0IGtub3cgaWYgaXQncyBhIG5ldHdvcmsgb3Igc29mdHdhcmUgcHJvYmxlbSBhcyBjb21t
dW5pY2F0aW9ucyBhcmUgd29ya2luZyBmaW5lLgpSSEVMIHZlcnNpb246IFJlZCBIYXQgRW50ZXJw
cmlzZSBMaW51eCByZWxlYXNlIDguNCAoT290cGEpCktlcm5lbCB2ZXJzaW9uOiA0LjE4LjAtMzA1
LmVsOC54ODZfNjQKVElQQyB2ZXJzaW9uOiBCdWlsdC1pbiBrZXJuZWwgbW9kdWxlCgoKwqDCoMKg
CsKgVGhhbmsgeW91ICEtTmFnZW5kcmEKwqAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNj
dXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KICAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
