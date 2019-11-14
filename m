Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB10FC141
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 09:09:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVAC3-00008R-4q; Thu, 14 Nov 2019 08:09:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iVAC1-00008K-Ug
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 08:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/wNFV7lF/zlOkfg+PyEaOCI6RWjk/dBWhSEdwJKev9I=; b=kXTHx+7BAmvNk8fNjkm4BWe15S
 JTd75ZGdTesL1aLUYGeewkuWAAAPOSO0CfuJSxqTiBN8kmVZ+qdG7cfxMXyFuEKVIDezNccPD1cS/
 Sgi9Y6ZbrGKoQW4EO485Wz1bramIpdc5Svk1mzcCX53QQXF+W2CprphSGnttLBKqRezs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/wNFV7lF/zlOkfg+PyEaOCI6RWjk/dBWhSEdwJKev9I=; b=cbGGKB2WPXLRrxfnNXVELHKB+W
 eHdy/fCq9QAWD4gJ88HnJEMp4HYHLSQ5Qjia+Qp1qYCEyouRA9UsdnApTvGwMPd6D9ejIO1oQDly7
 q2aCGFxx8rXBoaxpZrselGhavdtNOCG2G7WO9lfuEb5sG1tfLN0ICkno6ySikkAfhpt8=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVABw-002mqT-Uj
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 08:09:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 7184D4AD0F;
 Thu, 14 Nov 2019 19:09:14 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573718954; bh=rgkHzGJhboJBDz
 wviMWezpcn/g8J9hjjBxmZb937jF8=; b=FdFpd8HUc+DI7ESqkx/8ITFRACJ70e
 jDvOfTgfQRbsAR9aJvJXxlWOcn7yiHXQbSOUWdmje33dMV85Ay/y8SUEf4ZMZFJ9
 DI3Tmagz3KZ+VavFm+i3j0QgXl/d4RdS2wWCQBPwToWYm+A+uLZwxs0zYj40G5wq
 VhuAmQ/y/g+Q0=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HwiKh78dE9xi; Thu, 14 Nov 2019 19:09:14 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 1A50A4AD11;
 Thu, 14 Nov 2019 19:09:13 +1100 (AEDT)
Received: from VNLAP298VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 1BD394AD0F;
 Thu, 14 Nov 2019 19:09:12 +1100 (AEDT)
From: "Hoang Le" <hoang.h.le@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, <maloy@donjonn.com>,
 <tipc-discussion@lists.sourceforge.net>
References: <20191113073521.9394-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575CFDEEA8400E6E06C994C9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB3575CFDEEA8400E6E06C994C9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Thu, 14 Nov 2019 15:09:11 +0700
Message-ID: <017401d59ac2$cd5bdc20$68139460$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGa9tJnYPDJFSI8H8gtsnTf6TTJOgIPq2v1p+8ZKxA=
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVABw-002mqT-Uj
Subject: Re: [tipc-discussion] [net-next] tipc: update a binding service via
 broadcast
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

Please take a look at v2. The mechanism looks the same as I did before in commit:
c55c8edafa91 ("tipc: smooth change between replicast and broadcast")
However, in this case we handle only one direction:  replicast -> broadcast.
Then, it is still backward compatible.

[...]
From ae2ee6a7064de3ec1dc2c7df2db241d22b0d129f Mon Sep 17 00:00:00 2001
From: Hoang Le <hoang.h.le@dektech.com.au>
Date: Wed, 13 Nov 2019 14:01:03 +0700
Subject: [PATCH] tipc: update a binding service via broadcast

Currently, updating binding table (add service binding to
name table/withdraw a service binding) is being sent over replicast.
However, if we are scaling up clusters to > 100 nodes/containers this
method is less affection because of looping through nodes in a cluster one
by one.

It is worth to use broadcast to update a binding service. Then binding
table updates in all nodes for one shot.

The mechanism is backward compatible because of sending side changing.

