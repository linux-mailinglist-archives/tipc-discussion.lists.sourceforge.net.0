Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0F61956A8
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Mar 2020 12:57:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jHnbi-0004l0-H9; Fri, 27 Mar 2020 11:57:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jHnbh-0004kQ-68
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 11:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wmtUDm6BkVEv83dNNbDSxkXVbqjtrSdJzczI+XvHZAQ=; b=ipyGvaTtdfPHxizizlRFSFiWw4
 tk/+6Sd3pP1XijqTCLvd5WH4MBwkmC9XaOh1zYBoeCal8abVC9Ffz7noePDkuUKxXetgi2gd6U9ml
 04zElYuACJaKgCHsdouV3cuDOO2JGzq5d7vIPnF9pb6l08TZmPVrnKiGWAiRkGq4+HL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wmtUDm6BkVEv83dNNbDSxkXVbqjtrSdJzczI+XvHZAQ=; b=jDes7xeYzx5pCQ690hqD3FfQVJ
 JiNkyzS9/MSS4LX0nRyAlI6rZ/fp1MuPTINPVLxUTsFww4xZHldP7SiorpHajJfJDdXFioexZDE0t
 nFXWho2Eilu94S7FfsJgchN6DAgZHGENvlyqbev7lIefUJKD48OgRbeD5Uu9Iy+gS8GI=;
