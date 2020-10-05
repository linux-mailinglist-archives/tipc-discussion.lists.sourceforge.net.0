Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2482D283B83
	for <lists+tipc-discussion@lfdr.de>; Mon,  5 Oct 2020 17:44:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kPSew-000266-KX; Mon, 05 Oct 2020 15:44:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kPSev-00025y-9J
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 15:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pZyAun9GV/Nww7YvVQUoqhw1lVyCWaxSRNkV6c9ieBc=; b=Omd4l3vQUkPWZyZAMgObE+lPUp
 5+MbbWJlAjEo0/+oHQqlsuUAfVRRtCf/cb5SuoUxgFUzWv+Bohfu89uhNsVX05pQywxGhfP1LAhmn
 BRZQ+yx0JCLfnjedvnbHNJQVvE9HVZdPJrfS0aWO3SPpY6zYoN2kagKGxnzvDBYrCuJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pZyAun9GV/Nww7YvVQUoqhw1lVyCWaxSRNkV6c9ieBc=; b=BaWaKAdPlLQ23UC+ip/67qqEn4
 YJS7cAnBBjLwEU3Wp1DbDzLC0m58OBezoXslAwuKc1+UubSo4384zL5RLRtASL/jm3SHzGz8NvGjd
 wcdYuHVouCpDuwX8liUG5WO2c0isRtSFms/a19qzl4WeEBh49To9eU2J6u2J0fiby6KY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kPSeo-00HPxf-HU
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 15:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601912644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pZyAun9GV/Nww7YvVQUoqhw1lVyCWaxSRNkV6c9ieBc=;
 b=AX08aL3iBfZY9diGR2gs91c0sw6giY5pJdwuPpeLpDMCCn5iL2YEg+hH9UhJcffjLAOYzk
 9zwqxFGIq3hJ6xPZAUczZKbh/x2lWxyQtrj+ieVMa4WlS/jD9ufKqwgs6EgehnUpZbZqqF
 FuSnn4ZDVYPS6SSaIN/fTQpFGO81FzQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-szLrB2GfPY68vgP0Jeag9w-1; Mon, 05 Oct 2020 11:44:00 -0400
X-MC-Unique: szLrB2GfPY68vgP0Jeag9w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A6B080B71B;
 Mon,  5 Oct 2020 15:43:58 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD2731002C02;
 Mon,  5 Oct 2020 15:43:57 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, tipc-dek <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
 <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <eb659d57-3aa4-226e-0e06-0a52db96df36@redhat.com>
 <DB6PR05MB459853F6B8F88B5661F2B678F10C0@DB6PR05MB4598.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <a173e577-ce85-a936-007c-8e610427ebfa@redhat.com>
