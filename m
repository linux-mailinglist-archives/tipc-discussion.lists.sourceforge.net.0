Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B37F101B6
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Apr 2019 23:22:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hLaCX-0002mX-Aq; Tue, 30 Apr 2019 21:22:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <erik.hugne@gmail.com>) id 1hLaCV-0002mF-Dm
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Apr 2019 21:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B1JL1E6K3cOvm8KQZIj8gPU2CANIqFkEIwCSU178miU=; b=QTTsdGH0rMBb6Vwoy5R5ROgfzz
 YMenQTXHDFsGNE5FxgOf6+UOzbprinR3SmHnUjfOfAFdfxfz9+hDFWxzyGYdB8g3oHTxyyFIqbL0W
 slZOOrZfEl1mvlSCSfIR2CZx2fhBaDePgc+vF2fr9ItR1j5kPbFvwrX7ISfKEgh3dXTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B1JL1E6K3cOvm8KQZIj8gPU2CANIqFkEIwCSU178miU=; b=Aqimachm2mnunV38ITmdMcl5Ze
 4ZWtzXGGQ6QWOFvYJ69m4ZPIOfi5+iOew2Ieb+0T6D4xQb69iXYQVqKmTxBz/wpDEli1QeRdgEbDa
 r9ioNImyKfd/5g0OmoMf8AjETj4uC4nEbSTmc5yGBUvwNaIP+GTsZcixCkowgT171btY=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hLaCT-003ArD-E9
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Apr 2019 21:22:07 +0000
Received: by mail-wr1-f52.google.com with SMTP id k16so22658018wrn.5
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 30 Apr 2019 14:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B1JL1E6K3cOvm8KQZIj8gPU2CANIqFkEIwCSU178miU=;
 b=A/cNgeadPf4lYq+InxqIBOOPYzpBml4Swd0gUTFiWdkpX4T1mjQNfbFe9IcXxf5TSp
 glnVK1870rXfWuGMPUehbvXnpZ3h4v3NpcCns1oTQ8a7zbvowhaIWwKkUuN1p2MMlskk
 1i3xv5wShdaILN2NXQYRPk1W8V3NwxMZJiZU3dWhykcUKM/PBM11Jv4x/s5YWW2SKHL6
 wEQInc1+oric0vopW/J1eVi5ovsTHWh44dprp4Xm6SEAPfuo+3bykKCDqugQhTbVRT/h
 qNIXxbcjwhAWR2ru4ezrLF7qeNaqeKbzT4IK2mZXbq/yCFAo7J/G2DyhAzDj1EYs96Rl
 CQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B1JL1E6K3cOvm8KQZIj8gPU2CANIqFkEIwCSU178miU=;
 b=DMs4fEMcutAYJk+dTOW6B0joB2oVHks9mrrWK6k5DlbFhT3975FOk3/kLvbT++fmwj
 /TghymMfmjQ4HSN0ECAIeHAPAordwYbySNkDNTBfoN/iWAs4SV25iJgeGWftXGbXDHJE
 9vDr07tYad0LV1DUzWUl7toBz+uV8QxBYKz7kD53vC94LZeqcUHCIaypRjtXk+nZ0UIi
 060jV3iLerT2gqDQSHdnOKOzzIZa+WpOUuRuy2gwUoGSGCn8hih1uPlgO/A7lNEd5ui7
 TUjrUzWy3r7RvNgwEPvv+1JwXZ19Ka4KpXmyOOqpLsthTetRruvwdQ+pkfnPH+9n8xLr
 Va8Q==
X-Gm-Message-State: APjAAAX+WIo7cgvA3zL9WiWcMWXbAwRYT7qzZju4LAy3r4e+m6J2lM+I
 vb7cG7NRFY/baFWLnshMwXCLvP7PTdznCp9tQxRcykfm
X-Google-Smtp-Source: APXvYqy6PJFNC8bVm/uZh1MdrgtSApK4hgzomq6LoiHSEyCbkdbRs2uvgg954E7CChAsYeewJwhcpF57p13/kQHnj+w=
X-Received: by 2002:a5d:4852:: with SMTP id n18mr8479781wrs.304.1556659318852; 
 Tue, 30 Apr 2019 14:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANFCsz-NYjrSc1CVJ+xJm_sVB1K+tDrL-fuFpr568Y-DgtcKxA@mail.gmail.com>
 <BL0PR1501MB20030CBC5E13AE5F9C6602B99A3A0@BL0PR1501MB2003.namprd15.prod.outlook.com>