Received: from [210.10.221.142] (helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHnbe-002dYu-R4
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 11:57:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 505C54E590;
 Fri, 27 Mar 2020 22:56:42 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1585310202; bh=jgndI0WdfyJLoyzZZbtsiOr5uVnUPZPCxEJ1YT/Xw6M=; b=V
 FMRLYcjRhHuCDQlwOAz+jXFf9MmEkIuOb91EcomgtitYyEIArmqUtRYkhdac5/Tx
 RLtM/9dRgKGApr2NSVdrgat/HSzj58vYETLCBJF+56M8q1p0AWQXt9N3HIvBgvOc
 1Hhcj0dWBeOweuOlEa0KNPc6g4odwEZr+wwbAtEzxc=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id eK2bfA5uaWx2; Fri, 27 Mar 2020 22:56:42 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 33A524E594;
 Fri, 27 Mar 2020 22:56:42 +1100 (AEDT)
Received: from localhost.localdomain (unknown [183.80.119.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 5A9234E590;
 Fri, 27 Mar 2020 22:56:40 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 27 Mar 2020 18:56:28 +0700
Message-Id: <20200327115628.3269-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
References: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jHnbe-002dYu-R4
Subject: [tipc-discussion] [PATCH RFC 4/4] tipc: add support for broadcast
 rcv stats dumping
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This commit enables dumping the statistics of a broadcast-receiver link
like the traditional 'broadcast-link' one (which is for broadcast-
sender). The link dumping can be triggered via netlink (e.g. the
iproute2/tipc tool) by the link flag - 'TIPC_NLA_LINK_BROADCAST' as the
indicator.

The name of a broadcast-receiver link of a specific peer will be in the
format: 'broadcast-link:<peer-id>'.

For example:

Link <broadcast-link:1001002>
  Window:50 packets
  RX packets:7841 fragments:2408/440 bundles:0/0
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:0 defs:124 dups:0
  TX naks:21 acks:0 retrans:0
  Congestion link:0  Send queue max:0 avg:0

In addition, the broadcast-receiver link statistics can be reset in the
usual way via netlink by specifying that link name in command.

Note: the 'tipc_link_name_ext()' is removed because the link name can
now be retrieved simply via the 'l->name'.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bcast.c   |  6 ++---
 net/tipc/bcast.h   |  5 +++--
 net/tipc/link.c    | 65 +++++++++++++++++++++++++++---------------------------
 net/tipc/link.h    |  3 +--
 net/tipc/msg.c     |  9 ++++----
 net/tipc/msg.h     |  2 +-
 net/tipc/netlink.c |  2 +-
 net/tipc/node.c    | 63 +++++++++++++++++++++++++++++++++++++++++++++-------
 net/tipc/trace.h   |  4 ++--
 9 files changed, 103 insertions(+), 56 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 50a16f8bebd9..383f87bc1061 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -563,10 +563,8 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
 		tipc_sk_rcv(net, inputq);
 }
 
-int tipc_bclink_reset_stats(struct net *net)
+int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l)
 {
-	struct tipc_link *l = tipc_bc_sndlink(net);
-
 	if (!l)
 		return -ENOPROTOOPT;
 
@@ -694,7 +692,7 @@ int tipc_bcast_init(struct net *net)
 	tn->bcbase = bb;
 	spin_lock_init(&tipc_net(net)->bclock);
 
-	if (!tipc_link_bc_create(net, 0, 0,
+	if (!tipc_link_bc_create(net, 0, 0, NULL,
 				 FB_MTU,
 				 BCLINK_WIN_DEFAULT,
 				 BCLINK_WIN_DEFAULT,
diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
index 97d3cf9d3e4d..4240c95188b1 100644
--- a/net/tipc/bcast.h
+++ b/net/tipc/bcast.h
@@ -96,9 +96,10 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr,
 			struct sk_buff_head *retrq);
-int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg);
+int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg,
+			struct tipc_link *bcl);
 int tipc_nl_bc_link_set(struct net *net, struct nlattr *attrs[]);
-int tipc_bclink_reset_stats(struct net *net);
+int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l);
 
 u32 tipc_bcast_get_broadcast_mode(struct net *net);
 u32 tipc_bcast_get_broadcast_ratio(struct net *net);
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 3071e46f029a..808d3a76c27f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -539,7 +539,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
  *
  * Returns true if link was created, otherwise false
  */
-bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
+bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer, u8 *peer_id,
 			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
@@ -554,7 +554,18 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
 		return false;
 
 	l = *link;
-	strcpy(l->name, tipc_bclink_name);
+	if (peer_id) {
+		char peer_str[NODE_ID_STR_LEN] = {0,};
+
+		tipc_nodeid2string(peer_str, peer_id);
+		if (strlen(peer_str) > 16)
+			sprintf(peer_str, "%x", peer);
+		/* Broadcast receiver link name: "broadcast-link:<peer>" */
+		snprintf(l->name, sizeof(l->name), "%s:%s", tipc_bclink_name,
+			 peer_str);
+	} else {
+		strcpy(l->name, tipc_bclink_name);
+	}
 	trace_tipc_link_reset(l, TIPC_DUMP_ALL, "bclink created!");
 	tipc_link_reset(l);
 	l->state = LINK_RESET;
@@ -1412,11 +1423,8 @@ static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
 			gacks[n].ack = htons(expect - 1);
 			gacks[n].gap = htons(seqno - expect);
 			if (++n >= MAX_GAP_ACK_BLKS / 2) {
-				char buf[TIPC_MAX_LINK_NAME];
-
 				pr_info_ratelimited("Gacks on %s: %d, ql: %d!\n",
-						    tipc_link_name_ext(l, buf),
-						    n,
+						    l->name, n,
 						    skb_queue_len(&l->deferdq));
 				return n;
 			}
@@ -1600,6 +1608,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
+			if (!is_uc)
+				r->stats.retransmitted++;
 			*retransmitted = true;
 			/* Increase actual retrans counter & mark first time */
 			if (!TIPC_SKB_CB(skb)->retr_cnt++)
@@ -1766,7 +1776,8 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 
 		/* Defer delivery if sequence gap */
 		if (unlikely(seqno != rcv_nxt)) {
-			__tipc_skb_queue_sorted(defq, seqno, skb);
+			if (!__tipc_skb_queue_sorted(defq, seqno, skb))
+				l->stats.duplicates++;
 			rc |= tipc_link_build_nack_msg(l, xmitq);
 			break;
 		}
@@ -1800,15 +1811,15 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 				      int tolerance, int priority,
 				      struct sk_buff_head *xmitq)
 {
+	struct tipc_mon_state *mstate = &l->mon_state;
+	struct sk_buff_head *dfq = &l->deferdq;
 	struct tipc_link *bcl = l->bc_rcvlink;
-	struct sk_buff *skb;
 	struct tipc_msg *hdr;
-	struct sk_buff_head *dfq = &l->deferdq;
+	struct sk_buff *skb;
 	bool node_up = link_is_up(bcl);
-	struct tipc_mon_state *mstate = &l->mon_state;
+	u16 glen = 0, bc_rcvgap = 0;
 	int dlen = 0;
 	void *data;
-	u16 glen = 0;
 
 	/* Don't send protocol message during reset or link failover */
 	if (tipc_link_is_blocked(l))
@@ -1846,7 +1857,8 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		if (l->peer_caps & TIPC_LINK_PROTO_SEQNO)
 			msg_set_seqno(hdr, l->snd_nxt_state++);
 		msg_set_seq_gap(hdr, rcvgap);
-		msg_set_bc_gap(hdr, link_bc_rcv_gap(bcl));
+		bc_rcvgap = link_bc_rcv_gap(bcl);
+		msg_set_bc_gap(hdr, bc_rcvgap);
 		msg_set_probe(hdr, probe);
 		msg_set_is_keepalive(hdr, probe || probe_reply);
 		if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
@@ -1871,6 +1883,8 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		l->stats.sent_probes++;
 	if (rcvgap)
 		l->stats.sent_nacks++;
+	if (bc_rcvgap)
+		bcl->stats.sent_nacks++;
 	skb->priority = TC_PRIO_CONTROL;
 	__skb_queue_tail(xmitq, skb);
 	trace_tipc_proto_build(skb, false, l->name);
@@ -2371,8 +2385,6 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 	if (!l->bc_peer_is_up)
 		return rc;
 
-	l->stats.recv_nacks++;
-
 	/* Ignore if peers_snd_nxt goes beyond receive window */
 	if (more(peers_snd_nxt, l->rcv_nxt + l->window))
 		return rc;
@@ -2423,6 +2435,11 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 	if (!link_is_up(r) || !r->bc_peer_is_up)
 		return 0;
 
+	if (gap) {
+		l->stats.recv_nacks++;
+		r->stats.recv_nacks++;
+	}
+
 	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
 		return 0;
 
@@ -2734,16 +2751,15 @@ static int __tipc_nl_add_bc_link_stat(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg)
+int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg,
+			struct tipc_link *bcl)
 {
 	int err;
 	void *hdr;
 	struct nlattr *attrs;
 	struct nlattr *prop;
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	u32 bc_mode = tipc_bcast_get_broadcast_mode(net);
 	u32 bc_ratio = tipc_bcast_get_broadcast_ratio(net);
-	struct tipc_link *bcl = tn->bcl;
 
 	if (!bcl)
 		return 0;
@@ -2830,21 +2846,6 @@ void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit)
 	l->abort_limit = limit;
 }
 
