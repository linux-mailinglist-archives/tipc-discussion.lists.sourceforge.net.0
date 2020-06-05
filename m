Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6E11EF88A
	for <lists+tipc-discussion@lfdr.de>; Fri,  5 Jun 2020 15:03:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jhC03-0004N4-Pq; Fri, 05 Jun 2020 13:03:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jhC01-0004Mw-TQ
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Jun 2020 13:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OjL5aPbzmJyaMrUYVfTwdrMln8oKfJ+zt+SrOU1ugc4=; b=nPfo9yzylsNv8ooza+4sGjYrx8
 J2hRg54snuAqIOzsfOUMS5OwP35+ClzPGqP6WNnhlQpOTzzo+mkWsR52x2LRJVvZ5bJi9g/jmZ2k5
 QBc4Z0qdHZAOoxNiEiTKIndjB7mAUgGQE9clfa7gY6DlUPGwXlQfXWjm4DzuUTBL5ki8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OjL5aPbzmJyaMrUYVfTwdrMln8oKfJ+zt+SrOU1ugc4=; b=EksLbQxU6zaubhnr7QLXIF4gEn
 gTj1L2vedMMtjBRU2CZ/jCxC7nfoo5l8eQQFRlTn0VL7Dsup45OYPft+htl44yABZAQAXxrxBDMcw
 gAZWeXPqxut4bbOS4lWG9lP6YkFiMbyDZ6LfZzYgRreaHI5ElMJna4z1n7CL8MVxT0D8=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jhBzw-009sLo-OG
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Jun 2020 13:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591362167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OjL5aPbzmJyaMrUYVfTwdrMln8oKfJ+zt+SrOU1ugc4=;
 b=d54mQehzHUOCqWqTc+vb3ZkVcsRaDjGP+JryWUI8H/zjDU3evZu1KCTWe64+0ijgR8a+vI
 UNIUHW0mRm8rt5g+tYXPUA9g8KJI7+KmQvDUNeD5GFxidGUXrM1efb+picAyQbUS77zOwf
 HGHGjtmc6UFT4JVZ4RNaT3bxTPDM3QM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-8eNp5hoOPtm6RsoTKOE2Uw-1; Fri, 05 Jun 2020 09:02:45 -0400
X-MC-Unique: 8eNp5hoOPtm6RsoTKOE2Uw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6D551854C57;
 Fri,  5 Jun 2020 13:02:43 +0000 (UTC)
