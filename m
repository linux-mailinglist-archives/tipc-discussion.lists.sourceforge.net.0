Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC57C3A1
	for <lists+tipc-discussion@lfdr.de>; Wed, 31 Jul 2019 15:33:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsojV-0002fc-1M; Wed, 31 Jul 2019 13:33:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hsojT-0002fT-Mh
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 13:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X/76V+FxBEVM7Vz8JNe4eOcYK1t2Gm+XqSP+4kuShOo=; b=Oejh5ldm+TUKTgDscBUlz94F/h
 vRD8L8Gv5KNSiH6OHK45wXYfB6Cr1rxIm4c3FRFL3GFC2xgphNn+2y5VRdY9dovgXmkxqugxb7mpk
 xazLlyuH1U/Rbwe3xKh1cKh96LpSJJGYByKuNFQza4hApE9rnBnZAdiFSL7pS+S+YxXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X/76V+FxBEVM7Vz8JNe4eOcYK1t2Gm+XqSP+4kuShOo=; b=mySEvFnMGjbHg4WjursW/z5U6D
 rHKzu/JOqsHIwwNEPnbm207WXKx+Buv6K+jXkypCcO6vlxHCKahdIX5/nnmHhvjzjtFjY/gQeGyM3
 34YDG3VhD2bjfC9+7I1R0ZMQ49ARvRh71Zr+19XqDuW38nGo364ThOd7zSHHHU/0yzC0=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsojR-005hCP-KC
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 13:33:31 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6VDW40N029109
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 31 Jul 2019 06:32:14 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 31 Jul
 2019 06:31:53 -0700
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190719035635.11266-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <aaf21d04-1d2f-15c6-d110-9c970d27c984@windriver.com>
Date: Wed, 31 Jul 2019 21:20:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190719035635.11266-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hsojR-005hCP-KC
Subject: Re: [tipc-discussion] [net] tipc: fix false detection of retransmit
 failures
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

On 7/19/19 11:56 AM, Tuong Lien wrote:
> This commit eliminates the use of the link 'stale_limit' & 'prev_from'
> (besides the already removed - 'stale_cnt') variables in the detection
> of repeated retransmit failures as there is no proper way to initialize
> them to avoid a false detection, i.e. it is not really a retransmission
> failure but due to a garbage values in the variables.

Sorry, I couldn't understand the reason why we have no proper way to
initialize 'stale_limit' & 'prev_from' variables of tipc_link struct.

As far as I understand, the two variables have been set to zero when
tipc_link object is allocated with kzalloc() in tipc_link_create().

Can you please help me understand what real scenario we cannot properly
set them.

