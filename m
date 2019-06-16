Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E27024735F
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 Jun 2019 08:47:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcOwn-0005V1-Gk; Sun, 16 Jun 2019 06:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hcOwm-0005Uu-MG
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 06:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aLccMgvN1j+l7H5X0i3y9/624eFA1Vwk2h5M/vK75W8=; b=b5i7uv+jzjpLDJdbo6e2mswBu2
 K+t9iYggTUekTKb4xan8L5vG61jaEolBtPX3CIsvVX9ivT/uUbhCxlYTwiqM7CqYoaWoqv8/TlDqZ
 48fP1F2s4FJfQF1Eo6h076hprxGA4o93foi1YLPuNxzV8WuucPdcSw02cXlKxJTAULlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aLccMgvN1j+l7H5X0i3y9/624eFA1Vwk2h5M/vK75W8=; b=O4Ke8Sryt/Q/TpN03XoKWPS9k3
 8gyJecbwfbFhAVHU+vXkzAMk5TmxfPnCnUranskMvu6fibNgKKj6Y5rOD9fFhzX/aF8UZ/TvoYgBX
 DtU3162HunFh398docknmiT4NKWb2vbkrJqm7HjrCPjd7iYCblmPWCsrRI7R9lneGkOQ=;
Received: from [192.103.53.11] (helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcOwj-00FrN5-EX
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 06:47:24 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5G6jY5P029788
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sat, 15 Jun 2019 23:45:50 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 15 Jun
 2019 23:45:27 -0700
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
 <20190604052239.9352-2-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <7efdc7b2-6141-6814-140c-cb05679f9c81@windriver.com>
Date: Sun, 16 Jun 2019 14:35:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604052239.9352-2-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1hcOwj-00FrN5-EX
Subject: Re: [tipc-discussion] [PATCH RFC 1/2] tipc: optimize link synching
 mechanism
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

On 6/4/19 1:22 PM, Tuong Lien wrote:
> This commit is along with the latter commit 4ec6a14c3933

The commit ID might be changed after the commit is merged into upstream,
which means the ID will be invalid as well.

 ("tipc: fix
> changeover issues due to large packet") to resolve the issues with the
> link changeover mechanism. See that commit for details.
> 
> Basically, for the link synching, from now on, we will send only one
> single ("dummy") SYNCH message to peer. The SYNCH message does not
> contain any data, just a header conveying the synch point to the peer.
> 
> A new node capability flag ("TIPC_TUNNEL_ENHANCED") is introduced for
> backward compatible!
> 
> Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/link.c | 26 ++++++++++++++++++++++++++
>  net/tipc/msg.h  | 10 ++++++++++
>  net/tipc/node.c |  6 ++++--
>  net/tipc/node.h |  6 ++++--
>  4 files changed, 44 insertions(+), 4 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index f5cd986e1e50..6924cf1e526f 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1637,6 +1637,7 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
>  	struct sk_buff_head *queue = &l->transmq;
>  	struct sk_buff_head tmpxq, tnlq;
>  	u16 pktlen, pktcnt, seqno = l->snd_nxt;
> +	u16 syncpt;
>  
>  	if (!tnl)
>  		return;
> @@ -1656,6 +1657,31 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
>  	tipc_link_xmit(l, &tnlq, &tmpxq);
>  	__skb_queue_purge(&tmpxq);
>  
> +	/* Link Synching:
> +	 * From now on, send only one single ("dummy") SYNCH message
> +	 * to peer. The SYNCH message does not contain any data, just
> +	 * a header conveying the synch point to the peer.
> +	 */
> +	if (mtyp == SYNCH_MSG && (tnl->peer_caps & TIPC_TUNNEL_ENHANCED)) {
> +		tnlskb = tipc_msg_create(TUNNEL_PROTOCOL, SYNCH_MSG,
> +					 INT_H_SIZE, 0, l->addr,
> +					 tipc_own_addr(l->net),
> +					 0, 0, 0);
> +		if (!tnlskb) {
> +			pr_warn("%sunable to create dummy SYNCH_MSG\n",
> +				link_co_err);
> +			return;
> +		}
> +
> +		hdr = buf_msg(tnlskb);
> +		syncpt = l->snd_nxt + skb_queue_len(&l->backlogq) - 1;
> +		msg_set_syncpt(hdr, syncpt);
> +		msg_set_bearer_id(hdr, l->peer_bearer_id);
> +		__skb_queue_tail(&tnlq, tnlskb);
> +		tipc_link_xmit(tnl, &tnlq, xmitq);
> +		return;
> +	}
> +
>  	/* Initialize reusable tunnel packet header */
>  	tipc_msg_init(tipc_own_addr(l->net), &tnlhdr, TUNNEL_PROTOCOL,
>  		      mtyp, INT_H_SIZE, l->addr);
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 8de02ad6e352..baf937bfa702 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -877,6 +877,16 @@ static inline void msg_set_msgcnt(struct tipc_msg *m, u16 n)
>  	msg_set_bits(m, 9, 16, 0xffff, n);
>  }
>  
> +static inline u16 msg_syncpt(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 9, 16, 0xffff);
> +}
> +
> +static inline void msg_set_syncpt(struct tipc_msg *m, u16 n)
> +{
> +	msg_set_bits(m, 9, 16, 0xffff, n);
> +}
> +
>  static inline u32 msg_conn_ack(struct tipc_msg *m)
>  {
>  	return msg_bits(m, 9, 16, 0xffff);
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 9e106d3ed187..2a8399cf5525 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1645,7 +1645,6 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
>  	int usr = msg_user(hdr);
>  	int mtyp = msg_type(hdr);
>  	u16 oseqno = msg_seqno(hdr);
> -	u16 iseqno = msg_seqno(msg_get_wrapped(hdr));
>  	u16 exp_pkts = msg_msgcnt(hdr);
>  	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
>  	int state = n->state;
> @@ -1744,7 +1743,10 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
>  
>  	/* Initiate synch mode if applicable */
>  	if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG) && (oseqno == 1)) {
> -		syncpt = iseqno + exp_pkts - 1;
> +		if (n->capabilities & TIPC_TUNNEL_ENHANCED)
> +			syncpt = msg_syncpt(hdr);
> +		else
> +			syncpt = msg_seqno(msg_get_wrapped(hdr)) + exp_pkts - 1;
>  		if (!tipc_link_is_up(l))
>  			__tipc_node_link_up(n, bearer_id, xmitq);
>  		if (n->state == SELF_UP_PEER_UP) {
> diff --git a/net/tipc/node.h b/net/tipc/node.h
> index c0bf49ea3de4..291d0ecd4101 100644
> --- a/net/tipc/node.h
> +++ b/net/tipc/node.h
> @@ -53,7 +53,8 @@ enum {
>  	TIPC_NODE_ID128       = (1 << 5),
>  	TIPC_LINK_PROTO_SEQNO = (1 << 6),
>  	TIPC_MCAST_RBCTL      = (1 << 7),
> -	TIPC_GAP_ACK_BLOCK    = (1 << 8)
> +	TIPC_GAP_ACK_BLOCK    = (1 << 8),
> +	TIPC_TUNNEL_ENHANCED  = (1 << 9)
>  };
>  
>  #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
> @@ -64,7 +65,8 @@ enum {
>  				TIPC_NODE_ID128        |   \
>  				TIPC_LINK_PROTO_SEQNO  |   \
>  				TIPC_MCAST_RBCTL       |   \
> -				TIPC_GAP_ACK_BLOCK)
> +				TIPC_GAP_ACK_BLOCK     |   \
> +				TIPC_TUNNEL_ENHANCED)
>  #define INVALID_BEARER_ID -1
>  
>  void tipc_node_stop(struct net *net);
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
