Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 330246C393
	for <lists+tipc-discussion@lfdr.de>; Thu, 18 Jul 2019 01:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l5gX7H/W6j7uwGH66rw6HOJqx6LhBcxJRYplp70AFMg=; b=TQOiWEZBzWa/J98pn7ziSJFwD
	3ZyiyW9Aq1Dc8EuBpZdj+oFYVJOwfMkojxkwN92mRx2fW6X6XsnYr4lH63mH3gOJp+bdRHGlxuqof
	iSdWPNIEzB8RBIilebigwqi0RUe7D9QgbxP0PTdyfLah74Ehs7tqWJTGffDXgfDkyzQuQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hntYG-0001Pt-OM; Wed, 17 Jul 2019 23:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lmk_in@yahoo.com>) id 1hntYE-0001PO-US
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 23:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pu/ny68HrEGlDrHSco8VomrEuua5sj4eKewY0KmcoHc=; b=Mgl4A45oH0FifXXPivXbx+ZJu
 0DCYgJErYvkCVKensBBdJHiYfqi3TUIa7hCg6pbSzWYZWA27javTkVIUzeOFhQGn+fr7vQabueG4U
 aC1hHF/XGxQdzGwXU0TmrfCAMV+5VC8T2JXTzKKaKq2qHS2s7JUMsN+t24Kx1maQG3YD0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pu/ny68HrEGlDrHSco8VomrEuua5sj4eKewY0KmcoHc=; b=Nq+Wn6eydlCybsE2qb3E/RYzTh
 bgvvx+kssp/uwFpcc4W5wZb67BywCbwqlJwVUN6ODVHB+IrBMncJXcE5uDz2brIXv+FzQy4xY6lNX
 Uh5DTZzVOWv+CCa9aaTJJKE9XVjTeiUO3BG17BA109DsHA15pm6rTQaUiQeKPcGVo1EQ=;
