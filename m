Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E06F11728
	for <lists+tipc-discussion@lfdr.de>; Thu,  2 May 2019 12:23:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hM8sS-0005zt-Cp; Thu, 02 May 2019 10:23:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hM8sQ-0005zi-37
 for tipc-discussion@lists.sourceforge.net; Thu, 02 May 2019 10:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eR0cFzcO3ubpncQERd2wHStzcDVbZ9pPhyz8OgnH25c=; b=SjLZH8kC/zZHWBVkGvrfya1PCi
 65vixHybUaq/flRDLSbQIBikX2ubjHMiBbdeNRsadqOnXnRwPeOmNBiNrJhWDnHT9KHQWw/M1+2jI
 5cDKYSHc4D0SZbICNF4s4bPZaFbs4VhyjntT26JXBs6jucKIiY/8dqXH+hZq+XHXr7fU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eR0cFzcO3ubpncQERd2wHStzcDVbZ9pPhyz8OgnH25c=; b=hpCRZR9DVweDimSyGmHApdwMub
 Grg+tIiIDSMM/040maQwousFK+e66FGeDUkLyRrgVCzYIUHKGP8l7Oktet1NQsRFoCmgXskCX6pGy
 kb09E0d/88OV8i2fTEdGlgHhRJ2BvMm8RrirD1rC4jl07JrJ+cBZnNDogzRd9O1b+wrM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hM8sN-00310Z-9i
 for tipc-discussion@lists.sourceforge.net; Thu, 02 May 2019 10:23:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A1AACFA30A;
 Thu,  2 May 2019 20:23:30 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1556792610; bh=heY2I
 hFuPrNzPEDF/+84AQ2oRDc+b0Pgt/BXRb5pQco=; b=mtujrXMWzmZZLHCn0k8gX
 Ut3qSEy7VbwCG+JgKi8aQh5wPBQ8zIHVdKRaWiPf3NRCxL6lxSNT3qlQoEHsdj9v
 gNswR2BPGTynZ3LwhEQSh8LDUPPz6CbUx7Qm82zTBKQrxqvI/4SaOO9ypMBR6ZNV
 SMTsZLMoonFFK5WIw1IY1E=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2WXTYFNpLRVr; Thu,  2 May 2019 20:23:30 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0A69BFA30B;
 Thu,  2 May 2019 20:23:29 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 63CDAFA30A;
 Thu,  2 May 2019 20:23:28 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Thu,  2 May 2019 17:23:23 +0700
Message-Id: <20190502102323.16548-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hM8sN-00310Z-9i
Subject: [tipc-discussion] [net-next] tipc: fix missing Name entries due to
 half-failover
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
Cc: tipc-discussion@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

TIPC link can temporarily fall into "half-establish" that only one of
the link endpoints is ESTABLISHED and starts to send traffic, PROTOCOL
messages, whereas the other link endpoint is not up (e.g. immediately
when the endpoint receives ACTIVATE_MSG, the network interface goes
down...).

This is a normal situation and will be settled because the link
endpoint will be eventually brought down after the link tolerance time.

However, the situation will become worse when the second link is
established before the first link endpoint goes down,
For example:

   1. Both links <1A-2A>, <1B-2B> down
   2. Link endpoint 2A up, but 1A still down (e.g. due to network
      disturbance, wrong session, etc.)
   3. Link <1B-2B> up
   4. Link endpoint 2A down (e.g. due to link tolerance timeout)
   5. Node B starts failover onto link <1B-2B>

   ==> Node A does never start link failover.

When the "half-failover" situation happens, two consequences have been
observed:

a) Peer link/node gets stuck in FAILINGOVER state;
b) Traffic or user messages that peer node is trying to failover onto
the second link can be partially or completely dropped by this node.

The consequence a) was actually solved by commit c140eb166d68 ("tipc:
fix failover problem"), but that commit didn't cover the b). It's due
to the fact that the tunnel link endpoint has never been prepared for a
failover, so the 'l->drop_point' (and the other data...) is not set
correctly. When a TUNNEL_MSG from peer node arrives on the link,
depending on the inner message's seqno and the current 'l->drop_point'
value, the message can be dropped (- treated as a duplicate message) or
processed.
At this early stage, the traffic messages from peer are likely to be
NAME_DISTRIBUTORs, this means some name table entries will be missed on
the node forever!

The commit resolves the issue by starting the FAILOVER process on this
node as well. Another benefit from this solution is that we ensure the
link will not be re-established until the failover ends.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 35 +++++++++++++++++++++++++++++++++++
 net/tipc/link.h |  2 ++
 net/tipc/node.c | 54 +++++++++++++++++++++++++++++++++++++++++++++++-------
 3 files changed, 84 insertions(+), 7 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1c514b64a0a9..f5cd986e1e50 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1705,6 +1705,41 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 	}
 }
 
