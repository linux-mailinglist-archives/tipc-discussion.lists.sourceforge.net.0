Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDEF423EA
	for <lists+tipc-discussion@lfdr.de>; Wed, 12 Jun 2019 13:22:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hb1KT-0007jR-QY; Wed, 12 Jun 2019 11:22:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hb1KR-0007jD-8z
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jun 2019 11:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZWmoaRZKsJEdgWjmChOkPiKKpINlZT0d5aAg1lOACkc=; b=OSq/NzcfmEZZoRcOVcR6qGJ+nT
 wQkkmnjCF1H8QclmVeEexG3e2OZ/za1J3he+nGlG7Ez7EpIQcNRWsnX0nWc2TwSZMQf+XYTxmysTW
 CQsGFJxAN+6PUJtthBjtqsxjVwjccXJOyLqKpPOsbzCSZVHshIZpV3/PBH2bE4JtpJJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZWmoaRZKsJEdgWjmChOkPiKKpINlZT0d5aAg1lOACkc=; b=D5YZD3A5yhZinJLYprShTfyaiH
 giMk7yq7mfP+IqCvtshP0I/oq2u+/fGkb/VmJqpm59Ny/7fI6YZD2CFq3wJArTevQ8Ru/saoyTuRS
 9u1j42LSR8OQaqyiCmEdFfBO+NrNbyIGftjf3xGxzzCCDoP/+DTmbWKxeVxyR/TtG5oo=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hb1KO-009fC6-9z
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jun 2019 11:22:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 2E682E4C40;
 Wed, 12 Jun 2019 21:21:52 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1560338512; bh=yw0t8
 2HrFNLi+OLfTvLwYU4NOdhf+SDFK48NOly+3VM=; b=KfJBP2vdPGqgg+GRfixLZ
 jP1GTa5qAxC03futzf/c+IP9aDjhJB+xpv/us6/BeVF/PHhapIeQLe5wjS9bRiu+
 wIThzTE6nWusFAABiWwMaQ7tYBHubAm3gkAl1GJZqxkUqDERpI/vtkE9easIM8x+
 pBqGRm1lLP69tAgA+fhjCw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bZw8hmgK-veV; Wed, 12 Jun 2019 21:21:52 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id CF862E4C4A;
 Wed, 12 Jun 2019 21:21:51 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 534BEE4C40;
 Wed, 12 Jun 2019 21:21:50 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed, 12 Jun 2019 18:21:43 +0700
Message-Id: <20190612112143.12936-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hb1KO-009fC6-9z
Subject: [tipc-discussion] [PATCH RFC] tipc: include retrans failure
 detection for unicast
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In patch series, commit 9195948fbf34 ("tipc: improve TIPC throughput by
Gap ACK blocks"), as for simplicity, the repeated retransmit failures'
detection in the function - "tipc_link_retrans()" was kept there for
broadcast retransmissions only.

This commit now reapplies this feature for link unicast retransmissions
that has been done via the function - "tipc_link_advance_transmq()".

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 96 ++++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 65 insertions(+), 31 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index f5cd986e1e50..ffe3880a7b79 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -249,9 +249,9 @@ static void tipc_link_build_bc_init_msg(struct tipc_link *l,
 					struct sk_buff_head *xmitq);
 static bool tipc_link_release_pkts(struct tipc_link *l, u16 to);
 static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data);
