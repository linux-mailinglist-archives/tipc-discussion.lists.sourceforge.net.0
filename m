Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B63A103B
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Jun 2021 12:48:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lqvkd-0000T4-Bv; Wed, 09 Jun 2021 10:47:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lqvka-0000Sr-1Z
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Jun 2021 10:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l4wI9TUgwebBtcJu8KunXfdxhxFN31VCnuQ/kJr2Jiw=; b=ZT1JA/3UY4S32kEqI+7BmsA3Dy
 I4IV6v0s9iFTePIgKAryFAaBS2PccYp8m4J1dDCqQa+FRGXQ+t5LqP0GgwPB96hTGPzV1A1dT9CA/
 AERSAdNhEIUTQFpiWpzhlzleI0zUIWhZB7r+Y5829gdQCLxgoEpwYIGzoQKReMKI3fGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l4wI9TUgwebBtcJu8KunXfdxhxFN31VCnuQ/kJr2Jiw=; b=Lmz0Rhd4I9o+lnjjUsxNLAfOV2
 7o1ZAZalnEfJEqu+cs0iaPL33cj8LZuBrEE5hZPUTA0LRIfbUoBmcqjQXIjK8LfCfh4FN10Xr8o2G
 SDShQ45a9bPkrHoE3tiNDLFialXIBUR700lxk9hq/bHqIs/izOqwnrrsnDDzpspI5xZE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqvkO-0021WJ-Rt
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Jun 2021 10:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623235658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l4wI9TUgwebBtcJu8KunXfdxhxFN31VCnuQ/kJr2Jiw=;
 b=Wib0x6WGPsVO/3Tse/rCK6yXpvYJLR111hYSlejoANjaSskJFNRFqM4JPvciPNFtazkWyP
 zstvHmriWwamRjk4cNw4VEC4fmILO7diE6ZG8Ccc2+FYAH4KSqdF48I9babsdLRjKpfsJP
 TTzqDQErt1gn4llMG0svLRiNXvnWRRM=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-lPmxLwJMNa2xdyK1atmeAA-1; Wed, 09 Jun 2021 06:47:34 -0400
X-MC-Unique: lPmxLwJMNa2xdyK1atmeAA-1
Received: by mail-qt1-f198.google.com with SMTP id
 d12-20020ac8668c0000b0290246e35b30f8so4940992qtp.21
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 09 Jun 2021 03:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=l4wI9TUgwebBtcJu8KunXfdxhxFN31VCnuQ/kJr2Jiw=;
 b=hBPL2jajlsXLiErDyxGCPn6FZ6loiRkTFaPOULfmCiJj9H2M0u+FfwOgmyZU4euana
 z4p+KfOhQPt2csfQHZbOHJAo6DtAqCis7tMKteVmt9pJ60zCsYNPvLvNn2dIAFlMcDDO
 pSevYkurnshzz8JOpj2eyqqyWclxQOlsUOxMsosXB/2t2NHHaeUISRxxnLZnQamlw9z2
 FUrj10Qq1+VFDSHmZDpElEbRb0Grn76fT8YjxQ/nBfugRCMoYreyYJ/rYo6fRnf/3GW7
 oYTiZaUBV7NFHDTGuQY5N66KYqFD3Ao0xYxapcg0T9ATSG2GQSTgT/EgR5NOThxFBg5u
 CDKQ==
X-Gm-Message-State: AOAM533kkrh5AXNgQiQQ6b/4uLuSecMRw6n+VzBBG8LdBCWpkxsRwoFN
 eHPUSXHe43fMUBkceQe2V/O0VOFZAuFRhnGGcBR98qCJSS6m19Q68Gpph18qW+a/uuLqXzK8lHg
 DUaZn3a2C8vRQeiwKYT0/c4eW6Mwa/bF4msIw
X-Received: by 2002:a0c:83e1:: with SMTP id k88mr5187182qva.40.1623235654157; 
 Wed, 09 Jun 2021 03:47:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxyuPdC4YjpCJVo0T592xKUQnvy9FswLTlTEEIRBoGnM06yco8eLchZ9Yx0UBzn05zFEI47w==
X-Received: by 2002:a0c:83e1:: with SMTP id k88mr5187170qva.40.1623235653946; 
 Wed, 09 Jun 2021 03:47:33 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id h6sm3665234qta.65.2021.06.09.03.47.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Jun 2021 03:47:33 -0700 (PDT)
To: menglong8.dong@gmail.com
References: <20210609103251.534270-1-dong.menglong@zte.com.cn>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <672e78df-5bb0-78eb-3022-f942978138f5@redhat.com>
Date: Wed, 9 Jun 2021 06:47:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609103251.534270-1-dong.menglong@zte.com.cn>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lqvkO-0021WJ-Rt
Subject: Re: [tipc-discussion] [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU
 eat two pages and do some code cleanup
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
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA2LzkvMjEgNjozMiBBTSwgbWVuZ2xvbmc4LmRvbmdAZ21haWwuY29tIHdyb3RlOgo+IEZy
b206IE1lbmdsb25nIERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbj4KPgo+IEluIHRoZSBm
aXJzdCBwYXRjaCwgRkJfTVRVIGlzIHJlZGVmaW5lZCB0byBtYWtlIHN1cmUgZGF0YSBzaXplIHdp
bGwgbm90Cj4gZXhjZWVkIFBBR0VfU0laRS4gQmVzaWRlcywgSSByZW1vdmVkIHRoZSBhbGlnbm1l
bnQgZm9yIGJ1Zl9zaXplIGluCj4gdGlwY19idWZfYWNxdWlyZSwgYmVjYXVzZSBza2JfYWxsb2Nf
ZmNsb25lIHdpbGwgZG8gdGhlIGFsaWdubWVudCBqb2IuCj4KPiBJbiB0aGUgc2Vjb25kIHBhdGNo
LCBJIHJlbW92ZWQgYWxpZ24oKSBpbiBtc2cuYyBhbmQgcmVwbGFjZSBpdCB3aXRoCj4gQUxJR04o
KS4KPgo+Cj4KPgo+IE1lbmdsb25nIERvbmcgKDIpOgo+ICAgIG5ldDogdGlwYzogZml4IEZCX01U
VSBlYXQgdHdvIHBhZ2VzCj4gICAgbmV0OiB0aXBjOiByZXBsYWNlIGFsaWduKCkgd2l0aCBBTElH
TiBpbiBtc2cuYwo+Cj4gICBuZXQvdGlwYy9iY2FzdC5jIHwgIDIgKy0KPiAgIG5ldC90aXBjL21z
Zy5jICAgfCAzMSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gICBuZXQvdGlwYy9t
c2cuaCAgIHwgIDMgKystCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE5
IGRlbGV0aW9ucygtKQo+Ck5BQ0suCllvdSBtdXN0IGhhdmUgbWlzc2VkIG15IGxhc3QgbWFpbCBi
ZWZvcmUgeW91IHNlbnQgb3V0IHRoaXMuwqAgV2UgaGF2ZSB0byAKZGVmaW5lIGEgc2VwYXJhdGUg
bWFjcm8gZm9yIGJjYXN0LmMsIHNpbmNlIHRob3NlIGJ1ZmZlcnMgc29tZXRpbWVzIHdpbGwgCm5l
ZWQgZW5jcnlwdGlvbi4KU29ycnkgZm9yIHRoZSBjb25mdXNpb24uCi8vL2pvbgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24g
bWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