+/**
+ * tipc_link_failover_prepare() - prepare tnl for link failover
+ *
+ * This is a special version of the precursor - tipc_link_tnl_prepare(),
+ * see the tipc_node_link_failover() for details
+ *
+ * @l: failover link
+ * @tnl: tunnel link
+ * @xmitq: queue for messages to be xmited
+ */
+void tipc_link_failover_prepare(struct tipc_link *l, struct tipc_link *tnl,
+				struct sk_buff_head *xmitq)
+{
+	struct sk_buff_head *fdefq = &tnl->failover_deferdq;
+
+	tipc_link_create_dummy_tnl_msg(tnl, xmitq);
+
+	/* This failover link enpoint was never established before,
+	 * so it has not received anything from peer.
+	 * Otherwise, it must be a normal failover situation or the
+	 * node has entered SELF_DOWN_PEER_LEAVING and both peer nodes
+	 * would have to start over from scratch instead.
+	 */
+	WARN_ON(l && tipc_link_is_up(l));
+	tnl->drop_point = 1;
+	tnl->failover_reasm_skb = NULL;
+
+	/* Initiate the link's failover deferdq */
+	if (unlikely(!skb_queue_empty(fdefq))) {
+		pr_warn("Link failover deferdq not empty: %d!\n",
+			skb_queue_len(fdefq));
+		__skb_queue_purge(fdefq);
+	}
+}
+
 /* tipc_link_validate_msg(): validate message against current link state
  * Returns true if message should be accepted, otherwise false
  */
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 8439e0ee53a8..adcad65e761c 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -90,6 +90,8 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 			   int mtyp, struct sk_buff_head *xmitq);
 void tipc_link_create_dummy_tnl_msg(struct tipc_link *tnl,
 				    struct sk_buff_head *xmitq);
+void tipc_link_failover_prepare(struct tipc_link *l, struct tipc_link *tnl,
+				struct sk_buff_head *xmitq);
 void tipc_link_build_reset_msg(struct tipc_link *l, struct sk_buff_head *xmitq);
 int tipc_link_fsm_evt(struct tipc_link *l, int evt);
 bool tipc_link_is_up(struct tipc_link *l);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 0eb1bf850219..9e106d3ed187 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -714,7 +714,6 @@ static void __tipc_node_link_up(struct tipc_node *n, int bearer_id,
 		*slot0 = bearer_id;
 		*slot1 = bearer_id;
 		tipc_node_fsm_evt(n, SELF_ESTABL_CONTACT_EVT);
-		n->failover_sent = false;
 		n->action_flags |= TIPC_NOTIFY_NODE_UP;
 		tipc_link_set_active(nl, true);
 		tipc_bcast_add_peer(n->net, nl, xmitq);
@@ -757,6 +756,45 @@ static void tipc_node_link_up(struct tipc_node *n, int bearer_id,
 }
 
 /**
+ * tipc_node_link_failover() - start failover in case "half-failover"
+ *
+ * This function is only called in a very special situation where link
+ * failover can be already started on peer node but not on this node.
+ * This can happen when e.g.
+ *	1. Both links <1A-2A>, <1B-2B> down
+ *	2. Link endpoint 2A up, but 1A still down (e.g. due to network
+ *	   disturbance, wrong session, etc.)
+ *	3. Link <1B-2B> up
+ *	4. Link endpoint 2A down (e.g. due to link tolerance timeout)
+ *	5. Node B starts failover onto link <1B-2B>
+ *
+ *	==> Node A does never start link/node failover!
+ *
+ * @n: tipc node structure
+ * @l: link peer endpoint failingover (- can be NULL)
+ * @tnl: tunnel link
+ * @xmitq: queue for messages to be xmited on tnl link later
+ */
+static void tipc_node_link_failover(struct tipc_node *n, struct tipc_link *l,
+				    struct tipc_link *tnl,
+				    struct sk_buff_head *xmitq)
+{
+	/* Avoid to be "self-failover" that can never end */
+	if (!tipc_link_is_up(tnl))
+		return;
+
+	tipc_link_fsm_evt(tnl, LINK_SYNCH_END_EVT);
+	tipc_node_fsm_evt(n, NODE_SYNCH_END_EVT);
+
+	n->sync_point = tipc_link_rcv_nxt(tnl) + (U16_MAX / 2 - 1);
+	tipc_link_failover_prepare(l, tnl, xmitq);
+
+	if (l)
+		tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT);
+	tipc_node_fsm_evt(n, NODE_FAILOVER_BEGIN_EVT);
+}
+
+/**
  * __tipc_node_link_down - handle loss of link
  */
 static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
@@ -1675,14 +1713,16 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 			tipc_skb_queue_splice_tail_init(tipc_link_inputq(pl),
 							tipc_link_inputq(l));
 		}
+
 		/* If parallel link was already down, and this happened before
-		 * the tunnel link came up, FAILOVER was never sent. Ensure that
-		 * FAILOVER is sent to get peer out of NODE_FAILINGOVER state.
+		 * the tunnel link came up, node failover was never started.
+		 * Ensure that a FAILOVER_MSG is sent to get peer out of
+		 * NODE_FAILINGOVER state, also this node must accept
+		 * TUNNEL_MSGs from peer.
 		 */
-		if (n->state != NODE_FAILINGOVER && !n->failover_sent) {
-			tipc_link_create_dummy_tnl_msg(l, xmitq);
-			n->failover_sent = true;
-		}
+		if (n->state != NODE_FAILINGOVER)
+			tipc_node_link_failover(n, pl, l, xmitq);
+
 		/* If pkts arrive out of order, use lowest calculated syncpt */
 		if (less(syncpt, n->sync_point))
 			n->sync_point = syncpt;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