> 
> Instead, a jiffies variable will be added to individual skbs (like the
> way we restrict the skb retransmissions) in order to mark the first skb
> retransmit time. Later on, at the next retransmissions, the timestamp
> will be checked to see if the skb in the link transmq is "too stale",
> that is, the link tolerance time has passed, so that a link reset will
> be ordered. Note, just checking on the first skb in the queue is fine
> enough since it must be the oldest one.
> A counter is also added to keep track the actual skb retransmissions'
> number for later checking when the failure happens.
> 
> The downside of this approach is that the skb->cb[] buffer is about to
> be exhausted, however it is always able to allocate another memory area
> and keep a reference to it when needed.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 92 ++++++++++++++++++++++++++++++++-------------------------
>  net/tipc/msg.h  |  8 +++--
>  2 files changed, 57 insertions(+), 43 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 66d3a07bc571..c2c5c53cad22 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -106,8 +106,6 @@ struct tipc_stats {
>   * @transmitq: queue for sent, non-acked messages
>   * @backlogq: queue for messages waiting to be sent
>   * @snt_nxt: next sequence number to use for outbound messages
> - * @prev_from: sequence number of most previous retransmission request
> - * @stale_limit: time when repeated identical retransmits must force link reset
>   * @ackers: # of peers that needs to ack each packet before it can be released
>   * @acked: # last packet acked by a certain peer. Used for broadcast.
>   * @rcv_nxt: next sequence number to expect for inbound messages
> @@ -164,9 +162,7 @@ struct tipc_link {
>  		u16 limit;
>  	} backlog[5];
>  	u16 snd_nxt;
> -	u16 prev_from;
>  	u16 window;
> -	unsigned long stale_limit;
>  
>  	/* Reception */
>  	u16 rcv_nxt;
> @@ -1044,47 +1040,53 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
>   * link_retransmit_failure() - Detect repeated retransmit failures
>   * @l: tipc link sender
>   * @r: tipc link receiver (= l in case of unicast)
> - * @from: seqno of the 1st packet in retransmit request
>   * @rc: returned code
>   *
>   * Return: true if the repeated retransmit failures happens, otherwise
>   * false
>   */
>  static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
> -				    u16 from, int *rc)
> +				    int *rc)
>  {
>  	struct sk_buff *skb = skb_peek(&l->transmq);
>  	struct tipc_msg *hdr;
>  
>  	if (!skb)
>  		return false;
> -	hdr = buf_msg(skb);
>  
> -	/* Detect repeated retransmit failures on same packet */
> -	if (r->prev_from != from) {
> -		r->prev_from = from;
> -		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
> -	} else if (time_after(jiffies, r->stale_limit)) {
> -		pr_warn("Retransmission failure on link <%s>\n", l->name);
> -		link_print(l, "State of link ");
> -		pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> -			msg_user(hdr), msg_type(hdr), msg_size(hdr),
> -			msg_errcode(hdr));
> -		pr_info("sqno %u, prev: %x, src: %x\n",
> -			msg_seqno(hdr), msg_prevnode(hdr), msg_orignode(hdr));
> -
> -		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> -		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> -		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> +	if (!TIPC_SKB_CB(skb)->retr_cnt)
> +		return false;
>  
> -		if (link_is_bc_sndlink(l))
> -			*rc = TIPC_LINK_DOWN_EVT;
> +	if (!time_after(jiffies, TIPC_SKB_CB(skb)->retr_stamp +
> +			msecs_to_jiffies(r->tolerance)))
> +		return false;
> +
> +	hdr = buf_msg(skb);
> +	if (link_is_bc_sndlink(l) && !less(r->acked, msg_seqno(hdr)))
> +		return false;
>  
> +	pr_warn("Retransmission failure on link <%s>\n", l->name);
> +	link_print(l, "State of link ");
> +	pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> +		msg_user(hdr), msg_type(hdr), msg_size(hdr), msg_errcode(hdr));
> +	pr_info("sqno %u, prev: %x, dest: %x\n",
> +		msg_seqno(hdr), msg_prevnode(hdr), msg_destnode(hdr));
> +	pr_info("retr_stamp %d, retr_cnt %d\n",
> +		jiffies_to_msecs(TIPC_SKB_CB(skb)->retr_stamp),
> +		TIPC_SKB_CB(skb)->retr_cnt);
> +
> +	trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> +	trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> +	trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> +
> +	if (link_is_bc_sndlink(l)) {
> +		r->state = LINK_RESET;
> +		*rc = TIPC_LINK_DOWN_EVT;
> +	} else {
>  		*rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
> -		return true;
>  	}
>  
> -	return false;
> +	return true;
>  }
>  
>  /* tipc_link_bc_retrans() - retransmit zero or more packets
> @@ -1110,7 +1112,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  
>  	trace_tipc_link_retrans(r, from, to, &l->transmq);
>  
> -	if (link_retransmit_failure(l, r, from, &rc))
> +	if (link_retransmit_failure(l, r, &rc))
>  		return rc;
>  
>  	skb_queue_walk(&l->transmq, skb) {
> @@ -1119,11 +1121,10 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  			continue;
>  		if (more(msg_seqno(hdr), to))
>  			break;
> -		if (link_is_bc_sndlink(l)) {
> -			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
> -				continue;
> -			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> -		}
> +
> +		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
> +			continue;
> +		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>  		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
>  		if (!_skb)
>  			return 0;
> @@ -1133,6 +1134,10 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  		_skb->priority = TC_PRIO_CONTROL;
>  		__skb_queue_tail(xmitq, _skb);
>  		l->stats.retransmitted++;
> +
> +		/* Increase actual retrans counter & mark first time */
> +		if (!TIPC_SKB_CB(skb)->retr_cnt++)
> +			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>  	}
>  	return 0;
>  }
> @@ -1357,12 +1362,10 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  	struct tipc_msg *hdr;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	u16 ack = l->rcv_nxt - 1;
> +	bool passed = false;
>  	u16 seqno, n = 0;
>  	int rc = 0;
>  
> -	if (gap && link_retransmit_failure(l, l, acked + 1, &rc))
> -		return rc;
> -