Received: from [10.10.117.121] (ovpn-117-121.rdu2.redhat.com [10.10.117.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6291C62932;
 Fri,  5 Jun 2020 13:02:42 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200605075212.18700-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <19d16ffb-f229-5e30-b392-7ecc41721576@redhat.com>
Date: Fri, 5 Jun 2020 09:02:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200605075212.18700-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jhBzw-009sLo-OG
Subject: Re: [tipc-discussion] [next-net v6] tipc: update a binding service
 via broadcast
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



On 6/5/20 3:52 AM, Hoang Huu Le wrote:
> Currently, updating binding table (add service binding to
> name table/withdraw a service binding) is being sent over replicast.
> However, if we are scaling up clusters to > 100 nodes/containers this
> method is less affection because of looping through nodes in a cluster one
> by one.
>
> It is worth to use broadcast to update a binding service. This way, the
> binding table can be updated on all peer nodes in one shot.
>
> Broadcast is used when all peer nodes, as indicated by a new capability
> flag TIPC_NAMED_BCAST, support reception of this message type.
>
> Four problems need to be considered when introducing this feature.
> 1) When establishing a link to a new peer node we still update this by a
> unicast 'bulk' update. This may lead to race conditions, where a later
> broadcast publication/withdrawal bypass the 'bulk', resulting in
> disordered publications, or even that a withdrawal may arrive before the
> corresponding publication. We solve this by adding an 'is_last_bulk' bit
> in the last bulk messages so that it can be distinguished from all other
> messages. Only when this message has arrived do we open up for reception
> of broadcast publications/withdrawals.
> 2) When a first legacy node is added to the cluster all distribution
> will switch over to use the legacy 'replicast' method, while the
> opposite happens when the last legacy node leaves the cluster. This
> entails another risk of message disordering that has to be handled. We
> solve this by adding a sequence number to the broadcast/replicast
> messages, so that disordering can be discovered and corrected. Note
> however that we don't need to consider potential message loss or
> duplication at this protocol level.
> 3) Bulk messages don't contain any sequence numbers, and will always
> arrive in order. Hence we must exempt those from the sequence number
> control and deliver them unconditionally. We solve this by adding a new
> 'is_bulk' bit in those messages so that they can be recognized.
> 4) Legacy messages, which don't contain any new bits or sequence
> numbers, but neither can arrive out of order, also need to be exempt
> from the initial synchronization and sequence number check, and
> delivered unconditionally. Therefore, we add another 'is_not_legacy' bit
> to all new messages so that those can be distinguished from legacy
> messages and the latter delivered directly.
---
If you add the above three dashes before the version info that will not 
by accident be considered part of the commit log.
But of course our internal versioning is irrelevant to David M, so you 
should just remove this info before posting.
> v2: resolve synchronization problem when switching from unicast to
> broadcast
>
> v5: - never use broadcast if there is a single node not understanding it
>      - always use broadcast otherwise
>      - add sequence numbering to non-bulk messages
>
> v6: update Jon's comment
>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> ---
>   net/tipc/bcast.c      |   6 +--
>   net/tipc/bcast.h      |   4 +-
>   net/tipc/link.c       |   2 +-
>   net/tipc/msg.h        |  40 +++++++++++++++
>   net/tipc/name_distr.c | 115 +++++++++++++++++++++++++++++++-----------
>   net/tipc/name_distr.h |   9 ++--
>   net/tipc/name_table.c |   9 +++-
>   net/tipc/name_table.h |   2 +
>   net/tipc/node.c       |  28 +++++++---
>   net/tipc/node.h       |   8 +--
>   10 files changed, 175 insertions(+), 48 deletions(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 4c20be08b9c4..9d085ad6f0cf 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -249,8 +249,8 @@ static void tipc_bcast_select_xmit_method(struct net *net, int dests,
>    * Consumes the buffer chain.
>    * Returns 0 if success, otherwise errno: -EHOSTUNREACH,-EMSGSIZE
>    */
> -static int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> -			   u16 *cong_link_cnt)
> +int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> +		    u16 *cong_link_cnt)
>   {
>   	struct tipc_link *l = tipc_bc_sndlink(net);
>   	struct sk_buff_head xmitq;
> @@ -746,7 +746,7 @@ void tipc_nlist_purge(struct tipc_nlist *nl)
>   	nl->local = false;
>   }
>   
> -u32 tipc_bcast_get_broadcast_mode(struct net *net)
> +u32 tipc_bcast_get_mode(struct net *net)
>   {
>   	struct tipc_bc_base *bb = tipc_bc_base(net);
>   
> diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> index 9e847d9617d3..b3b883e2a823 100644
> --- a/net/tipc/bcast.h
> +++ b/net/tipc/bcast.h
> @@ -89,6 +89,8 @@ void tipc_bcast_toggle_rcast(struct net *net, bool supp);
>   int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
>   		    struct tipc_mc_method *method, struct tipc_nlist *dests,
>   		    u16 *cong_link_cnt);
> +int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> +		    u16 *cong_link_cnt);
>   int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb);
>   void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
>   			struct tipc_msg *hdr);
> @@ -98,7 +100,7 @@ int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg);
>   int tipc_nl_bc_link_set(struct net *net, struct nlattr *attrs[]);
>   int tipc_bclink_reset_stats(struct net *net);
>   
> -u32 tipc_bcast_get_broadcast_mode(struct net *net);
> +u32 tipc_bcast_get_mode(struct net *net);
>   u32 tipc_bcast_get_broadcast_ratio(struct net *net);
>   
>   void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index d4675e922a8f..da0b30733549 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -2646,7 +2646,7 @@ int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg)
>   	struct nlattr *attrs;
>   	struct nlattr *prop;
>   	struct tipc_net *tn = net_generic(net, tipc_net_id);
> -	u32 bc_mode = tipc_bcast_get_broadcast_mode(net);
> +	u32 bc_mode = tipc_bcast_get_mode(net);
>   	u32 bc_ratio = tipc_bcast_get_broadcast_ratio(net);
>   	struct tipc_link *bcl = tn->bcl;
>   
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 871feadbbc19..d53914316684 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -409,6 +409,36 @@ static inline void msg_set_errcode(struct tipc_msg *m, u32 err)
>   	msg_set_bits(m, 1, 25, 0xf, err);
>   }
>   
> +static inline void msg_set_bulk(struct tipc_msg *m)
> +{
> +	msg_set_bits(m, 1, 28, 0x1, 1);
> +}
> +
> +static inline u32 msg_is_bulk(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 1, 28, 0x1);
> +}
> +
> +static inline void msg_set_last_bulk(struct tipc_msg *m)
> +{
> +	msg_set_bits(m, 1, 27, 0x1, 1);
> +}
> +
> +static inline u32 msg_is_last_bulk(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 1, 27, 0x1);
> +}
> +
> +static inline void msg_set_non_legacy(struct tipc_msg *m)
> +{
> +	msg_set_bits(m, 1, 26, 0x1, 1);
> +}
> +
> +static inline u32 msg_is_legacy(struct tipc_msg *m)
> +{
> +	return !msg_bits(m, 1, 26, 0x1);
> +}
> +
>   static inline u32 msg_reroute_cnt(struct tipc_msg *m)
>   {
>   	return msg_bits(m, 1, 21, 0xf);
> @@ -538,6 +568,16 @@ static inline void msg_set_origport(struct tipc_msg *m, u32 p)
>   	msg_set_word(m, 4, p);
>   }
>   
> +static inline u16 msg_named_seqno(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 4, 0, 0xffff);
> +}
> +
> +static inline void msg_set_named_seqno(struct tipc_msg *m, u16 n)
> +{
> +	msg_set_bits(m, 4, 0, 0xffff, n);
> +}
> +
>   static inline u32 msg_destport(struct tipc_msg *m)
>   {
>   	return msg_word(m, 5);
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 5feaf3b67380..6cbd4b271768 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -102,7 +102,8 @@ struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ)
>   		pr_warn("Publication distribution failure\n");
>   		return NULL;
>   	}
> -
> +	msg_set_named_seqno(buf_msg(skb), nt->snd_nxt++);
> +	msg_set_non_legacy(buf_msg(skb));
>   	item = (struct distr_item *)msg_data(buf_msg(skb));
>   	publ_to_item(item, publ);
>   	return skb;
> @@ -114,8 +115,8 @@ struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ)
>   struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
>   {
>   	struct name_table *nt = tipc_name_table(net);
> -	struct sk_buff *buf;
>   	struct distr_item *item;
> +	struct sk_buff *skb;
>   
>   	write_lock_bh(&nt->cluster_scope_lock);
>   	list_del(&publ->binding_node);
> @@ -123,15 +124,16 @@ struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
>   	if (publ->scope == TIPC_NODE_SCOPE)
>   		return NULL;
>   
> -	buf = named_prepare_buf(net, WITHDRAWAL, ITEM_SIZE, 0);
> -	if (!buf) {
> +	skb = named_prepare_buf(net, WITHDRAWAL, ITEM_SIZE, 0);
> +	if (!skb) {
>   		pr_warn("Withdrawal distribution failure\n");
>   		return NULL;
>   	}
> -
> -	item = (struct distr_item *)msg_data(buf_msg(buf));
> +	msg_set_named_seqno(buf_msg(skb), nt->snd_nxt++);
> +	msg_set_non_legacy(buf_msg(skb));
> +	item = (struct distr_item *)msg_data(buf_msg(skb));
>   	publ_to_item(item, publ);
> -	return buf;
> +	return skb;
>   }
>   
>   /**
> @@ -141,7 +143,7 @@ struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
>    * @pls: linked list of publication items to be packed into buffer chain
>    */
>   static void named_distribute(struct net *net, struct sk_buff_head *list,
> -			     u32 dnode, struct list_head *pls)
> +			     u32 dnode, struct list_head *pls, u16 seqno)
>   {
>   	struct publication *publ;
>   	struct sk_buff *skb = NULL;
> @@ -149,6 +151,7 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
>   	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) - INT_H_SIZE) /
>   			ITEM_SIZE) * ITEM_SIZE;
>   	u32 msg_rem = msg_dsz;
> +	struct tipc_msg *hdr;
>   
>   	list_for_each_entry(publ, pls, binding_node) {
>   		/* Prepare next buffer: */
> @@ -159,8 +162,11 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
>   				pr_warn("Bulk publication failure\n");
>   				return;
>   			}
> -			msg_set_bc_ack_invalid(buf_msg(skb), true);
> -			item = (struct distr_item *)msg_data(buf_msg(skb));
> +			hdr = buf_msg(skb);
> +			msg_set_bc_ack_invalid(hdr, true);
> +			msg_set_bulk(hdr);
> +			msg_set_non_legacy(hdr);
> +			item = (struct distr_item *)msg_data(hdr);
>   		}
>   
>   		/* Pack publication into message: */
> @@ -176,24 +182,35 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
>   		}
>   	}
>   	if (skb) {
> -		msg_set_size(buf_msg(skb), INT_H_SIZE + (msg_dsz - msg_rem));
> +		hdr = buf_msg(skb);
> +		msg_set_size(hdr, INT_H_SIZE + (msg_dsz - msg_rem));
>   		skb_trim(skb, INT_H_SIZE + (msg_dsz - msg_rem));
>   		__skb_queue_tail(list, skb);
>   	}
> +	hdr = buf_msg(skb_peek_tail(list));
> +	msg_set_last_bulk(hdr);
> +	msg_set_named_seqno(hdr, seqno);
>   }
>   
>   /**
>    * tipc_named_node_up - tell specified node about all publications by this node
>    */
> -void tipc_named_node_up(struct net *net, u32 dnode)
> +void tipc_named_node_up(struct net *net, u32 dnode, u16 capabilities)
>   {
>   	struct name_table *nt = tipc_name_table(net);
> +	struct tipc_net *tn = tipc_net(net);
>   	struct sk_buff_head head;
> +	u16 seqno;
>   
>   	__skb_queue_head_init(&head);
> +	spin_lock_bh(&tn->nametbl_lock);
> +	if (!(capabilities & TIPC_NAMED_BCAST))
> +		nt->rc_dests++;
> +	seqno = nt->snd_nxt;
> +	spin_unlock_bh(&tn->nametbl_lock);
>   
>   	read_lock_bh(&nt->cluster_scope_lock);
> -	named_distribute(net, &head, dnode, &nt->cluster_scope);
> +	named_distribute(net, &head, dnode, &nt->cluster_scope, seqno);
>   	tipc_node_xmit(net, &head, dnode, 0);
>   	read_unlock_bh(&nt->cluster_scope_lock);
>   }
> @@ -245,13 +262,21 @@ static void tipc_dist_queue_purge(struct net *net, u32 addr)
>   	spin_unlock_bh(&tn->nametbl_lock);
>   }
>   
> -void tipc_publ_notify(struct net *net, struct list_head *nsub_list, u32 addr)
> +void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
> +		      u32 addr, u16 capabilities)
>   {
> +	struct name_table *nt = tipc_name_table(net);
> +	struct tipc_net *tn = tipc_net(net);
> +
>   	struct publication *publ, *tmp;
>   
>   	list_for_each_entry_safe(publ, tmp, nsub_list, binding_node)
>   		tipc_publ_purge(net, publ, addr);
>   	tipc_dist_queue_purge(net, addr);
> +	spin_lock_bh(&tn->nametbl_lock);
> +	if (!(capabilities & TIPC_NAMED_BCAST))
> +		nt->rc_dests--;
> +	spin_unlock_bh(&tn->nametbl_lock);
>   }
>   
>   /**
> @@ -295,29 +320,61 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
>   	return false;
>   }
>   
> +struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
> +				   u16 *rcv_nxt, bool *open)
> +{
> +	struct sk_buff *skb, *tmp;
> +	struct tipc_msg *hdr;
> +	u16 seqno;
> +
> +	skb_queue_walk_safe(namedq, skb, tmp) {
> +		skb_linearize(skb);
> +		hdr = buf_msg(skb);
> +		seqno = msg_named_seqno(hdr);
> +		if (msg_is_last_bulk(hdr)) {
> +			*rcv_nxt = seqno;
> +			*open = true;
> +		}
> +		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
> +			__skb_unlink(skb, namedq);
> +			return skb;
> +		}
> +
> +		if (*open && (*rcv_nxt == seqno)) {
> +			(*rcv_nxt)++;
> +			__skb_unlink(skb, namedq);
> +			return skb;
> +		}
> +
> +		if (less(seqno, *rcv_nxt)) {
> +			__skb_unlink(skb, namedq);
> +			kfree_skb(skb);
> +			continue;
Still not needed. This queue should be flushed in 
tipc_node_lost_contact(), which I now see we don't do.
This has to e fixed too.
///jon
> +		}
> +	}
> +	return NULL;
> +}
> +
>   /**
>    * tipc_named_rcv - process name table update messages sent by another node
>    */
> -void tipc_named_rcv(struct net *net, struct sk_buff_head *inputq)
> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
> +		    u16 *rcv_nxt, bool *open)
>   {
> -	struct tipc_net *tn = net_generic(net, tipc_net_id);
> -	struct tipc_msg *msg;
> +	struct tipc_net *tn = tipc_net(net);
>   	struct distr_item *item;
> -	uint count;
> -	u32 node;
> +	struct tipc_msg *hdr;
>   	struct sk_buff *skb;
> -	int mtype;
> +	u32 count, node = 0;
>   
>   	spin_lock_bh(&tn->nametbl_lock);
> -	for (skb = skb_dequeue(inputq); skb; skb = skb_dequeue(inputq)) {
> -		skb_linearize(skb);
> -		msg = buf_msg(skb);
> -		mtype = msg_type(msg);
> -		item = (struct distr_item *)msg_data(msg);
> -		count = msg_data_sz(msg) / ITEM_SIZE;
> -		node = msg_orignode(msg);
> +	while ((skb = tipc_named_dequeue(namedq, rcv_nxt, open))) {
> +		hdr = buf_msg(skb);
> +		node = msg_orignode(hdr);
> +		item = (struct distr_item *)msg_data(hdr);
> +		count = msg_data_sz(hdr) / ITEM_SIZE;
>   		while (count--) {
> -			tipc_update_nametbl(net, item, node, mtype);
> +			tipc_update_nametbl(net, item, node, msg_type(hdr));
>   			item++;
>   		}
>   		kfree_skb(skb);
> @@ -345,6 +402,6 @@ void tipc_named_reinit(struct net *net)
>   		publ->node = self;
>   	list_for_each_entry_rcu(publ, &nt->cluster_scope, binding_node)
>   		publ->node = self;
> -
> +	nt->rc_dests = 0;
>   	spin_unlock_bh(&tn->nametbl_lock);
>   }
> diff --git a/net/tipc/name_distr.h b/net/tipc/name_distr.h
> index 63fc73e0fa6c..092323158f06 100644
> --- a/net/tipc/name_distr.h
> +++ b/net/tipc/name_distr.h
> @@ -67,11 +67,14 @@ struct distr_item {
>   	__be32 key;
>   };
>   
> +void tipc_named_bcast(struct net *net, struct sk_buff *skb);
>   struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ);
>   struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ);
> -void tipc_named_node_up(struct net *net, u32 dnode);
> -void tipc_named_rcv(struct net *net, struct sk_buff_head *msg_queue);
> +void tipc_named_node_up(struct net *net, u32 dnode, u16 capabilities);
> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
> +		    u16 *rcv_nxt, bool *open);
>   void tipc_named_reinit(struct net *net);
> -void tipc_publ_notify(struct net *net, struct list_head *nsub_list, u32 addr);
> +void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
> +		      u32 addr, u16 capabilities);
>   
>   #endif
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 359b2bc888cf..2ac33d32edc2 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -729,6 +729,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>   	struct tipc_net *tn = tipc_net(net);
>   	struct publication *p = NULL;
>   	struct sk_buff *skb = NULL;
> +	u32 rc_dests;
>   
>   	spin_lock_bh(&tn->nametbl_lock);
>   
> @@ -743,12 +744,14 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>   		nt->local_publ_count++;
>   		skb = tipc_named_publish(net, p);
>   	}
> +	rc_dests = nt->rc_dests;
>   exit:
>   	spin_unlock_bh(&tn->nametbl_lock);
>   
>   	if (skb)
> -		tipc_node_broadcast(net, skb);
> +		tipc_node_broadcast(net, skb, rc_dests);
>   	return p;
> +
>   }
>   
>   /**
> @@ -762,6 +765,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>   	u32 self = tipc_own_addr(net);
>   	struct sk_buff *skb = NULL;
>   	struct publication *p;
> +	u32 rc_dests;
>   
>   	spin_lock_bh(&tn->nametbl_lock);
>   
> @@ -775,10 +779,11 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>   		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
>   		       type, lower, upper, key);
>   	}
> +	rc_dests = nt->rc_dests;
>   	spin_unlock_bh(&tn->nametbl_lock);
>   
>   	if (skb) {
> -		tipc_node_broadcast(net, skb);
> +		tipc_node_broadcast(net, skb, rc_dests);
>   		return 1;
>   	}
>   	return 0;
> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
> index 728bc7016c38..8064e1986e2c 100644
> --- a/net/tipc/name_table.h
> +++ b/net/tipc/name_table.h
> @@ -106,6 +106,8 @@ struct name_table {
>   	struct list_head cluster_scope;
>   	rwlock_t cluster_scope_lock;
>   	u32 local_publ_count;
> +	u32 rc_dests;
> +	u32 snd_nxt;
>   };
>   
>   int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 803a3a6d0f50..ad8d7bce1f98 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -75,6 +75,8 @@ struct tipc_bclink_entry {
>   	struct sk_buff_head arrvq;
>   	struct sk_buff_head inputq2;
>   	struct sk_buff_head namedq;
> +	u16 named_rcv_nxt;
> +	bool named_open;
>   };
>   
>   /**
> @@ -396,10 +398,10 @@ static void tipc_node_write_unlock(struct tipc_node *n)
>   	write_unlock_bh(&n->lock);
>   
>   	if (flags & TIPC_NOTIFY_NODE_DOWN)
> -		tipc_publ_notify(net, publ_list, addr);
> +		tipc_publ_notify(net, publ_list, addr, n->capabilities);
>   
>   	if (flags & TIPC_NOTIFY_NODE_UP)
> -		tipc_named_node_up(net, addr);
> +		tipc_named_node_up(net, addr, n->capabilities);
>   
>   	if (flags & TIPC_NOTIFY_LINK_UP) {
>   		tipc_mon_peer_up(net, addr, bearer_id);
> @@ -1729,12 +1731,23 @@ int tipc_node_distr_xmit(struct net *net, struct sk_buff_head *xmitq)
>   	return 0;
>   }
>   
> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
>   {
> +	struct sk_buff_head xmitq;
>   	struct sk_buff *txskb;
>   	struct tipc_node *n;
> +	u16 dummy;
>   	u32 dst;
>   
> +	/* Use broadcast if all nodes support it */
> +	if (!rc_dests && tipc_bcast_get_mode(net) != BCLINK_MODE_RCAST) {
> +		__skb_queue_head_init(&xmitq);
> +		__skb_queue_tail(&xmitq, skb);
> +		tipc_bcast_xmit(net, &xmitq, &dummy);
> +		return;
> +	}
> +
> +	/* Otherwise use legacy replicast method */
>   	rcu_read_lock();
>   	list_for_each_entry_rcu(n, tipc_nodes(net), list) {
>   		dst = n->addr;
> @@ -1749,7 +1762,6 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>   		tipc_node_xmit_skb(net, txskb, dst, 0);
>   	}
>   	rcu_read_unlock();
> -
>   	kfree_skb(skb);
>   }
>   
> @@ -1844,7 +1856,9 @@ static void tipc_node_bc_rcv(struct net *net, struct sk_buff *skb, int bearer_id
>   
>   	/* Handle NAME_DISTRIBUTOR messages sent from 1.7 nodes */
>   	if (!skb_queue_empty(&n->bc_entry.namedq))
> -		tipc_named_rcv(net, &n->bc_entry.namedq);
> +		tipc_named_rcv(net, &n->bc_entry.namedq,
> +			       &n->bc_entry.named_rcv_nxt,
> +			       &n->bc_entry.named_open);
>   
>   	/* If reassembly or retransmission failure => reset all links to peer */
>   	if (rc & TIPC_LINK_DOWN_EVT)
> @@ -2109,7 +2123,9 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
>   		tipc_node_link_down(n, bearer_id, false);
>   
>   	if (unlikely(!skb_queue_empty(&n->bc_entry.namedq)))
> -		tipc_named_rcv(net, &n->bc_entry.namedq);
> +		tipc_named_rcv(net, &n->bc_entry.namedq,
> +			       &n->bc_entry.named_rcv_nxt,
> +			       &n->bc_entry.named_open);
>   
>   	if (unlikely(!skb_queue_empty(&n->bc_entry.inputq1)))
>   		tipc_node_mcast_rcv(n);
> diff --git a/net/tipc/node.h b/net/tipc/node.h
> index a6803b449a2c..9f6f13f1604f 100644
> --- a/net/tipc/node.h
> +++ b/net/tipc/node.h
> @@ -55,7 +55,8 @@ enum {
>   	TIPC_MCAST_RBCTL      = (1 << 7),
>   	TIPC_GAP_ACK_BLOCK    = (1 << 8),
>   	TIPC_TUNNEL_ENHANCED  = (1 << 9),
> -	TIPC_NAGLE            = (1 << 10)
> +	TIPC_NAGLE            = (1 << 10),
> +	TIPC_NAMED_BCAST      = (1 << 11)
>   };
>   
>   #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
> @@ -68,7 +69,8 @@ enum {
>   				TIPC_MCAST_RBCTL       |   \
>   				TIPC_GAP_ACK_BLOCK     |   \
>   				TIPC_TUNNEL_ENHANCED   |   \
> -				TIPC_NAGLE)
> +				TIPC_NAGLE             |   \
> +				TIPC_NAMED_BCAST)
>   
>   #define INVALID_BEARER_ID -1
>   
> @@ -101,7 +103,7 @@ int tipc_node_xmit_skb(struct net *net, struct sk_buff *skb, u32 dest,
>   		       u32 selector);
>   void tipc_node_subscribe(struct net *net, struct list_head *subscr, u32 addr);
>   void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests);
>   int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
>   void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
>   int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
