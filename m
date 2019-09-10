Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC07AE273
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Sep 2019 04:55:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i7WJ6-0000pD-Is; Tue, 10 Sep 2019 02:55:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1i7WJ4-0000ow-TT
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Sep 2019 02:55:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Si48Okt/7sLVbuKQ493OzwOdiEvEF0uOGa8PSPRptuU=; b=k7NZ2gG5xUXATdCuPcuvR2Ecpg
 Xfb5YNioAAeFiBl5nwtsOdcemzg/DxW0Zl4QW4+9Zv+6nb9LIeQKw4DArpmTWyP9RsTxPSJxf27rf
 /jZCBwIVHaNm1ti9W8BQUli+v6xPJHRQf5LtgY3UdUb3Gqkhawt7Evbh4i5YSQiBfG9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Si48Okt/7sLVbuKQ493OzwOdiEvEF0uOGa8PSPRptuU=; b=GTaBb8CfQA/76Djfp6BK2Ajdlq
 KDUvFkxI13lqI1PgjOGZ6fs+4W90JjGNTZeVgYzHxlY0OeEPKSnnzzoGxVRawwdSgupauyafxUVNv
 o3nfczbJLUaI0qzNuqSIMN1OJZO4e7VhaVzqUln9u7XsASAORiAIvpWeZSDO2vK/StJA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i7WIz-006c19-Su
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Sep 2019 02:55:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id B9E94497BE;
 Tue, 10 Sep 2019 12:54:50 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1568084090; bh=Wta+o/3zLcc41Q
 Wr5EIH8e+zlJKGdQPFYDNQzLXE0xU=; b=ACfbsRxEK3mEB7qMt5FZzf0M8wJkEp
 Nbzxv48noEbAQwzAdttD0GKTta62jXWRjEfwCKeGuN7dkedwxJCBhTpg3NJ6uGkK
 rdLo4hsncAQdE7xKOXne8OTLK1FWev3GfZXnWarljWjNctTsXu8HsnVdX0GwoIAD
 Gi4fgduIZ2/8E=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hpqNUi5UqoqT; Tue, 10 Sep 2019 12:54:50 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 5CE00497C1;
 Tue, 10 Sep 2019 12:54:50 +1000 (AEST)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4D748497BE;
 Tue, 10 Sep 2019 12:54:48 +1000 (AEST)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>,
 <tipc-discussion@lists.sourceforge.net>, <maloy@donjonn.com>,
 <ying.xue@windriver.com>
References: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
 <CH2PR15MB35753A0403CD960910B1B4B59ABD0@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB35753A0403CD960910B1B4B59ABD0@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Tue, 10 Sep 2019 09:54:44 +0700
Message-ID: <056e01d56783$1c5d9750$5518c5f0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQLbwsHF9wbQlAzY2mrDrM3WljeEMwIW4393pP2yE9A=
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i7WIz-006c19-Su
Subject: Re: [tipc-discussion] [PATCH RFC 1/2] tipc: fix unlimited bundling
 of small messages
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

Agree, the patch doesn't show an improvement in throughput. However, I
believe this is due to the fact our test tool e.g. the benchmark just runs
tests of the same messages size in each cases. In practice, when there are
different sized messages sent by applications at the same time, the new
bundling strategy will take effect.

By the way, since now we limit exactly the number of packets in the backlog
at each levels, this obviously reduces the throughput of small messages (as
bundles), but I wonder why we need to set the limits quite small? When
trying to set a larger value, I have observed a significant improvement in
the throughputs, for large messages as well. Our current approach at the
link layer doesn't seem very good as the limit is fixed without considering
the actual number of users or connections...

BR/Tuong

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Saturday, August 31, 2019 3:57 AM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>;
tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
ying.xue@windriver.com
Subject: RE: [PATCH RFC 1/2] tipc: fix unlimited bundling of small messages

Hi Tuong,
Both patches are good with me. Unfortunately I could not register any
measurable performance improvement, but I still think this is the right
thing to do.