-char *tipc_link_name_ext(struct tipc_link *l, char *buf)
-{
-	if (!l)
-		scnprintf(buf, TIPC_MAX_LINK_NAME, "null");
-	else if (link_is_bc_sndlink(l))
-		scnprintf(buf, TIPC_MAX_LINK_NAME, "broadcast-sender");
-	else if (link_is_bc_rcvlink(l))
-		scnprintf(buf, TIPC_MAX_LINK_NAME,
-			  "broadcast-receiver, peer %x", l->addr);
-	else
-		memcpy(buf, l->name, TIPC_MAX_LINK_NAME);
-
-	return buf;
-}
-
 /**
  * tipc_link_dump - dump TIPC link data
  * @l: tipc link to be dumped
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 4d0768cf91d5..fc07232c9a12 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -80,7 +80,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      struct sk_buff_head *inputq,
 		      struct sk_buff_head *namedq,
 		      struct tipc_link **link);
-bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
+bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer, u8 *peer_id,
 			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
@@ -111,7 +111,6 @@ u16 tipc_link_rcv_nxt(struct tipc_link *l);
 u16 tipc_link_acked(struct tipc_link *l);
 u32 tipc_link_id(struct tipc_link *l);
 char *tipc_link_name(struct tipc_link *l);
-char *tipc_link_name_ext(struct tipc_link *l, char *buf);
 u32 tipc_link_state(struct tipc_link *l);
 char tipc_link_plane(struct tipc_link *l);
 int tipc_link_prio(struct tipc_link *l);
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 0d515d20b056..69d68512300a 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -828,19 +828,19 @@ bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
  * @seqno: sequence number of buffer to add
  * @skb: buffer to add
  */