In-Reply-To: <BL0PR1501MB20030CBC5E13AE5F9C6602B99A3A0@BL0PR1501MB2003.namprd15.prod.outlook.com>
From: Erik Hugne <erik.hugne@gmail.com>
Date: Tue, 30 Apr 2019 17:21:47 -0400
Message-ID: <CAMXR+-TddRHQL=+tJBYuzBhcaWS3H8CURA_fYcc97VvMUO5-MA@mail.gmail.com>
To: Jon Maloy <jon.maloy@ericsson.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (erik.hugne[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: landley.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hLaCT-003ArD-E9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Using TIPC protocol for ZeroMQ bindings,
 in Clojure CLR
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
Cc: Ivan Serdyuk <local.tourist.kiev@gmail.com>,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Q2hlY2sgb3V0OgpodHRwOi8vaGludGplbnMuY29tL2Jsb2c6NzAKCi8vRQoKCk9uIFR1ZSwgMzAg
QXByIDIwMTksIDEwOjU5IEpvbiBNYWxveSwgPGpvbi5tYWxveUBlcmljc3Nvbi5jb20+IHdyb3Rl
OgoKPiBIaSBJdmFuLAo+Cj4gQXNhIG1hdHRlciBvZiBmYWN0LCBUSVBDIGlzIGFscmVhZHkgc3Vw
cG9ydGVkIGJ5IFplcm9NUS4gVGhpcyB3YXMgZG9uZSBieQo+IEVyaWsgSHVnbmUgd2hlbiBoZSB3
YXMgd29ya2luZyBhdCBFcmljc3NvbiBhIGZldyB5ZWFycyBiYWNrLgo+Cj4gQXMgSSB1bmRlcnN0
YW5kIGl0LCB0aGUgc3VwcG9ydCBpcyBzb21ld2hhdCBsaW1pdGVkLCBhbmQgZG9lcyBub3QgY29t
cHJpc2UKPiBhbGwgZmVhdHVyZSBvZiBUSVBDLCBidXQgSSBkb27igJl0IGtub3cgdGhlIGRldGFp
bHMuCj4KPiBJIGNjIEVyaWssIGFuZCB0cnVzdCBoZSBjYW4gZ2l2ZSB5b3UgIG1vcmUgcmVsZXZh
bnQgaW5mb3JtYXRpb24gcmVnYXJkaW5nCj4gdGhpcywKPgo+Cj4KPiBCUgo+Cj4gLy8vam9uCj4K
Pgo+Cj4KPgo+ICpGcm9tOiogSXZhbiBTZXJkeXVrIDxsb2NhbC50b3VyaXN0LmtpZXZAZ21haWwu
Y29tPgo+ICpTZW50OiogMjgtQXByLTE5IDE2OjI4Cj4gKlRvOiogSm9uIE1hbG95IDxqb24ubWFs
b3lAZXJpY3Nzb24uY29tPgo+ICpTdWJqZWN0OiogVXNpbmcgVElQQyBwcm90b2NvbCBmb3IgWmVy
b01RIGJpbmRpbmdzLCBpbiBDbG9qdXJlIENMUgo+Cj4KPgo+IEpvbiwgY2FuIHlvdSBhc3Npc3Qg
KGFuZCBmaW5kIGFueSBtb3RpdmF0ZWQgY29sbGVnZXMsIGF0IEVyaWNzc29uIGFuZC9vcgo+IDNy
ZCBwYXJ0eSBlbmQtdXNlciBjb21wYW55KSB3aXRoIGltcGxlbWVudGluZyBzdXBwb3J0IGZvciB0
aGUgcHJvdG9jb2wgZm9yCj4gdGhlIFplcm9NUSBiaW5kaW5nPwo+Cj4KPgo+IFlvdSBoYXZlIGJl
ZW4gbWVudGlvbmVkIGhlcmUKPiBodHRwczovL3d3dy5sYW5kbGV5Lm5ldC9rZG9jcy9vbHMvMjAw
NC9vbHMyMDA0djItcGFnZXMtNjEtNzAucGRmCj4gPGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5j
b20vdXJsP2s9MzMxNjJjYjctNmY5ZDI3YTgtMzMxNjZjMmMtODYwNzRjODA1MjFjLTlhMTFhODNj
YWUyMWY2NGEmdT1odHRwczovL3d3dy5sYW5kbGV5Lm5ldC9rZG9jcy9vbHMvMjAwNC9vbHMyMDA0
djItcGFnZXMtNjEtNzAucGRmPiAtCj4gc28gSSB0aG91Z2h0IHRoYXQgSSBzaG91bGQgcGluZyB0
aGUgb3JpZ2luYWwgYXV0aG9ycyBvZiB0aGUgc3BlYyBhbmQgdGhlCj4gaW1wbGVtZW50YXRpb25z
LiBJIGFtIHVuc3VyZSB3aGF0IHdhcyB0aGUgYmFja2dyb3VuZCBmb3IgdGhlIFplcm9NUQo+IHBy
b2plY3QuIE9ubHkgbGVhc3Qgb2YgdGhlIGJpbmRpbmdzIGFyZSBzdXBwb3J0ZWQgKHRoZXJlIGFy
ZSB2YXJpb3VzIG9uZXMsCj4gZm9yIHZhcmlvdXMgcHJvZ3JhbW1pbmcgbGFuZ3VhZ2VzKSBhbmQg
dGhleSBhcmUgbW9zdGx5IGNvdmVyaW5nIFRDUCBvciBJUEMKPiB0cmFuc3BvcnRzLgo+Cj4KPgo+
IGh0dHBzOi8vZ2l0aHViLmNvbS9jbG9qdXJlL2Nsb2p1cmUtY2xyCj4gPGh0dHBzOi8vcHJvdGVj
dDIuZmlyZWV5ZS5jb20vdXJsP2s9ZjY2OTE1YTgtYWFlMjFlYjctZjY2OTU1MzMtODYwNzRjODA1
MjFjLTM3ZDM4MzQyYTVkNWQyYzQmdT1odHRwczovL2dpdGh1Yi5jb20vY2xvanVyZS9jbG9qdXJl
LWNscj4KPiAtIHRoZSBjb21waWxlciBpcyBiYXNlZCBvbiB0aGUgRExSLiBJdCBpcyBvbmUgb2Yg
dHdvIGxhbmd1YWdlCj4gaW1wbGVtZW50YXRpb25zICh0aGUgb3RoZXIgb25lIGlzIElyb25QeXRo
b24pIHdoaWNoIGVuZm9yY2UgYW4gaW1wcm92ZW1lbnQKPiBvZiB0aGUgc2NyaXB0aW5nIGxhbmd1
YWdlIHJ1bnRpbWUsIGZvciB0aGUgQ0xSLiBFdmVuIFBvd2Vyc2hlbGwgaXMgZG9lcyBub3QKPiBy
ZWx5IG9uIHRoZSBibGVlZGluZyBlZGdlIHZlcnNpb24uIEN1cnJlbnRseSBsb29raW5nIGZvcndh
cmQgdG8gbW92ZSB0bwo+IC5ORVQgQ29yZSAzLjAgYW5kIHdvcmsgb24gdGhlIE1vbm8ncyB2ZWN0
b3IuIERhdmlkIE1pbGxlciBpcyB0aGUgYXJjaGl0ZWN0Lgo+Cj4KPgo+IFNvIHRvIG1ha2UgdGhl
IGxhbmd1YWdlIHVzYWJsZSBmb3IgdmFyaW91cyBkZXZlbG9wZXJzIGFuZCBjb21tZXJjaWFsCj4g
ZG9tYWlucyB3ZSByZXF1aXJlIGEgZ29vZCBlY29zeXN0ZW0gd2l0aCBsaWJzIGFuZCBmcmFtZXdv
cmtzLiBQbHVzIHRoZXJlCj4gYXJlIHZhcmlvdXMgZGVzaWduIGFwcHJvYWNoZXMvYXJjaGl0ZWN0
dXJlcyBsaWtlIG1vbm9saXRoLCBtaWNyby1zZXJ2aWNlcwo+IGFuZCBzZXJ2ZXJsZXNzLiBTbyBm
b3IgaW50ZWdyYXRpbmcgbW9ub2xpdGgsIGludGVyYWN0aW9uIGJldHdlZW4KPiBtaWNyby1zZXJ2
aWNlcyAoYW5kIGh5YnJpZCBpbnRlZ3JhdGlvbnMsIG9mIHNvbWUga2luZCwgdmlhIHNvbWUgbWlk
ZGxld2FyZSkKPiAtIHdlIHdvdWxkIHJlcXVpcmUgWmVyb01RLiBJbiB0aGUgc2FtZSB0aW1lIC0g
aXQgaXMgdGhlIG9ubHkgbG93LWxhdGVuY3kKPiBvcHRpb24gZm9yIGludGVyYWN0aW9uIG9mIHZp
cnR1YWxpemVkIGFwcHMgYW5kL29yIHNlcnZpY2VzICh3aGV0aGVyIHRoYXQgaXMKPiBhIHByb2Nl
c3MgbGV2ZWwgdmlydC4vY29udGFpbmVycyBvciBPUyBsZXZlbCB2aXJ0LikuIFNvIHRoYXQgd291
bGQgYWxsb3cgdG8KPiBpbXByb3ZlIHRoZSBjb21waWxlciBvZiB0aGUgcHJvZ3JhbW1pbmcgbGFu
Z3VhZ2UgaXRzZWxmIGFuZCBkZWZpbmUgYQo+IHJvYWRtYXAsIHNvIHRoZSBwcm9qZWN0IHdvdWxk
IGhhdmUgZnV0dXJlLgo+Cj4KPgo+IEl2YW4KPgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
