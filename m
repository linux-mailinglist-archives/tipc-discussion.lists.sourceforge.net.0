Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC03B3ACB54
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Jun 2021 14:49:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1luDvj-0006s9-9a; Fri, 18 Jun 2021 12:49:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1luDvg-0006ro-RT
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Jun 2021 12:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YHdlk2O8P4mSb95dk7u0JFo75DcEaYEvgGJKdSdnLAI=; b=ZayuiSEGWEvVQX94fASkXaV8rm
 AxRly50axS7L78vyXJNJS87o4NiQW6WiRitrbrcTfkXmn3QffUm3cGAg3o5bgwtb8dOFXiWriuEqp
 IXQSvaQbVEfk4i2l8ya1jag19qUywnwOOrYH4uPwmKmcm031pgJ3bFvrCT13N9HYsixs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YHdlk2O8P4mSb95dk7u0JFo75DcEaYEvgGJKdSdnLAI=; b=VOqM/RKXkmK3VnJIW23dIeabhi
 bEGjDOTawpnch9uIktZdRNxC5f9uxuKJZcfK8PZnRqPKMnD4KO4Q6UCM3wGfbA0W7oAdNEqTDhziK
 sRo6argFB5rWq3h4VVFKZvOVNkzniZD8nu/unp4cikLPoJtnWqGTyqyv0pcRhiqyFvmc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1luDva-00F8DT-I1
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Jun 2021 12:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624020528;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YHdlk2O8P4mSb95dk7u0JFo75DcEaYEvgGJKdSdnLAI=;
 b=GSiGYRbETIVoW3iiUcZPjhBKWzXiLz2sINB8UndD87u+MWkCP72/YgQBzzyn7+LBoILtgR
 4fCiSVcx2aLl+WHhaRCPf4vJXUO3qTHbZRd3wGXhPb9SpzMR/J0pNX10VLHZegWqfKI/DR
 ReIMz3l+l33f7OuX/EjWQENL1RoLpRs=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-604-JLAHWhBzNfCBcpnNQShA9w-1; Fri, 18 Jun 2021 08:48:47 -0400
X-MC-Unique: JLAHWhBzNfCBcpnNQShA9w-1
Received: by mail-qk1-f199.google.com with SMTP id
 2-20020a3709020000b02903aa9873df32so5377091qkj.15
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 18 Jun 2021 05:48:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YHdlk2O8P4mSb95dk7u0JFo75DcEaYEvgGJKdSdnLAI=;
 b=Q0NJvv53RmGpIC2pfTk/I5qmNRRUgddG5+nMQgWqH2S2XVbCT3+CeJxA7Hoy6M24JX
 zNj5MfzoJDJ5EYSKjUL4tzM9IGgqoE7VFng4Hftzi6AAhwYW10dXtM7RxJvbZW5tEAF9
 Fdzhx4AUDdTWHuPgbWtvyESpJgaejaSXQHrPKESfYlM0fZsudrw+miir++Ei5S3elZjm
 ZSqmozOH6KfYJdTcL0Ifrj03B4e1W8XIfiX71jnpT/8/GC1pm1jW6cYd7fWnvgGqlZSc
 X5wZmxoMUwr1VHkcfYxM6rBuXY4OcwjFDf1TeUPZnP92G7vDbrc9mFaA933nOc0HSRTf
 1z0g==
X-Gm-Message-State: AOAM532E8Zm8veq7h+nk1+oHmvsxHPD7omfui2AnHW368Ci0nLQCCoXp
 N68v734Tqwtkdsoj1pmlLaxolExjkBXehCpZM72C8Hwrn7binoNo81+V07YLXR8s3p1i4j2Q9Kk
 ddGKg9vX2lxP5pHJY1zPLuJTE6wglHAtNecpU
X-Received: by 2002:a05:620a:404e:: with SMTP id
 i14mr9354310qko.348.1624020526998; 
 Fri, 18 Jun 2021 05:48:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwX6BUHsVaXNcp/qz9rW7I5pOYYVXo2CMV2KIN2hqlZv5nRxnVl3m77q5sQ//psC1zdOHhuOg==
X-Received: by 2002:a05:620a:404e:: with SMTP id
 i14mr9354290qko.348.1624020526735; 
 Fri, 18 Jun 2021 05:48:46 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id c17sm5122388qtd.22.2021.06.18.05.48.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Jun 2021 05:48:46 -0700 (PDT)
To: menglong8.dong@gmail.com
References: <20210618065718.3284-1-dong.menglong@zte.com.cn>
 <20210618065718.3284-2-dong.menglong@zte.com.cn>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <b8e9611f-49b6-fe09-d7b0-5440fe8598d0@redhat.com>
Date: Fri, 18 Jun 2021 08:48:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210618065718.3284-2-dong.menglong@zte.com.cn>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1luDva-00F8DT-I1
Subject: Re: [tipc-discussion] [PATCH v4 net-next 1/2] net: tipc: fix FB_MTU
 eat two pages
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
Cc: lxin@redhat.com, Menglong Dong <dong.menglong@zte.com.cn>,
 tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/18/21 2:57 AM, menglong8.dong@gmail.com wrote:
