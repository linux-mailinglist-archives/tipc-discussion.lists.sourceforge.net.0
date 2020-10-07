Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4011285F7F
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Oct 2020 14:48:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQ8sB-0002v6-FR; Wed, 07 Oct 2020 12:48:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kQ8sA-0002us-4w
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Oct 2020 12:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZFk1/R4WhM6OSOj+n6niu/ipNSZWFxR2N+C30B/7UpU=; b=VGDECzOnhYtwyU3KcV/tL7Jm5C
 MJ2j6nYdyn/JUxugh2mu6Wf4nzuCnchhRFIXpcD/KWv2rH74FVs97JwLcUaxXKZThpK04IUUKHIn1
 CPTDSiTRIEd8Zwxb22mQ+ietsajeeo0xBa2PLOVuTIY4607ahGN+SP1/QzIEjSvAHpwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZFk1/R4WhM6OSOj+n6niu/ipNSZWFxR2N+C30B/7UpU=; b=kLGbw+44yFFge8iiATY+X8h+IA
 ErfS7bgOi816rP7xQPFm2plzZ47+R48TXbg9QfnOFwF1zx1+ZsdCr3icY/VNwq+ZmHGE+XOloT6dA
 +FUdnGCb07+NejAwTAJIZUGjUspT7hdXSzAgcrNPjdZRXbjFy4GdxupeyVwZyq1vXku8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kQ8ry-005zKc-4g
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Oct 2020 12:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602074900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZFk1/R4WhM6OSOj+n6niu/ipNSZWFxR2N+C30B/7UpU=;
 b=bOG98s9zFPMDJvF12JqMsHzGvc5vg+iCvLQuJppamm3zQgY4BMnbHlY9/hSF1VjvuO9Nq6
 mTSzk7zUhJcTRdHDv65TQ8KpeslFpu9vOgJzg/xBzcs9U88sSyy9W3cX8ovkT/wx5AYhL6
 WzFWKjCvM51ev8bf5DxToRk03YbUwk8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-Hy_-4WmNNUeFtteUcpLVeA-1; Wed, 07 Oct 2020 08:48:19 -0400
X-MC-Unique: Hy_-4WmNNUeFtteUcpLVeA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A421918C5201;
 Wed,  7 Oct 2020 12:48:17 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B57D56EF42;
 Wed,  7 Oct 2020 12:48:16 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20201007121342.61932-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <c9441019-0602-e13b-d37e-96687c2a51ee@redhat.com>
Date: Wed, 7 Oct 2020 08:48:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201007121342.61932-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
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
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQ8ry-005zKc-4g
Subject: Re: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in tipc_named_rcv
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