Date: Mon, 5 Oct 2020 11:43:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <DB6PR05MB459853F6B8F88B5661F2B678F10C0@DB6PR05MB4598.eurprd05.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kPSeo-00HPxf-HU
Subject: Re: [tipc-discussion] tipc.py
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAxMC81LzIwIDEyOjM1IEFNLCBIb2FuZyBIdXUgTGUgd3JvdGU6Cj4gSGkgSm9uLAo+Cj4g
SSB3aWxsIG1ha2UgYW4gZWZmb3J0IG9uIHRoaXMuIERvIHlvdSB0aGluayB3ZSBuZWVkIHRvIGtl
ZXAgdGhlc2UgQVBJcyBjb21wYXRpYmlsaXR5IHdvcmsgd2l0aCBQeXRob24yIG9yIGNvbXBsZXRl
bHkgcmVtb3ZlIG91dD8KR3JlYXQhIFRvIG1lIHlvdSBjYW4ganVzdCB1cGRhdGUgdGhlIGN1cnJl
bnQgY29kZSBhbmQgZG9uJ3Qgd29ycnkgYWJvdXQgCmNvbXBhdGliaWxpdHkuCklmIGFueWJvZHkg
aGFzIHVzZWQgdGhlIGN1cnJlbnQgbW9kdWxlIHRoZXkgd2lsbCBoYXZlIHRoZWlyIG93biBjb3B5
LCAKYW5kIEkgY2Fubm90IGltYWdpbmUgdGhhdCBhbnlib2R5IHdpbGwgd3JpdGUgbmV3IHByb2dy
YW1zIGZvciBQdXRob24gMiAKYnkgbm93LgoKUmVnYXJkcwovLy9qb24KCj4KPiBSZWdhcmRzLAo+
IEhvYW5nCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEpvbiBNYWxveSA8
am1hbG95QHJlZGhhdC5jb20+Cj4+IFNlbnQ6IFNhdHVyZGF5LCBPY3RvYmVyIDMsIDIwMjAgNTo1
OSBBTQo+PiBUbzogSG9hbmcgSHV1IExlIDxob2FuZy5oLmxlQGRla3RlY2guY29tLmF1PjsgdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgdGlwYy1kZWsgPHRpcGMtZGVrQGRl
a3RlY2guY29tLmF1PjsgWGluCj4+IExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPjsgWWluZyBY
dWUgPHlpbmcueHVlQHdpbmRyaXZlci5jb20+Cj4+IFN1YmplY3Q6IFJlOiB0aXBjLnB5Cj4+Cj4+
Cj4+Cj4+IE9uIDEwLzEvMjAgMTE6MDQgUE0sIEhvYW5nIEh1dSBMZSB3cm90ZToKPj4+IEhpIEpv
biwKPj4+Cj4+PiBJJ3ZlIGRvbmUgdGhpcyBhIGxvbmcgdGltZSBhZ286Cj4+PiA1MDU3ZjhiYjRk
ZTAgdGlwY3V0aWxzOiBpbnRyb2R1Y2UgcHl0aG9uIGFwaQo+Pj4KPj4+IEJhc2ljYWxseSwgaXQg
d29ya3Mgd2l0aCBQeXRob24gMi4KPj4gRG8geW91IHRoaW5rIGl0IHlvdSB3b3VsZCBoYXZlIHRp
bWUgdG8gZG8gdGhpcyBmb3IgUHl0aG9uIDM/Cj4+IFB5dGhvbiAyIGlzIHByYWN0aWNhbGx5IGRl
YWQgbm93LCBhcyB3ZSBhbGwga25vdy4KPj4KPj4gUmVnYXJkcwo+PiAvLy9qb24KPj4+IFJlZ2Fy
ZHMsCj4+PiBIb2FuZwo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4gRnJvbTog
Sm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4KPj4+PiBTZW50OiBGcmlkYXksIE9jdG9iZXIg
MiwgMjAyMCA0OjU2IEFNCj4+Pj4gVG86IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQ7IHRpcGMtZGVrIDx0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdT47IFhpbiBMb25nIDxsdWNp
ZW4ueGluQGdtYWlsLmNvbT47IFlpbmcgWHVlCj4+Pj4gPHlpbmcueHVlQHdpbmRyaXZlci5jb20+
Cj4+Pj4gU3ViamVjdDogdGlwYy5weQo+Pj4+Cj4+Pj4gSSBhbSB1cGRhdGluZyB0aGUgcHJvZ3Jh
bW1lcidzIG1hbnVhbCwgYW5kIHJlYWxpemVkIHRoYXQgdGhlIFB5dGhvbiBBUEkKPj4+PiBpcyBt
aXNzaW5nLgo+Pj4+IFNpbmNlIHRoZXJlIGFyZSBzbyBtYW55IHByb2dyYW1tZXJzIGtub3dpbmcg
UHl0aG9uIG5vd2FkYXlzLCBidXQgbm90IEMsCj4+Pj4gSSB0aGluayBpdCB3b3VsZAo+Pj4+IGJl
IHZlcnkgdXNlZnVsIHRvIGhhdmUgdGhpcyBBUEkgaW4gdGhlIG1hbnVhbCwgc28gdGhvc2UgcHJv
Z3JhbW1lcnMgY2FuCj4+Pj4gZ2V0IGEgZmVlbGluZwo+Pj4+IGZvciBob3cgc2ltcGxlIGl0IHRv
IHVzZSBUSVBDLgo+Pj4+Cj4+Pj4gVHVvbmcgc3RhcnRlZCBkZXZlbG9wbWVudCBvZiBhbiBBUEkg
YmFzZWQgb24gdGhlIGxpYnRpcGMgQy1BUEksIGJ1dCBpdAo+Pj4+IHNlZW1zIHRvIG1lIGl0IHdh
cyBuZXZlciBmaW5pc2hlZC4KPj4+PiBIb3dldmVyLCBQeXRob24gZG9lcyBzaW5jZSBhIGxvbmcg
dGltZSBoYXZlIG5hdGl2ZSBUSVBDIHN1cHBvcnQsCj4+Pj4gYWxsZWdlZGx5IGJvdGggaW4gUHl0
aG9uIDIgYW5kIFB5dG9uIDMuCj4+Pj4gSSBoYWQgbmV2ZXIgc2VlbiB0aGF0IEFQSSB1bnRpbCBu
b3csIGJ1dCBhZnRlciBzb21lIGdvb2dsaW5nIEkgY2FtZSBvdmVyCj4+Pj4gdGhlIGZvbGxvd2lu
ZyBsaW5rLCB0aGF0IHNlZW1zIHRvIGNvbnRhaW4KPj4+PiB0aGF0IG5hdGl2ZSBpbXBsZW1lbmF0
aW9uOgo+Pj4+Cj4+Pj4gaHR0cHM6Ly9ibGl0aXJpLmNvbS5hci9wL3B5dGlwYy8KPj4+Pgo+Pj4+
IEkgd29uZGVyIGlmIGFueWJvZHkgaGFzIHRoZSB0aW1lIHRvIHRyeSB0aGlzIG9uZSwgYW5kIHZl
cmlmeSwgdXNpbmcgdGhlCj4+Pj4gZXhhbXBsZXMsIHRoYXQgaXQgcmVhbGx5IHdvcmtzLgo+Pj4+
IEl0IHdvdWxkIGJlIGVtYmFycmFzc2luZyB0byBhZGQgdGhpcyB0byB0aGUgbWFudWFsIGlmIGl0
IHR1cm5zIG91dCBpdAo+Pj4+IGRvZXNuJ3Qgd29yay4KPj4+Pgo+Pj4+IFJlZ2FyZHMKPj4+PiAv
Ly9qb24KPj4+Pgo+Pj4+IFBTLiBEb2VzIGFueWJvZHkgdm9sdW50ZWVyIHRvIGJlIGJlY29tZSBj
by1tYWludGFpbmVyIG9mIHRoZSBob21lIHBhZ2UKPj4+PiBhbmQgcHJvamVjdCBwYWdlCj4+Pj4g
ICAgwqDCoMKgwqDCoCBhdCBTb3VyY2VGb3JnZT8gSSB0aGluayB3ZSBzaG91bGQgZXZlbiBjb25z
aWRlciBtb3ZpbmcgaXQgdG8KPj4+PiBHaXRMYWIgb3IgR2l0SHViLgo+Pj4+ICAgIMKgwqDCoMKg
wqAgU2luY2Ugd2UgaGF2ZSBvdXIgb3duIGRvbWFpbiAodGlwYy5pbykgdGhhdCBjb3VsZCBlYXNp
bHkgYmUKPj4+PiByZS1zdGVlcmVkIHRvIGEgZGlmZmVyZW50Cj4+Pj4gICAgwqDCoMKgwqDCoCBo
b3N0IHN5c3RlbS4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3RpcGMtZGlzY3Vzc2lvbgo=