Received: from sonic311-22.consmr.mail.sg3.yahoo.com ([106.10.244.39])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hntYB-005i5X-6U
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 23:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1563406883; bh=Pu/ny68HrEGlDrHSco8VomrEuua5sj4eKewY0KmcoHc=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=NZfTdpfwaVRegXC5e42imLzzrAtIhi5Ubtf5HJLGf/3Vvji+BiGdLZieGbvxIPQ2QW0lb6N72YeiPkuiHfvQJ41vVZElcEOA1WOUn3p/09FOq9HRtUavkeRFAbQXyEpzHiU2X3oeYJNVhrJrJz4U9WARJXOs+iTD02NAmsLunMxs08SAK5SQhKnEmsfO6bmCAut4g8Ig76rbOZtjg/PckD8R2NgS6kXD37yBcgW3HnBvTsXbmeS26IPgLua/9VfihdvTR+162kv0zU64tNAvA241ctGYXM45dAow2TG5+3Mnr+eXMXf/tHUsduYXhNckRLazrlON8D6gI+xkcZibNQ==
X-YMail-OSG: SjKzPIMVM1lUZX9ZJj56X_aTps2YSdvEL0mM8eZcqN0fch8RoMYtkJNQKjB9FZz
 1.1JUNMZel65cbNi3N5Qkx4R18VPj7IquZmo1Q.nwJnCIR1rQGe6Kf4nKSrjYqXS16ttnLUhiNlL
 8jjM60okpZg1sWbpgeucKXPTYPfwWBt.GFgFyyJ31kla7hP8QcQDP_yMAFWiXGGv1aFr.iZPQbmj
 FUco1NqBv4jfAJ8rxcUJhzElB7E57AvSCxKH7DU83r03qDHP9sFnnMI9yzrv0bRu7qFn5qW0VPz4
 SfSOitP8pog_Vj0OGxYJy7ntE2yKrBLodmBof4f.JV.i6KAAyCPGwE.a2sJpvaJvWn_sx44MHvvm
 _QQ15mNZWrFuHgIjS0ndjmCK1js0XmRP0hDBYNc3hY5fdd2qwaCK7LkNanLxHzPxc7SNv1TZn1Dw
 jvQ9Ch5BczOyrlexTxaPlP7VBjfzdOf1gjUch0qCHuCcH7bDVWCbmwt1RAyIKQjnzt.yZGSWXsCq
 HZQCcZyHx13IuT6doYG9cvBTv.TtC.iquqVpsgI_TM6IUDQVwbeVpMPqC2MKxsZH89N0t1WPvlrN
 VAT9aIfMXCkzvwZJn.hyX8LPUCx9NQy3Qp61eEHsQDPqtta_J66V2q7EgcxmzWHQENW1__T9igwA
 E0dr5AHKuZMssu5YohknJ1XsCusuYXRwgi5YhmQF1uQ.aZtjpfDe0gFrwXhrXVheG9yxJ7Jm7rSL
 b3Gtmwe0tLVJgXHIlFKuw6FYV5pblN7OFY7yNkxI83VYQnuKJ2Dtaipv5UhtYbl3ljG28BLomKkI
 _.53VB4SqlEI7pWjLD02rV7LkhTXN5XWx2pC.PzFkgkpnZY.TKKm7.02hPzOMOsyqRRUEmrcxvMz
 1SNbogxTAXzw2Ss2S55Jjobg6SYkAwArvMK7F_gcs9JMyF00_Ck7kOzKZmKyjuAWpoh5SrQIaFJi
 o0Vn8ZGjKtCuqVvdph6UhAf4v0C4TW96N4Is.W.wzCRBWkr50CJ1RlkLzv71Z6FSlpiBMM_bFGg6
 qpDGe3YDyGqRX_TCijUvaU7lQzyYadZYtrnyry1eqHsRXuPYbCTXScO6mDItaBunO8bfgXiEkA4g
 VzTd9hye2bndEg3_KItuu8sAK89IDn_f5eyg6zJfelIc52TE2zKbK33N_0lzzss1N48go6shFMpS
 w.B7v5tSQzip7771wp_EEACSKd1on.blXUlZd_VUbLXLgbyXHz2I_ASPYAH_y7Lg6YXbev204ZIB
 _4QjP00HM3SREUwY-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.sg3.yahoo.com with HTTP; Wed, 17 Jul 2019 23:41:23 +0000
