Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B825E3AF
	for <lists+tipc-discussion@lfdr.de>; Sat,  5 Sep 2020 00:26:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kEKAL-0001Nq-R2; Fri, 04 Sep 2020 22:26:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kEKAK-0001Nj-GU
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 22:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M545Jjg+mTAkFwmv93I/WEcNeFfnBVb8lzyuss48WyU=; b=mnIbYBvCOm0f2JCYMq6jl/mn3C
 53/n8C94jsMVkPBnHl+IbXfL39eYlfYIBdXSFc+qE2kLu0lLinFZMn9J3uQqzNL+9jFlwobUpCR6k
 MyZslLC6RYix9tfnFhlIFD5UfPsZUaC1Rp+Lcn7FlpE8w7d5a65RanSX7GlytO4WHcFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M545Jjg+mTAkFwmv93I/WEcNeFfnBVb8lzyuss48WyU=; b=KdGxPGgHHEc31ClMm/JatK+7mE
 6n+59Sx3M5XZprDe762KSCX3jDoyU9caYoaf5XZTDGJy15b5gPcbXShmOu5dL1T+Is4Sm4a2374se
 8A684iDFu8dc6BZxfNN9nPLC3UazGhmNyUFxGPhovlDdi9uVK0fj4bwPefXosFtQzjTk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kEKA9-00DMnD-VM
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 22:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599258374;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M545Jjg+mTAkFwmv93I/WEcNeFfnBVb8lzyuss48WyU=;
 b=djHcpejjcV/t0NkAtuBW54ZIcjE9ahg8GsEJEn12EAeiQVqVxC6ql+Eu1+bvpe/ezXvVLE
 5Bq5VyLZKEt3x3vOF2/Bx8ahWle+89Di6nvwbzz2TBmqkriZHHyNO1lNLcMmPqZ5wDactW
 cfenP40DOZyOATDmhWOfsyeG523+nOU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-wOKlWxlYM8yEpniQiGR6yw-1; Fri, 04 Sep 2020 18:26:11 -0400
X-MC-Unique: wOKlWxlYM8yEpniQiGR6yw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7EBC425E4;
 Fri,  4 Sep 2020 22:26:10 +0000 (UTC)
Received: from [10.10.118.242] (ovpn-118-242.rdu2.redhat.com [10.10.118.242])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 747D77ED62;
 Fri,  4 Sep 2020 22:26:09 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200904082550.394270-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <f5f36309-ef18-0e52-5191-6617f958e850@redhat.com>
Date: Fri, 4 Sep 2020 18:26:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904082550.394270-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.4 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kEKA9-00DMnD-VM
Subject: Re: [tipc-discussion] [net-next v3] tipc: fix a deadlock when
 flushing scheduled work
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
Cc: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 9/4/20 4:25 AM, Hoang Huu Le wrote:
> In the commit fdeba99b1e58
> ("tipc: fix use-after-free in tipc_bcast_get_mode"), we're trying
> to make sure the tipc_net_finalize_work work item finished if it
> enqueued. But calling flush_scheduled_work() is not just
affecting
>   above
> work item but either any scheduled work. This has turned out to be
> overkill and this caused to deadlock as syzbot reported:
>
> ======================================================
> WARNING: possible circular locking dependency detected
> 5.9.0-rc2-next-20200828-syzkaller #0 Not tainted
> ------------------------------------------------------
> kworker/u4:6/349 is trying to acquire lock:
> ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: flush_workqueue+0xe1/0x13e0 kernel/workqueue.c:2777
>
> but task is already holding lock:
> ffffffff8a879430 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0x9b/0xb10 net/core/net_namespace.c:565
>
> [...]
>   Possible unsafe locking scenario:
>
>         CPU0                    CPU1
>         ----                    ----
>    lock(pernet_ops_rwsem);
>                                 lock(&sb->s_type->i_mutex_key#13);
>                                 lock(pernet_ops_rwsem);
>    lock((wq_completion)events);
>
>   *** DEADLOCK ***
> [...]
>
> To fix the original issue, we replace above calling by introducing
> a bit flag. When a namespace cleaned-up, bit flag is set to zero:
> - tipc_net_finalize functionial just does return immediately.
> - tipc_net_finalize_work does not enqueue into the scheduled work queue.
>
> Reported-by: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
> Fixes: fdeba99b1e58 ("tipc: fix use-after-free in tipc_bcast_get_mode")
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/core.c |  8 ++++----
>   net/tipc/core.h |  1 +
>   net/tipc/net.c  | 10 +++++++++-
>   3 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 37d8695548cf..5e7bb768f45c 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -60,6 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
>   	tn->trial_addr = 0;
>   	tn->addr_trial_end = 0;
>   	tn->capabilities = TIPC_NODE_CAPABILITIES;
> +	test_and_set_bit_lock(0, &tn->net_exit_flag);
>   	memset(tn->node_id, 0, sizeof(tn->node_id));
>   	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
>   	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
> @@ -110,10 +111,6 @@ static void __net_exit tipc_exit_net(struct net *net)
>   	tipc_detach_loopback(net);
>   	tipc_net_stop(net);
>   
> -	/* Make sure the tipc_net_finalize_work stopped
> -	 * before releasing the resources.
> -	 */
> -	flush_scheduled_work();
>   	tipc_bcast_stop(net);
>   	tipc_nametbl_stop(net);
>   	tipc_sk_rht_destroy(net);
> @@ -124,6 +121,9 @@ static void __net_exit tipc_exit_net(struct net *net)
>   
>   static void __net_exit tipc_pernet_pre_exit(struct net *net)
>   {
> +	struct tipc_net *tn = tipc_net(net);
> +
> +	clear_bit_unlock(0, &tn->net_exit_flag);
>   	tipc_node_pre_cleanup_net(net);
>   }
>   
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 631d83c9705f..aa75882dd932 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -143,6 +143,7 @@ struct tipc_net {
>   	/* TX crypto handler */
>   	struct tipc_crypto *crypto_tx;
>   #endif
> +	unsigned long net_exit_flag;
>   };
>   
>   static inline struct tipc_net *tipc_net(struct net *net)
> diff --git a/net/tipc/net.c b/net/tipc/net.c
> index 85400e4242de..8ad5b9ad89c0 100644
> --- a/net/tipc/net.c
> +++ b/net/tipc/net.c
> @@ -132,6 +132,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
>   {
>   	struct tipc_net *tn = tipc_net(net);
>   
> +	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
> +		return;
> +
>   	if (cmpxchg(&tn->node_addr, 0, addr))
>   		return;
>   	tipc_set_node_addr(net, addr);
> @@ -153,8 +156,13 @@ static void tipc_net_finalize_work(struct work_struct *work)
>   
>   void tipc_sched_net_finalize(struct net *net, u32 addr)
>   {
> -	struct tipc_net_work *fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);
> +	struct tipc_net *tn = tipc_net(net);
> +	struct tipc_net_work *fwork;
> +
> +	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
> +		return;
>   
> +	fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);
>   	if (!fwork)
>   		return;
>   	INIT_WORK(&fwork->work, tipc_net_finalize_work);
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
