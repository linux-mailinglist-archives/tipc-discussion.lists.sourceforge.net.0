Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 593326CC1F
	for <lists+tipc-discussion@lfdr.de>; Thu, 18 Jul 2019 11:45:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ho2ye-0001PS-UR; Thu, 18 Jul 2019 09:45:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1ho2yb-0001PH-JG
 for tipc-discussion@lists.sourceforge.net; Thu, 18 Jul 2019 09:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ek98BiHZYJIrB4U66vHesqIba38a2PdBkOYMC4HenNE=; b=HpBWiIGo9+GT17YmupJLOzPfTS
 pdEbLxaLdKWQ4+fo2WB9eO+dJU9HpG/qa4UexMaz9kwqzsN9mVmq3+/9lzHTWj+mxFZEwFuNajfIv
 I6GDQNIVIVvywe+P0i9tY/gceyTE7DI2/IsTzp/g+EHvXonMj6rm9EoRIqx7t6dMOWUM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ek98BiHZYJIrB4U66vHesqIba38a2PdBkOYMC4HenNE=; b=UF2Y3tEE/EFO23ICoPzIAYwjeB
 X++ZJtimm731zQdrlhusfh72jVYWQa75RvHCAWejbWDbIaCCLs8DuhzXOZ2qnxzxYU2ZT/JM0qouF
 Bhgyr+PRCkdVyMSDO4mBW3+k86lLNCgqm2l0wmm4z6lUSnj+k2Eq6qvd5rKOXlsZa55M=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1ho2yT-006CnL-Bg
 for tipc-discussion@lists.sourceforge.net; Thu, 18 Jul 2019 09:45:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 46B0746363;
 Thu, 18 Jul 2019 19:45:06 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1563443106; bh=j0qXi1wOpkRC9O
 3v6v8ALv2zhSqIt7iurtbtKSS5Vrg=; b=Twhgvn3CKuJ1KEtb0+5YC3gjhjrJJd
 BIzjoUQ22Bgju3jMShhBeL/pUW+/Blnx9dfhagW/t2eoilj0rqPCGyZ25jl9lJg2
 Lt00s6yJ7UfSCRV/XAxeDewZe8mZsZY9StLHmSgjpRYHI3ao/lwXi0+KGwNJwEkL
 9ZlFJQiAQruz8=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lTwKTSqxmiXX; Thu, 18 Jul 2019 19:45:06 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id E169646361;
 Thu, 18 Jul 2019 19:45:04 +1000 (AEST)
Received: from VNLAP253VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 69FEE46363;
 Thu, 18 Jul 2019 19:45:03 +1000 (AEST)
From: "tung quang nguyen" <tung.q.nguyen@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>,
 <tipc-discussion@lists.sourceforge.net>, <maloy@donjonn.com>,
 <ying.xue@windriver.com>
References: <20190710023920.3203-1-tung.q.nguyen@dektech.com.au>
 <CH2PR15MB35751429C39023A76551E1839AC90@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB35751429C39023A76551E1839AC90@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Thu, 18 Jul 2019 16:44:59 +0700
Message-ID: <08c101d53d4d$790ae170$6b20a450$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGle4p53tanwD5YaXG4TKg/qVeLHQIsBf5upx4/ayA=
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ho2yT-006CnL-Bg
Subject: Re: [tipc-discussion] [PATCH v1 1/1] tipc: fix starvation of
 sending sockets when handling wakeup messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

"Wakeup messages are not time critical, so this is not a good reason to
bypass the tipc_sk_rcv() function.
It is an important principle to only have one single entry point in the
socket for arriving messages, and we should stick to that."
[Tung]: There is good reasons to let wakeup messages bypass tipc_sk_rcv():
- It is not necessary to grab/release lock before/after dequeuing a wakeup
messages. This creates overhead.
- A large number of wakeup messages and data messages creates more overhead
for destination port filter function. By consuming
wakeup messages without grabbing queue lock, the overhead for consuming data
& wakeup messages is reduced.

I agree with you that we should have a single entry point for arriving
messages. We can use the same function tipc_sk_rcv() and it will
call tipc_sk_rcv_inputq() and tipc_sk_rcv_wakeupq().

" Adding a new queue on the stack and then pass it along everywhere is very
intrusive, introduces a lot of extra code and complexity, and adds
performance overhead to the critical data path.  This is not necessary to
achieve what you want."
[Tung]: It introduces extra code but I do not think it is more complex. And
there is no more performance overhead (I will show it in another mail).
Actually, to achieve that (fix starvation issue), I believe we have to do 2
things as I did and the test result was good.

Best regards,
Tung Nguyen

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Wednesday, July 17, 2019 10:47 PM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>;
tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
ying.xue@windriver.com
Subject: RE: [tipc-discussion][PATCH v1 1/1] tipc: fix starvation of sending
sockets when handling wakeup messages

