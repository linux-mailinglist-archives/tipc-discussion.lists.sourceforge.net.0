Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5F565A71
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Jul 2022 17:54:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o8OPO-0000qI-Rw; Mon, 04 Jul 2022 15:54:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o8OPN-0000qB-6r
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 15:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6YxyoSvZu77nqOnnGHo/e4m1b++6wNfjtaLQMaNz4iI=; b=j/fiVw9gt3KdX5E5Duxl/rELRU
 MW1iXxibkhKt2Z/1z837hmUyuIafwzzII2mdrnT0u/EIhq44wvK7OGDNBNCT3JAglM44HsKR3xt7I
 g0vLD4fiRLJ0m5yf6267jeWGkMRBbGqxRH+Z2tScqyz4Q6bCYZZzWXwv6W8IUoCckJ7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6YxyoSvZu77nqOnnGHo/e4m1b++6wNfjtaLQMaNz4iI=; b=XvhjMBMHtWy59lG9Cdf2ozILba
 p2qHNYsr2oZ0CMgB6ym0cEpyCAWTkecdyE688/R8oQilG6JqhZYIk0KepoyHLVPCar28nLg3SXEpr
 744Kglyd1dDVL1nI1ypZB+GNST5P1CmkWElT1wO1y/vTYRry8LH6BWOYPpdEvuBOwtME=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8OPJ-0005og-Oi
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 15:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656950075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6YxyoSvZu77nqOnnGHo/e4m1b++6wNfjtaLQMaNz4iI=;
 b=EmIgAASRVqa4sCLKahzki94BbyZFmyALAHt+hSh/BN/yovhuUnM+FzYwf/lN4CpIfXC0PW
 6jaF5No5LXKkmVpGwin3xmuf78OhqBZywJxdB0U9LNRzhFz58DvVeJgsEbSC8Gi9P3OUPp
 lNXs5LIdy9PttF4+ebR7ngVMZsWyeeg=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573-tufara57NhGfbnS_LEaqow-1; Mon, 04 Jul 2022 11:54:34 -0400
X-MC-Unique: tufara57NhGfbnS_LEaqow-1
Received: by mail-qk1-f198.google.com with SMTP id
 e128-20020a376986000000b006af6adf035cso8987438qkc.8
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 04 Jul 2022 08:54:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6YxyoSvZu77nqOnnGHo/e4m1b++6wNfjtaLQMaNz4iI=;
 b=QDcx2tbzSqiNj93ztZRNICUk2OBAlOtt0/fYo39DNFR5qpE9jCTdMiZ8IDC0U3gDCZ
 F90C7NbCGS08PjsX0s2GqU2jnxcjX3/l95gjMVXDNivsVXQa+zHc41jLfbjcBzpySeZZ
 VxRyFOY2e081N+GzDqL1Tgtlvc8h9CVYKyMiD9hORE+6E13qkt+DqwYQ7L0q4nRc/HLv
 FhHoEqztmL4jXWo2ZGafMrSHhY/f202YuF+LTVZbvmkV4JIq9pUJe4Eor6EbkGwNIAJz
 AuCp1JNJHs2qw7fqESpZjL8qIi7fywvvRtWnDRgM2AyURGAidablkMOwbqfKbQLi8cip
 WffA==
X-Gm-Message-State: AJIora84jRDjqI8cydTodg34Z4BF2Qe97sFOVPJ2nRW396n/CvsYY7td
 HuAKA0HDKVKPa7WHH86ExIsSktwbBBOtMGoMFw7xj5I796K2l/3xsSbnc8zAVrEpq7UR4UHr4Pg
 F4A6HBt1lUaS3XPg5WaCH4xJOqQKU/kuGdWoLPlBblTd21NbIoarlLATR9BKYABgaKulqIsE6Nl
 gv3i/JMjTrkA==
X-Received: by 2002:a05:620a:13a3:b0:6af:a58:c139 with SMTP id
 m3-20020a05620a13a300b006af0a58c139mr20837805qki.751.1656950073765; 
 Mon, 04 Jul 2022 08:54:33 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1scTSG1vMmpIHqREm0ZoUks4gKOqve99pw1czzCr6LAnDGNNjF0mWeYi57Hfwcnuys6pK7M1w==