On 10/7/20 8:13 AM, Hoang Huu Le wrote:
> In the function node_lost_contact(), we call __skb_queue_purge() without
> grabbing the list->lock. This can cause to a race-condition why processing
> the list 'namedq' in calling path tipc_named_rcv()->tipc_named_dequeue().
>
>      [] BUG: kernel NULL pointer dereference, address: 0000000000000000
>      [] #PF: supervisor read access in kernel mode
>      [] #PF: error_code(0x0000) - not-present page
>      [] PGD 7ca63067 P4D 7ca63067 PUD 6c553067 PMD 0
>      [] Oops: 0000 [#1] SMP NOPTI
>      [] CPU: 1 PID: 15 Comm: ksoftirqd/1 Tainted: G  O  5.9.0-rc6+ #2
>      [] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS [...]
>      [] RIP: 0010:tipc_named_rcv+0x103/0x320 [tipc]
>      [] Code: 41 89 44 24 10 49 8b 16 49 8b 46 08 49 c7 06 00 00 00 [...]
>      [] RSP: 0018:ffffc900000a7c58 EFLAGS: 00000282
>      [] RAX: 00000000000012ec RBX: 0000000000000000 RCX: ffff88807bde1270
>      [] RDX: 0000000000002c7c RSI: 0000000000002c7c RDI: ffff88807b38f1a8
>      [] RBP: ffff88807b006288 R08: ffff88806a367800 R09: ffff88806a367900
>      [] R10: ffff88806a367a00 R11: ffff88806a367b00 R12: ffff88807b006258
>      [] R13: ffff88807b00628a R14: ffff888069334d00 R15: ffff88806a434600
>      [] FS:  0000000000000000(0000) GS:ffff888079480000(0000) knlGS:0[...]
>      [] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>      [] CR2: 0000000000000000 CR3: 0000000077320000 CR4: 00000000000006e0
>      [] Call Trace:
>      []  ? tipc_bcast_rcv+0x9a/0x1a0 [tipc]
>      []  tipc_rcv+0x40d/0x670 [tipc]
>      []  ? _raw_spin_unlock+0xa/0x20
>      []  tipc_l2_rcv_msg+0x55/0x80 [tipc]
>      []  __netif_receive_skb_one_core+0x8c/0xa0
>      []  process_backlog+0x98/0x140
>      []  net_rx_action+0x13a/0x420
>      []  __do_softirq+0xdb/0x316
>      []  ? smpboot_thread_fn+0x2f/0x1e0
>      []  ? smpboot_thread_fn+0x74/0x1e0
>      []  ? smpboot_thread_fn+0x14e/0x1e0
>      []  run_ksoftirqd+0x1a/0x40
>      []  smpboot_thread_fn+0x149/0x1e0
>      []  ? sort_range+0x20/0x20
>      []  kthread+0x131/0x150
>      []  ? kthread_unuse_mm+0xa0/0xa0
>      []  ret_from_fork+0x22/0x30
>      [] Modules linked in: veth tipc(O) ip6_udp_tunnel udp_tunnel [...]
>      [] CR2: 0000000000000000
>      [] ---[ end trace 65c276a8e2e2f310 ]---
>
> To fix this, we need to grab the lock of the 'namedq' list on both
> path calling.
>
> Fixes: cad2929dc432 ("tipc: update a binding service via broadcast")
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/name_distr.c | 10 +++++++++-
>   net/tipc/node.c       |  2 +-
>   2 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 2f9c148f17e2..fe4edce459ad 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -327,8 +327,13 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>   	struct tipc_msg *hdr;
>   	u16 seqno;
>   
> +	spin_lock_bh(&namedq->lock);
>   	skb_queue_walk_safe(namedq, skb, tmp) {
> -		skb_linearize(skb);
> +		if (unlikely(skb_linearize(skb))) {
> +			__skb_unlink(skb, namedq);
> +			kfree_skb(skb);
> +			continue;
> +		}
>   		hdr = buf_msg(skb);
>   		seqno = msg_named_seqno(hdr);
>   		if (msg_is_last_bulk(hdr)) {
> @@ -338,12 +343,14 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>   
>   		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
>   			__skb_unlink(skb, namedq);
> +			spin_unlock_bh(&namedq->lock);
>   			return skb;
>   		}
>   
>   		if (*open && (*rcv_nxt == seqno)) {
>   			(*rcv_nxt)++;
>   			__skb_unlink(skb, namedq);
> +			spin_unlock_bh(&namedq->lock);
>   			return skb;
>   		}
>   
> @@ -353,6 +360,7 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>   			continue;
>   		}
>   	}
> +	spin_unlock_bh(&namedq->lock);
>   	return NULL;
>   }
>   
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index cf4b239fc569..d269ebe382e1 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1496,7 +1496,7 @@ static void node_lost_contact(struct tipc_node *n,
>   
>   	/* Clean up broadcast state */
>   	tipc_bcast_remove_peer(n->net, n->bc_entry.link);
> -	__skb_queue_purge(&n->bc_entry.namedq);
> +	skb_queue_purge(&n->bc_entry.namedq);
>   
>   	/* Abort any ongoing link failover */
>   	for (i = 0; i < MAX_BEARERS; i++) {
Looks ok.
Acked-by: jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
