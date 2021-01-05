Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3007C2EA1F3
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Jan 2021 02:01:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kwajH-0001p5-FM; Tue, 05 Jan 2021 01:01:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kwajF-0001oy-Va
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 01:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Z+lWfj6wD78t73fyJ1PSr6hqUV6asLhogg5ku3Kouw=; b=Plzwe/61nDBSglKZ9dlSmCokcW
 YGQgMgkSvqpt7EUW+k0YkFOhEuxg2SiV0W0FcFdtE5S/N9x+JkI7IOYradDvUEZhnwuBwxfzEFixO
 s7ICgTd5oNvBDmzZj/BkQXaj2ZZd+73HqTkwy+bywgbOiC1s2EDr0J2mUuBAQ1bSkTrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Z+lWfj6wD78t73fyJ1PSr6hqUV6asLhogg5ku3Kouw=; b=fErOinJaNMZ6aB3bEiGGtq14Ch
 q2RfHGpJqWs/mv9NpXtQGNabUQT/axXm1tXJ4mM0/WslP6afinfFN8p4J2rTzneBw9I43YzV4xzAc
 AZaw0FtZwhZFxcbryuWpnDCBlHUFoNb820WR4LzLZtartCXTIkFKWTp4912EH7Z/5alw=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kwaj4-008Idw-Tx
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 01:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609808477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0Z+lWfj6wD78t73fyJ1PSr6hqUV6asLhogg5ku3Kouw=;
 b=fAh1Jc3jFPLFcqy7NNc4rPXF76u4phrmRr2leGDAWFXN73X69CZK9ApdXWab3+DdkN6A8q
 c7M2AeFfuh4uGj61EjTMJWUPH2kYsynugxBdBc88EbiPTiOf3aglsLR40HogW+BkPqCZBi
 Ahv7PNS1KpDplUrw/8JpCWqoULAEPOE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-GtLktUt5Mwytf-IzyiA9hg-1; Mon, 04 Jan 2021 20:01:13 -0500
X-MC-Unique: GtLktUt5Mwytf-IzyiA9hg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4652107ACE6;
 Tue,  5 Jan 2021 01:01:12 +0000 (UTC)