X-Received: by 2002:a05:620a:13a3:b0:6af:a58:c139 with SMTP id
 m3-20020a05620a13a300b006af0a58c139mr20837790qki.751.1656950073304; 
 Mon, 04 Jul 2022 08:54:33 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 h9-20020ac85149000000b003050bd1f7c9sm21001493qtn.76.2022.07.04.08.54.32
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jul 2022 08:54:32 -0700 (PDT)
Message-ID: <5bfbea2e-12f9-3f47-4af6-65f1f18be930@redhat.com>
Date: Mon, 4 Jul 2022 11:54:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: tipc-discussion@lists.sourceforge.net
References: <505D9657-0C02-45AE-880E-9F7EBEB4FE20@kohlschutter.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <505D9657-0C02-45AE-880E-9F7EBEB4FE20@kohlschutter.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 7/2/22 14:57, Christian Kohlschütter wrote: > Hi all,
   > > I'm the author of junixsocket, an Open-Source Java library that, until
    recently, focused on providing access to Unix domain sockets for Ja [...]
    
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o8OPJ-0005og-Oi
Subject: Re: [tipc-discussion] junixsocket now supports TIPC (Java Socket
 API for TIPC)
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

CgpPbiA3LzIvMjIgMTQ6NTcsIENocmlzdGlhbiBLb2hsc2Now7x0dGVyIHdyb3RlOgo+IEhpIGFs
bCwKPgo+IEknbSB0aGUgYXV0aG9yIG9mIGp1bml4c29ja2V0LCBhbiBPcGVuLVNvdXJjZSBKYXZh
IGxpYnJhcnkgdGhhdCwgdW50aWwgcmVjZW50bHksIGZvY3VzZWQgb24gcHJvdmlkaW5nIGFjY2Vz
cyB0byBVbml4IGRvbWFpbiBzb2NrZXRzIGZvciBKYXZhIDggYW5kIGFib3ZlLgo+Cj4gSXQgaXMg
bXkgZ3JlYXQgZGVsaWdodCB0byBhbm5vdW5jZSB0aGF0IHdpdGggdmVyc2lvbiAyLjUsIGp1bml4
c29ja2V0IGFkZHMgc3VwcG9ydCBmb3IgVElQQy4KPgo+IGp1bml4c29ja2V0IGVuYWJsZXMgZGV2
ZWxvcGVycyB0byBoYXZlIHRoZWlyIGV4aXN0aW5nIGNvZGUgdXNpbmcgU29ja2V0IG9yIFNvY2tl
dENoYW5uZWwgQVBJIG1ha2UgdXNlIG9mIEFGX1RJUEMgc29ja2V0cyB3aXRoIHZlcnkgbGl0dGxl
IG92ZXJoZWFkLiBGb3IgZXhhbXBsZSwgeW91IGNhbiBub3cgcnVuIGEgSmF2YSB3ZWIgc2VydmVy
IG92ZXIgVElQQywgaW4ganVzdCBhIGZldyBsaW5lcyBvZiBjb2RlLgo+Cj4gSXQncyBjbGVhciB0
aGF0IHRoaXMgaXMganVzdCBzY3JhdGNoaW5nIHRoZSBzdXJmYWNlIG9mIHdoYXQncyBwb3NzaWJs
ZS4gUGxlYXNlIGdpdmUganVuaXhzb2NrZXQtdGlwYyBhIHRyeSwgbGV0IG1lIGtub3cgaG93IGl0
IHdvcmtzIGZvciB5b3UsIGFuZCBvZiBjb3Vyc2UsIHNwZWNpZmljYWxseSwgd2hhdCBkb2Vzbid0
Lgo+Cj4gTGFzdGx5LCBsZXQgbWUgZXh0ZW5kIG15IGdyYXRpdHVkZSB0byBhbGwgVElQQyBkZXZl
bG9wZXJzIGZvciB0aGlzIGNvb2wgcHJvdG9jb2wuCj4KPiBCZXN0LAo+IENocmlzdGlhbgpUaGFu
ayB5b3UsIENocmlzdGlhbiwKVGhpcyBsb29rcyByZWFsbHkgY29vbC4gSSBob3BlIGl0IHdpbGwg
aGF2ZSBtYW55IHVzZXJzLgoKLy8vam9uCgo+Cj4ganVuaXhzb2NrZXQgb24gR2l0SHViOiBodHRw
czovL2dpdGh1Yi5jb20va29obHNjaHV0dGVyL2p1bml4c29ja2V0Lwo+IGp1bml4c29ja2V0IGRv
Y3VtZW50YXRpb246IGh0dHBzOi8va29obHNjaHV0dGVyLmdpdGh1Yi5pby9qdW5peHNvY2tldC8K
PiBBUEkgZG9jczogaHR0cHM6Ly9rb2hsc2NodXR0ZXIuZ2l0aHViLmlvL2p1bml4c29ja2V0L2Fw
aWRvY3MvCj4gVElQQyBzcGVjaWZpY3M6IGh0dHBzOi8va29obHNjaHV0dGVyLmdpdGh1Yi5pby9q
dW5peHNvY2tldC9qdW5peHNvY2tldC10aXBjLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
