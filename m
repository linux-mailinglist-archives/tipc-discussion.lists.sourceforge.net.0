Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D41C54E53A
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 16:44:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1qjP-0000Df-VO; Thu, 16 Jun 2022 14:44:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o1qjP-0000DZ-6Z
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7cw2F7aR4uhD9JONxBznNz1xUwXcu3G1LSGgkuUOHp0=; b=lBFBlcGrKylVRKy4hx1Ucr9dxv
 U/RfuDqYYNaZGkHYIs450xUsnKIxhdifkDkiA99mZMaN4buXLjaJ0KRhGU92I0t/Ai5RB+r9XfBUY
 fytvPXnlMUNWNfxqR3XDvNRQ+cHUxH4W51pVIGB27SP3MCJg/AejpJOdo1tsN1f1N/EU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7cw2F7aR4uhD9JONxBznNz1xUwXcu3G1LSGgkuUOHp0=; b=V1y6vtDl/PBvr26yKHDHbxVDjE
 Ih1yUyHdNp0A8ZEz2+ZsrwyEsMn4l8CIRxnuV2bWDy5I/PEU3kW0R3zHmbKkjgrbwoHJC7rRFg6ib
 YFxKLSgMR2AydOiqBkqq2dXP8J1H/jt3BF57t8HtOVwaxbna8YsxzfAwIvbiw+PDZ/rw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1qjK-004ENz-3b
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655390652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7cw2F7aR4uhD9JONxBznNz1xUwXcu3G1LSGgkuUOHp0=;
 b=hKaxD1bkQW86/6AycnpYD/Pj2DFUUT312nFFsQXr+cE9FdmdUM61XsgpaHxuGbyuwF8rGR
 Usv9iSqw71k6ISrT5Nslj6+LoHqpzh4G+6FAPwroTh4WOXutp0WZ4kSXzXmWUua8vZ1o4r
 xYchaAl0DJQo6TFhFnVzAixBbQfjqsc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-I89RUipIPyyARw_XUEC2cQ-1; Thu, 16 Jun 2022 10:44:10 -0400
X-MC-Unique: I89RUipIPyyARw_XUEC2cQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 x17-20020a0cfe11000000b004645917e45cso1827883qvr.4
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 16 Jun 2022 07:44:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7cw2F7aR4uhD9JONxBznNz1xUwXcu3G1LSGgkuUOHp0=;
 b=Vlc7RRx41bNVF+lgFV5AtxLkeTzP2y1u5xeMhtX27CyJRbWli6qg+tCWiWp7ROGDU6
 mwkFfkt9tTyUeprqBZKNGHzHCDw00s21XfrPZcSDYOITt9fzynoKM35hoXGusr7fSBe+
 kVIqthd8xMRJtETW1Q0ZPfW13e7YU27lDu2BoOsvsGD29FRfDanepn7U5Bu+g2EUt9p3
 xakBlrb6X5PJEFDcN8vfY5JAnpkICxCmENfZeeaj17lp+ZwU4IOf4CXG4j0zFxqc/7VK
 USzBnjNNBGk/u+d2pvIngZejI42bLQKWvUdizNkd5/6xzbdykeHzsKbP782oINMBKm6u
 KEag==
X-Gm-Message-State: AJIora/mlCNiTJyVSqtK4KvWf0lthK/rrHEvyUC/gW4tbt7qrvN25eJH
 9VeKKsqCWza3O3ColN4N3Fn8YJ6KHk1goBMxdWLPvj1Otbd9JIWVPhp/ejNxj1/NntzZ3/cP4Yf
 BwZw5dEinxZ/IiaJvqoK2clFweeo6rRhowWzt
X-Received: by 2002:ad4:5ceb:0:b0:464:55fd:deae with SMTP id
 iv11-20020ad45ceb000000b0046455fddeaemr4353736qvb.46.1655390650120; 
 Thu, 16 Jun 2022 07:44:10 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1soKzIl94ptdFU3hAuxJ9Mm4Y5H9OdFJkMrXGLxjehp3s7Qa6IGfm0r37mlOWsON09OaoI7uA==
X-Received: by 2002:ad4:5ceb:0:b0:464:55fd:deae with SMTP id
 iv11-20020ad45ceb000000b0046455fddeaemr4353721qvb.46.1655390649854; 
 Thu, 16 Jun 2022 07:44:09 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 a20-20020ac87214000000b0030509143423sm1794750qtp.69.2022.06.16.07.44.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jun 2022 07:44:09 -0700 (PDT)
