Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5358037FFB4
	for <lists+tipc-discussion@lfdr.de>; Thu, 13 May 2021 23:16:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhIgO-0003FZ-AJ; Thu, 13 May 2021 21:15:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lhIgM-0003FR-GD
 for tipc-discussion@lists.sourceforge.net; Thu, 13 May 2021 21:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5SdWwEV+zCJbxKelabW7d6utwsZpaXtUQB9xq50xT0E=; b=DAsHTS/nmRuvhkHqfkfYJPzeae
 oQHmrQcRH3ebFirjunaW5OtsJ0NciNHnmX+O8ORmPUdwoiNEn6Z90ZpejH7Vr2xcLs96D0mCen4w4
 ZkrpjG8x/p8Bi6of9/JxYh4X6hYAMP5Y+o6+/LziqQgJP0dHT/NNH7yRPAD/MuItxUcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5SdWwEV+zCJbxKelabW7d6utwsZpaXtUQB9xq50xT0E=; b=SJ1Be5QJ3IM+eDzR8I+F8uabs+
 KtUiBvQJCYOAjJU3fA5LPMo5/X8UbJ5or4wzwA44FvstxJC83IOlfYh/KRFoL00YQMR4PZQb6nRKN
 q2in2UI+EzwneYMPLnBP2cTDRYedqlxerYO5aBVwL9HjkTcV6G7ZNSnFAeELZ8G4cFnI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lhIgF-007I11-0n
 for tipc-discussion@lists.sourceforge.net; Thu, 13 May 2021 21:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620940532;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5SdWwEV+zCJbxKelabW7d6utwsZpaXtUQB9xq50xT0E=;
 b=LbC4ux+29Jibj91SDEobzO+kOVdafz9KZXCplaPz3t7RzAq07iXlbyKnNYAmhduXZ0g59b
 MozVNi+Ad9MBQsR689t8VCqmVcNQHmChNZhy+uYPIzD3yKxnYXEq/YlQ45F0zbuKSi3TNW
 dUxA/wi+cfgDpQscW9ScbTHAHwGwbPk=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-sMSk2ZOvOwywTwLXcfOnGg-1; Thu, 13 May 2021 17:15:31 -0400
X-MC-Unique: sMSk2ZOvOwywTwLXcfOnGg-1
Received: by mail-qk1-f197.google.com with SMTP id
 u126-20020a3792840000b02902e769005fe1so20389811qkd.2
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 13 May 2021 14:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5SdWwEV+zCJbxKelabW7d6utwsZpaXtUQB9xq50xT0E=;
 b=jR7NpLVFBrpr0cLq5nFe/1QoIjI2CkRW8zTIA4OJTU9GImZYvjoO28BhOndit+uBCA
 nZB6AQWbT3CJ9XKLjoTQI4tSL+8TLSTXuheo6qtUUQH39XVeT2HKEDZEVf1GURZL4256
 pvslSrz65x+BIcwXHH0W4B5LBcZGwilf8cpemMmD5ACLzSEXLbe2PybW6FU++Y7UYrp0
 19GRM6muxg+3w2XonME/KafSa7eLaGRZ5vGcQpMdHbvKYbDZCBtRq6qpGyJHhFkrtAhH
 ratP9Aq7VKDkvWB2SBbUpeG72aWvn31Hrc+2wVox+o9zcpMn9HLFyPXk5IHyzD4sKNIF
 gYBA==
X-Gm-Message-State: AOAM531u8uPahOgbixmX4ZPIR6CZon+EA1NwuOZMUY1guABV6XRscQN0
 oyyeWL32NWuKdc90Dnn4nxpNxS4sFrKjNouoNvbnwGZq+tVJPVytImxGLrJuglzNws8axLF7qN9
 GGmCR3SC/cou65XR/hrkaRNlLBK8iMJn+0DSX
X-Received: by 2002:ad4:4f82:: with SMTP id em2mr42994377qvb.55.1620940530565; 
 Thu, 13 May 2021 14:15:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzq6e2qJ2N6ZaFPSLp+HaYVI5zp7erPP/7GjPYOwJjKYRtBtokfcDULNigOX+USK/Hvshsoyg==
X-Received: by 2002:ad4:4f82:: with SMTP id em2mr42994360qvb.55.1620940530363; 
 Thu, 13 May 2021 14:15:30 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id q13sm3249089qkn.10.2021.05.13.14.15.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 May 2021 14:15:29 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net
