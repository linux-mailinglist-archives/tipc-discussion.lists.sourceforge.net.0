Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB41381B91
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 May 2021 00:53:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1li39Q-00077W-Vl; Sat, 15 May 2021 22:52:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1li39Q-00077P-5Z
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b26lioNlVAsQ62IGWB0D9tHVfqEZy0bID3QiwmjJWEA=; b=ByCIcLvG9m06vwnvmthm0+ihlh
 PpyfEmQxUVkUaVc5/pkytZPGsgUAphWBChm0MrBm3lumTVwYs6jdYdWONrO8VZARKQwAT7wE0u63v
 RC+5krBpOCg7z0v1esFSBhmO3KhbKg3VwTYSZEKEPJYE0pU8glvBQayG16QjO8VluIRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b26lioNlVAsQ62IGWB0D9tHVfqEZy0bID3QiwmjJWEA=; b=jrG8YkDKoQWGdxtOw//zzyT5ew
 gWEWWIgglBU/UG4CzGUHfN9JSrLiGLKLsAZsKPbWtJSVlnCSh6wP+zcdCNus9gH6MTdmZ5qcG+uSt
 Oz9gq7L3zm/AKj7eRYFGSAGg14ii24XlZEvotjqKLyGsbuUyg2p76Ex19IM4FND0zzKs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1li39E-009oiB-SV
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621119152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b26lioNlVAsQ62IGWB0D9tHVfqEZy0bID3QiwmjJWEA=;
 b=CxH2KyjmRT1y5MztnOsg/SgogikxgQMNtiDw4L7iHh/s2FEmr5h/A5yK0RnU1UMdnq1u/N
 nm/YAexomHwaKcroNclOgfu0SfFiZFE5J7muUsoMK0Svw4Ue9fxD+AEyTK1tL+ayY8queA
 1BbdGkK3XZBPBOpgJh6LIU3IZjiTSZQ=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-r-MH4GedPG6kJlcgEYu7Rw-1; Sat, 15 May 2021 18:52:30 -0400
X-MC-Unique: r-MH4GedPG6kJlcgEYu7Rw-1
Received: by mail-qv1-f69.google.com with SMTP id
 g26-20020a0caada0000b02901b93eb92373so2111186qvb.3
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 15 May 2021 15:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=b26lioNlVAsQ62IGWB0D9tHVfqEZy0bID3QiwmjJWEA=;
 b=VQvvBBLu5HnbnKeB2GLVmdUtn+ncLkejrxnusQoVHTUV7ijqA6O1FZTjxFPBm46mMA
 Cxag5nZJcWrMtR9MzDcwepcK2WyZMstf5U4ke6+rJ2o1FLVE2ycFmYdkBQHUKbgi+DZD
 v8OJyfPolRRMcX1m9cwJIKjNkX5qg1v3AUZYfbVt70lbJBSWxKU0nY2U33jt59A/r6BT
 1NS92PZ7DHMxy5qqGaNvkvvZHPyTnhsAf2Llnl0dZsDgoXpRBkfoNimDzCB1Od+grhNc
 mKmPuuxOgII21qSsQek+IoA0JIrLsKryjggphP/SN0QnvjvK+nAL3CtRjQhldepllEMF
 Wgyg==
X-Gm-Message-State: AOAM533Zlhp1zlt/Ovz/IWo8OGm6nWjIxH5aH7YAT7KBqzadwDYrTxvv
 OAfVYcm2vgwUdjqheE7jry96gp3ledfXP63JbZxptz/1EuN2sbcDsUjX9dbEDxj/Ax+r36HUxOQ
 AisedKSgLS/q8q4fr22peP4U9FFTVfdpsJxKH
X-Received: by 2002:a0c:9e68:: with SMTP id z40mr17880847qve.17.1621119150207; 
 Sat, 15 May 2021 15:52:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwt2Hzg29cAuEkwXgQ8GmM+rXKgWZEzPJ6L9ByDFRLaj9FI/Wl/UiGNYoAhFIfQO7KGkXaoNw==
X-Received: by 2002:a0c:9e68:: with SMTP id z40mr17880836qve.17.1621119150040; 
 Sat, 15 May 2021 15:52:30 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id a23sm7250537qtd.60.2021.05.15.15.52.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 May 2021 15:52:29 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <e197001eb38a4fbc8447459b72ad64ac65e44ada.1621018450.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ac3a75e0-9172-c8aa-7cf4-68d10ee29eb3@redhat.com>
Date: Sat, 15 May 2021 18:52:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <e197001eb38a4fbc8447459b72ad64ac65e44ada.1621018450.git.lucien.xin@gmail.com>
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: final_work.net]
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
X-Headers-End: 1li39E-009oiB-SV
Subject: Re: [tipc-discussion] [PATCH net] tipc: simplify the finalize work
 queue
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



