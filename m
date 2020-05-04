Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 576EF1C3F4E
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 18:04:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVdZj-0001HR-GF; Mon, 04 May 2020 16:04:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jVdZi-0001HG-Gq
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ckJ+D850tpVYjyqVH8YjqScBmkOKmFT19Vcd+l8NOEc=; b=QSFXHQPrBkN1fVcePJNrqZYfeO
 MkFw3j1zQFcq6ywYmlSU093wcGo3klQIL96jIrSvTTgVCunjNnlyUpw7UZVPYPmdWOAhvizUUlKIh
 ASzvMjeP70tTdoB1DA4HQXjqGI7h25jnr5t0OXPJUFa+SoXJ23FcZtbvnbJLeJhuuhvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ckJ+D850tpVYjyqVH8YjqScBmkOKmFT19Vcd+l8NOEc=; b=ZR6mbqtaJ09o6jSHtit/bi6HJH
 594Z3kyXkP3KF7AvZNck4kMNpOZhdtkIDTrIpQ/m0ok+CXa1X3tDFqnd/79NGi5HOWAMLUiE4V6TQ
 yv6weUsur97suWePIjIIrIwX2/83II2xNbXVqm5nD9m+wtzdAeGUa5bO3ZRID53BAdt0=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVdZg-0073sL-Tg
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588608241;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ckJ+D850tpVYjyqVH8YjqScBmkOKmFT19Vcd+l8NOEc=;
 b=MunEu2Axp8XLbnWq43B4A/EMfyre9uGG4R+85JPOQs/A06VZeIzyLuqCiCqn6+0NpjlJau
 BJUS+wC6bIet4tGMHKPa1odxlgpeUzERmdwTKkcnrlETlf5WW3Oz9zNc0rG/k4K6bflvGl
 QyWtgV8ZPB6GbAlwnHEKc83dr9kB38w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-0bzAA9_xPSqBZ8VRpgvHJA-1; Mon, 04 May 2020 11:57:19 -0400
X-MC-Unique: 0bzAA9_xPSqBZ8VRpgvHJA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D0391083E81;
 Mon,  4 May 2020 15:57:18 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F06FB1002389;
 Mon,  4 May 2020 15:57:16 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <4f18aee9-518d-6975-0587-98a6ca63fe38@redhat.com>
