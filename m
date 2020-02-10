Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3F215719D
	for <lists+tipc-discussion@lfdr.de>; Mon, 10 Feb 2020 10:25:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j15Ju-0004Q9-7o; Mon, 10 Feb 2020 09:25:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1j15Js-0004Q2-Sr
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 09:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EeGRCLuSwgEZEgbGKvAsVwoiRLCnRpCpNH3l6Uhb5L8=; b=Pj5HwYFOj9KDw4RQW/KRs4i7My
 QzKlaw1auQLj5n+pMRjePKeDrQB6bDGpKRFEoMZ8/B9Q23Pcy7ldVi6c4GWP342s1hpjx3H85u5qC
 tRc5JuZvjbT9bewn99cxaYX8foYjZOu+x8Hfb7OQGVYVz15IaEM2lTKzyH6+kXukSxHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EeGRCLuSwgEZEgbGKvAsVwoiRLCnRpCpNH3l6Uhb5L8=; b=QB8n3ZamBc489Dep1d3Q/vkFNd
 wkqnPegPKdXgX4quevw/AxFDMUg/MmnoOb1FO/EJBWR/Eg+CCMuIJD5W3BUt6nEZmWXkHpA5RZMv0
 Ex08fgyqAEFJpoL7mcKpGdlOeUz2fDSYrWhmLg0Cxki9JfaNv9o45/dkMZeVXj5bOZ1o=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j15Jr-00H5uf-97
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 09:25:32 +0000
Received: from localhost (82-95-191-104.ip.xs4all.nl [82.95.191.104])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 87AA51489E0BF;
 Mon, 10 Feb 2020 01:25:15 -0800 (PST)
Date: Mon, 10 Feb 2020 10:25:13 +0100 (CET)
Message-Id: <20200210.102513.350862069369965887.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200210083544.31501-1-tuong.t.lien@dektech.com.au>
References: <20200210083544.31501-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 10 Feb 2020 01:25:16 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j15Jr-00H5uf-97
Subject: Re: [tipc-discussion] [net] tipc: fix successful connect() but
 timed out
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

RnJvbTogVHVvbmcgTGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1Pg0KRGF0ZTogTW9u
LCAxMCBGZWIgMjAyMCAxNTozNTo0NCArMDcwMA0KDQo+IEluIGNvbW1pdCA5NTQ2YTBiN2NlMDAg
KCJ0aXBjOiBmaXggd3JvbmcgY29ubmVjdCgpIHJldHVybiBjb2RlIiksIHdlDQo+IGZpeGVkIHRo
ZSBpc3N1ZSB3aXRoIHRoZSAnY29ubmVjdCgpJyB0aGF0IHJldHVybnMgemVybyBldmVuIHRob3Vn
aCB0aGUNCj4gY29ubmVjdGluZyBoYXMgZmFpbGVkIGJ5IHdhaXRpbmcgZm9yIHRoZSBjb25uZWN0
aW9uIHRvIGJlICdFU1RBQkxJU0hFRCcNCj4gcmVhbGx5LiBIb3dldmVyLCB0aGUgYXBwcm9hY2gg
aGFzIG9uZSBkcmF3YmFjayBpbiBjb25qdW5jdGlvbiB3aXRoIG91cg0KPiAnbGlnaHR3ZWlnaHQn
IGNvbm5lY3Rpb24gc2V0dXAgbWVjaGFuaXNtIHRoYXQgdGhlIGZvbGxvd2luZyBzY2VuYXJpbw0K
PiBjYW4gaGFwcGVuOg0KIC4uLg0KPiBVcG9uIHRoZSByZWNlaXB0IG9mIHRoZSBzZXJ2ZXIgJ0FD
SycsIHRoZSBjbGllbnQgYmVjb21lcyAnRVNUQUJMSVNIRUQnDQo+IGFuZCB0aGUgJ3dhaXRfZm9y
X2Nvbm4oKScgcHJvY2VzcyBpcyB3b2tlbiB1cCBidXQgbm90IHJ1bi4gTWVhbndoaWxlLA0KPiB0
aGUgc2VydmVyIHN0YXJ0cyB0byBzZW5kIGEgbnVtYmVyIG9mIGRhdGEgZm9sbG93aW5nIGJ5IGEg
J2Nsb3NlKCknDQo+IHNob3J0bHkgd2l0aG91dCB3YWl0aW5nIGFueSByZXNwb25zZSBmcm9tIHRo
ZSBjbGllbnQsIHdoaWNoIHRoZW4gZm9yY2VzDQo+IHRoZSBjbGllbnQgc29ja2V0IHRvIGJlICdE
SVNDT05ORUNUSU5HJyBpbW1lZGlhdGVseS4gV2hlbiB0aGUgd2FpdA0KPiBwcm9jZXNzIGlzIHN3
aXRjaGVkIHRvIGJlIHJ1bm5pbmcsIGl0IGNvbnRpbnVlcyB0byB3YWl0IHVudGlsIHRoZSB0aW1l
cg0KPiBleHBpcmVzIGJlY2F1c2Ugb2YgdGhlIHVuZXhwZWN0ZWQgc29ja2V0IHN0YXRlLiBUaGUg
Y2xpZW50ICdjb25uZWN0KCknDQo+IHdpbGwgZmluYWxseSBnZXQgoS1FVElNRURPVVSiIGFuZCBm
b3JjZSB0byByZWxlYXNlIHRoZSBzb2NrZXQgd2hlcmVhcw0KPiB0aGVyZSByZW1haW5zIHRoZSBt
ZXNzYWdlcyBpbiBpdHMgcmVjZWl2ZSBxdWV1ZS4NCj4gDQo+IE9idmlvdXNseSB0aGUgaXNzdWUg
d291bGQgbm90IGhhcHBlbiBpZiB0aGUgc2VydmVyIGhhZCBzb21lIGRlbGF5IHByaW9yDQo+IHRv
IGl0cyAnY2xvc2UoKScgKG9yIHRoZSBudW1iZXIgb2YgJ0RBVEEnIG1lc3NhZ2VzIGlzIGxhcmdl
IGVub3VnaCksDQo+IGJ1dCBhbnkga2luZCBvZiBkZWxheSB3b3VsZCBtYWtlIHRoZSBjb25uZWN0
aW9uIHNldHVwL3NodXRkb3duICJoZWF2eSIuDQo+IFdlIHNvbHZlIHRoaXMgYnkgc2ltcGx5IGFs
bG93aW5nIHRoZSAnY29ubmVjdCgpJyByZXR1cm5zIHplcm8gaW4gdGhpcw0KPiBwYXJ0aWN1bGFy
IGNhc2UuIFRoZSBzb2NrZXQgaXMgYWxyZWFkeSAnRElTQ09OTkVDVElORycsIHNvIGFueSBmdXJ0
aGVyDQo+IHdyaXRlIHdpbGwgZ2V0ICctRVBJUEUnIGJ1dCB0aGUgc29ja2V0IGlzIHN0aWxsIGFi
bGUgdG8gcmVhZCB0aGUNCj4gbWVzc2FnZXMgZXhpc3RpbmcgaW4gaXRzIHJlY2VpdmUgcXVldWUu
DQo+IA0KPiBOb3RlOiBUaGlzIHNvbHV0aW9uIGRvZXNuJ3QgYnJlYWsgdGhlIHByZXZpb3VzIG9u
ZSBhcyBpdCBkZWFscyB3aXRoIGENCj4gZGlmZmVyZW50IHNpdHVhdGlvbiB0aGF0IHRoZSBzb2Nr
ZXQgc3RhdGUgaXMgJ0RJU0NPTk5FQ1RJTkcnIGJ1dCBoYXMgbm8NCj4gZXJyb3IgKGkuZS4gc2st
PnNrX2VyciA9IDApLg0KPiANCj4gRml4ZXM6IDk1NDZhMGI3Y2UwMCAoInRpcGM6IGZpeCB3cm9u
ZyBjb25uZWN0KCkgcmV0dXJuIGNvZGUiKQ0KPiBBY2tlZC1ieTogWWluZyBYdWUgPHlpbmcueHVl
QHdpbmRyaXZlci5jb20+DQo+IEFja2VkLWJ5OiBKb24gTWFsb3kgPGpvbi5tYWxveUBlcmljc3Nv
bi5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNo
LmNvbS5hdT4NCg0KQXBwbGllZC4NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
