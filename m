Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CD3405DDC
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Sep 2021 22:04:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mOQHv-0001c0-C8; Thu, 09 Sep 2021 20:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mOQHt-0001bm-SQ
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Sep 2021 20:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/5f0u1BmIn1o6yrusYQJib25VSfehiEO+tM/0SmO99o=; b=Wfo/euITiQEF2PHtc973xOwF61
 elOh5Abp4T4i9o9cI5LRKG3VafBb8O4mxr7x1SLyFuy5YbA3bRhluYSQGIGiaxyUOkaQTHoLH/24r
 /ijjhdk4PYUpmF4Ij4HedkaebxC4HScqOUOhEC4eMaPKTR6YsLlCDSDl5aB5PIefx+J4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/5f0u1BmIn1o6yrusYQJib25VSfehiEO+tM/0SmO99o=; b=DNi3LeRqwP6iYABAC5a5SJ247w
 4Q3jlw1IPkwcTJLHrX/OEnJeJd/snIDDhpyZKJ14wIYkNDLKf6vYNrs0VpUwgUQn2KBCC5sNYp6nH
 zL7aSjsqtlNAFfboGzkO7MumasRGoq7dj8fQ4PpS40lLh+Esqf31otuyvrRunrF5dkSM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOQHq-005FMy-FH
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Sep 2021 20:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631217876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/5f0u1BmIn1o6yrusYQJib25VSfehiEO+tM/0SmO99o=;
 b=WkdhJYE/7lCAkPwTyHWN4J+nw+pCy95QY43LksBBts0DS0wxe/FU3U8Ju8ky7l7MPbnoI4
 CyfcSKNc6EQ0saNgR2EajmQchNFplem+nKe5ueXIZvJZ8PuhMFhH631Ngx2Bw79HP6kVOP
 7D4IV33B52WI02I6ZydS0KI/4RA3mJ0=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-sgrctwngOgunqSYADhK4vA-1; Thu, 09 Sep 2021 16:04:34 -0400
X-MC-Unique: sgrctwngOgunqSYADhK4vA-1
Received: by mail-qk1-f198.google.com with SMTP id
 u19-20020a05620a121300b0042665527c3bso7818524qkj.14
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 09 Sep 2021 13:04:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/5f0u1BmIn1o6yrusYQJib25VSfehiEO+tM/0SmO99o=;
 b=DycYUVenFBapUnKuzwC+F1IS9VHLYh3ukCpoakIvj2B7IZUdY8cIQscuMl1I4g8mcA
 2KKylMseKj9XI8jchvq9d0AhNwOe/6GjBmRcrYFuSUwEPjKBSEsstRAdPUV5lAUBz40/
 EctewDROMNFuYXHXHbhxSiw0Pryiaya9QjQRWP4SMNnkaCv0Dx/CyUnmULeYDQn1N/Jw
 ktFXaVH+UjEeuD9ih8zPYuuE73Mg2THg14BRabhXBEmx5RTodrUqEH4bIqzcokZP1biE
 ty2Q+tWSO1Dc/wJU4ix2OP1WUja4wJ4t8b/YFogwRLmCaq8V2n+05SxF2d1C1WXRb9Q2
 lyfQ==
X-Gm-Message-State: AOAM5333wSaooFiu+GLFZl/UZZ1EVljmqkku9Kx33skrAxeD1FhCT6ka
 HVEmYRuqRF5U68HMjUYmDyCnal4MaO+mONnwtJgRXI4JaiG69IISe1KupDvecGSJwwX/dFRz9KO
 HLnmPZ4xUlCQP1Uw4KfrN9QVwsjwdv3Ncb5A/Ld3yZnbz5bJ/VhqOZzQT1iQAXcU9VmOHsDebbm
 J//aKodB0aTQ==
X-Received: by 2002:ac8:4c89:: with SMTP id j9mr4598436qtv.78.1631217873406;
 Thu, 09 Sep 2021 13:04:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzuRyocWVTkfLKQ79+de89t80gbQKr+PfPqjjk8jsZTVohQ+II/AsBefK+rLUYoojeaFztJjA==
X-Received: by 2002:ac8:4c89:: with SMTP id j9mr4598411qtv.78.1631217873101;
 Thu, 09 Sep 2021 13:04:33 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id e5sm1841362qts.0.2021.09.09.13.04.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Sep 2021 13:04:32 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <cover.1625595705.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <06bf0c78-0635-0c7a-8dc2-f4d179a7933c@redhat.com>
Date: Thu, 9 Sep 2021 16:05:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 06/07/2021 14:22, Xin Long wrote: > This patchset is to
 implement PLPMTUD and GSO for TIPC, > Patch 1-5 are for PLPMTUD while 6-8
 are for GSO. I think this should be posted as two separate series, as they
 really implement two different features. 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOQHq-005FMy-FH
Subject: Re: [tipc-discussion] [PATCH net-next 0/8] tipc: add PLPMTUD probe
 and GSO offload
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 06/07/2021 14:22, Xin Long wrote:
> This patchset is to implement PLPMTUD and GSO for TIPC,
> Patch 1-5 are for PLPMTUD while 6-8 are for GSO.

I think this should be posted as two separate series, as they really 
implement two different features.

The problem I see with this is that you reduce MTU in patch #1, so
performance will suffer until the second series is adapted.

Unless there is a way around this the two series mut at least be
applied within the same release.

Also, if I understand this correctly, PLTMUD will work also for
the Ethernet bearer, so that jumbo frame capability can be detected?
I am uncertain about the value of this, since jumbo frame capability is 
already detected by the endpoint bearers, and I doubt that such frames
ever do more than one intra-subnet hop. But maybe I am wrong here? 
Anyway, this feature cannot do any harm even on Ethernet.

///jon

> 
> It gets some ideas from SCTP as their similarities like
> both are reliable datagram packets and possible to run
> over IP(v6)/UDP. But also it does some adjustments for
> TIPC.
> 
> Xin Long (8):
>    tipc: set the mtu for bearer properly for udp media
>    tipc: add the constants and variables for plpmtud
>    tipc: build probe and its reply in tipc_link_build_proto_msg
>    tipc: add probe send and state transition
>    tipc: add probe recv and state transition
>    tipc: add offload base
>    tipc: add software gso
>    tipc: add hardware gso
> 
>   include/uapi/linux/tipc_config.h |   6 --
>   net/tipc/Makefile                |   2 +-
>   net/tipc/bearer.c                |  23 ++++-
>   net/tipc/core.c                  |   3 +
>   net/tipc/link.c                  | 147 +++++++++++++++++++++++++++----
>   net/tipc/link.h                  |  29 ++++++
>   net/tipc/msg.c                   |   1 +
>   net/tipc/msg.h                   |   3 +
>   net/tipc/node.c                  |  15 +++-
>   net/tipc/offload.c               |  70 +++++++++++++++
>   net/tipc/udp_media.c             |  18 ++--
>   11 files changed, 287 insertions(+), 30 deletions(-)
>   create mode 100644 net/tipc/offload.c
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
