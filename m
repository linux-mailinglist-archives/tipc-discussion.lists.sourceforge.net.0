Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8F258F84
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Sep 2020 15:53:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kD6jG-0004HH-G6; Tue, 01 Sep 2020 13:53:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kD6jE-0004H4-Ol
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 13:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZdCnUMy2VISmzl1vFCf+HXlCa5HZKgdpXlVc+eqg/Dw=; b=N5uPQ1njJpi923wnSzPSCJKcfO
 b7yMNjBV9GS/Plq+toVfgooZaDUaOUeh8q+IIvJSDVC+Hjv5gFfgS6AUvu0/QTVCdOUf+wIbR9q29
 Z08HU8CSTSlvvRR4Xi4DSWxK/1/qweepFvIu69F3HbNqekxQOjrCFZaW/ZWp1LZogRTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZdCnUMy2VISmzl1vFCf+HXlCa5HZKgdpXlVc+eqg/Dw=; b=Al+GNAjva9PSkBUHC2D1R2tXQf
 3ZFWQmUDyo05kWiHcMGIpxi+1B14lI2YEYmpuvbG47Mkx6e5Ao2Wu0+rQMsWDa//UI1S+rlWok7Ln
 ac/Y+gfTRwxlTuwyuOMbCcqnxLe7sWQKJbj4XehtBZs85JiOith18QlvlEhZ1Jqg5Xcs=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kD6jA-007qMP-IC
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 13:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598968403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZdCnUMy2VISmzl1vFCf+HXlCa5HZKgdpXlVc+eqg/Dw=;
 b=W1SLZSAkDPR4iimUt1KZNlG2zSGEH3evP14tte1U6ubKJDYLgZYadSlIlud6+p1gWrCLE7
 6JPyOA4uoDO8gwKEiP0t1Q7sauSmlsgyuaUW+eYkhm+txHefN+6RhLMrBVXFMYOmexYZdh
 ORSxyxdQhrXS9KI4DaGkSTYdVBP7JKM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-0ZPDyLVzMs2QuWMc5Q7nfg-1; Tue, 01 Sep 2020 09:53:19 -0400
X-MC-Unique: 0ZPDyLVzMs2QuWMc5Q7nfg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF59D189E609;
 Tue,  1 Sep 2020 13:53:17 +0000 (UTC)
Received: from [10.10.117.227] (ovpn-117-227.rdu2.redhat.com [10.10.117.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7457B60BE2;
 Tue,  1 Sep 2020 13:53:15 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
 <20200826035249.33849-2-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <8803c4c7-8bd5-bc20-56dc-7ad58fa3adbc@redhat.com>
Date: Tue, 1 Sep 2020 09:53:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200826035249.33849-2-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kD6jA-007qMP-IC
Subject: Re: [tipc-discussion] [PATCH] tipc: fix use-after-free in
 tipc_bcast_get_mode
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
Cc: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com,
 syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 8/25/20 11:52 PM, Hoang Huu Le wrote:
> Syzbot has reported those issues as:
>
> ==================================================================
> BUG: KASAN: use-after-free in tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759
> Read of size 1 at addr ffff88805e6b3571 by task kworker/0:6/3850
>
> CPU: 0 PID: 3850 Comm: kworker/0:6 Not tainted 5.8.0-rc7-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
>
> Thread 1's call trace:
> [...]
>    kfree+0x103/0x2c0 mm/slab.c:3757 <- bcbase releasing
>    tipc_bcast_stop+0x1b0/0x2f0 net/tipc/bcast.c:721
>    tipc_exit_net+0x24/0x270 net/tipc/core.c:112
> [...]
>
> Thread 2's call trace:
> [...]
>    tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759 <- bcbase
> has already been freed by Thread 1
>
>    tipc_node_broadcast+0x9e/0xcc0 net/tipc/node.c:1744
>    tipc_nametbl_publish+0x60b/0x970 net/tipc/name_table.c:752
>    tipc_net_finalize net/tipc/net.c:141 [inline]
>    tipc_net_finalize+0x1fa/0x310 net/tipc/net.c:131
>    tipc_net_finalize_work+0x55/0x80 net/tipc/net.c:150
> [...]
>
> ==================================================================
> BUG: KASAN: use-after-free in tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
> Read of size 8 at addr ffff888052ab2000 by task kworker/0:13/30628
> CPU: 0 PID: 30628 Comm: kworker/0:13 Not tainted 5.8.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x1f0/0x31e lib/dump_stack.c:118
>   print_address_description+0x66/0x5a0 mm/kasan/report.c:383
>   __kasan_report mm/kasan/report.c:513 [inline]
>   kasan_report+0x132/0x1d0 mm/kasan/report.c:530
>   tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
>   tipc_net_finalize+0x85/0xe0 net/tipc/net.c:138
>   tipc_net_finalize_work+0x50/0x70 net/tipc/net.c:150
>   process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>   worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>   kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
> [...]
> Freed by task 14058:
>   save_stack mm/kasan/common.c:48 [inline]
>   set_track mm/kasan/common.c:56 [inline]
>   kasan_set_free_info mm/kasan/common.c:316 [inline]
>   __kasan_slab_free+0x114/0x170 mm/kasan/common.c:455
>   __cache_free mm/slab.c:3426 [inline]
>   kfree+0x10a/0x220 mm/slab.c:3757
>   tipc_exit_net+0x29/0x50 net/tipc/core.c:113
>   ops_exit_list net/core/net_namespace.c:186 [inline]
>   cleanup_net+0x708/0xba0 net/core/net_namespace.c:603
>   process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>   worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>   kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
>
> Solution 1 (preferer):
> Fix it by calling flush_scheduled_work() to make sure the
> tipc_net_finalize_work() stopped before releasing bcbase object.
>
> Solution 2:
> Fix it by introducing a bit flag and returning if flag is zero
> (object had already been freed)
>
> Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
> Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 1 +
>   net/tipc/core.c  | 1 +
>   net/tipc/core.h  | 1 +
>   net/tipc/net.c   | 3 +++
>   4 files changed, 6 insertions(+)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 940d176e0e87..56b624c8b6d4 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -718,6 +718,7 @@ void tipc_bcast_stop(struct net *net)
>   	struct tipc_net *tn = net_generic(net, tipc_net_id);
>   
>   	synchronize_net();
> +	clear_bit_unlock(0, &tn->net_exit_flag);
>   	kfree(tn->bcbase);
>   	kfree(tn->bcl);
>   }
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 4f6dc74adf45..93ea7dc05bf2 100644
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
> index 85400e4242de..0dcbfcff5ad3 100644
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
This solution should not cause any deadlocks, I hope.
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