Acked-by: Jon



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 29-Aug-19 07:36
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [PATCH RFC 1/2] tipc: fix unlimited bundling of small messages
> 
> We have identified a problem with the "oversubscription" policy in the
link
> transmission code.
> 
> When small messages are transmitted, and the sending link has reached the
> transmit window limit, those messages will be bundled and put into the
link
> backlog queue. However, bundles of data messages are counted at the
> 'CRITICAL' level, so that the counter for that level, instead of the
counter for
> the real, bundled message's level is the one being increased.
> Subsequent, to-be-bundled data messages at non-CRITICAL levels continue to
> be tested against the unchanged counter for their own level, while
> contributing to an unrestrained increase at the CRITICAL backlog level.
> 
> This leaves a gap in congestion control algorithm for small messages that
can
> result in starvation for other users or a "real" CRITICAL user. Even that
> eventually can lead to buffer exhaustion & link reset.
> 
> We fix this by keeping a 'target_bskb' buffer pointer at each levels, then
when
> bundling, we only bundle messages at the same importance level only. This
> way, we know exactly how many slots a certain level have occupied in the
> queue, so can manage level congestion accurately.
> 
> By bundling messages at the same level, we even have more benefits. Let
> consider this:
> - One socket sends 64-byte messages at the 'CRITICAL' level;
> - Another sends 4096-byte messages at the 'LOW' level;
> 
> When a 64-byte message comes and is bundled the first time, we put the
> overhead of message bundle to it (+ 40-byte header, data copy, etc.) for
later
> use, but the next message can be a 4096-byte one that cannot be bundled to
> the previous one. This means the last bundle carries only one payload
message
> which is totally inefficient, as for the receiver also! Later on, another
64-byte
> message comes, now we make a new bundle and the same story repeats...
> 
> With the new bundling algorithm, this will not happen, the 64-byte
messages
> will be bundled together even when the 4096-byte message(s) comes in
> between. However, if the 4096-byte messages are sent at the same level
i.e.
> 'CRITICAL', the bundling algorithm will again cause the same overhead.
> 
> Also, the same will happen even with only one socket sending small
messages
> at a rate close to the link transmit's one, so that, when one message is
> bundled, it's transmitted shortly. Then, another message comes, a new
bundle
> is created and so on...
> 
> We will solve this issue radically by the 2nd patch of this series.
> 
> Fixes: 365ad353c256 ("tipc: reduce risk of user starvation during link
> congestion")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 29 ++++++++++++++++++-----------  net/tipc/msg.c  |  5
+----
>  2 files changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index
6cc75ffd9e2c..999eab592de8
> 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -160,6 +160,7 @@ struct tipc_link {
>  	struct {
>  		u16 len;
>  		u16 limit;
> +		struct sk_buff *target_bskb;
>  	} backlog[5];
>  	u16 snd_nxt;
>  	u16 window;
> @@ -880,6 +881,7 @@ static void link_prepare_wakeup(struct tipc_link *l)
> void tipc_link_reset(struct tipc_link *l)  {
>  	struct sk_buff_head list;
> +	u32 imp;
> 
>  	__skb_queue_head_init(&list);
> 
> @@ -901,11 +903,10 @@ void tipc_link_reset(struct tipc_link *l)
>  	__skb_queue_purge(&l->deferdq);
>  	__skb_queue_purge(&l->backlogq);
>  	__skb_queue_purge(&l->failover_deferdq);
> -	l->backlog[TIPC_LOW_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_MEDIUM_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_HIGH_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_CRITICAL_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_SYSTEM_IMPORTANCE].len = 0;
> +	for (imp = 0; imp <= TIPC_SYSTEM_IMPORTANCE; imp++) {
> +		l->backlog[imp].len = 0;
> +		l->backlog[imp].target_bskb = NULL;
> +	}
>  	kfree_skb(l->reasm_buf);
>  	kfree_skb(l->reasm_tnlmsg);
>  	kfree_skb(l->failover_reasm_skb);
> @@ -947,7 +948,7 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	struct sk_buff_head *transmq = &l->transmq;
>  	struct sk_buff_head *backlogq = &l->backlogq;
> -	struct sk_buff *skb, *_skb, *bskb;
> +	struct sk_buff *skb, *_skb, **tskb;
>  	int pkt_cnt = skb_queue_len(list);
>  	int rc = 0;
> 
> @@ -999,19 +1000,21 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  			seqno++;
>  			continue;
>  		}
> -		if (tipc_msg_bundle(skb_peek_tail(backlogq), hdr, mtu)) {
> +		tskb = &l->backlog[imp].target_bskb;
> +		if (tipc_msg_bundle(*tskb, hdr, mtu)) {
>  			kfree_skb(__skb_dequeue(list));
>  			l->stats.sent_bundled++;
>  			continue;
>  		}
> -		if (tipc_msg_make_bundle(&bskb, hdr, mtu, l->addr)) {
> +		if (tipc_msg_make_bundle(tskb, hdr, mtu, l->addr)) {
>  			kfree_skb(__skb_dequeue(list));
> -			__skb_queue_tail(backlogq, bskb);
> -			l->backlog[msg_importance(buf_msg(bskb))].len++;
> +			__skb_queue_tail(backlogq, *tskb);
> +			l->backlog[imp].len++;
>  			l->stats.sent_bundled++;
>  			l->stats.sent_bundles++;
>  			continue;
>  		}
> +		l->backlog[imp].target_bskb = NULL;
>  		l->backlog[imp].len += skb_queue_len(list);
>  		skb_queue_splice_tail_init(list, backlogq);
>  	}
> @@ -1027,6 +1030,7 @@ static void tipc_link_advance_backlog(struct
> tipc_link *l,
>  	u16 seqno = l->snd_nxt;
>  	u16 ack = l->rcv_nxt - 1;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
> +	u32 imp;
> 
>  	while (skb_queue_len(&l->transmq) < l->window) {
>  		skb = skb_peek(&l->backlogq);
> @@ -1037,7 +1041,10 @@ static void tipc_link_advance_backlog(struct
> tipc_link *l,
>  			break;
>  		__skb_dequeue(&l->backlogq);
>  		hdr = buf_msg(skb);
> -		l->backlog[msg_importance(hdr)].len--;
> +		imp = msg_importance(hdr);
> +		l->backlog[imp].len--;
> +		if (unlikely(skb == l->backlog[imp].target_bskb))
> +			l->backlog[imp].target_bskb = NULL;
>  		__skb_queue_tail(&l->transmq, skb);
>  		/* next retransmit attempt */
>  		if (link_is_bc_sndlink(l))
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c index
> e6d49cdc61b4..922d262e153f 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -543,10 +543,7 @@ bool tipc_msg_make_bundle(struct sk_buff **skb,
> struct tipc_msg *msg,
>  	bmsg = buf_msg(_skb);
>  	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
>  		      INT_H_SIZE, dnode);
> -	if (msg_isdata(msg))
> -		msg_set_importance(bmsg, TIPC_CRITICAL_IMPORTANCE);
> -	else
> -		msg_set_importance(bmsg, TIPC_SYSTEM_IMPORTANCE);
> +	msg_set_importance(bmsg, msg_importance(msg));
>  	msg_set_seqno(bmsg, msg_seqno(msg));
>  	msg_set_ack(bmsg, msg_ack(msg));
>  	msg_set_bcast_ack(bmsg, msg_bcast_ack(msg));
> --
> 2.13.7




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
