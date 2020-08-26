Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 184DA253633
	for <lists+tipc-discussion@lfdr.de>; Wed, 26 Aug 2020 19:55:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kAze5-0005Yj-8L; Wed, 26 Aug 2020 17:55:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kAze4-0005Ya-8W
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 17:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eCZOeE8ftul1t5fzvoioCl8MFblrH1PFu+JVyV9e6fU=; b=HTXQ45lMlBFd9InaGKve6attYn
 5ZXzTq6g3ZFN0ToJgqjrlE/Qir77NxLeUTjCf3o7lfKhjyTQelVcpiXooIe61Sxpru31Gt8Dm/2vt
 WASKmFv4chAdwppQA71tEvSbgEQcKRrObFePa2a8dUd2jgI53hl6HJji7Ho4JaF+gI6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eCZOeE8ftul1t5fzvoioCl8MFblrH1PFu+JVyV9e6fU=; b=OO6oxxFmV1L3b54drr1lT8tqv+
 zGrsfnSvhkMSUOwCwaVrSETObRtvZ5WKNaZFP1p5HTzQ8ZlGZtmk36W9w/V6y0H2uq5wFpngVD5j+
 S/YodK9z37GVPZOOqBObHW3VWGADKgi/ZJ/sgq8cMbpTD6blKMKu0VGsY+gvdCBEUaIM=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kAze2-004G4R-Hu
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 17:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598464518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eCZOeE8ftul1t5fzvoioCl8MFblrH1PFu+JVyV9e6fU=;
 b=MgmYcjMmJW93Yrr/fPmV1NMyhI4tHxsUUBaqwz6qN7YyLIO4rC5b2we78VRSfJjaz9632P
 u0adKUZNIHaSR172O4YhtnQNlrnhIsTgfHW0j6gMqd4tIXcV1Eg9eMUdBpIAg0GPKbTle7
 2/31+sFLA/KQuspdkzoWehrfYiH0i38=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-WSwzz9SOPFeSuj3N4P_OCA-1; Wed, 26 Aug 2020 13:55:14 -0400
X-MC-Unique: WSwzz9SOPFeSuj3N4P_OCA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82566189E60D;
 Wed, 26 Aug 2020 17:55:13 +0000 (UTC)
Received: from [10.10.113.6] (ovpn-113-6.rdu2.redhat.com [10.10.113.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 04B1C1944D;
 Wed, 26 Aug 2020 17:55:11 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <93ec1301-c941-f9b2-2350-5d9eb183d9c7@redhat.com>
Date: Wed, 26 Aug 2020 13:55:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
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
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kAze2-004G4R-Hu
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
>   net/tipc/core.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 4f6dc74adf45..37d8695548cf 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -109,6 +109,11 @@ static void __net_exit tipc_exit_net(struct net *net)
>   {
>   	tipc_detach_loopback(net);
>   	tipc_net_stop(net);
> +
> +	/* Make sure the tipc_net_finalize_work stopped
> +	 * before releasing the resources.
> +	 */
> +	flush_scheduled_work();
>   	tipc_bcast_stop(net);
>   	tipc_nametbl_stop(net);
>   	tipc_sk_rht_destroy(net);
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
