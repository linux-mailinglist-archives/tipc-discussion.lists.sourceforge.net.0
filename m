Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 280CD1C4536
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 20:13:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVfb1-00089H-3w; Mon, 04 May 2020 18:13:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jVfaz-000891-Eg
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 18:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Uk0dY361YSWdWxrUYqHz8E+OGOKeBHv35aZ7jVc2QYs=; b=RH0fmQEeMVCtOgPGFJN8JP1t/F
 CmFgivbyVbSW4V5iGqHg2E9DCqOB7yz7IVsNEBT8O4zHqW/uRBiQtHknmc92C9wPJ+PzJC5bGkVRP
 b5C4GKcUUowCv9EYSpYMvQt3LEZDZtrDg7CZD8CQgPujYZPvnV0oDpK9LZC0gj80QqYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Uk0dY361YSWdWxrUYqHz8E+OGOKeBHv35aZ7jVc2QYs=; b=CX83VB7Gn4r7Rw5+BVZ385sIH2
 e1MEQzMaEiNM6eaFlRce81aCOSSRMusPj9O7heB7IoA1R4oslsxEnBxQ+HpJBiiCd1cul/qH65Lzu
 8r9cLDzCoghWFoNScWCg/pfiFbVuXN4G6ru7J/0CKjd7gXj0Cqinq3vldiZxOSlvC9YI=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVfax-007Fb0-Ac
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 18:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588616009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Uk0dY361YSWdWxrUYqHz8E+OGOKeBHv35aZ7jVc2QYs=;
 b=atAoghzyh55EdSJdLoN0XaHwTEzAn+P1l2RGSu+zJ2Ll0FDnM7TElw3ODB2s3TuLxOswlH
 Ci3Gl/uKDqU6HUIjLVbIJuzQaTTC5OyO+7omyL6LW/LQ/U9GqX83kEhKXg0WP6vJ+mV+sN
 zGQxmfTO9yYGei6kdAuWEO0PN/2/7xA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-fyytnhlUPAi0HuHIVlH7bA-1; Mon, 04 May 2020 14:13:27 -0400
X-MC-Unique: fyytnhlUPAi0HuHIVlH7bA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E13A3835B58;
 Mon,  4 May 2020 18:13:23 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF42D5C1BD;
 Mon,  4 May 2020 18:13:22 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-3-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <57d3ed20-3bbd-e0ac-ff02-a03ee611cb25@redhat.com>