On 5/14/21 2:54 PM, Xin Long wrote:
> This patch is to use "struct work_struct" for the finalize work queue
> instead of "struct tipc_net_work", as it can get the "net" and "addr"
> from tipc_net's other members and there is no need to add extra net
> and addr in tipc_net by defining "struct tipc_net_work".
>
> Note that it's safe to get net from tn->bcl as bcl is always released
> after the finalize work queue is done.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/core.c     |  4 ++--
>   net/tipc/core.h     |  8 +-------
>   net/tipc/discover.c |  4 ++--
>   net/tipc/link.c     |  5 +++++
>   net/tipc/link.h     |  1 +
>   net/tipc/net.c      | 15 +++------------
>   6 files changed, 14 insertions(+), 23 deletions(-)
>
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 72f3ac7..3f4542e 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -60,7 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
>   	tn->trial_addr = 0;
>   	tn->addr_trial_end = 0;
>   	tn->capabilities = TIPC_NODE_CAPABILITIES;
> -	INIT_WORK(&tn->final_work.work, tipc_net_finalize_work);
> +	INIT_WORK(&tn->work, tipc_net_finalize_work);
>   	memset(tn->node_id, 0, sizeof(tn->node_id));
>   	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
>   	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
> @@ -110,7 +110,7 @@ static void __net_exit tipc_exit_net(struct net *net)
>   
>   	tipc_detach_loopback(net);
>   	/* Make sure the tipc_net_finalize_work() finished */
> -	cancel_work_sync(&tn->final_work.work);
> +	cancel_work_sync(&tn->work);
>   	tipc_net_stop(net);
>   
>   	tipc_bcast_stop(net);
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 5741ae4..0a3f7a7 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -91,12 +91,6 @@ extern unsigned int tipc_net_id __read_mostly;
>   extern int sysctl_tipc_rmem[3] __read_mostly;
>   extern int sysctl_tipc_named_timeout __read_mostly;
>   
> -struct tipc_net_work {
> -	struct work_struct work;
> -	struct net *net;
> -	u32 addr;
> -};
> -
>   struct tipc_net {
>   	u8  node_id[NODE_ID_LEN];
>   	u32 node_addr;
> @@ -148,7 +142,7 @@ struct tipc_net {
>   	struct tipc_crypto *crypto_tx;
>   #endif
>   	/* Work item for net finalize */
> -	struct tipc_net_work final_work;
> +	struct work_struct work;
>   	/* The numbers of work queues in schedule */
>   	atomic_t wq_count;
>   };
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c
> index 5380f60..da69e1a 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -168,7 +168,7 @@ static bool tipc_disc_addr_trial_msg(struct tipc_discoverer *d,
>   
>   	/* Apply trial address if we just left trial period */
>   	if (!trial && !self) {
> -		tipc_sched_net_finalize(net, tn->trial_addr);
> +		schedule_work(&tn->work);
>   		msg_set_prevnode(buf_msg(d->skb), tn->trial_addr);
>   		msg_set_type(buf_msg(d->skb), DSC_REQ_MSG);
>   	}
> @@ -308,7 +308,7 @@ static void tipc_disc_timeout(struct timer_list *t)
>   	if (!time_before(jiffies, tn->addr_trial_end) && !tipc_own_addr(net)) {
>   		mod_timer(&d->timer, jiffies + TIPC_DISC_INIT);
>   		spin_unlock_bh(&d->lock);
> -		tipc_sched_net_finalize(net, tn->trial_addr);
> +		schedule_work(&tn->work);
>   		return;
>   	}
>   
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 1151092..c44b4bf 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -372,6 +372,11 @@ char tipc_link_plane(struct tipc_link *l)
>   	return l->net_plane;
>   }
>   
> +struct net *tipc_link_net(struct tipc_link *l)
> +{
> +	return l->net;
> +}
> +
>   void tipc_link_update_caps(struct tipc_link *l, u16 capabilities)
>   {
>   	l->peer_caps = capabilities;
> diff --git a/net/tipc/link.h b/net/tipc/link.h
> index fc07232..a16f401 100644
> --- a/net/tipc/link.h
> +++ b/net/tipc/link.h
> @@ -156,4 +156,5 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l,   struct tipc_msg *hdr,
>   int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
>   			  struct sk_buff_head *xmitq);
>   bool tipc_link_too_silent(struct tipc_link *l);
> +struct net *tipc_link_net(struct tipc_link *l);
>   #endif
> diff --git a/net/tipc/net.c b/net/tipc/net.c
> index a130195..0e95572 100644
> --- a/net/tipc/net.c
> +++ b/net/tipc/net.c
> @@ -41,6 +41,7 @@
>   #include "socket.h"
>   #include "node.h"
>   #include "bcast.h"
> +#include "link.h"
>   #include "netlink.h"
>   #include "monitor.h"
>   
> @@ -142,19 +143,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
>   
>   void tipc_net_finalize_work(struct work_struct *work)
>   {
> -	struct tipc_net_work *fwork;
> +	struct tipc_net *tn = container_of(work, struct tipc_net, work);
>   
> -	fwork = container_of(work, struct tipc_net_work, work);
> -	tipc_net_finalize(fwork->net, fwork->addr);
> -}
> -
> -void tipc_sched_net_finalize(struct net *net, u32 addr)
> -{
> -	struct tipc_net *tn = tipc_net(net);
> -
> -	tn->final_work.net = net;
> -	tn->final_work.addr = addr;
> -	schedule_work(&tn->final_work.work);
> +	tipc_net_finalize(tipc_link_net(tn->bcl), tn->trial_addr);
>   }
>   
>   void tipc_net_stop(struct net *net)
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
