Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35890381BA7
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 May 2021 00:58:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1li3EZ-0006D0-OC; Sat, 15 May 2021 22:58:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1li3EY-0006Cp-Pw
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9+7OU1jiXcuN+JE+ZENa1/WzM8XgPqJzZW5eKBUcv7I=; b=WQKAoLxrgHwAKiV3VrV1kvcEFs
 4kKILzWtPaNS5ISmcFLx3ZdFJGJDJV9Qcv0j2UaZ2klkSAg0nQ6/Hv1Mt8+iPNwvOZP+XB6jWAT2T
 mcGP1LZzYoPSDmE7kcK+LWILncp2Zyc5Wl9MMCTew6fbtMaKFpBXCh5iczXmukhgFSrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9+7OU1jiXcuN+JE+ZENa1/WzM8XgPqJzZW5eKBUcv7I=; b=TKodWtpE/NF4M5Q2f/5t9vY0er
 DTCYJSLzpbsMD6S8LthZZg3PGndr+Q5qpyuNvvoFH1EX5134hMNRftXM5/E0732vFRwuQgHNZvRsX
 7cthQFAsOWMGl0VXmkWmGEaSM6NCSLELuLpkiHQ4sRSpOuDPNwx/21gKN5QFLPgXts6w=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1li3EU-0005vr-1k
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621119478;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9+7OU1jiXcuN+JE+ZENa1/WzM8XgPqJzZW5eKBUcv7I=;
 b=CRskjGbRZW7s0NNWw6Exv6owoIbH3/pQ16rvPE2NDNp5P1doAAGVL8y13kgDkzXJvSpJcW
 hypIvnWnI7aWpOLMOm1yOaYgAWE/EeUDSfmKU4vurA7AX1YQ8Qu0J/cqh9Asd2dQlgMTQr
 G07RQnmMTOwpkEmn74WCq5L+lTUI8pE=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-5sm3q_4MPjGcXfKmVhC3ng-1; Sat, 15 May 2021 18:57:56 -0400
X-MC-Unique: 5sm3q_4MPjGcXfKmVhC3ng-1
Received: by mail-qk1-f198.google.com with SMTP id
 o14-20020a05620a130eb02902ea53a6ef80so1993359qkj.6
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 15 May 2021 15:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9+7OU1jiXcuN+JE+ZENa1/WzM8XgPqJzZW5eKBUcv7I=;
 b=YpWj9gqIM5BNmnZ4XcBEeO6ECVJmYxYA4ysy2XtY57AySnZQtaIHn4GI3QerBBhlPb
 lgdck/IeGWO6mVUiHOcsSz/Te4BsvSXmk7jeBTKCZwYN+J4LKvh35/X8i3zzxrsMRVan
 bB0uWmm9Jud0+eKHoMiYExT1s+3/VQXLuk1rQmrv3E3qmvmRopoiy+Y2Y0zr2OcbvWvY
 itN4QIQKm+7TBYIUhrT3ffUjLm2V3rakHQudXSIDdvhb0ns180BPR1nd50qwXbVBqhtv
 L1D6ntuYdJKeAKjvx1Y0ZZhytHn4LDSdxHIbkYDoZDuNbHHE5nHWcRgBsoQRH6bHTiGU
 StEA==
X-Gm-Message-State: AOAM531G6T6pj+m1l26vyjXrEiugsR2Xx14Uh+4+i+GdnJ3wfjq9txGf
 01jfNVNkS79KYoVQAwW7Ptn9g+EwLpyB7tXLj9hmYC0DJPTBRC5XZhcOUAnFkwACf0kxtOuhTwA
 Q4NW++OwVB7h9Gj8Aj2bcH8sG+0tYDenlZK3I
X-Received: by 2002:a05:6214:1433:: with SMTP id
 o19mr1671467qvx.59.1621119476370; 
 Sat, 15 May 2021 15:57:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKwOrtaeteO9NmLX1KUl053C7yobMvcddlNcbBg6LmnS9TOilpr6UZNHO1lvzeOYNU1Ne6Cw==