> From: Menglong Dong <dong.menglong@zte.com.cn>
>
> FB_MTU is used in 'tipc_msg_build()' to alloc smaller skb when memory
> allocation fails, which can avoid unnecessary sending failures.
>
> The value of FB_MTU now is 3744, and the data size will be:
>
>    (3744 + SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) + \
>      SKB_DATA_ALIGN(BUF_HEADROOM + BUF_TAILROOM + 3))
>
> which is larger than one page(4096), and two pages will be allocated.
>
> To avoid it, replace '3744' with a calculation:
>
>    (PAGE_SIZE - SKB_DATA_ALIGN(BUF_OVERHEAD) - \
>      SKB_DATA_ALIGN(sizeof(struct skb_shared_info)))
>
> What's more, alloc_skb_fclone() will call SKB_DATA_ALIGN for data size,
> and it's not necessary to make alignment for buf_size in
> tipc_buf_acquire(). So, just remove it.
>
> Fixes: 4c94cc2d3d57 ("tipc: fall back to smaller MTU if allocation of local send skb fails")
>
> Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
> ---
> V4:
> - fallback to V2
>
> V3:
> - split tipc_msg_build to tipc_msg_build and tipc_msg_frag
> - introduce tipc_buf_acquire_flex, which is able to alloc skb for
>    local message
> - add the variate 'local' in tipc_msg_build to check if this is a
>    local message.
>
> V2:
> - define FB_MTU in msg.c instead of introduce a new file
> - remove align for buf_size in tipc_buf_acquire()
> ---
>   net/tipc/bcast.c |  2 +-
>   net/tipc/msg.c   | 19 ++++++++++---------
>   net/tipc/msg.h   |  3 ++-
>   3 files changed, 13 insertions(+), 11 deletions(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index d4beca895992..593846d25214 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -699,7 +699,7 @@ int tipc_bcast_init(struct net *net)
>   	spin_lock_init(&tipc_net(net)->bclock);
>   
>   	if (!tipc_link_bc_create(net, 0, 0, NULL,
> -				 FB_MTU,
> +				 one_page_mtu,
>   				 BCLINK_WIN_DEFAULT,
>   				 BCLINK_WIN_DEFAULT,
>   				 0,
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index ce6ab54822d8..912d17b3fc01 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -44,12 +44,17 @@
>   #define MAX_FORWARD_SIZE 1024
>   #ifdef CONFIG_TIPC_CRYPTO
>   #define BUF_HEADROOM ALIGN(((LL_MAX_HEADER + 48) + EHDR_MAX_SIZE), 16)
> -#define BUF_TAILROOM (TIPC_AES_GCM_TAG_SIZE)
> +#define BUF_OVERHEAD (BUF_HEADROOM + TIPC_AES_GCM_TAG_SIZE)
>   #else
>   #define BUF_HEADROOM (LL_MAX_HEADER + 48)
> -#define BUF_TAILROOM 16
> +#define BUF_OVERHEAD BUF_HEADROOM
>   #endif
>   
> +#define ONE_PAGE_SKB_SZ (PAGE_SIZE - SKB_DATA_ALIGN(BUF_OVERHEAD) - \
> +			 SKB_DATA_ALIGN(sizeof(struct skb_shared_info)))
> +
I suggest one small simplification:
Let's just skip this macro completely, and assign the calculation 
directly to one_page_mtu below.

Otherwise:
Acked-by: Jon Maloy <jmaloy@redhat.com>

> +const int one_page_mtu = ONE_PAGE_SKB_SZ;
> +
>   static unsigned int align(unsigned int i)
>   {
>   	return (i + 3) & ~3u;
> @@ -69,13 +74,8 @@ static unsigned int align(unsigned int i)
>   struct sk_buff *tipc_buf_acquire(u32 size, gfp_t gfp)
>   {
>   	struct sk_buff *skb;
> -#ifdef CONFIG_TIPC_CRYPTO
> -	unsigned int buf_size = (BUF_HEADROOM + size + BUF_TAILROOM + 3) & ~3u;
> -#else
> -	unsigned int buf_size = (BUF_HEADROOM + size + 3) & ~3u;
> -#endif
>   
> -	skb = alloc_skb_fclone(buf_size, gfp);
> +	skb = alloc_skb_fclone(BUF_OVERHEAD + size, gfp);
>   	if (skb) {
>   		skb_reserve(skb, BUF_HEADROOM);
>   		skb_put(skb, size);
> @@ -395,7 +395,8 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
>   		if (unlikely(!skb)) {
>   			if (pktmax != MAX_MSG_SIZE)
>   				return -ENOMEM;
> -			rc = tipc_msg_build(mhdr, m, offset, dsz, FB_MTU, list);
> +			rc = tipc_msg_build(mhdr, m, offset, dsz,
> +					    ONE_PAGE_SKB_SZ, list);
>   			if (rc != dsz)
>   				return rc;
>   			if (tipc_msg_assemble(list))
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 5d64596ba987..64ae4c4c44f8 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -99,9 +99,10 @@ struct plist;
>   #define MAX_H_SIZE                60	/* Largest possible TIPC header size */
>   
>   #define MAX_MSG_SIZE (MAX_H_SIZE + TIPC_MAX_USER_MSG_SIZE)
> -#define FB_MTU                  3744
>   #define TIPC_MEDIA_INFO_OFFSET	5
>   
> +extern const int one_page_mtu;
> +
>   struct tipc_skb_cb {
>   	union {
>   		struct {



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