v2: resolve synchronization problem when switching from unicast to
broadcast

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c      | 13 +++++++++++++
 net/tipc/bcast.h      |  2 ++
 net/tipc/link.c       | 16 ++++++++++++++++
 net/tipc/name_distr.c |  8 ++++++++
 net/tipc/name_table.c |  9 ++++++---
 5 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index f41096a759fa..18431fa897ab 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -843,3 +843,16 @@ void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
                __skb_queue_tail(inputq, _skb);
        }
 }
+
+int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb)
+{
+       struct sk_buff_head xmitq;
+       u16 cong_link_cnt;
+       int rc = 0;
+
+       __skb_queue_head_init(&xmitq);
+       __skb_queue_tail(&xmitq, skb);
+       rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
+       __skb_queue_purge(&xmitq);
+       return rc;
+}
diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
index dadad953e2be..a100da3800fc 100644
--- a/net/tipc/bcast.h
+++ b/net/tipc/bcast.h
@@ -101,6 +101,8 @@ int tipc_bclink_reset_stats(struct net *net);
 u32 tipc_bcast_get_broadcast_mode(struct net *net);
 u32 tipc_bcast_get_broadcast_ratio(struct net *net);

+int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb);
+
 void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
                           struct sk_buff_head *inputq);

diff --git a/net/tipc/link.c b/net/tipc/link.c
index fb72031228c9..22f1854435df 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -187,6 +187,9 @@ struct tipc_link {
        struct tipc_link *bc_sndlink;
        u8 nack_state;
        bool bc_peer_is_up;
+       bool named_sync;
+       struct sk_buff_head defer_namedq;
+

        /* Statistics */
        struct tipc_stats stats;
@@ -363,6 +366,7 @@ void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
        trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
        tipc_link_reset(rcv_l);
        rcv_l->state = LINK_RESET;
+       rcv_l->named_sync = false;
        if (!snd_l->ackers) {
                trace_tipc_link_reset(snd_l, TIPC_DUMP_ALL, "zero ackers!");
                tipc_link_reset(snd_l);
@@ -508,6 +512,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
        __skb_queue_head_init(&l->failover_deferdq);
        skb_queue_head_init(&l->wakeupq);
        skb_queue_head_init(l->inputq);
+       __skb_queue_head_init(&l->defer_namedq);
        return true;
 }

@@ -932,6 +937,8 @@ void tipc_link_reset(struct tipc_link *l)
        l->silent_intv_cnt = 0;
        l->rst_cnt = 0;
        l->bc_peer_is_up = false;
+       l->named_sync = false;
+       __skb_queue_purge(&l->defer_namedq);
        memset(&l->mon_state, 0, sizeof(l->mon_state));
        tipc_link_reset_stats(l);
 }
@@ -1210,6 +1217,15 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
                return true;
        case NAME_DISTRIBUTOR:
                l->bc_rcvlink->state = LINK_ESTABLISHED;
+               if (msg_is_syn(hdr)) {
+                       l->bc_rcvlink->named_sync = true;
+                       skb_queue_splice_tail_init(&l->defer_namedq, l->namedq);
+                       return true;
+               }
+               if (msg_is_rcast(hdr) && !l->bc_rcvlink->named_sync) {
+                       skb_queue_tail(&l->defer_namedq, skb);
+                       return true;
+               }
                skb_queue_tail(l->namedq, skb);
                return true;
        case MSG_BUNDLER:
diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 5feaf3b67380..419b3f0f102d 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -180,6 +180,14 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
                skb_trim(skb, INT_H_SIZE + (msg_dsz - msg_rem));
                __skb_queue_tail(list, skb);
        }