-static void tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
-				      struct tipc_gap_ack_blks *ga,
-				      struct sk_buff_head *xmitq);
+static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
+				     struct tipc_gap_ack_blks *ga,
+				     struct sk_buff_head *xmitq);
 
 /*
  *  Simple non-static link routines (i.e. referenced outside this file)
@@ -1044,16 +1044,53 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 	l->snd_nxt = seqno;
 }
 
-static void link_retransmit_failure(struct tipc_link *l, struct sk_buff *skb)
+/**
+ * link_retransmit_failure() - Detect if retransmit failures repeated
+ * @l: tipc link sender
+ * @r: tipc link receiver (= l in case of unicast)
+ * @from: seqno of the 1st packet in the retransmit request
+ * @rc: returned code
+ *
+ * Return: true if the repeated retransmit failures happen, otherwise
+ * false
+ */
+static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
+				    u16 from, int *rc)
 {
-	struct tipc_msg *hdr = buf_msg(skb);
+	struct sk_buff *skb = skb_peek(&l->transmq);
+	struct tipc_msg *hdr;
 
-	pr_warn("Retransmission failure on link <%s>\n", l->name);
-	link_print(l, "State of link ");
-	pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
-		msg_user(hdr), msg_type(hdr), msg_size(hdr), msg_errcode(hdr));
-	pr_info("sqno %u, prev: %x, src: %x\n",
-		msg_seqno(hdr), msg_prevnode(hdr), msg_orignode(hdr));
+	if (!skb)
+		return false;
+
+	hdr = buf_msg(skb);
+
+	/* Detect repeated retransmit failures on same packet */
+	if (r->prev_from != from) {
+		r->prev_from = from;
+		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
+		r->stale_cnt = 0;
+	} else if (++r->stale_cnt > 99 && time_after(jiffies, r->stale_limit)) {
+		pr_warn("Retransmission failure on link <%s>\n", l->name);
+			link_print(l, "State of link ");
+		pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
+			msg_user(hdr), msg_type(hdr),
+			msg_size(hdr), msg_errcode(hdr));
+		pr_info("sqno %u, prev: %x, src: %x\n",
+			msg_seqno(hdr), msg_prevnode(hdr), msg_orignode(hdr));
+
+		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
+		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
+		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
+
+		if (link_is_bc_sndlink(l))
+			*rc = TIPC_LINK_DOWN_EVT;
+
+		*rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
+		return true;
+	}
+
+	return false;
 }
 
 /* tipc_link_retrans() - retransmit one or more packets
@@ -1062,6 +1099,8 @@ static void link_retransmit_failure(struct tipc_link *l, struct sk_buff *skb)
  * @from: retransmit from (inclusive) this sequence number
  * @to: retransmit to (inclusive) this sequence number
  * xmitq: queue for accumulating the retransmitted packets
+ *
+ * Note: this retrans is for broadcast only!
  */
 static int tipc_link_retrans(struct tipc_link *l, struct tipc_link *r,
 			     u16 from, u16 to, struct sk_buff_head *xmitq)
@@ -1070,6 +1109,7 @@ static int tipc_link_retrans(struct tipc_link *l, struct tipc_link *r,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u16 ack = l->rcv_nxt - 1;
 	struct tipc_msg *hdr;
+	int rc = 0;
 
 	if (!skb)
 		return 0;
@@ -1077,20 +1117,9 @@ static int tipc_link_retrans(struct tipc_link *l, struct tipc_link *r,
 		return 0;
 
 	trace_tipc_link_retrans(r, from, to, &l->transmq);
-	/* Detect repeated retransmit failures on same packet */
-	if (r->prev_from != from) {
-		r->prev_from = from;
-		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
-		r->stale_cnt = 0;
-	} else if (++r->stale_cnt > 99 && time_after(jiffies, r->stale_limit)) {
-		link_retransmit_failure(l, skb);
-		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
-		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
-		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
-		if (link_is_bc_sndlink(l))
-			return TIPC_LINK_DOWN_EVT;
-		return tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
-	}
+
+	if (link_retransmit_failure(l, r, from, &rc))
+		return rc;
 
 	skb_queue_walk(&l->transmq, skb) {
 		hdr = buf_msg(skb);
@@ -1325,16 +1354,19 @@ static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data)
  * @ga: buffer pointer to Gap ACK blocks from peer
  * @xmitq: queue for accumulating the retransmitted packets if any
  */
-static void tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
-				      struct tipc_gap_ack_blks *ga,
-				      struct sk_buff_head *xmitq)
+static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
+				     struct tipc_gap_ack_blks *ga,
+				     struct sk_buff_head *xmitq)
 {
 	struct sk_buff *skb, *_skb, *tmp;
 	struct tipc_msg *hdr;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u16 ack = l->rcv_nxt - 1;
-	u16 seqno;
-	u16 n = 0;
+	u16 seqno, n = 0;
+	int rc = 0;
+
+	if (gap && link_retransmit_failure(l, l, acked + 1, &rc))
+		return rc;
 
 	skb_queue_walk_safe(&l->transmq, skb, tmp) {
 		seqno = buf_seqno(skb);
@@ -1369,6 +1401,8 @@ static void tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			goto next_gap_ack;
 		}
 	}
+
+	return 0;
 }
 
 /* tipc_link_build_state_msg: prepare link state message for transmission
@@ -1919,7 +1953,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 			tipc_link_build_proto_msg(l, STATE_MSG, 0, reply,
 						  rcvgap, 0, 0, xmitq);
 
-		tipc_link_advance_transmq(l, ack, gap, ga, xmitq);
+		rc = tipc_link_advance_transmq(l, ack, gap, ga, xmitq);
 
 		/* If NACK, retransmit will now start at right position */
 		if (gap)
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
