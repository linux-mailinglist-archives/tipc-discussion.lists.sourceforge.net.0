Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6D3A0703
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Jun 2021 00:38:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lqkMA-0007ft-Af; Tue, 08 Jun 2021 22:37:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lqkM8-0007fi-07
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Jun 2021 22:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ZbqZA/8gJY2hDLGy844pJ9jlRQOVxQQ+Lr9OCxPWbQ=; b=ClguhryiSCMxxY66Dh6PQVra0u
 tQEGUlgara98eOrg0fri5FNuvjE9AAaWFqqaxSpsNND4Z+mmMrrx+iO7NU8HL9PnmSjO8j86xxhFx
 iYoqr7V8ev10cbygWh+66JmQ2ccCloFeV+KeHctiaX54JFAO+0wNdsCuxHOObHQ+0R2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0ZbqZA/8gJY2hDLGy844pJ9jlRQOVxQQ+Lr9OCxPWbQ=; b=b4T0xzAdBr3M1324FpxktTZ+ZT
 9jU9THC2xs5+Cm5XkdWDQ1Ad/KCTlIkmGX0H0xfhXZk1w3/0RKcsRvPlzm4MN9Nl22d1Zfo15DM6X
 QmacBRsShVuRuWdSNjaWX0/zhN2VdE2yC9xnfa+N/lfQbisOs1WErrvSt102bkNo6LvY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqkM3-001Qgp-1A
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Jun 2021 22:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623191865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0ZbqZA/8gJY2hDLGy844pJ9jlRQOVxQQ+Lr9OCxPWbQ=;
 b=XK33hyY8VhQg5UveDu/xm7AJQKPcSste2Y36+vfeS6klnKgizzrm0PByQYmtZ7bpNNQw+N
 Qal5G18+Y9yZf3kThPpMni3gAafLmKLsY+zMWW7yFHvMBcarVe3WnQ1OjsXvBCwkxOTaGk
 +C40YkE7KrwPZL10ce1jjUevSSAdQVg=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-OEfBdFDNNNq_EIzSVOngOg-1; Tue, 08 Jun 2021 18:37:41 -0400
X-MC-Unique: OEfBdFDNNNq_EIzSVOngOg-1
Received: by mail-qt1-f199.google.com with SMTP id
 f17-20020ac87f110000b02901e117339ea7so10201025qtk.16
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 08 Jun 2021 15:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=0ZbqZA/8gJY2hDLGy844pJ9jlRQOVxQQ+Lr9OCxPWbQ=;
 b=h3tGjjKiKdi+S/E2LnUbitSFP/DVLPwVV0fdHr9otLU9/3t05J5Eso5xKpRgjSpEwI
 x0bkhE+piCA1sUJ1S8JWD+wgPhT1OaMydY/iMn1gTPtFnqWgt9Nx8G4MKOUH1RFadyGA
 DmIGAVaOdCefyOxLCjhbPfR9MMs99g4fWQGzi7Jwetf3QXgakbGKshGx07A/UjZpA1Ip
 uq4UY/+5I+b1Dx96hFdNrFTzAQ8oocX4+yaAIczrdf+8Aa98WgwilJxZvtOkhe3zlu8I
 RX4/1gvXLeNeU/OFDbgkCljcMkOOuDWULDSZmmHBVmgfkCmDYL1GU7jNHO1L0CNUWOQz
 809g==
X-Gm-Message-State: AOAM5310augENl6dGp6Nfc1wzkvCbVK5vUQLzSywM2gB99YHeQp0yxnQ
 w5a+juHUrgChvl0+iSxFblqc4n0blY+cj4Uj9zpnz/c83RNmtEvrkUBeKUbZOL6TrvlSFCC43ha
 /4RILwc//z+7LF3Qi01WvFegetgMPGRVYXnGq
X-Received: by 2002:a0c:e047:: with SMTP id y7mr2763919qvk.46.1623191861238;
 Tue, 08 Jun 2021 15:37:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzN3+8jezv+uBmSCAiZeWBmG/9g55nu0g8Xgb648WprNmsOozNnN12ovngdJP8/5aogFVeXsQ==
X-Received: by 2002:a0c:e047:: with SMTP id y7mr2763897qvk.46.1623191860991;
 Tue, 08 Jun 2021 15:37:40 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id u26sm11513815qtf.24.2021.06.08.15.37.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 15:37:40 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <20210604074419.53956-1-dong.menglong@zte.com.cn>
 <e997a058-9f6e-86a0-8591-56b0b89441aa@redhat.com>
 <CADxym3ZostCAY0GwUpTxEHcOPyOj5Lmv4F7xP-Q4=AEAVaEAxw@mail.gmail.com>
 <998cce2c-b18d-59c1-df64-fc62856c63a1@redhat.com> <20210607125120.GA4262@www>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <46d2a694-6a85-0f8e-4156-9bb1c4dbdb69@redhat.com>
Date: Tue, 8 Jun 2021 18:37:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210607125120.GA4262@www>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1lqkM3-001Qgp-1A
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: fix FB_MTU eat
 two pages
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
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev <netdev@vger.kernel.org>,
 Zeal Robot <zealci@zte.com.cn>, LKML <linux-kernel@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/7/21 8:51 AM, Menglong Dong wrote:
> On Sat, Jun 05, 2021 at 10:25:53AM -0400, Jon Maloy wrote:
>>
>> On 6/4/21 9:28 PM, Menglong Dong wrote:
>>> Hello Maloy,
>>>
>>> On Sat, Jun 5, 2021 at 3:20 AM Jon Maloy <jmaloy@redhat.com> wrote:

>>>> [...]
>>>
>>> So if I use the non-crypto version, the size allocated will be:
>>>
>>>    PAGE_SIZE - BUF_HEADROOM_non-crypto - BUF_TAILROOM_non-crypt +
>>>      BUF_HEADROOM_crypto + BUF_TAILROOM_crypto
>>>
>>> which is larger than PAGE_SIZE.
>>>
>>> So, I think the simple way is to define FB_MTU in 'crypto.h'. Is this
>>> acceptable?
>>>
>>> Thanks!
>>> Menglong Dong
>>>

I spent a little more time looking into this. I think the best we can do 
is to keep FB_MTU internal to msg.c, and then add an outline function to 
msg.c that can be used by bcast.c. The way it is used is never time 
critical.

I also see that we could need a little cleanup around this. There is a 
redundant align() function that should be removed and replaced with the 
global ALIGN() macro.
Even tipc_buf_acquire() should use this macro instead of the explicit 
method that is used now.
In general, I stongly dislike conditional code, and it is not necessary 
in this function. If we redefine the non-crypto BUF_TAILROOM to 0 
instead of 16 (it is not used anywhere else) we could get rid of this too.

But I leave that to you. If you only fix the FB_MTU macro I am content.

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