Date: Mon, 4 May 2020 11:57:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jVdZg-0073sL-Tg
Subject: Re: [tipc-discussion] [RFC PATCH 1/2] tipc: fix large latency in
 smart Nagle streaming
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
> Currently when a connection is in Nagle mode, we set the 'ack_required'
> bit in the last sending buffer and wait for the corresponding ACK prior
> to pushing more data. However, on the receiving side, the ACK is issued
> only when application actually gets
/gets/reads/
> the whole data. Even if part of the
> last buffer is received, we will not do the ACK as required.
Hmm, this sounds more like a bug than a weakness. Good that you caught it.
> This might
> cause an unnecessary delay since the receiver does not always fetch the
> message as fast as the sender, resulting in a large latency in the user
> message sending, which is [one RTT + the receiver processing time].
>
> The commit makes Nagle ACK as soon as possible i.e. when a message with
> the 'ack_required' arrives in the receiving side's stack even before it
> is processed / backlogged, put in the socket receive queue...
> This way, we can limit the streaming latency to one RTT as committed in
> Nagle mode.
>
> v2: optimize code
> v3: rebase to non debug
> v4: rename patch subject
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/socket.c | 43 ++++++++++++++++++++++++++++++++-----------
>   1 file changed, 32 insertions(+), 11 deletions(-)
>
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 693e8902161e..4e71774528ad 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1739,22 +1739,21 @@ static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
>   	return 0;
>   }
>   
> -static void tipc_sk_send_ack(struct tipc_sock *tsk)
> +static struct sk_buff *tipc_sk_build_ack(struct tipc_sock *tsk)
>   {
>   	struct sock *sk = &tsk->sk;
> -	struct net *net = sock_net(sk);
>   	struct sk_buff *skb = NULL;
>   	struct tipc_msg *msg;
>   	u32 peer_port = tsk_peer_port(tsk);
>   	u32 dnode = tsk_peer_node(tsk);
>   
>   	if (!tipc_sk_connected(sk))
> -		return;
> +		return NULL;
>   	skb = tipc_msg_create(CONN_MANAGER, CONN_ACK, INT_H_SIZE, 0,
>   			      dnode, tsk_own_node(tsk), peer_port,
>   			      tsk->portid, TIPC_OK);
>   	if (!skb)
> -		return;
> +		return NULL;
>   	msg = buf_msg(skb);
>   	msg_set_conn_ack(msg, tsk->rcv_unacked);
>   	tsk->rcv_unacked = 0;
> @@ -1764,7 +1763,20 @@ static void tipc_sk_send_ack(struct tipc_sock *tsk)
>   		tsk->rcv_win = tsk_adv_blocks(tsk->sk.sk_rcvbuf);
>   		msg_set_adv_win(msg, tsk->rcv_win);
>   	}
> -	tipc_node_xmit_skb(net, skb, dnode, msg_link_selector(msg));
> +
> +	return skb;
> +}
> +
> +static void tipc_sk_send_ack(struct tipc_sock *tsk)
> +{
> +	struct sk_buff *skb;
> +
> +	skb = tipc_sk_build_ack(tsk);
> +	if (!skb)
> +		return;
> +
> +	tipc_node_xmit_skb(sock_net(&tsk->sk), skb, tsk_peer_node(tsk),
> +			   msg_link_selector(buf_msg(skb)));
>   }
>   
>   static int tipc_wait_for_rcvmsg(struct socket *sock, long *timeop)
> @@ -1938,7 +1950,6 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
>   	bool peek = flags & MSG_PEEK;
>   	int offset, required, copy, copied = 0;
>   	int hlen, dlen, err, rc;
> -	bool ack = false;
>   	long timeout;
>   
>   	/* Catch invalid receive attempts */
> @@ -1983,7 +1994,6 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
>   
>   		/* Copy data if msg ok, otherwise return error/partial data */
>   		if (likely(!err)) {
> -			ack = msg_ack_required(hdr);
>   			offset = skb_cb->bytes_read;
>   			copy = min_t(int, dlen - offset, buflen - copied);
>   			rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> @@ -2011,7 +2021,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
>   
>   		/* Send connection flow control advertisement when applicable */
>   		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
> -		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
> +		if (tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
>   			tipc_sk_send_ack(tsk);
>   
>   		/* Exit if all requested data or FIN/error received */
> @@ -2105,9 +2115,11 @@ static void tipc_sk_proto_rcv(struct sock *sk,
>    * tipc_sk_filter_connect - check incoming message for a connection-based socket
>    * @tsk: TIPC socket
>    * @skb: pointer to message buffer.
> + * @xmitq: for Nagle ACK if any
>    * Returns true if message should be added to receive queue, false otherwise
>    */
> -static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
> +static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
> +				   struct sk_buff_head *xmitq)
>   {
>   	struct sock *sk = &tsk->sk;
>   	struct net *net = sock_net(sk);
> @@ -2171,8 +2183,17 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
>   		if (!skb_queue_empty(&sk->sk_write_queue))
>   			tipc_sk_push_backlog(tsk);
>   		/* Accept only connection-based messages sent by peer */
> -		if (likely(con_msg && !err && pport == oport && pnode == onode))
> +		if (likely(con_msg && !err && pport == oport &&
> +			   pnode == onode)) {
> +			if (msg_ack_required(hdr)) {
> +				struct sk_buff *skb;
> +
> +				skb = tipc_sk_build_ack(tsk);
> +				if (skb)
> +					__skb_queue_tail(xmitq, skb);
> +			}
>   			return true;
> +		}
>   		if (!tsk_peer_msg(tsk, hdr))
>   			return false;
>   		if (!err)
> @@ -2267,7 +2288,7 @@ static void tipc_sk_filter_rcv(struct sock *sk, struct sk_buff *skb,
>   	while ((skb = __skb_dequeue(&inputq))) {
>   		hdr = buf_msg(skb);
>   		limit = rcvbuf_limit(sk, skb);
> -		if ((sk_conn && !tipc_sk_filter_connect(tsk, skb)) ||
> +		if ((sk_conn && !tipc_sk_filter_connect(tsk, skb, xmitq)) ||
>   		    (!sk_conn && msg_connected(hdr)) ||
>   		    (!grp && msg_in_group(hdr)))
>   			err = TIPC_ERR_NO_PORT;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