Date: Wed, 17 Jul 2019 23:41:20 +0000 (UTC)
To: Ying Xue <ying.xue@windriver.com>, Jon Maloy <jon.maloy@ericsson.com>
Message-ID: <913187432.2572597.1563406880344@mail.yahoo.com>
In-Reply-To: <CH2PR15MB3575BC80CA728908EA437C219ACE0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1593727072.553762.1562990335581.ref@mail.yahoo.com>
 <1593727072.553762.1562990335581@mail.yahoo.com>
 <df6091ec-b1db-659f-b2ed-eb18ea40c111@windriver.com>
 <972611549.1456135.1563205744665@mail.yahoo.com>
 <CH2PR15MB3575AE547C8E8B78F9789A329ACF0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <1612209151.1486142.1563222041593@mail.yahoo.com>
 <CH2PR15MB3575BC80CA728908EA437C219ACE0@CH2PR15MB3575.namprd15.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/75.0.3770.142 Safari/537.36
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lmk_in[at]yahoo.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [106.10.244.39 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [106.10.244.39 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 T_FREEMAIL_DOC_PDF     MS document or PDF attachment, from freemail
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hntYB-005i5X-6U
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

IEhpIEpvbiwKU3VyZS5UaGFua3MgZm9yIHRoZSBpbnNpZ2h0IG9uIHRoZSByZXNlcnZlZCBzZXJ2
aWNlIHR5cGUuIEkgd2lsbCBjaGFuZ2UgdGhlIHNlcnZpY2UgdHlwZSB0byAxMDAuClNvcnJ5LCBp
dCB0b29rIGEgd2hpbGUgdG8gZ2V0IHRoZSBjb3JyZWN0ICd0aXBjJyBmcm9tIHRoZSBTREsgdGVh
bS4KNC40LjE4MCBrZXJuZWwgd291bGQgYmUgb25lIHRoYXQgd2UgYXJlIHBsYW5uaW5nIHRvIHNo
aXAgbmV4dCBtb250aC7CoEhvd2V2ZXIsIDQuMTkuNDQgb3IgbGF0ZXIgd291bGQgYmUgcGFydCBv
ZiB0aGUgbmV4dCByZWxlYXNlLgpQbGVhc2UgZmluZCB0aGUgYXR0YWNoZWQgZG9jLiBpdCBoYXMg
cmVxdWVzdCBvdXRwdXQgZnJvbSBob3N0IGFuZCBjb250YWluZXIuVGhlIGhvc3QgYWN0dWFsbHkg
dXNlZCB0aXBjLWNvbmZpZyB0b29sIHRvIHNldCB1cCB0aGUgVElQQy4KQXBhcnQgZnJvbSB0aGUg
cmVxdWVzdGVkIG91dHB1dCwgSSBsaWtlIHRvIGhpZ2hsaWdodCBhIGZldyBvYnNlcnZhdGlvbnMu
wqAKd2l0aCB0aGUgb2xkIGtlcm5lbDogKDQuNC4xNTUpIGluIGhvc3Q6IDsgdGlwYy1jb25maWcg
eWllbGRzIHRoZSBmb2xsb3dpbmcgb3V0cHV0Cltpb3gtY2F0OWstMTQ2XzNfUlBfMDovXSQgdGlw
Yy1jb25maWcgLWIKCkJlYXJlcnM6CgpldGg6aWVvYmNfYnIKCltpb3gtY2F0OWstMTQ2XzNfUlBf
MDovXSQgdGlwYy1jb25maWcgLWFkZHIKCm5vZGUgYWRkcmVzczogPDEuMS4xPgoKW2lveC1jYXQ5
ay0xNDZfM19SUF8wOi9dJCB0aXBjLWNvbmZpZyAtbmV0aWQKCmN1cnJlbnQgbmV0d29yayBpZDog
NDcxMQoKd2l0aCBuZXcga2VybmVsKDQuNC4xODApIGluIGhvc3Q7IHdlIGdldMKgCmlveC1jYXQ5
ay0xNDZfM19SUF8wOi9dJCB0aXBjLWNvbmZpZyAtcwoKVElQQyB2ZXJzaW9uIDIuMC4wCgpbaW94
LWNhdDlrLTE0Nl8zX1JQXzA6L10kIHRpcGMtY29uZmlnIC1iCgpCZWFyZXJzOgoKb3BlcmF0aW9u
IG5vdCBzdXBwb3J0ZWQKCltpb3gtY2F0OWstMTQ2XzNfUlBfMDovXSQgdGlwYy1jb25maWcgLWFk
ZHIKCm9wZXJhdGlvbiBub3Qgc3VwcG9ydGVkCgpbaW94LWNhdDlrLTE0Nl8zX1JQXzA6L10kIHRp
cGMtY29uZmlnIC1uZXRpZAoKb3BlcmF0aW9uIG5vdCBzdXBwb3J0ZWQKCmRvIHdlIHN1c3BlY3Qg
YW55IGtlcm5lbCBwYXRjaCB0aGF0IGNhbiBjYXVzZSB0aGlzIGJlaGF2aW9yYWwgY2hhbmdlID8u
aWYgc28sIGNvdWxkIHlvdSBwbGVhc2UgcG9pbnQgbWUuCnRoYW5rcyAmIHJlZ2FyZHNNYWhlc2gg
a3VtYXIuTAoKCiAgICBPbiBUdWVzZGF5LCAxNiBKdWx5LCAyMDE5LCAwNToyNDo1MyBhbSBHTVQt
NywgSm9uIE1hbG95IDxqb24ubWFsb3lAZXJpY3Nzb24uY29tPiB3cm90ZTogIAogCiAKSGkgS3Vt
YXIsCiAKRmlyc3Qgb2YgYWxsLCBJIHdvdWxkIHJlY29tbWVuZCB5b3Ugbm90IHRvIHVzZSA8MS44
OC44OD4gYXMgbGlzdGVuZXIgYWRkcmVzcywgc2luY2UgdGhlIHNlcnZpY2UgdHlwZXMgWzAsNjRd
IGFyZSByZXNlcnZlZCBmb3IgaW50ZXJuYWwgdXNlIGJ5IFRJUEMgaXRzZWxmLgogCiDCoAogCkkg
YW0gYWxzbyBhIGxpdHRsZSBjb25mdXNlZCBhYm91dCB3aGljaCBrZXJuZWwgeW91IGFyZSB1c2lu
Zy4gQXJlIHlvdSBub3cgdXNpbmcgNC4xOS40NCwgYW5kIG5vdCA0LjQuMTgwLCBvciB3YXMgdGhp
cyBqdXN0IGEgdGVzdD8KIApCVFcsIHNpbmNlIDQuMTcsIHRoZSB1c2Ugb2Yg4oCcem9uZeKAnSBz
Y29wZSBpcyBkZXByZWNhdGVkLCBhbmQgdHJhbnNsYXRlZCBpbnRlcm5hbGx5IHRvIOKAnGNsdXN0
ZXLigJ0uIFRoZXJlIHdhcyBuZXZlciBhbnkgZnVuY3Rpb25hbCBkaWZmZXJlbmNlIGJldHdlZW4g
dGhlbSBhbnl3YXkuCiAKIMKgCiAKUmVnYXJkaW5nIHlvdXIgc3lzdGVtLCBhIGdvb2Qgc3RhcnQg
d291bGQgYmUgdG8gaXNzdWUgdGhlIGZvbGxvd2luZyBjb21tYW5kcywgYm90aCBvbiB0aGUgaG9z
dCBhbmQgaW4gdGhlIGNvbnRhaW5lcjoKIAokIGlwIGFkZHIKIAokIHRpcGMgYmVhcmVyIGxpc3QK
IAokIHRpcGMgbGluayBsaXN0CiAKJCB0aXBjIG5hbWV0YWJsZSBzaG93CiAKIMKgCiAKQlIKIAov
Ly9qb24KIAogwqAKIAogwqAKIAogwqAKIApGcm9tOiBNYWhlc2ggS3VtYXIgPGxta19pbkB5YWhv
by5jb20+ClNlbnQ6IDE1LUp1bC0xOSAxNjoyMQpUbzogWWluZyBYdWUgPHlpbmcueHVlQHdpbmRy
aXZlci5jb20+OyBKb24gTWFsb3kgPGpvbi5tYWxveUBlcmljc3Nvbi5jb20+CkNjOiB0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0ClN1YmplY3Q6IFJlOiBbdGlwYy1kaXNjdXNz
aW9uXSBUSVBDIDsgY29uZmlnIHRyb3VibGUgOyBoZWxwIHJlcXVlc3QKIAogwqAKIApIaSBKb24s
CiAKIMKgCiAKVGhhbmtzIGEgbG90IGZvciBjaGVja2luZyB0aGlzIGFuZCBwcm92aWRpbmcgZmVl
ZGJhY2suCiAKIMKgCiAKQSBicmllZiBiYWNrZ3JvdW5kIG9mIHRoZSBzeXN0ZW0uCiAKIMKgCiAK
SW4gdGhlIGhvc3Qgc3lzdGVtLCB1cG9uIGJvb3R1cCBub2RlIGFkZHJlc3MgMS4xLjEgd291bGQg
YmUgY29uZmlndXJlZC4KIApJIGFkZGVkIGlzIGEgbGlzdGVuZXIgaW4gMS44OC44OC7CoAogCsKg
IMKgwqB0YW1zX3Nydl9hZGRyLmZhbWlseSA9IEFGX1RJUEM7CiAKwqAgwqB0YW1zX3Nydl9hZGRy
LmFkZHJ0eXBlID0gVElQQ19BRERSX05BTUVTRVE7CiAKwqAgwqB0YW1zX3Nydl9hZGRyLmFkZHIu
bmFtZXNlcS50eXBlwqA9VElQQ19UT1BfU1JWOwogCsKgIMKgdGFtc19zcnZfYWRkci5hZGRyLm5h
bWVzZXEubG93ZXIgPSBUQU1TX1RJUENfTElTVEVOX1BPUlQ7IDw8ODgKIArCoMKgIMKgdGFtc19z
cnZfYWRkci5hZGRyLm5hbWVzZXEudXBwZXIgPSBUQU1TX1RJUENfTElTVEVOX1BPUlQ7CiAKwqDC
oCDCoHRhbXNfc3J2X2FkZHIuc2NvcGUgPSBUSVBDX1pPTkVfU0NPUEU7CiAKwqBOb3cgZnJvbSBh
IGNvbnRhaW5lciwgSSBhbSB0cnlpbmcgdG8gYWNjZXNzIHRoZSBob3N0IHNlcnZpY2UgKDg4KTvC
oAogCmJ5IHNldHRpbmcgaXRzIGNvbnRhaW5lcidzIG5vZGUgYWRkcmVzcyBhcyAxLjEuMTAwwqAg
dXNpbmcgInRpcGMgbm9kZSBzZXQgYWRkciAxLjEuMTAwIi4KIApUaGlzIHVzZWQgdG8gd29yayBm
aW5lLCBidXQgaXQgYmFpbHMgb3V0IHdpdGggNC40LjE4MCBrZXJuZWwuCiAKIMKgCiAKQW5vdGhl
ciBjaGFuZ2UgSSBub3RpY2VkIGJ5IGNoYW5naW5nIG15IGtlcm5lbCB0byA0LjE5LjQ0IGlzIHRo
YXQgYWxsIG9mIHRoZSBsaXN0ZW5lcnMgYXJlIGluIGNsdXN0ZXIgc2NvcGUgbm93IGluc3RlYWQg
b2Ygem9uZSBzY29wZS4KIApJIGRpZG4ndCBoYWQgYSBjaGFuY2UgdG8gY2hlY2sgdGhlIHJlc3Vs
dHMgZnJvbSBjb250YWluZXIgd2l0aCB0aGUgbmV3IGtlcm5lbC4KIAo+PmZyb20gaG9zdCA+Pj50
aXBjLWNvbmZpZyAtbnQKIApUeXBlwqAgwqAgwqAgwqBMb3dlcsKgIMKgIMKgIFVwcGVywqAgwqAg
wqAgUG9ydCBJZGVudGl0ecKgIMKgIMKgIMKgIMKgIMKgIMKgIFB1YmxpY2F0aW9uIFNjb3BlCiAK
MMKgIMKgIMKgIMKgIMKgIDE2NzgxMzEzwqAgwqAxNjc4MTMxM8KgIMKgPDEuMS4xOjA+wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgMTY3ODEzMTPCoCDCoCBjbHVzdGVyCiAKMcKgIMKgIMKgIMKg
IMKgIDHCoCDCoCDCoCDCoCDCoCAxwqAgwqAgwqAgwqAgwqAgPDEuMS4xOjIzOTk0ODE0OTQ+wqAg
wqAgwqAgwqAgwqAyMzk5NDgxNDk1wqAgbm9kZQogCjHCoCDCoCDCoCDCoCDCoCA4OMKgIMKgIMKg
IMKgIMKgODjCoCDCoCDCoCDCoCDCoDwxLjEuMToyNTM2MzA0NjQwPsKgIMKgIMKgIMKgIMKgMjUz
NjMwNDY0McKgIGNsdXN0ZXIKIAoxNTAwM8KgIMKgIMKgIDXCoCDCoCDCoCDCoCDCoCA1wqAgwqAg
wqAgwqAgwqAgPDEuMS4xOjM5NzM4Mzg3NjQ+wqAgwqAgwqAgwqAgwqAzOTczODM4NzY1wqAgY2x1
c3RlcgogCltTd2l0Y2hfMV9SUF8wOi9dJCB1bmFtZSAtYQogCkxpbnV4IFN3aXRjaF8xX1JQXzAg
NC4xOS40NCAjMSBTTVAgV2VkIE1heSAyMiAxMzo1MDowMiBQRFQgMjAxOSB4ODZfNjQgeDg2XzY0
IHg4Nl82NCBHTlUvTGludXgKIAogwqAKIApQbGVhc2UgbGV0IG1lIGtub3c7IHdoaWNoIG91dHB1
dHMgc2hvdWxkIEkgbmVlZCB0byBzaGFyZSBmcm9tIHRoZSAnaG9zdCcgYW5kICdjb250YWluZXIn
IHNpZGUuCiAKIMKgCiAKIMKgCiAKdGhhbmtzICYgcmVnYXJkcwogCk1haGVzaCBrdW1hci5MCiAK
IMKgCiAKIMKgCiAKIMKgCiAKIMKgCiAKIMKgCiAKIMKgCiAKIMKgCiAKIMKgCiAKT24gTW9uZGF5
LCAxNSBKdWx5LCAyMDE5LCAxMjozNjowOSBwbSBHTVQtNywgSm9uIE1hbG95IDxqb24ubWFsb3lA
ZXJpY3Nzb24uY29tPiB3cm90ZToKIAogwqAKIAogwqAKIApIaSBLdW1hciwKWW91ciBiaW5kaW5n
IHRhYmxlIGxpc3RpbmcgcmV2ZWFscyB0aGF0IHlvdXIgbm9kZSBhbHJlYWR5IGhhcyBhbiBhZGRy
ZXNzIDwxLjEuMT4sIHdoaWNoIGV4cGxhaW5zIHdoeSB5b3VyIGFkZHJlc3Mgc2V0dGluZyBmYWls
cy4KWW91IHNob3VsZCBjaGVjayBpZiB5b3UgaGF2ZSBhbnkgc2NyaXB0IHRoYXQgc2V0cyB0aGUg
YWRkcmVzcyBieSBkZWZhdWx0IGF0IG1vZHVsZSBsb2FkaW5nLCBvciBtYXliZSB5b3UganVzdCBz
ZXQgaXQgbWFudWFsbHkgYW5kIHRoZW4gZm9yZ290Li4uCgpGdXJ0aGVybW9yZSwgaXRzIHNlZW1z
IHlvdSBoYXZlIHB1Ymxpc2hlZCBhIHNlcnZpY2UgPDEsODgsODg+IHdoaWNoIG1lYW5zIHlvdSBh
cmUgaWxsZWdhbGx5IHVzaW5nIHRoZSByZXNlcnZlZCBzZXJ2aWNlIHR5cGUgPDE+LgpUaGUgbGF0
dGVyIGlzbid0IHlvdXIgZmF1bHQsIGJ1dCBkdWUgdG8gYSBidWcgaW4gVElQQyB0aGF0IHdyb25n
bHkgYWxsb3dzIHVzZXJzIHRvIHB1Ymxpc2ggc3VjaCBzZXJ2aWNlIHR5cGVzLCBpbiB0aGUgZnVu
Y3Rpb24gdGlwY19iaW5kKCkuCkkgZGlzY292ZXJlZCB0aGlzIHVnIGEgY291cGxlIG9mIG1vbnRo
cyBhZ28sIGJ1dCBoYXZlbid0IGZpeGVkIGl0IHlldCwgYW5kIEkgYW0gbm90IHF1aXRlIHN1cmUg
aG93IHRvIGRvIGl0IHdpdGhvdXQgYnJlYWtpbmcgYW55IEJQSS4KClRoaXMgbWF5IGNhdXNlIHlv
dSBzdXJwcmlzZXMsIGJ1dCBJIGNhbm5vdCBzZWUgd2h5IGl0IHdvdWxkIGNhdXNlIHRoZSBiZWFy
ZXIgZW5hYmxpbmcgdG8gZmFpbC4KSWYgdGhpcyBwcm9ibGVtIHBlcnNpc3RzLCB5b3Ugc2hvdWxk
IHBvc3Qgc29tZSBtb3JlIHN5c3RlbSBpbmZvIGFib3V0IHlvdXIgaW50ZXJmYWNlcywgd2hpY2gg
dGlwYyBsaW5rcyB5b3UgaGF2ZSBldGMuCgpCUgovLy9qb24KCj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KPiBGcm9tOiBNYWhlc2ggS3VtYXIgdmlhIHRpcGMtZGlzY3Vzc2lvbiA8dGlwYy0K
PiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KPiBTZW50OiAxNS1KdWwtMTkgMTE6
NDkKPiBUbzogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgWWluZyBYdWUK
PiA8eWluZy54dWVAd2luZHJpdmVyLmNvbT4KPiBTdWJqZWN0OiBSZTogW3RpcGMtZGlzY3Vzc2lv
bl0gVElQQyA7IGNvbmZpZyB0cm91YmxlIDsgaGVscCByZXF1ZXN0Cj4gCj7CoCBIaSBZaW5nLAo+
IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIGxldHRpbmcgbWUga25vdy5EbyB3ZSBzdXNwZWN0IGFu
eSByZWxhdGVkIGlvY3RsKCkKPiBwYXRjaGVzPy7CoGNvdWxkIHlvdSBwbGVhc2UgcG9pbnQgbWUg
dG8gbGluayB3aGVyZSB3ZSBjYW4gcmV2aWV3IHRoZSBUSVBDCj4gcGF0Y2hlcyB0aGF0IHdlbnQg
aW4gdGhlIGtlcm5lbC4/Lgo+IE11Y2ggYXBwcmVjaWF0ZSB0aGUgaGVscC4KPiB0aGFua3MgJiBy
ZWdhcmRzTWFoZXNoIGt1bWFyLkwKPsKgIMKgIE9uIE1vbmRheSwgMTUgSnVseSwgMjAxOSwgMDI6
NTY6MzIgYW0gR01ULTcsIFlpbmcgWHVlCj4gPHlpbmcueHVlQHdpbmRyaXZlci5jb20+IHdyb3Rl
Ogo+IAo+wqAgT24gNy8xMy8xOSAxMTo1OCBBTSwgTWFoZXNoIEt1bWFyIHZpYSB0aXBjLWRpc2N1
c3Npb24gd3JvdGU6Cj4gPiBUaXBjIFRlYW0sCj4gPgo+ID4gR3JlZXRpbmdzIS4KPiA+IEkgaGF2
ZSBiZWVuIHVzaW5nIFRJUEMgZm9yIGFib3V0IGEgeWVhciB3aXRob3V0IGFueSBpc3N1ZUhvd2V2
ZXIgdGhlCj4gPiBUSVBDIHRvb2wgaXMgYmFpbGluZyBvdXQgd2hlbiBJIHRyaWVkIHRvIHNldCBh
ZGRyZXNzLCBiZWFyZXIKPiA+Cj4gPgo+ID4gLyAjIHRpcGMgbm9kZSBzZXQgYWRkciAxLjEuMTAw
Cj4gPgo+ID4gZXJyb3I6IE9wZXJhdGlvbiBub3QgcGVybWl0dGVkCj4gPgo+ID4gLyAjIHRpcGMg
YmVhcmVyIGVuYWJsZSBtZWRpYSBldGggZGV2wqBpZW9iYwo+ID4KPiA+IGVycm9yOiBJbnZhbGlk
IGFyZ3VtZW50Cj4gPgo+ID4gLyAjCj4gPgo+ID4gSSBhbSB1c2luZyB0aGUgbmV3IGtlcm5lbCBu
b3c7Cj4gPiDCoHVuYW1lIC1hTGludXggMmMzZjBiMDAxOTAwXzFfUlBfMCA0LjQuMTgwICMxIFNN
UCBUdWUgSnVuIDI1Cj4gMTU6MzY6MTAKPiA+IFBEVCAyMDE5IHg4Nl82NCB4ODZfNjQgeDg2XzY0
IEdOVS9MaW51eAo+ID4gwqBkbWVzZyBvdXRwdXQgOyBncmVwIC1pIFRJUEMgZC50eHRbwqAgwqAy
OS40MzY1OTldIHRpcGM6IEFjdGl2YXRlZAo+ID4gKHZlcnNpb24gMi4wLjApW8KgIMKgMjkuNDM2
NzY4XSB0aXBjOiBTdGFydGVkIGluIHNpbmdsZSBub2RlIG1vZGUKPiAKPiBTdXNwZWN0ZWQgc29t
ZSBUSVBDIHBhdGNoZXMgaW50ZWdyYXRlZCB0aHJvdWdoIDQuNC4xODAgcmVsZWFzZSBpbnRyb2R1
Y2VkCj4gcmVncmVzc2lvbi4gVGhlIG1vc3Qgc2ltcGxlc3QgbWV0aG9kIHRvIGlkZW50aWZ5IHRo
ZSBpc3N1ZSBpcyB0byByZXZlcnQgc29tZQo+IFRJUEMgcGF0Y2hlcyB0byBpZGVudGlmeSB3aGlj
aCBvbmVzIGNhdXNlZCB0aGUgcmVncmVzc2lvbi4KPiAKPiA+Cj4gPiBbMmMzZjBiMDAxOTAwXzFf
UlBfMDovXQoKJCB0aXBjLWNvbmZpZyAtbnQgCgpUeXBlwqAgwqDCoCBMb3dlcsKgIMKgIMKgwqAg
wqAgVXBwZXLCoCDCoCDCoCDCoCDCoCBQb3J0IElkZW50aXR5wqAgwqDCoCDCoCDCoCDCoCDCoCBQ
dWJsaWNhdGlvbsKgIMKgIMKgIFNjb3BlCjDCoCDCoCDCoCDCoMKgIMKgIDE2NzgxMzEzwqAgMTY3
ODEzMTPCoCDCoDwxLjEuMTowPsKgIMKgIMKgIMKgIMKgIMKgwqAgwqAgwqAgwqAgwqAgMTY3ODEz
MTPCoMKgIMKgIMKgIHpvbmUKMSDCoCDCoCDCoMKgIMKgIMKgIDHCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAxwqAgwqAgwqAgwqDCoCDCoCDCoCDCoCDCoCDCoCA8MS4xLjE6NDgzMzkwODc0PsKgIMKg
NDgzMzkwODc1wqDCoCDCoCBub2RlCjHCoCDCoCDCoCDCoMKgIMKgIDg4wqAgwqAgwqAgwqAgwqAg
wqAgwqAgODjCoCDCoCDCoCDCoCDCoMKgIMKgIMKgIMKgIDwxLjEuMToyODcwOTQzMzI2PsKgMjg3
MDk0MzMyN8KgIHpvbmUKMTUwMDPCoCDCoDXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA1wqAgwqAg
wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCA8MS4xLjE6MzU1Njc4MTA5Nj7CoCAzNTU2NzgxMDk3IHpv
bmUKClsyYzNmMGIwMDE5MDBfMV9SUF8wOi9dJAo+ID4KPiA+IHBsZWFzZSBsZXQgbWUga25vdyBp
ZiBhbnkgaXNzdWUuCj4gPiB0aGFua3MgJiByZWdhcmRzTWFoZXNoIGt1bWFyLkwKPiA+Cj4gPgo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IHRp
cGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiA+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKPiA+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3RpcGMtZGlzY3Vzc2lvbgogCgo+ID4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IHRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiB0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCiAgIApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFp
bGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