Date: Mon, 4 May 2020 14:13:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504112826.11186-3-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVfax-007Fb0-Ac
Subject: Re: [tipc-discussion] [RFC PATCH 2/2] tipc: add test for Nagle
 algorithm effectiveness
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 5/4/20 7:28 AM, Tuong Lien wrote:
> When streaming in Nagle mode, we try to bundle small messages from user
> as many as possible if there is one outstanding buffer, i.e. not ACK-ed
> by the receiving side, which helps boost up the overall throughput. So,
> the algorithm's effectiveness really depends on when Nagle ACK comes or
> what the specific network latency (RTT) is, compared to the user's
> message sending rate.
>
> In a bad case, the user's sending rate is low or the network latency is
> small, there will not be many bundles, so making a Nagle ACK or waiting
> for it is not meaningful.
> For example: a user sends its messages every 100ms and the RTT is 50ms,
> then for each messages, we require one Nagle ACK but then there is only
> one user message sent without any bundles.
>
> In a better case, even if we have a few bundles (e.g. the RTT = 300ms),
> but now the user sends messages in medium size, then there will not be
> any difference at all, that says 3 x 1000-byte data messages if bundled
> will still result in 3 bundles with MTU = 1500.
>
> When Nagle is ineffective, the delay in user message sending is clearly
> wasted instead of sending directly.
>
> Besides, adding Nagle ACKs will consume some processor load on both the
> sending and receiving sides.
>
> This commit adds a test on the effectiveness of the Nagle algorithm for
> an individual connection in the network on which it actually runs.
> Particularly, upon receipt of a Nagle ACK we will compare the number of
> bundles in the backlog queue to the number of user messages which would
> be sent directly without Nagle. If the ratio is good (e.g. >= 2), Nagle
> mode will be kept for further message sending. Otherwise, we will leave
> Nagle and put a 'penalty' on the connection, so it will have to spend
> more 'one-way' messages before being able to re-enter Nagle.
>
> In addition, the 'ack-required' bit is only set when really needed that
> the number of Nagle ACKs will be reduced during Nagle mode.
>
> Testing with benchmark showed that with the patch, there was not much
> difference in throughput for small messages since the tool continuously
> sends messages without a break, so Nagle would still take in effect.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/msg.c    |  3 ---
>   net/tipc/msg.h    | 14 +++++++++++--
>   net/tipc/socket.c | 60 ++++++++++++++++++++++++++++++++++++++++++++-----------
>   3 files changed, 60 insertions(+), 17 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 69d68512300a..732cd95b5c75 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -235,9 +235,6 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   			msg_set_size(hdr, MIN_H_SIZE);
>   			__skb_queue_tail(txq, skb);
>   			total += 1;
> -			if (prev)
> -				msg_set_ack_required(buf_msg(prev), 0);
> -			msg_set_ack_required(hdr, 1);
>   		}
>   		hdr = buf_msg(skb);
>   		curr = msg_blocks(hdr);
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 5f37a611e8c9..44543892af11 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -340,9 +340,19 @@ static inline int msg_ack_required(struct tipc_msg *m)
>   	return msg_bits(m, 0, 18, 1);
>   }
>   
> -static inline void msg_set_ack_required(struct tipc_msg *m, u32 d)
> +static inline void msg_set_ack_required(struct tipc_msg *m)
>   {
> -	msg_set_bits(m, 0, 18, 1, d);
> +	msg_set_bits(m, 0, 18, 1, 1);
> +}
> +
> +static inline int msg_nagle_ack(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 0, 18, 1);
> +}
> +
> +static inline void msg_set_nagle_ack(struct tipc_msg *m)
> +{
> +	msg_set_bits(m, 0, 18, 1, 1);
>   }
>   
>   static inline bool msg_is_rcast(struct tipc_msg *m)
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 4e71774528ad..93b0a6159cb1 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -119,7 +119,10 @@ struct tipc_sock {
>   	struct rcu_head rcu;
>   	struct tipc_group *group;
>   	u32 oneway;
> +	u32 nagle_start;
>   	u16 snd_backlog;
> +	u16 msg_acc;
> +	u16 pkt_cnt;
>   	bool expect_ack;
>   	bool nodelay;
>   	bool group_is_open;
> @@ -143,7 +146,7 @@ static int tipc_sk_insert(struct tipc_sock *tsk);
>   static void tipc_sk_remove(struct tipc_sock *tsk);
>   static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
>   static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
> -static void tipc_sk_push_backlog(struct tipc_sock *tsk);
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack);
>   
>   static const struct proto_ops packet_ops;
>   static const struct proto_ops stream_ops;
> @@ -474,6 +477,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
>   	tsk = tipc_sk(sk);
>   	tsk->max_pkt = MAX_PKT_DEFAULT;
>   	tsk->maxnagle = 0;
> +	tsk->nagle_start = 4;
>   	INIT_LIST_HEAD(&tsk->publications);
>   	INIT_LIST_HEAD(&tsk->cong_links);
>   	msg = &tsk->phdr;
> @@ -541,7 +545,7 @@ static void __tipc_shutdown(struct socket *sock, int error)
>   					    !tsk_conn_cong(tsk)));
>   
>   	/* Push out delayed messages if in Nagle mode */
> -	tipc_sk_push_backlog(tsk);
> +	tipc_sk_push_backlog(tsk, false);
>   	/* Remove pending SYN */
>   	__skb_queue_purge(&sk->sk_write_queue);
>   
> @@ -1252,14 +1256,37 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>   /* tipc_sk_push_backlog(): send accumulated buffers in socket write queue
>    *                         when socket is in Nagle mode
>    */
> -static void tipc_sk_push_backlog(struct tipc_sock *tsk)
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack)
>   {
>   	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
> +	struct sk_buff *skb = skb_peek_tail(txq);
>   	struct net *net = sock_net(&tsk->sk);
>   	u32 dnode = tsk_peer_node(tsk);
> -	struct sk_buff *skb = skb_peek(txq);
>   	int rc;
>   
> +	if (nagle_ack) {
> +		tsk->pkt_cnt += skb_queue_len(txq);
> +		if (!tsk->pkt_cnt || tsk->msg_acc / tsk->pkt_cnt < 2) {
> +			tsk->oneway = 0;
> +			if (tsk->nagle_start < 1000)
> +				tsk->nagle_start *= 2;
> +			tsk->expect_ack = false;
> +			pr_debug("tsk %10u: bad nagle %u -> %u, next start %u!\n",
> +				 tsk->portid, tsk->msg_acc, tsk->pkt_cnt,
> +				 tsk->nagle_start);
> +		} else {
> +			tsk->nagle_start = 4;
> +			if (skb) {
> +				msg_set_ack_required(buf_msg(skb));
> +				tsk->expect_ack = true;
> +			} else {
> +				tsk->expect_ack = false;
> +			}
> +		}
> +		tsk->msg_acc = 0;
> +		tsk->pkt_cnt = 0;
> +	}
> +
>   	if (!skb || tsk->cong_link_cnt)
>   		return;
>   
> @@ -1267,9 +1294,10 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
>   	if (msg_is_syn(buf_msg(skb)))
>   		return;
>   
> +	if (tsk->msg_acc)
> +		tsk->pkt_cnt += skb_queue_len(txq);
>   	tsk->snt_unacked += tsk->snd_backlog;
>   	tsk->snd_backlog = 0;
> -	tsk->expect_ack = true;
>   	rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
>   	if (rc == -ELINKCONG)
>   		tsk->cong_link_cnt = 1;
> @@ -1322,8 +1350,7 @@ static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
>   		return;
>   	} else if (mtyp == CONN_ACK) {
>   		was_cong = tsk_conn_cong(tsk);
> -		tsk->expect_ack = false;
> -		tipc_sk_push_backlog(tsk);
> +		tipc_sk_push_backlog(tsk, msg_nagle_ack(hdr));
>   		tsk->snt_unacked -= msg_conn_ack(hdr);
>   		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
>   			tsk->snd_win = msg_adv_win(hdr);
> @@ -1544,17 +1571,24 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
>   			break;
>   		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
>   		blocks = tsk->snd_backlog;
> -		if (tsk->oneway++ >= 4 && send <= maxnagle) {
> +		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
>   			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
>   			if (unlikely(rc < 0))
>   				break;
>   			blocks += rc;
> +			tsk->msg_acc++;
>   			if (blocks <= 64 && tsk->expect_ack) {
>   				tsk->snd_backlog = blocks;
>   				sent += send;
>   				break;
> +			} else if (blocks > 64) {
> +				tsk->pkt_cnt += skb_queue_len(txq);
> +			} else {
> +				msg_set_ack_required(buf_msg(skb_peek_tail(txq)));
> +				tsk->expect_ack = true;
> +				tsk->msg_acc = 0;
> +				tsk->pkt_cnt = 0;
>   			}
> -			tsk->expect_ack = true;
>   		} else {
>   			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
>   			if (unlikely(rc != send))
> @@ -2092,7 +2126,7 @@ static void tipc_sk_proto_rcv(struct sock *sk,
>   		smp_wmb();
>   		tsk->cong_link_cnt--;
>   		wakeup = true;
> -		tipc_sk_push_backlog(tsk);
> +		tipc_sk_push_backlog(tsk, false);
>   		break;
>   	case GROUP_PROTOCOL:
>   		tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq);
> @@ -2181,7 +2215,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
>   		return false;
>   	case TIPC_ESTABLISHED:
>   		if (!skb_queue_empty(&sk->sk_write_queue))
> -			tipc_sk_push_backlog(tsk);
> +			tipc_sk_push_backlog(tsk, false);
>   		/* Accept only connection-based messages sent by peer */
>   		if (likely(con_msg && !err && pport == oport &&
>   			   pnode == onode)) {
> @@ -2189,8 +2223,10 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
>   				struct sk_buff *skb;
>   
>   				skb = tipc_sk_build_ack(tsk);
> -				if (skb)
> +				if (skb) {
> +					msg_set_nagle_ack(buf_msg(skb));
>   					__skb_queue_tail(xmitq, skb);
> +				}
>   			}
>   			return true;
>   		}
Nice job. Does this even solve the latency problem you had observed at 
customer site?
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