Message-ID: <b79018f0-9ae4-9bf4-5c5f-743459a7759f@redhat.com>
Date: Thu, 16 Jun 2022 10:44:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 =?UTF-8?Q?R=c3=b8ysland=2c_Jonas_Gjendem?=
 <JonasGjendem.Roysland@carrier.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <SJ0PR06MB85628DA3C47DA6D9DC6093EDE4AA9@SJ0PR06MB8562.namprd06.prod.outlook.com>
 <DB9PR05MB764130C46AAC9F3AEF7DCEA5F1AD9@DB9PR05MB7641.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <DB9PR05MB764130C46AAC9F3AEF7DCEA5F1AD9@DB9PR05MB7641.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 There are som drawings in the protocol spec too:
 http://tipc.io/protocol.html#anchor53
 Some of the info in this spec is obsolete, but this one is still correct.
 Med vennlig hilsen ///jon 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: tipc.io]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1qjK-004ENz-3b
Subject: Re: [tipc-discussion] TIPC Communication
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

SGksClRoZXJlIGFyZSBzb20gZHJhd2luZ3MgaW4gdGhlIHByb3RvY29sIHNwZWMgdG9vOgpodHRw
Oi8vdGlwYy5pby9wcm90b2NvbC5odG1sI2FuY2hvcjUzCgpTb21lIG9mIHRoZSBpbmZvIGluIHRo
aXMgc3BlYyBpcyBvYnNvbGV0ZSwgYnV0IHRoaXMgb25lIGlzIHN0aWxsIGNvcnJlY3QuCgpNZWQg
dmVubmxpZyBoaWxzZW4KLy8vam9uCgoKT24gNi8xNS8yMiAwNDoxMCwgSG9hbmcgSHV1IExlIHdy
b3RlOgo+IEhpLAo+Cj4gUGxlYXNlIHRha2UgYW4gZXhhbXBsZSBhdDoKPiBodHRwczovL3NvdXJj
ZWZvcmdlLm5ldC9wL3RpcGMvdGlwY3V0aWxzL2NpL21hc3Rlci90cmVlL2RlbW9zL2Nvbm5lY3Rp
b25fZGVtby8KPgo+IFJlZ2FyZHMsCj4gSG9hbmcKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPj4gRnJvbTogUsO4eXNsYW5kLCBKb25hcyBHamVuZGVtIHZpYSB0aXBjLWRpc2N1c3Npb24g
PHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+Cj4+IFNlbnQ6IFR1ZXNkYXks
IEp1bmUgMTQsIDIwMjIgODoyMiBQTQo+PiBUbzogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldAo+PiBTdWJqZWN0OiBbdGlwYy1kaXNjdXNzaW9uXSBUSVBDIENvbW11bmljYXRp
b24KPj4KPj4gSGV5LAo+Pgo+PiBXZSBhcmUgc29tZSBzdW1tZXIgc3R1ZGVudHMgdGhhdCBhcmUg
d29ya2luZyB3aXRoIHRoZSBUSVBDIHByb3RvY29sIGZvciBhIHByb2plY3QuIFdlIGxpa2UgdG8g
bWFrZSBhIHNlcXVlbmNlIGRpYWdyYW0gb2YgVElQQyB0bwo+PiBiZXR0ZXIgdW5kZXJzdGFuZCBo
b3cgdGhlIHByb3RvY29sIGNvbW11bmljYXRlIGZyb20gdGhlIGNsaWVudCB0byB0aGUgc2VydmVy
LiBMaWtlIGluIFRDUCBpdCBpcyB1c2luZyAzLXdheSBoYW5kc2hha2UgdG8KPj4gY29tbXVuaWNh
dGUgYmVmb3JlIHNlbmRpbmcgZGF0YSBmcm9tIG9uZSBhbm90aGVyLiBXZSByZWFsbHkgYXBwcmVj
aWV0ZSB0aGUgaGVscCB3ZSBjb3VsZCBnZXQgdG8gYmV0dGVyIHVuZGVyc3RhbmQgdGhlIHByb3Rv
Y29sLgo+Pgo+PiBTaW5jZXJseSwKPj4KPj4gSm9uYXMgR2plbmRlbSBSw7h5c2xhbmQKPj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gdGlwYy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+PiB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cj4+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rp
cGMtZGlzY3Vzc2lvbgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4gdGlwYy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