X-Received: by 2002:a05:6214:1433:: with SMTP id
 o19mr1671460qvx.59.1621119476204; 
 Sat, 15 May 2021 15:57:56 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id b23sm7891095qtq.0.2021.05.15.15.57.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 May 2021 15:57:55 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net
References: <c7d752b5522360de0a6886202c59fe49524a9fda.1620417423.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <6b5deaab-d91a-8008-961e-805274f8989f@redhat.com>
Date: Sat, 15 May 2021 18:57:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c7d752b5522360de0a6886202c59fe49524a9fda.1620417423.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1li3EU-0005vr-1k
Subject: Re: [tipc-discussion] [PATCH net] tipc: skb_linearize the head skb
 when reassembling msgs
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
Cc: kuba@kernel.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 5/7/21 3:57 PM, Xin Long wrote:
> It's not a good idea to append the frag skb to a skb's frag_list if
> the frag_list already has skbs from elsewhere, such as this skb was
> created by pskb_copy() where the frag_list was cloned (all the skbs
> in it were skb_get'ed) and shared by multiple skbs.
>
> However, the new appended frag skb should have been only seen by the
> current skb. Otherwise, it will cause use after free crashes as this
> appended frag skb are seen by multiple skbs but it only got skb_get
> called once.
>
> The same thing happens with a skb updated by pskb_may_pull() with a
> skb_cloned skb. Li Shuang has reported quite a few crashes caused
> by this when doing testing over macvlan devices:
>
>    [] kernel BUG at net/core/skbuff.c:1970!
>    [] Call Trace:
>    []  skb_clone+0x4d/0xb0
>    []  macvlan_broadcast+0xd8/0x160 [macvlan]
>    []  macvlan_process_broadcast+0x148/0x150 [macvlan]
>    []  process_one_work+0x1a7/0x360
>    []  worker_thread+0x30/0x390
>
>    [] kernel BUG at mm/usercopy.c:102!
>    [] Call Trace:
>    []  __check_heap_object+0xd3/0x100
>    []  __check_object_size+0xff/0x16b
>    []  simple_copy_to_iter+0x1c/0x30
>    []  __skb_datagram_iter+0x7d/0x310
>    []  __skb_datagram_iter+0x2a5/0x310
>    []  skb_copy_datagram_iter+0x3b/0x90
>    []  tipc_recvmsg+0x14a/0x3a0 [tipc]
>    []  ____sys_recvmsg+0x91/0x150
>    []  ___sys_recvmsg+0x7b/0xc0
>
>    [] kernel BUG at mm/slub.c:305!
>    [] Call Trace:
>    []  <IRQ>
>    []  kmem_cache_free+0x3ff/0x400
>    []  __netif_receive_skb_core+0x12c/0xc40
>    []  ? kmem_cache_alloc+0x12e/0x270
>    []  netif_receive_skb_internal+0x3d/0xb0
>    []  ? get_rx_page_info+0x8e/0xa0 [be2net]
>    []  be_poll+0x6ef/0xd00 [be2net]
>    []  ? irq_exit+0x4f/0x100
>    []  net_rx_action+0x149/0x3b0
>
>    ...
>
> This patch is to fix it by linearizing the head skb if it has frag_list
> set in tipc_buf_append(). Note that we choose to do this before calling
> skb_unshare(), as __skb_linearize() will avoid skb_copy(). Also, we can
> not just drop the frag_list either as the early time.
>
> Fixes: 45c8b7b175ce ("tipc: allow non-linear first fragment buffer")
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/msg.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 3f0a253..ce6ab54 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -149,18 +149,13 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
>   		if (unlikely(head))
>   			goto err;
>   		*buf = NULL;
> +		if (skb_has_frag_list(frag) && __skb_linearize(frag))
> +			goto err;
>   		frag = skb_unshare(frag, GFP_ATOMIC);
>   		if (unlikely(!frag))
>   			goto err;
>   		head = *headbuf = frag;
>   		TIPC_SKB_CB(head)->tail = NULL;
> -		if (skb_is_nonlinear(head)) {
> -			skb_walk_frags(head, tail) {
> -				TIPC_SKB_CB(head)->tail = tail;
> -			}
> -		} else {
> -			skb_frag_list_init(head);
> -		}
>   		return 0;
>   	}
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