I am also unable to understand why we would like to move
link_retransmit_failure() to internal loop of skb_queue_walk_safe() by
adding additional "passed" checking.

Thanks,
Ying

>  	skb_queue_walk_safe(&l->transmq, skb, tmp) {
>  		seqno = buf_seqno(skb);
>  
> @@ -1372,12 +1375,17 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  			__skb_unlink(skb, &l->transmq);
>  			kfree_skb(skb);
>  		} else if (less_eq(seqno, acked + gap)) {
> -			/* retransmit skb */
> +			/* First, check if repeated retrans failures occurs? */
> +			if (!passed && link_retransmit_failure(l, l, &rc))
> +				return rc;
> +			passed = true;
> +
> +			/* retransmit skb if unrestricted*/
>  			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>  				continue;
>  			TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
> -
> -			_skb = __pskb_copy(skb, MIN_H_SIZE, GFP_ATOMIC);
> +			_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE,
> +					   GFP_ATOMIC);
>  			if (!_skb)
>  				continue;
>  			hdr = buf_msg(_skb);
> @@ -1386,6 +1394,10 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  			_skb->priority = TC_PRIO_CONTROL;
>  			__skb_queue_tail(xmitq, _skb);
>  			l->stats.retransmitted++;
> +
> +			/* Increase actual retrans counter & mark first time */
> +			if (!TIPC_SKB_CB(skb)->retr_cnt++)
> +				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>  		} else {
>  			/* retry with Gap ACK blocks if any */
>  			if (!ga || n >= ga->gack_cnt)
> @@ -2577,7 +2589,7 @@ int tipc_link_dump(struct tipc_link *l, u16 dqueues, char *buf)
>  	i += scnprintf(buf + i, sz - i, " %x", l->peer_caps);
>  	i += scnprintf(buf + i, sz - i, " %u", l->silent_intv_cnt);
>  	i += scnprintf(buf + i, sz - i, " %u", l->rst_cnt);
> -	i += scnprintf(buf + i, sz - i, " %u", l->prev_from);
> +	i += scnprintf(buf + i, sz - i, " %u", 0);
>  	i += scnprintf(buf + i, sz - i, " %u", 0);
>  	i += scnprintf(buf + i, sz - i, " %u", l->acked);
>  
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index da509f0eb9ca..d7ebc9e955f6 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -102,13 +102,15 @@ struct plist;
>  #define TIPC_MEDIA_INFO_OFFSET	5
>  
>  struct tipc_skb_cb {
> -	u32 bytes_read;
> -	u32 orig_member;
>  	struct sk_buff *tail;
>  	unsigned long nxt_retr;
> -	bool validated;
> +	unsigned long retr_stamp;
> +	u32 bytes_read;
> +	u32 orig_member;
>  	u16 chain_imp;
>  	u16 ackers;
> +	u16 retr_cnt;
> +	bool validated;
>  };
>  
>  #define TIPC_SKB_CB(__skb) ((struct tipc_skb_cb *)&((__skb)->cb[0]))
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