Received: from [10.10.118.109] (ovpn-118-109.rdu2.redhat.com [10.10.118.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2402C2719F;
 Tue,  5 Jan 2021 01:01:11 +0000 (UTC)
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <VI1PR08MB419220FCFEAC17883490106985D20@VI1PR08MB4192.eurprd08.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <080cf9eb-e438-bf77-b7fe-ebc8b0d8adcf@redhat.com>
Date: Mon, 4 Jan 2021 20:01:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <VI1PR08MB419220FCFEAC17883490106985D20@VI1PR08MB4192.eurprd08.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kwaj4-008Idw-Tx
Subject: Re: [tipc-discussion] Discovery between VMs
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

SGkgR2FyeSwKVGhlcmUgYXJlIG5vIGtub3duIHByb2JsZW1zIHdpdGggY29ubmVjdGluZyBiZXR3
ZWVuIFZNcy4gQXMgYSBtYXR0ZXIgb2YgCmZhY3QsIHRoYXQgaXMgdGhlIHdheSB3ZSBydW4gYWxt
b3N0IGFsbCB0aGUgdGltZS4KSGF2ZSB5b3UgdHJpZWQganVzdCB0byBwaW5nIGJldHdlZW4gdGhl
IHR3byBWTXMsIHVzaW5nIHRoZSBzYW1lIAppbnRlcmZhY2VzPyBJZiB0aGF0IHdvcmtzIHRoZXkg
c2hvdWxkIGRlZmluaXRlbHkgZmluZCBlYWNoIG90aGVyLgpJZiB5b3UgY2FuIHBpbmcgYW5kIHRo
ZXkgc3RpbGwgZG9uJ3QgZGlzY292ZXIgZWFjaCBvdGhlciwgY2hlY2sgdGhlIApjbHVzdGVyIGlk
IChha2EgbmV0d29yayBpZCkgYnkgZG9pbmcgJ3RpcGMgbm9kZSBnZXQgbmV0aWQnIG9uIGJvdGgg
c2lkZXMuCklmIHRoZSBpbnRlcmZhY2VzIGRvbid0IGhhdmUgSVAgYWRkcmVzc2VzIHlvdSBjb3Vs
ZCBhc3NpZ24gdGhvc2UgCnRlbXBvcmFyaWx5LCBqdXN0IHRvIGNoZWNrLgoKV2hhdCBkbyB0aGUg
Y29tbWFuZHMgJ3RpcGMgbGluayBsaXN0JyBhbmQgJ3RpcGMgYmVhcmVyIGxpc3QnwqAgc2hvdyB5
b3U/CgpCUgpKb24gTWFsb3kKCk9uIDEvNC8yMSA0OjIyIFBNLCBEdXphbiwgR2FyeSBEIHZpYSB0
aXBjLWRpc2N1c3Npb24gd3JvdGU6Cj4gICAgIEknbSBuZXcgaGVyZSwgYW5kIEkgaGF2ZSB0cm91
YmxlIGdldHRpbmcgdG8gU291cmNlRm9yZ2UgdGhyb3VnaCB0aGUgY29ycG9yYXRlIHByb3h5LCBz
byBmb3JnaXZlIG1lIGlmIHRoaXMgaXMgYW4gRkFRLiBJJ20gdHJ5aW5nIHRvIGdldCBUSVBDIHdv
cmtpbmcgYXQgYSByZW1vdGUgc2l0ZSBiZXR3ZWVuIHR3byBWTXMgcnVubmluZyBVYnVudHUgMTgu
MDQgd2hpY2ggYXQgbGVhc3QgYXBwZWFyIHRvIGJlIG9uIHRoZSBzYW1lIElQIHN1Ym5ldC4gVGhl
IG5vZGUgYWRkcmVzcyBpcyBzZXQgdG8gZGlzdGluY3QgdmFsdWVzIG9uIGJvdGggaG9zdHMgKGFz
IDE4LjA0IGhhZCBvdGhlciBUSVBDIHdoaWNoIHJlcXVpcmVkIHRoZSBtYW51YWwgY29uZmlnKSwg
YW5kIHRoZSBicm9hZGNhc3QgYmVhcmVyIGlzIHRoZXJlLCBidXQgdGhleSBkb24ndCBhcHBlYXIg
dG8gYmUgZGlzY292ZXJpbmcgZWFjaCBvdGhlciBhcyB0aGUgY2xpZW50IGdldHMgYSBIb3N0IFVu
cmVhY2hhYmxlIHRyeWluZyB0byBkbyBhIHNlbmR0bygpLiBJIGJlbGlldmUgdGhlIFZNcyBhcmUg
cnVubmluZyB1bmRlciBWTXdhcmUsIGJ1dCBnZXR0aW5nIHZpc2liaWxpdHkgb24gdGhhdCBjb3Vs
ZCBiZSB0cmlja3kuIFRoZSBUSVBDIGNvZGUgd29ya3MgZmluZSBiZXR3ZWVuIHBoeXNpY2FsIGhv
c3RzIGxvY2FsbHkuCj4KPiAgICAgQXJlIHRoZXJlIGtub3duIHByb2JsZW1zIGdldHRpbmcgdGhl
IGV0aGVybmV0IGJyb2FkY2FzdCBiZXR3ZWVuIFZNcyB3b3JraW5nPyBJIGJlbGlldmUgSSBoYXZl
IHRoZSBwcm9wZXIgaW5jYW50YXRpb24gdG8gdXNlIGEgVURQIGJlYXJlciBmb3IgdXNlIGFzIGEg
ZmFsbGJhY2ssIGJ1dCBJJ2QgcmF0aGVyIG5vdCB1c2UgaXQgaWYgSSBkb24ndCBoYXZlIHRvLgo+
Cj4gICAgIFRoYW5rcy4KPgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdhcnkgRHV6YW4KPgo+IFRoZSBpbmZvcm1hdGlv
biBjb250YWluZWQgaW4gdGhpcyBtZXNzYWdlIGlzIHByb3ByaWV0YXJ5IGFuZC9vciBjb25maWRl
bnRpYWwuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZTogKGkp
IGRlbGV0ZSB0aGUgbWVzc2FnZSBhbmQgYWxsIGNvcGllczsgKGlpKSBkbyBub3QgZGlzY2xvc2Us
IGRpc3RyaWJ1dGUgb3IgdXNlIHRoZSBtZXNzYWdlIGluIGFueSBtYW5uZXI7IGFuZCAoaWlpKSBu
b3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseS4gSW4gYWRkaXRpb24sIHBsZWFzZSBiZSBhd2Fy
ZSB0aGF0IGFueSBtZXNzYWdlIGFkZHJlc3NlZCB0byBvdXIgZG9tYWluIGlzIHN1YmplY3QgdG8g
YXJjaGl2aW5nIGFuZCByZXZpZXcgYnkgcGVyc29ucyBvdGhlciB0aGFuIHRoZSBpbnRlbmRlZCBy
ZWNpcGllbnQuIFRoYW5rIHlvdS4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IHRpcGMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