+
+       /* Allocate dummy message in order to synchronize w/bcast */
+       skb = named_prepare_buf(net, PUBLICATION, 0, dnode);
+       if (skb) {
+               /* Preparing for 'synching' header */
+               msg_set_syn(buf_msg(skb), 1);
+               __skb_queue_tail(list, skb);
+       }
 }

 /**
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 66a65c2cdb23..4ba6d73e5c4c 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -632,8 +632,10 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
 exit:
        spin_unlock_bh(&tn->nametbl_lock);

-       if (skb)
-               tipc_node_broadcast(net, skb);
+       if (skb) {
+               msg_set_is_rcast(buf_msg(skb), true);
+               tipc_bcast_named_publish(net, skb);
+       }
        return p;
 }

@@ -664,7 +666,8 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
        spin_unlock_bh(&tn->nametbl_lock);

        if (skb) {
-               tipc_node_broadcast(net, skb);
+               msg_set_is_rcast(buf_msg(skb), true);
+               tipc_bcast_named_publish(net, skb);
                return 1;
        }
        return 0;
--
2.20.1

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Wednesday, November 13, 2019 7:02 PM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: 'Ying Xue' <ying.xue@windriver.com>
Subject: RE: [net-next] tipc: update a binding service via broadcast

Hi Hoang,
This is good, but you have missed the point about the synchronization problem I have been talking about.

1) A new node comes up
2) The "bulk" binding table update is sent, as a series of packets over the new unicast link. This may take some time.
3) The owner of one of the bindings in the bulk (on this node) does unbind.
4) This is sent as broadcast withdraw to all nodes, and arrives before the last packets of the unicast bulk to the newly connected node.
5) Since there is no corresponding publication in the peer node's binding table yet, the withdraw is ignored.
6) The last bulk unicasts arrive at the new peer, and the now invalid publication is added to its binding table.
7) This publication will stay there forever.

We need to find a way to synchronize so that we know that all the bulk publications are in place in the binding table before any broadcast publications/withdraws can be accepted.
Obviously, we could create a backlog queue in the name table, but I hope we can find a simpler and neater solution.

Regards
///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 13-Nov-19 02:35
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> Subject: [net-next] tipc: update a binding service via broadcast
> 
> Currently, updating binding table (add service binding to
> name table/withdraw a service binding) is being sent over replicast.
> However, if we are scaling up clusters to > 100 nodes/containers this
> method is less affection because of looping through nodes in a cluster one
> by one.
> 
> It is worth to use broadcast to update a binding service. Then binding
> table updates in all nodes for one shot.
> 
> The mechanism is backward compatible because of sending side changing.
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/bcast.c      | 13 +++++++++++++
>  net/tipc/bcast.h      |  2 ++
>  net/tipc/name_table.c |  4 ++--
>  3 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index f41096a759fa..18431fa897ab 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -843,3 +843,16 @@ void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>  		__skb_queue_tail(inputq, _skb);
>  	}
>  }
> +
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb)
> +{
> +	struct sk_buff_head xmitq;
> +	u16 cong_link_cnt;
> +	int rc = 0;
> +
> +	__skb_queue_head_init(&xmitq);
> +	__skb_queue_tail(&xmitq, skb);
> +	rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
> +	__skb_queue_purge(&xmitq);
> +	return rc;
> +}
> diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> index dadad953e2be..a100da3800fc 100644
> --- a/net/tipc/bcast.h
> +++ b/net/tipc/bcast.h
> @@ -101,6 +101,8 @@ int tipc_bclink_reset_stats(struct net *net);
>  u32 tipc_bcast_get_broadcast_mode(struct net *net);
>  u32 tipc_bcast_get_broadcast_ratio(struct net *net);
> 
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb);
> +
>  void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>  			   struct sk_buff_head *inputq);
> 
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 66a65c2cdb23..9e9c61f7c999 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -633,7 +633,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>  	spin_unlock_bh(&tn->nametbl_lock);
> 
>  	if (skb)
> -		tipc_node_broadcast(net, skb);
> +		tipc_bcast_named_publish(net, skb);
>  	return p;
>  }
> 
> @@ -664,7 +664,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>  	spin_unlock_bh(&tn->nametbl_lock);
> 
>  	if (skb) {
> -		tipc_node_broadcast(net, skb);
> +		tipc_bcast_named_publish(net, skb);
>  		return 1;
>  	}
>  	return 0;
> --
> 2.20.1




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