-void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
+bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb)
 {
 	struct sk_buff *_skb, *tmp;
 
 	if (skb_queue_empty(list) || less(seqno, buf_seqno(skb_peek(list)))) {
 		__skb_queue_head(list, skb);
-		return;
+		return true;
 	}
 
 	if (more(seqno, buf_seqno(skb_peek_tail(list)))) {
 		__skb_queue_tail(list, skb);
-		return;
+		return true;
 	}
 
 	skb_queue_walk_safe(list, _skb, tmp) {
@@ -849,9 +849,10 @@ void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 		if (seqno == buf_seqno(_skb))
 			break;
 		__skb_queue_before(list, _skb, skb);
-		return;
+		return true;
 	}
 	kfree_skb(skb);
+	return false;
 }
 
 void tipc_skb_reject(struct net *net, int err, struct sk_buff *skb,
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 9a38f9c9d6eb..87e2d472f75f 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1127,7 +1127,7 @@ bool tipc_msg_assemble(struct sk_buff_head *list);
 bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq);
 bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
 			struct sk_buff_head *cpy);
-void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
+bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb);
 bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
 
diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index 7c35094c20b8..8dfad18330bc 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -187,7 +187,7 @@ static const struct genl_ops tipc_genl_v2_ops[] = {
 	},
 	{
 		.cmd	= TIPC_NL_LINK_GET,
-		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.validate = GENL_DONT_VALIDATE_STRICT,
 		.doit   = tipc_nl_node_get_link,
 		.dumpit	= tipc_nl_node_dump_link,
 	},
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 917ad3920fac..373d07ae6730 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1138,7 +1138,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	if (unlikely(!n->bc_entry.link)) {
 		snd_l = tipc_bc_sndlink(net);
 		if (!tipc_link_bc_create(net, tipc_own_addr(net),
-					 addr, U16_MAX,
+					 addr, peer_id, U16_MAX,
 					 tipc_link_min_win(snd_l),
 					 tipc_link_max_win(snd_l),
 					 n->capabilities,
@@ -2432,7 +2432,7 @@ int tipc_nl_node_get_link(struct sk_buff *skb, struct genl_info *info)
 		return -ENOMEM;
 
 	if (strcmp(name, tipc_bclink_name) == 0) {
-		err = tipc_nl_add_bc_link(net, &msg);
+		err = tipc_nl_add_bc_link(net, &msg, tipc_net(net)->bcl);
 		if (err)
 			goto err_free;
 	} else {
@@ -2476,6 +2476,7 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 	struct tipc_node *node;
 	struct nlattr *attrs[TIPC_NLA_LINK_MAX + 1];
 	struct net *net = sock_net(skb->sk);
+	struct tipc_net *tn = tipc_net(net);
 	struct tipc_link_entry *le;
 
 	if (!info->attrs[TIPC_NLA_LINK])
@@ -2492,11 +2493,26 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 
 	link_name = nla_data(attrs[TIPC_NLA_LINK_NAME]);
 
-	if (strcmp(link_name, tipc_bclink_name) == 0) {
-		err = tipc_bclink_reset_stats(net);
+	err = -EINVAL;
+	if (!strcmp(link_name, tipc_bclink_name)) {
+		err = tipc_bclink_reset_stats(net, tipc_bc_sndlink(net));
 		if (err)
 			return err;
 		return 0;
+	} else if (strstr(link_name, tipc_bclink_name)) {
+		rcu_read_lock();
+		list_for_each_entry_rcu(node, &tn->node_list, list) {
+			tipc_node_read_lock(node);
+			link = node->bc_entry.link;
+			if (link && !strcmp(link_name, tipc_link_name(link))) {
+				err = tipc_bclink_reset_stats(net, link);
+				tipc_node_read_unlock(node);
+				break;
+			}
+			tipc_node_read_unlock(node);
+		}
+		rcu_read_unlock();
+		return err;
 	}
 
 	node = tipc_node_find_by_name(net, link_name, &bearer_id);
@@ -2520,7 +2536,8 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 
 /* Caller should hold node lock  */
 static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
-				    struct tipc_node *node, u32 *prev_link)
+				    struct tipc_node *node, u32 *prev_link,
+				    u32 type)
 {
 	u32 i;
 	int err;
@@ -2536,6 +2553,14 @@ static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
 		if (err)
 			return err;
 	}
+
+	if (type == 2) {
+		*prev_link = 3;
+		err = tipc_nl_add_bc_link(net, msg, node->bc_entry.link);
+		if (err)
+			return err;
+	}
+
 	*prev_link = 0;
 
 	return 0;
@@ -2544,17 +2569,38 @@ static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
 int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 {
 	struct net *net = sock_net(skb->sk);
+	struct nlattr **attrs = genl_dumpit_info(cb)->attrs;
+	struct nlattr *link[TIPC_NLA_LINK_MAX + 1];
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_node *node;
 	struct tipc_nl_msg msg;
 	u32 prev_node = cb->args[0];
 	u32 prev_link = cb->args[1];
 	int done = cb->args[2];
+	u32 type = cb->args[3];
 	int err;
 
 	if (done)
 		return 0;
 
+	if (!type) {
+		/* Dump broadcast-link & unicast links */
+		type = 1;
+		if (attrs && attrs[TIPC_NLA_LINK]) {
+			err = nla_parse_nested_deprecated(link,
+							  TIPC_NLA_LINK_MAX,
+							  attrs[TIPC_NLA_LINK],
+							  tipc_nl_link_policy,
+							  NULL);
+			if (unlikely(err))
+				return err;
+			if (unlikely(!link[TIPC_NLA_LINK_BROADCAST]))
+				return -EINVAL;
+			/* Dump broadcast-receiver links as well */
+			type = 2;
+		}
+	}
+
 	msg.skb = skb;
 	msg.portid = NETLINK_CB(cb->skb).portid;
 	msg.seq = cb->nlh->nlmsg_seq;
@@ -2578,7 +2624,7 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 						 list) {
 			tipc_node_read_lock(node);
 			err = __tipc_nl_add_node_links(net, &msg, node,
-						       &prev_link);
+						       &prev_link, type);
 			tipc_node_read_unlock(node);
 			if (err)
 				goto out;
@@ -2586,14 +2632,14 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 			prev_node = node->addr;
 		}
 	} else {
-		err = tipc_nl_add_bc_link(net, &msg);
+		err = tipc_nl_add_bc_link(net, &msg, tn->bcl);
 		if (err)
 			goto out;
 
 		list_for_each_entry_rcu(node, &tn->node_list, list) {
 			tipc_node_read_lock(node);
 			err = __tipc_nl_add_node_links(net, &msg, node,
-						       &prev_link);
+						       &prev_link, type);
 			tipc_node_read_unlock(node);
 			if (err)
 				goto out;
@@ -2608,6 +2654,7 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 	cb->args[0] = prev_node;
 	cb->args[1] = prev_link;
 	cb->args[2] = done;
+	cb->args[3] = type;
 
 	return skb->len;
 }
diff --git a/net/tipc/trace.h b/net/tipc/trace.h
index e7535ab75255..04af83f0500c 100644
--- a/net/tipc/trace.h
+++ b/net/tipc/trace.h
@@ -255,7 +255,7 @@ DECLARE_EVENT_CLASS(tipc_link_class,
 
 	TP_fast_assign(
 		__assign_str(header, header);
-		tipc_link_name_ext(l, __entry->name);
+		memcpy(__entry->name, tipc_link_name(l), TIPC_MAX_LINK_NAME);
 		tipc_link_dump(l, dqueues, __get_str(buf));
 	),
 
@@ -295,7 +295,7 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
 	),
 
 	TP_fast_assign(
-		tipc_link_name_ext(r, __entry->name);
+		memcpy(__entry->name, tipc_link_name(r), TIPC_MAX_LINK_NAME);
 		__entry->from = f;
 		__entry->to = t;
 		__entry->len = skb_queue_len(tq);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