Hi Tung,
Your analysis seems correct, but your patch is too intrusive, and can be
made much simpler.
See below.

> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 9-Jul-19 22:39
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [tipc-discussion][PATCH v1 1/1] tipc: fix starvation of sending
sockets
> when handling wakeup messages
> 
> Commit 365ad35 ("tipc: reduce risk of user starvation during link
congestion")
> aimed to allow senders to add their lists of socket buffers to the link
backlog
> queues under link congestion. However, when dequeuing the link wakeup
> queue by link_prepare_wakeup(), there might be a worst case scenario:
>  - More than 10 wakeup messages near the wakeup queue head are not
> dequeued because the backlog queue length is still greater than the limit.
>  - Many wakeup messages near the wakeup queue tail are not dequeued
> though their importance is different from the one of 10 wakeup messages
> near the queue head and the backlog queue length is less than the limit.
> 
> Furthermore, function tipc_sk_rcv() consumes both normal data messages
> and wakeup messages from the link input queue. By allowing
> oversubscriptions, the number of messages passed through tipc_sk_rcv()
> would be higher.
> Applying destination port filter to wakeup messages via
tipc_skb_peek_port()
> is not necessary and even causes more overhead.

Wakeup messages are not time critical, so this is not a good reason to
bypass the tipc_sk_rcv() function.
It is an important principle to only have one single entry point in the
socket for arriving messages, and we should stick to that.

> 
> As a result, some non-blocking socket senders are not able to send data
> because epoll() takes many seconds to return EPOLLOUT.
> 
> This commit fixes this issues by:
> - Allowing to dequeue as many wakeup messages as possible.

That is good. Just removing the 10-skb limit would probably be sufficient to
resolve the problem.

> - Separating wakeup messages from the link input queue. All wakeup
> messages are now put in a local queue and consumed in a simple way.

There is no reason to do this. Instead, you should just take the messages in
the wakeup queue, sort them by importance order into a temporary queue
inside link_prepare_wakeup(), and add that queue to the head of the input
queue, instead of to the tail. That is all you need to do, in addition to
removing the 10-buffer limit.

Adding a new queue on the stack and then pass it along everywhere is very
intrusive, introduces a lot of extra code and complexity, and adds
performance overhead to the critical data path.  This is not necessary to
achieve what you want.

BR
///jon

> 
> Fixes: 365ad35 ("tipc: reduce risk of user starvation during link
congestion")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/bcast.c  | 42 +++++++++++-----------
>  net/tipc/link.c   | 67 +++++++++++++++++-----------------
>  net/tipc/link.h   | 12 ++++---
>  net/tipc/node.c   | 28 +++++++++++----
>  net/tipc/socket.c | 91 +++++++++++++++++++++++++++++++++++++++++--
> ----
>  net/tipc/socket.h |  1 +
>  6 files changed, 166 insertions(+), 75 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c index
> 6c997d4a6218..4de0f9780ef5 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -421,11 +421,11 @@ int tipc_mcast_xmit(struct net *net, struct
> sk_buff_head *pkts,  int tipc_bcast_rcv(struct net *net, struct tipc_link
*l,
> struct sk_buff *skb)  {
>  	struct tipc_msg *hdr = buf_msg(skb);
> -	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
>  	int rc;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	if (msg_mc_netid(hdr) != tipc_netid(net) || !tipc_link_is_up(l)) {
>  		kfree_skb(skb);
> @@ -434,16 +434,16 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link
> *l, struct sk_buff *skb)
> 
>  	tipc_bcast_lock(net);
>  	if (msg_user(hdr) == BCAST_PROTOCOL)
> -		rc = tipc_link_bc_nack_rcv(l, skb, &xmitq);
> +		rc = tipc_link_bc_nack_rcv(l, skb, &xmitq, &wakeupq);
>  	else
> -		rc = tipc_link_rcv(l, skb, NULL);
> +		rc = tipc_link_rcv(l, skb, NULL, &wakeupq);
>  	tipc_bcast_unlock(net);
> 
>  	tipc_bcbase_xmit(net, &xmitq);
> 
>  	/* Any socket wakeup messages ? */
> -	if (!skb_queue_empty(inputq))
> -		tipc_sk_rcv(net, inputq);
> +	if (!skb_queue_empty(&wakeupq))
> +		tipc_sk_rcv_wakeup(net, &wakeupq);
> 
>  	return rc;
>  }
> @@ -455,25 +455,25 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link
> *l, struct sk_buff *skb)  void tipc_bcast_ack_rcv(struct net *net, struct
> tipc_link *l,
>  			struct tipc_msg *hdr)
>  {
> -	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
>  	u16 acked = msg_bcast_ack(hdr);
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
> 
>  	/* Ignore bc acks sent by peer before bcast synch point was received
*/
>  	if (msg_bc_ack_invalid(hdr))
>  		return;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	tipc_bcast_lock(net);
> -	tipc_link_bc_ack_rcv(l, acked, &xmitq);
> +	tipc_link_bc_ack_rcv(l, acked, &xmitq, &wakeupq);
>  	tipc_bcast_unlock(net);
> 
>  	tipc_bcbase_xmit(net, &xmitq);
> 
>  	/* Any socket wakeup messages ? */
> -	if (!skb_queue_empty(inputq))
> -		tipc_sk_rcv(net, inputq);
> +	if (!skb_queue_empty(&wakeupq))
> +		tipc_sk_rcv_wakeup(net, &wakeupq);
>  }
> 
>  /* tipc_bcast_synch_rcv -  check and update rcv link with peer's send
state
> @@ -483,17 +483,17 @@ void tipc_bcast_ack_rcv(struct net *net, struct
> tipc_link *l,  int tipc_bcast_sync_rcv(struct net *net, struct tipc_link
*l,
>  			struct tipc_msg *hdr)
>  {
> -	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
>  	int rc = 0;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	tipc_bcast_lock(net);
>  	if (msg_type(hdr) != STATE_MSG) {
>  		tipc_link_bc_init_rcv(l, hdr);
>  	} else if (!msg_bc_ack_invalid(hdr)) {
> -		tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr), &xmitq);
> +		tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr), &xmitq,
> &wakeupq);
>  		rc = tipc_link_bc_sync_rcv(l, hdr, &xmitq);
>  	}
>  	tipc_bcast_unlock(net);
> @@ -501,8 +501,8 @@ int tipc_bcast_sync_rcv(struct net *net, struct
> tipc_link *l,
>  	tipc_bcbase_xmit(net, &xmitq);
> 
>  	/* Any socket wakeup messages ? */
> -	if (!skb_queue_empty(inputq))
> -		tipc_sk_rcv(net, inputq);
> +	if (!skb_queue_empty(&wakeupq))
> +		tipc_sk_rcv_wakeup(net, &wakeupq);
>  	return rc;
>  }
> 
> @@ -529,13 +529,13 @@ void tipc_bcast_add_peer(struct net *net, struct
> tipc_link *uc_l,  void tipc_bcast_remove_peer(struct net *net, struct
tipc_link
> *rcv_l)  {
>  	struct tipc_link *snd_l = tipc_bc_sndlink(net);
> -	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	tipc_bcast_lock(net);
> -	tipc_link_remove_bc_peer(snd_l, rcv_l, &xmitq);
> +	tipc_link_remove_bc_peer(snd_l, rcv_l, &xmitq, &wakeupq);
>  	tipc_bcbase_select_primary(net);
>  	tipc_bcbase_calc_bc_threshold(net);
>  	tipc_bcast_unlock(net);
> @@ -543,8 +543,8 @@ void tipc_bcast_remove_peer(struct net *net, struct
> tipc_link *rcv_l)
>  	tipc_bcbase_xmit(net, &xmitq);
> 
>  	/* Any socket wakeup messages ? */
> -	if (!skb_queue_empty(inputq))
> -		tipc_sk_rcv(net, inputq);
> +	if (!skb_queue_empty(&wakeupq))
> +		tipc_sk_rcv_wakeup(net, &wakeupq);
>  }
> 
>  int tipc_bclink_reset_stats(struct net *net) diff --git a/net/tipc/link.c
> b/net/tipc/link.c index 2050fd386642..e67d7e6a793b 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -237,7 +237,8 @@ static int link_is_up(struct tipc_link *l)  }
> 
>  static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
> -			       struct sk_buff_head *xmitq);
> +			       struct sk_buff_head *xmitq,
> +			       struct sk_buff_head *wakeupq);
>  static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool
> probe,
>  				      bool probe_reply, u16 rcvgap,
>  				      int tolerance, int priority,
> @@ -331,6 +332,11 @@ struct sk_buff_head *tipc_link_inputq(struct
> tipc_link *l)
>  	return l->inputq;
>  }
> 
> +struct sk_buff_head *tipc_link_wakeupq(struct tipc_link *l) {
> +	return &l->wakeupq;
> +}
> +
>  char tipc_link_plane(struct tipc_link *l)  {
>  	return l->net_plane;
> @@ -355,19 +361,21 @@ void tipc_link_add_bc_peer(struct tipc_link
> *snd_l,
> 
>  void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
>  			      struct tipc_link *rcv_l,
> -			      struct sk_buff_head *xmitq)
> +			      struct sk_buff_head *xmitq,
> +			      struct sk_buff_head *wakeupq)
>  {
>  	u16 ack = snd_l->snd_nxt - 1;
> 
>  	snd_l->ackers--;
>  	rcv_l->bc_peer_is_up = true;
>  	rcv_l->state = LINK_ESTABLISHED;
> -	tipc_link_bc_ack_rcv(rcv_l, ack, xmitq);
> +	tipc_link_bc_ack_rcv(rcv_l, ack, xmitq, wakeupq);
>  	trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
>  	tipc_link_reset(rcv_l);
>  	rcv_l->state = LINK_RESET;
>  	if (!snd_l->ackers) {
>  		trace_tipc_link_reset(snd_l, TIPC_DUMP_ALL, "zero ackers!");
> +		skb_queue_splice_tail_init(&snd_l->wakeupq, wakeupq);
>  		tipc_link_reset(snd_l);
>  		snd_l->state = LINK_RESET;
>  		__skb_queue_purge(xmitq);
> @@ -500,7 +508,7 @@ bool tipc_link_create(struct net *net, char *if_name,
> int bearer_id,
>  	__skb_queue_head_init(&l->backlogq);
>  	__skb_queue_head_init(&l->deferdq);
>  	__skb_queue_head_init(&l->failover_deferdq);
> -	skb_queue_head_init(&l->wakeupq);
> +	__skb_queue_head_init(&l->wakeupq);
>  	skb_queue_head_init(l->inputq);
>  	return true;
>  }
> @@ -839,9 +847,8 @@ static int link_schedule_user(struct tipc_link *l,
struct
> tipc_msg *hdr)
>  			      dnode, l->addr, dport, 0, 0);
>  	if (!skb)
>  		return -ENOBUFS;
> -	msg_set_dest_droppable(buf_msg(skb), true);
>  	TIPC_SKB_CB(skb)->chain_imp = msg_importance(hdr);
> -	skb_queue_tail(&l->wakeupq, skb);
> +	__skb_queue_tail(&l->wakeupq, skb);
>  	l->stats.link_congs++;
>  	trace_tipc_link_conges(l, TIPC_DUMP_ALL, "wakeup scheduled!");
>  	return -ELINKCONG;
> @@ -853,46 +860,34 @@ static int link_schedule_user(struct tipc_link *l,
> struct tipc_msg *hdr)
>   * Wake up a number of waiting users, as permitted by available space
>   * in the send queue
>   */
> -static void link_prepare_wakeup(struct tipc_link *l)
> +static void link_prepare_wakeup(struct tipc_link *l,
> +				struct sk_buff_head *wakeupq)
>  {
>  	struct sk_buff *skb, *tmp;
> -	int imp, i = 0;
> +	int imp;
> 
>  	skb_queue_walk_safe(&l->wakeupq, skb, tmp) {
>  		imp = TIPC_SKB_CB(skb)->chain_imp;
>  		if (l->backlog[imp].len < l->backlog[imp].limit) {
> -			skb_unlink(skb, &l->wakeupq);
> -			skb_queue_tail(l->inputq, skb);
> -		} else if (i++ > 10) {
> -			break;
> +			__skb_unlink(skb, &l->wakeupq);
> +			__skb_queue_tail(wakeupq, skb);
>  		}
>  	}
>  }
> 
>  void tipc_link_reset(struct tipc_link *l)  {
> -	struct sk_buff_head list;
> -
> -	__skb_queue_head_init(&list);
> -
>  	l->in_session = false;
>  	/* Force re-synch of peer session number before establishing */
>  	l->peer_session--;
>  	l->session++;
>  	l->mtu = l->advertised_mtu;
> 
> -	spin_lock_bh(&l->wakeupq.lock);
> -	skb_queue_splice_init(&l->wakeupq, &list);
> -	spin_unlock_bh(&l->wakeupq.lock);
> -
> -	spin_lock_bh(&l->inputq->lock);
> -	skb_queue_splice_init(&list, l->inputq);
> -	spin_unlock_bh(&l->inputq->lock);
> -
>  	__skb_queue_purge(&l->transmq);
>  	__skb_queue_purge(&l->deferdq);
>  	__skb_queue_purge(&l->backlogq);
>  	__skb_queue_purge(&l->failover_deferdq);
> +	__skb_queue_purge(&l->wakeupq);
>  	l->backlog[TIPC_LOW_IMPORTANCE].len = 0;
>  	l->backlog[TIPC_MEDIUM_IMPORTANCE].len = 0;
>  	l->backlog[TIPC_HIGH_IMPORTANCE].len = 0; @@ -1445,9 +1440,11
> @@ static int tipc_link_build_nack_msg(struct tipc_link *l,
>   * @l: the link that should handle the message
>   * @skb: TIPC packet
>   * @xmitq: queue to place packets to be sent after this call
> + * @wakeupq: list of wakeup messages to be consumed after this call
>   */
>  int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
> -		  struct sk_buff_head *xmitq)
> +		  struct sk_buff_head *xmitq,
> +		  struct sk_buff_head *wakeupq)
>  {
>  	struct sk_buff_head *defq = &l->deferdq;
>  	struct tipc_msg *hdr = buf_msg(skb);
> @@ -1456,7 +1453,7 @@ int tipc_link_rcv(struct tipc_link *l, struct
sk_buff
> *skb,
> 
>  	/* Verify and update link state */
>  	if (unlikely(msg_user(hdr) == LINK_PROTOCOL))
> -		return tipc_link_proto_rcv(l, skb, xmitq);
> +		return tipc_link_proto_rcv(l, skb, xmitq, wakeupq);
> 
>  	/* Don't send probe at next timeout expiration */
>  	l->silent_intv_cnt = 0;
> @@ -1484,7 +1481,7 @@ int tipc_link_rcv(struct tipc_link *l, struct
sk_buff
> *skb,
>  			l->stale_cnt = 0;
>  			tipc_link_advance_backlog(l, xmitq);
>  			if (unlikely(!skb_queue_empty(&l->wakeupq)))
> -				link_prepare_wakeup(l);
> +				link_prepare_wakeup(l, wakeupq);
>  		}
> 
>  		/* Defer delivery if sequence gap */
> @@ -1518,6 +1515,7 @@ static void tipc_link_build_proto_msg(struct
> tipc_link *l, int mtyp, bool probe,
>  				      bool probe_reply, u16 rcvgap,
>  				      int tolerance, int priority,
>  				      struct sk_buff_head *xmitq)
> +
>  {
>  	struct tipc_link *bcl = l->bc_rcvlink;
>  	struct sk_buff *skb;
> @@ -1786,7 +1784,8 @@ bool tipc_link_validate_msg(struct tipc_link *l,
> struct tipc_msg *hdr)
>   * network plane
>   */
>  static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
> -			       struct sk_buff_head *xmitq)
> +			       struct sk_buff_head *xmitq,
> +			       struct sk_buff_head *wakeupq)
>  {
>  	struct tipc_msg *hdr = buf_msg(skb);
>  	struct tipc_gap_ack_blks *ga = NULL;
> @@ -1926,7 +1925,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l,
> struct sk_buff *skb,
> 
>  		tipc_link_advance_backlog(l, xmitq);
>  		if (unlikely(!skb_queue_empty(&l->wakeupq)))
> -			link_prepare_wakeup(l);
> +			link_prepare_wakeup(l, wakeupq);
>  	}
>  exit:
>  	kfree_skb(skb);
> @@ -2072,7 +2071,8 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l,
struct
> tipc_msg *hdr,  }
> 
>  void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
> -			  struct sk_buff_head *xmitq)
> +			  struct sk_buff_head *xmitq,
> +			  struct sk_buff_head *wakeupq)
>  {
>  	struct sk_buff *skb, *tmp;
>  	struct tipc_link *snd_l = l->bc_sndlink; @@ -2102,7 +2102,7 @@ void
> tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
>  	l->acked = acked;
>  	tipc_link_advance_backlog(snd_l, xmitq);
>  	if (unlikely(!skb_queue_empty(&snd_l->wakeupq)))
> -		link_prepare_wakeup(snd_l);
> +		link_prepare_wakeup(snd_l, wakeupq);
>  }
> 
>  /* tipc_link_bc_nack_rcv(): receive broadcast nack message @@ -2110,7
> +2110,8 @@ void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
>   * no BCAST_PROTOCOL/STATE messages occur from TIPC v2.5.
>   */
>  int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
> -			  struct sk_buff_head *xmitq)
> +			  struct sk_buff_head *xmitq,
> +			  struct sk_buff_head *wakeupq)
>  {
>  	struct tipc_msg *hdr = buf_msg(skb);
>  	u32 dnode = msg_destnode(hdr);
> @@ -2130,7 +2131,7 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l,
struct
> sk_buff *skb,
>  		return 0;
> 
>  	if (dnode == tipc_own_addr(l->net)) {
> -		tipc_link_bc_ack_rcv(l, acked, xmitq);
> +		tipc_link_bc_ack_rcv(l, acked, xmitq, wakeupq);
>  		rc = tipc_link_retrans(l->bc_sndlink, l, from, to, xmitq);
>  		l->stats.recv_nacks++;
>  		return rc;
> diff --git a/net/tipc/link.h b/net/tipc/link.h index
> adcad65e761c..9568bd965945 100644
> --- a/net/tipc/link.h
> +++ b/net/tipc/link.h
> @@ -107,6 +107,7 @@ void tipc_link_reset_stats(struct tipc_link *l);  int
> tipc_link_xmit(struct tipc_link *link, struct sk_buff_head *list,
>  		   struct sk_buff_head *xmitq);
>  struct sk_buff_head *tipc_link_inputq(struct tipc_link *l);
> +struct sk_buff_head *tipc_link_wakeupq(struct tipc_link *l);
>  u16 tipc_link_rcv_nxt(struct tipc_link *l);
>  u16 tipc_link_acked(struct tipc_link *l);
>  u32 tipc_link_id(struct tipc_link *l);
> @@ -130,25 +131,28 @@ int __tipc_nl_add_link(struct net *net, struct
> tipc_nl_msg *msg,  int tipc_nl_parse_link_prop(struct nlattr *prop, struct
> nlattr *props[]);  int tipc_link_timeout(struct tipc_link *l, struct
sk_buff_head
> *xmitq);  int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
> -		  struct sk_buff_head *xmitq);
> +		  struct sk_buff_head *xmitq, struct sk_buff_head *wakeupq);
>  int tipc_link_build_state_msg(struct tipc_link *l, struct sk_buff_head
*xmitq);
> void tipc_link_add_bc_peer(struct tipc_link *snd_l,
>  			   struct tipc_link *uc_l,
>  			   struct sk_buff_head *xmitq);
>  void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
>  			      struct tipc_link *rcv_l,
> -			      struct sk_buff_head *xmitq);
> +			      struct sk_buff_head *xmitq,
> +			      struct sk_buff_head *wakeupq);
>  int tipc_link_bc_peers(struct tipc_link *l);  void
tipc_link_set_mtu(struct
> tipc_link *l, int mtu);  int tipc_link_mtu(struct tipc_link *l);  void
> tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
> -			  struct sk_buff_head *xmitq);
> +			  struct sk_buff_head *xmitq,
> +			  struct sk_buff_head *wakeupq);
>  void tipc_link_build_bc_sync_msg(struct tipc_link *l,
>  				 struct sk_buff_head *xmitq);
>  void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hdr);
>  int tipc_link_bc_sync_rcv(struct tipc_link *l,   struct tipc_msg *hdr,
>  			  struct sk_buff_head *xmitq);
>  int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
> -			  struct sk_buff_head *xmitq);
> +			  struct sk_buff_head *xmitq,
> +			  struct sk_buff_head *wakeupq);
>  bool tipc_link_too_silent(struct tipc_link *l);  #endif diff --git
> a/net/tipc/node.c b/net/tipc/node.c index 550581d47d51..d0ec29081b11
> 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -154,6 +154,7 @@ enum {
> 
>  static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
>  				  struct sk_buff_head *xmitq,
> +				  struct sk_buff_head *wakeupq,
>  				  struct tipc_media_addr **maddr);
>  static void tipc_node_link_down(struct tipc_node *n, int bearer_id,
>  				bool delete);
> @@ -803,6 +804,7 @@ static void tipc_node_link_failover(struct tipc_node
> *n, struct tipc_link *l,
>   */
>  static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
>  				  struct sk_buff_head *xmitq,
> +				  struct sk_buff_head *wakeupq,
>  				  struct tipc_media_addr **maddr)
>  {
>  	struct tipc_link_entry *le = &n->links[*bearer_id]; @@ -851,6 +853,7
> @@ static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
>  		tipc_node_fsm_evt(n, SELF_LOST_CONTACT_EVT);
>  		trace_tipc_link_reset(l, TIPC_DUMP_ALL, "link down!");
>  		tipc_link_fsm_evt(l, LINK_RESET_EVT);
> +		skb_queue_splice_tail_init(tipc_link_wakeupq(l), wakeupq);
>  		tipc_link_reset(l);
>  		tipc_link_build_reset_msg(l, xmitq);
>  		*maddr = &n->links[*bearer_id].maddr; @@ -868,6 +871,7 @@
> static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
>  	n->sync_point = tipc_link_rcv_nxt(tnl) + (U16_MAX / 2 - 1);
>  	tipc_link_tnl_prepare(l, tnl, FAILOVER_MSG, xmitq);
>  	trace_tipc_link_reset(l, TIPC_DUMP_ALL, "link down -> failover!");
> +	skb_queue_splice_tail_init(tipc_link_wakeupq(l), wakeupq);
>  	tipc_link_reset(l);
>  	tipc_link_fsm_evt(l, LINK_RESET_EVT);
>  	tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT); @@ -881,18
> +885,20 @@ static void tipc_node_link_down(struct tipc_node *n, int
> bearer_id, bool delete)
>  	struct tipc_media_addr *maddr = NULL;
>  	struct tipc_link *l = le->link;
>  	int old_bearer_id = bearer_id;
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
> 
>  	if (!l)
>  		return;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	tipc_node_write_lock(n);
>  	if (!tipc_link_is_establishing(l)) {
> -		__tipc_node_link_down(n, &bearer_id, &xmitq, &maddr);
> +		__tipc_node_link_down(n, &bearer_id, &xmitq, &wakeupq,
> &maddr);
>  	} else {
>  		/* Defuse pending tipc_node_link_up() */
> +		skb_queue_splice_tail_init(tipc_link_wakeupq(l), &wakeupq);
>  		tipc_link_reset(l);
>  		tipc_link_fsm_evt(l, LINK_RESET_EVT);
>  	}
> @@ -908,6 +914,7 @@ static void tipc_node_link_down(struct tipc_node
> *n, int bearer_id, bool delete)
>  	if (!skb_queue_empty(&xmitq))
>  		tipc_bearer_xmit(n->net, bearer_id, &xmitq, maddr);
>  	tipc_sk_rcv(n->net, &le->inputq);
> +	tipc_sk_rcv_wakeup(n->net, &wakeupq);
>  }
> 
>  static bool node_is_up(struct tipc_node *n) @@ -1652,6 +1659,7 @@ static
> bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
>  	u16 iseqno = msg_seqno(msg_get_wrapped(hdr));
>  	u16 exp_pkts = msg_msgcnt(hdr);
>  	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
> +	struct sk_buff_head wakeupq;
>  	int state = n->state;
>  	struct tipc_link *l, *tnl, *pl = NULL;
>  	struct tipc_media_addr *maddr;
> @@ -1711,9 +1719,12 @@ static bool tipc_node_check_state(struct
> tipc_node *n, struct sk_buff *skb,
>  	if ((usr == TUNNEL_PROTOCOL) && (mtyp == FAILOVER_MSG)) {
>  		syncpt = oseqno + exp_pkts - 1;
>  		if (pl && !tipc_link_is_reset(pl)) {
> -			__tipc_node_link_down(n, &pb_id, xmitq, &maddr);
> +			__skb_queue_head_init(&wakeupq);
> +			__tipc_node_link_down(n, &pb_id, xmitq,
> +					      &wakeupq, &maddr);
>  			trace_tipc_node_link_down(n, true,
>  						  "node link down <-
failover!");
> +			skb_queue_splice_tail(&wakeupq,
tipc_link_wakeupq(l));
>
tipc_skb_queue_splice_tail_init(tipc_link_inputq(pl),
>
tipc_link_inputq(l));
>  		}
> @@ -1795,7 +1806,7 @@ static bool tipc_node_check_state(struct
> tipc_node *n, struct sk_buff *skb,
>   */
>  void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer
*b)  {
> -	struct sk_buff_head xmitq;
> +	struct sk_buff_head xmitq, wakeupq;
>  	struct tipc_node *n;
>  	struct tipc_msg *hdr;
>  	int bearer_id = b->identity;
> @@ -1805,6 +1816,7 @@ void tipc_rcv(struct net *net, struct sk_buff *skb,
> struct tipc_bearer *b)
>  	u16 bc_ack;
> 
>  	__skb_queue_head_init(&xmitq);
> +	__skb_queue_head_init(&wakeupq);
> 
>  	/* Ensure message is well-formed before touching the header */
>  	if (unlikely(!tipc_msg_validate(&skb)))
> @@ -1842,7 +1854,7 @@ void tipc_rcv(struct net *net, struct sk_buff *skb,
> struct tipc_bearer *b)
>  	if (likely((n->state == SELF_UP_PEER_UP) && (usr !=
> TUNNEL_PROTOCOL))) {
>  		spin_lock_bh(&le->lock);
>  		if (le->link) {
> -			rc = tipc_link_rcv(le->link, skb, &xmitq);
> +			rc = tipc_link_rcv(le->link, skb, &xmitq, &wakeupq);
>  			skb = NULL;
>  		}
>  		spin_unlock_bh(&le->lock);
> @@ -1856,7 +1868,8 @@ void tipc_rcv(struct net *net, struct sk_buff *skb,
> struct tipc_bearer *b)
>  		tipc_node_write_lock(n);
>  		if (tipc_node_check_state(n, skb, bearer_id, &xmitq)) {
>  			if (le->link) {
> -				rc = tipc_link_rcv(le->link, skb, &xmitq);
> +				rc = tipc_link_rcv(le->link, skb,
> +						   &xmitq, &wakeupq);
>  				skb = NULL;
>  			}
>  		}
> @@ -1878,6 +1891,9 @@ void tipc_rcv(struct net *net, struct sk_buff *skb,
> struct tipc_bearer *b)
>  	if (!skb_queue_empty(&le->inputq))
>  		tipc_sk_rcv(net, &le->inputq);
> 
> +	if (!skb_queue_empty(&wakeupq))
> +		tipc_sk_rcv_wakeup(net, &wakeupq);
> +
>  	if (!skb_queue_empty(&xmitq))
>  		tipc_bearer_xmit(net, bearer_id, &xmitq, &le->maddr);
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c index
> dd8537f988c4..fa48fb14add7 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2224,6 +2224,33 @@ static int tipc_sk_backlog_rcv(struct sock *sk,
> struct sk_buff *skb)
>  	return 0;
>  }
> 
> +/**
> + * tipc_sk_add_backlog - add the skb to the socket backlog queue
> + * @sk: socket where the skb should be enqueued
> + * @skb: the skb being enqueued
> + *
> + * Return true if the skb was added. Otherwise, return false  */ static
> +bool tipc_sk_add_backlog(struct sock *sk, struct sk_buff *skb) {
> +	unsigned int lim;
> +	atomic_t *dcnt;
> +
> +	/* Try backlog, compensating for double-counted bytes */
> +	dcnt = &tipc_sk(sk)->dupl_rcvcnt;
> +	if (!sk->sk_backlog.len)
> +		atomic_set(dcnt, 0);
> +
> +	lim = rcvbuf_limit(sk, skb) + atomic_read(dcnt);
> +	if (likely(!sk_add_backlog(sk, skb, lim))) {
> +		trace_tipc_sk_overlimit1(sk, skb, TIPC_DUMP_ALL,
> +					 "bklg & rcvq >90% allocated!");
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  /**
>   * tipc_sk_enqueue - extract all buffers with destination 'dport' from
>   *                   inputq and try adding them to socket or backlog
queue
> @@ -2238,8 +2265,6 @@ static void tipc_sk_enqueue(struct sk_buff_head
> *inputq, struct sock *sk,  {
>  	unsigned long time_limit = jiffies + 2;
>  	struct sk_buff *skb;
> -	unsigned int lim;
> -	atomic_t *dcnt;
>  	u32 onode;
> 
>  	while (skb_queue_len(inputq)) {
> @@ -2256,16 +2281,9 @@ static void tipc_sk_enqueue(struct sk_buff_head
> *inputq, struct sock *sk,
>  			continue;
>  		}
> 
> -		/* Try backlog, compensating for double-counted bytes */
> -		dcnt = &tipc_sk(sk)->dupl_rcvcnt;
> -		if (!sk->sk_backlog.len)
> -			atomic_set(dcnt, 0);
> -		lim = rcvbuf_limit(sk, skb) + atomic_read(dcnt);
> -		if (likely(!sk_add_backlog(sk, skb, lim))) {
> -			trace_tipc_sk_overlimit1(sk, skb, TIPC_DUMP_ALL,
> -						 "bklg & rcvq >90%
allocated!");
> +		/* Add the skb to the socket backlog queue */
> +		if (tipc_sk_add_backlog(sk, skb))
>  			continue;
> -		}
> 
>  		trace_tipc_sk_dump(sk, skb, TIPC_DUMP_ALL, "err_overload!");
>  		/* Overload => reject message back to sender */ @@ -2332,6
> +2350,57 @@ void tipc_sk_rcv(struct net *net, struct sk_buff_head *inputq)
>  	}
>  }
> 
> +/**
> + * tipc_sk_rcv_wakeup - handle a chain of wakeup messages
> + * @wakeupq: list of wakeup messages
> + * Consumes all messages in the list until it is empty  */ void
> +tipc_sk_rcv_wakeup(struct net *net, struct sk_buff_head *wakeupq) {
> +	u32 dport = 0;
> +	struct tipc_sock *tsk;
> +	struct sock *sk;
> +	struct sk_buff *skb, *tmp;
> +
> +start:
> +	if (!skb_queue_len(wakeupq))
> +		return;
> +
> +	skb_queue_walk_safe(wakeupq, skb, tmp) {
> +		dport = msg_destport(buf_msg(skb));
> +		tsk = tipc_sk_lookup(net, dport);
> +
> +		if (!unlikely(tsk)) {
> +			__skb_unlink(skb, wakeupq);
> +			kfree_skb(skb);
> +			continue;
> +		}
> +
> +		sk = &tsk->sk;
> +		if (likely(spin_trylock_bh(&sk->sk_lock.slock))) {
> +			__skb_unlink(skb, wakeupq);
> +			if (!sock_owned_by_user(sk)) {
> +				tipc_dest_del(&tsk->cong_links,
> +					      msg_orignode(buf_msg(skb)),
0);
> +				/* coupled with smp_rmb() in
> +				 * tipc_wait_for_cond()
> +				 */
> +				smp_wmb();
> +				tsk->cong_link_cnt--;
> +				sk->sk_write_space(sk);
> +				kfree_skb(skb);
> +			} else if (unlikely(!tipc_sk_add_backlog(sk, skb)))
{
> +				kfree_skb(skb);
> +				pr_warn("Drop wakeup message for port %u\n",
> +					tipc_sk(sk)->portid);
> +			}
> +			spin_unlock_bh(&sk->sk_lock.slock);
> +		}
> +		sock_put(sk);
> +	}
> +	goto start;
> +}
> +
>  static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)  {
>  	DEFINE_WAIT_FUNC(wait, woken_wake_function); diff --git
> a/net/tipc/socket.h b/net/tipc/socket.h index 235b9679acee..44eb9fb68d7e
> 100644
> --- a/net/tipc/socket.h
> +++ b/net/tipc/socket.h
> @@ -54,6 +54,7 @@ struct tipc_sock;
>  int tipc_socket_init(void);
>  void tipc_socket_stop(void);
>  void tipc_sk_rcv(struct net *net, struct sk_buff_head *inputq);
> +void tipc_sk_rcv_wakeup(struct net *net, struct sk_buff_head *wakeupq);
>  void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>  		       struct sk_buff_head *inputq);
>  void tipc_sk_reinit(struct net *net);
> --
> 2.17.1




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