References: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <3dd765e7-3509-1813-e1fe-894d26843c2e@redhat.com>
Date: Thu, 13 May 2021 17:15:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhIgF-007I11-0n
Subject: Re: [tipc-discussion] [PATCH net] tipc: fix a race in
 tipc_sk_mcast_rcv
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
Cc: kuba@kernel.org, lyl2019@mail.ustc.edu.cn, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 4/28/21 3:30 PM, Xin Long wrote:
> After commit cb1b728096f5 ("tipc: eliminate race condition at multicast
> reception"), when processing the multicast reception, the packets are
> firstly moved from be->inputq1 to be->arrvq in tipc_node_broadcast(),
> then process be->arrvq in tipc_sk_mcast_rcv().
>
> In tipc_sk_mcast_rcv(), it gets the 1st skb by skb_peek(), then process
> this skb without any lock. It means meanwhile another thread could also
> call tipc_sk_mcast_rcv() and process be->arrvq and pick up the same skb,
> then free it. A double free issue will be caused as Li Shuang reported:
>
>    [] kernel BUG at mm/slub.c:305!
>    []  kfree+0x3a7/0x3d0
>    []  kfree_skb+0x32/0xa0
>    []  skb_release_data+0xb4/0x170
>    []  kfree_skb+0x32/0xa0
>    []  skb_release_data+0xb4/0x170
>    []  kfree_skb+0x32/0xa0
>    []  tipc_sk_mcast_rcv+0x1fa/0x380 [tipc]
>    []  tipc_rcv+0x411/0x1120 [tipc]
>    []  tipc_udp_recv+0xc6/0x1e0 [tipc]
>    []  udp_queue_rcv_one_skb+0x1a9/0x500
>    []  udp_unicast_rcv_skb.isra.66+0x75/0x90
>    []  __udp4_lib_rcv+0x537/0xc40
>    []  ip_protocol_deliver_rcu+0xdf/0x1d0
>    []  ip_local_deliver_finish+0x4a/0x50
>    []  ip_local_deliver+0x6b/0xe0
>    []  ip_rcv+0x27b/0x36a
>    []  __netif_receive_skb_core+0xb47/0xc40
>    []  process_backlog+0xae/0x160
>
> Commit 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
> tried to fix this double free by not releasing the skbs in be->arrvq,
> which would definitely cause the skbs' leak.
>
> The problem is we shouldn't process the skbs in be->arrvq without any
> lock to protect the code from peeking to dequeuing them. The fix here
> is to use a temp skb list instead of be->arrvq to make it "per thread
> safe". While at it, remove the no-longer-used be->arrvq.
>
> Fixes: cb1b728096f5 ("tipc: eliminate race condition at multicast reception")
> Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/node.c   |  9 ++++-----
>   net/tipc/socket.c | 16 +++-------------
>   2 files changed, 7 insertions(+), 18 deletions(-)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index e0ee832..0c636fb 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -72,7 +72,6 @@ struct tipc_link_entry {
>   struct tipc_bclink_entry {
>   	struct tipc_link *link;
>   	struct sk_buff_head inputq1;
> -	struct sk_buff_head arrvq;
>   	struct sk_buff_head inputq2;
>   	struct sk_buff_head namedq;
>   	u16 named_rcv_nxt;
> @@ -552,7 +551,6 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>   	INIT_LIST_HEAD(&n->conn_sks);
>   	skb_queue_head_init(&n->bc_entry.namedq);
>   	skb_queue_head_init(&n->bc_entry.inputq1);
> -	__skb_queue_head_init(&n->bc_entry.arrvq);
>   	skb_queue_head_init(&n->bc_entry.inputq2);
>   	for (i = 0; i < MAX_BEARERS; i++)
>   		spin_lock_init(&n->links[i].lock);
> @@ -1803,14 +1801,15 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
>   static void tipc_node_mcast_rcv(struct tipc_node *n)
>   {
>   	struct tipc_bclink_entry *be = &n->bc_entry;
> +	struct sk_buff_head tmpq;
>   
> -	/* 'arrvq' is under inputq2's lock protection */
> +	__skb_queue_head_init(&tmpq);
>   	spin_lock_bh(&be->inputq2.lock);
>   	spin_lock_bh(&be->inputq1.lock);
> -	skb_queue_splice_tail_init(&be->inputq1, &be->arrvq);
> +	skb_queue_splice_tail_init(&be->inputq1, &tmpq);
>   	spin_unlock_bh(&be->inputq1.lock);
>   	spin_unlock_bh(&be->inputq2.lock);
> -	tipc_sk_mcast_rcv(n->net, &be->arrvq, &be->inputq2);
> +	tipc_sk_mcast_rcv(n->net, &tmpq, &be->inputq2);
>   }
>   
>   static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 022999e..2870798 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1210,8 +1210,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>   	__skb_queue_head_init(&tmpq);
>   	INIT_LIST_HEAD(&dports);
>   
> -	skb = tipc_skb_peek(arrvq, &inputq->lock);
> -	for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
> +	while ((skb = __skb_dequeue(arrvq)) != NULL) {
>   		hdr = buf_msg(skb);
>   		user = msg_user(hdr);
>   		mtyp = msg_type(hdr);
> @@ -1220,13 +1219,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>   		type = msg_nametype(hdr);
>   
>   		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
> -			spin_lock_bh(&inputq->lock);
> -			if (skb_peek(arrvq) == skb) {
> -				__skb_dequeue(arrvq);
> -				__skb_queue_tail(inputq, skb);
> -			}
> -			kfree_skb(skb);
> -			spin_unlock_bh(&inputq->lock);
> +			skb_queue_tail(inputq, skb);
>   			continue;
>   		}
>   
> @@ -1263,10 +1256,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>   		}
>   		/* Append to inputq if not already done by other thread */
>   		spin_lock_bh(&inputq->lock);
> -		if (skb_peek(arrvq) == skb) {
> -			skb_queue_splice_tail_init(&tmpq, inputq);
> -			__skb_dequeue(arrvq);
> -		}
> +		skb_queue_splice_tail_init(&tmpq, inputq);
>   		spin_unlock_bh(&inputq->lock);
>   		__skb_queue_purge(&tmpq);
>   		kfree_skb(skb);
Nack.

This would invalidate the sequence guarantee of messages between two 
specific sockets.
The whole point of having a lock protected arrival queue is to preserve 
the order when messages are moved from inputq1 to inputq2.
Let's take a discussion on our mailing list.

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
