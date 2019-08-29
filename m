Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E64FDA18E8
	for <lists+tipc-discussion@lfdr.de>; Thu, 29 Aug 2019 13:36:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i3IjF-000721-CU; Thu, 29 Aug 2019 11:36:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1i3IjD-00071Y-U8
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Aug 2019 11:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GLJiXkypRrtl7KCU7b8V+RrOrk4ZiquVD9uvfBiTMyk=; b=i6fi3lMXrSLKc5pnPfULbMmA4w
 w7csfHsLFFvLGJt71r+WmBC+HTT984vVQafoK/kqHnna0JtUhWdNkXNUMaeu2ZnEQsKkWjZQxtBJ2
 qgDOSEih/FUOU+Ax5zxBKe93Tsi9EbeRB7KkPeClu1myXd6M0wA4Ecwd05Duv8qSD5N8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GLJiXkypRrtl7KCU7b8V+RrOrk4ZiquVD9uvfBiTMyk=; b=XPUtDIClfI9uYKIgYpo3eYBRyy
 OfqZLz5QigeegUFGG3QhXX2UK9bk1HTH/G9+oCixwaudICnTVY5w4+l7juExAAM6udD76Nh+ofyGz
 j/iRLeMOhk34iTVc0yoSpdDgCyvNx5kpTLC6QXMhqmiZ9C1+qcKTHpyTo4q2aI+elscg=;
Received: from [210.10.221.142] (helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i3Ij9-002FQc-9M
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Aug 2019 11:36:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 2A1F349342;
 Thu, 29 Aug 2019 21:36:21 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1567078581; bh=1PUz73t0Zvp2RYIg3CloaAvj6knyiuSdgGzBq9+yVM0=; b=p
 +aZdPNUIib7aLckBz6Zh9TEkXVqB7EjGwIrXm4yD052BAy2cxytWILeWh5jR/XHQ
 8roHEnkyH7IKkvDj6SAzmZiF+sM1WYmOwcfUGCrmEIj577m04BYJsoxujhsNE3hM
 bQS2ISheT3p8ZZI1h1t+fmLdUXK+1rQnbvU+ESZo0A=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nq1uIraNCGMR; Thu, 29 Aug 2019 21:36:21 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0D97F49347;
 Thu, 29 Aug 2019 21:36:21 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id F246149342;
 Thu, 29 Aug 2019 21:36:18 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu, 29 Aug 2019 18:36:07 +0700
Message-Id: <20190829113607.13772-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
References: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: 0.4 (/)
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
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i3Ij9-002FQc-9M
Subject: [tipc-discussion] [PATCH RFC 2/2] tipc: improve message bundling
 algorithm
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

As mentioned in the previous commit of this series, the current message
bundling algorithm is inefficient that can generate bundles of only one
payload message, that causes unnecessary overheads for both the sender
and receiver.

This commit re-designs the 'tipc_msg_make_bundle()' function (now named
as 'tipc_msg_try_bundle()'), so that when a message comes at the first
place, we will check if it is suitable for bundling or not. If yes, we
keep a reference to it and do nothing i.e. the message buffer will be
put into the link backlog queue and processed as normal. Later on, when
another one comes, we will make a bundle with the first message if
possible and so on... This way, a bundle if really needed will always
consist of at least two payload messages. Otherwise, we let the first
buffer go its way without any need of bundling, so reduce the overheads
to zero.

Moreover, since now we have both the messages in hand, we can even
optimize the 'tipc_msg_bundle()' function, make bundle of a very large
(size ~ MSS) and small messages which is not with the current
algorithm, e.g. [1400-byte message] + [10-byte message] (MTU = 1500).

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c |  45 ++++++++-------
 net/tipc/msg.c  | 167 ++++++++++++++++++++++++++++++--------------------------
 net/tipc/msg.h  |   5 +-
 3 files changed, 117 insertions(+), 100 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 999eab592de8..ff5980fc56dc 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -948,9 +948,10 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	struct sk_buff_head *transmq = &l->transmq;
 	struct sk_buff_head *backlogq = &l->backlogq;
-	struct sk_buff *skb, *_skb, **tskb;
+	struct sk_buff *skb, *_skb;
 	int pkt_cnt = skb_queue_len(list);
 	int rc = 0;
+	u16 n;
 
 	if (unlikely(msg_size(hdr) > mtu)) {
 		pr_warn("Too large msg, purging xmit list %d %d %d %d %d!\n",
@@ -975,20 +976,18 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	}
 
 	/* Prepare each packet for sending, and add to relevant queue: */
-	while (skb_queue_len(list)) {
-		skb = skb_peek(list);
-		hdr = buf_msg(skb);
-		msg_set_seqno(hdr, seqno);
-		msg_set_ack(hdr, ack);
-		msg_set_bcast_ack(hdr, bc_ack);
-
+	while ((skb = __skb_dequeue(list))) {
 		if (likely(skb_queue_len(transmq) < maxwin)) {
+			hdr = buf_msg(skb);
+			msg_set_seqno(hdr, seqno);
+			msg_set_ack(hdr, ack);
+			msg_set_bcast_ack(hdr, bc_ack);
 			_skb = skb_clone(skb, GFP_ATOMIC);
 			if (!_skb) {
+				kfree_skb(skb);
 				__skb_queue_purge(list);
 				return -ENOBUFS;
 			}
-			__skb_dequeue(list);
 			__skb_queue_tail(transmq, skb);
 			/* next retransmit attempt */
 			if (link_is_bc_sndlink(l))
@@ -1000,22 +999,26 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 			seqno++;
 			continue;
 		}
-		tskb = &l->backlog[imp].target_bskb;
-		if (tipc_msg_bundle(*tskb, hdr, mtu)) {
-			kfree_skb(__skb_dequeue(list));
-			l->stats.sent_bundled++;
-			continue;
-		}
-		if (tipc_msg_make_bundle(tskb, hdr, mtu, l->addr)) {
-			kfree_skb(__skb_dequeue(list));
-			__skb_queue_tail(backlogq, *tskb);
+		n = tipc_msg_try_bundle(&l->backlog[imp].target_bskb, skb,
+					mtu - INT_H_SIZE,
+					l->addr);
+		switch (n) {
+		case 0:
+			break;
+		case 1:
+			__skb_queue_tail(backlogq, skb);
 			l->backlog[imp].len++;
-			l->stats.sent_bundled++;
+			continue;
+		case 2:
 			l->stats.sent_bundles++;
+			l->stats.sent_bundled++;
+		default:
+			kfree_skb(skb);
+			l->stats.sent_bundled++;
 			continue;
 		}
-		l->backlog[imp].target_bskb = NULL;
-		l->backlog[imp].len += skb_queue_len(list);
+		l->backlog[imp].len += (1 + skb_queue_len(list));
+		__skb_queue_tail(backlogq, skb);
 		skb_queue_splice_tail_init(list, backlogq);
 	}
 	l->snd_nxt = seqno;
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 922d262e153f..768e29d6599e 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -419,52 +419,110 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
 }
 
 /**
- * tipc_msg_bundle(): Append contents of a buffer to tail of an existing one
- * @skb: the buffer to append to ("bundle")
- * @msg:  message to be appended
- * @mtu:  max allowable size for the bundle buffer
- * Consumes buffer if successful
- * Returns true if bundling could be performed, otherwise false
+ * tipc_msg_bundle - Append contents of a buffer to tail of an existing one
+ * @bskb: the bundle buffer to append to
+ * @msg: message to be appended
+ * @max: max allowable size for the bundle buffer
+ *
+ * Returns "true" if bundling has been performed, otherwise "false"
  */
-bool tipc_msg_bundle(struct sk_buff *skb, struct tipc_msg *msg, u32 mtu)
+static bool tipc_msg_bundle(struct sk_buff *bskb, struct tipc_msg *msg,
+			    u32 max)
 {
-	struct tipc_msg *bmsg;
-	unsigned int bsz;
-	unsigned int msz = msg_size(msg);
-	u32 start, pad;
-	u32 max = mtu - INT_H_SIZE;
+	struct tipc_msg *bmsg = buf_msg(bskb);
+	u32 msz, bsz, offset, pad;
 
-	if (likely(msg_user(msg) == MSG_FRAGMENTER))
-		return false;
-	if (!skb)
-		return false;
-	bmsg = buf_msg(skb);
+	msz = msg_size(msg);
 	bsz = msg_size(bmsg);
-	start = align(bsz);
-	pad = start - bsz;
+	offset = align(bsz);
+	pad = offset - bsz;
 
-	if (unlikely(msg_user(msg) == TUNNEL_PROTOCOL))
-		return false;
-	if (unlikely(msg_user(msg) == BCAST_PROTOCOL))
+	if (unlikely(skb_tailroom(bskb) < (pad + msz)))
 		return false;
-	if (unlikely(msg_user(bmsg) != MSG_BUNDLER))
-		return false;
-	if (unlikely(skb_tailroom(skb) < (pad + msz)))
-		return false;
-	if (unlikely(max < (start + msz)))
-		return false;
-	if ((msg_importance(msg) < TIPC_SYSTEM_IMPORTANCE) &&
-	    (msg_importance(bmsg) == TIPC_SYSTEM_IMPORTANCE))
+	if (unlikely(max < (offset + msz)))
 		return false;
 
-	skb_put(skb, pad + msz);
-	skb_copy_to_linear_data_offset(skb, start, msg, msz);
-	msg_set_size(bmsg, start + msz);
+	skb_put(bskb, pad + msz);
+	skb_copy_to_linear_data_offset(bskb, offset, msg, msz);
+	msg_set_size(bmsg, offset + msz);
 	msg_set_msgcnt(bmsg, msg_msgcnt(bmsg) + 1);
 	return true;
 }
 
 /**
+ * tipc_msg_try_bundle - Try to bundle a new buffer to the last bundle or
+ *                       previously potential message if any
+ * @tskb: target buffer to bundle to (= a bundle or normal buffer or NULL)
+ * @skb: the new buffer to be bundled
+ * @mss: max message size (header inclusive)
+ * @dnode: destination node for the buffer
+ *
+ * Returns the number of bundled messages in the bundle if bundling has been
+ * performed (must be > 1). In case the new buffer is suitable for bundling
+ * but cannot be bundled this time, it becomes the new target for next time,
+ * returns 1!
+ * Otherwise, returns 0 shortly and the current target is flushed too.
+ */
+u16 tipc_msg_try_bundle(struct sk_buff **tskb, struct sk_buff *skb, u32 mss,
+			u32 dnode)
+{
+	struct tipc_msg *msg = buf_msg(skb);
+	struct tipc_msg *bmsg, *omsg;
+	u32 bsz, msz = msg_size(msg);
+
+	/* First, check if the new buffer is suitable for bundling */
+	if (msg_user(msg) == MSG_FRAGMENTER)
+		goto flush;
+	if (msg_user(msg) == TUNNEL_PROTOCOL)
+		goto flush;
+	if (msg_user(msg) == BCAST_PROTOCOL)
+		goto flush;
+	if (mss <= INT_H_SIZE + msz)
+		goto flush;
+
+	/* Ok, but target lost, make a new one */
+	if (unlikely(!*tskb))
+		goto new_target;
+
+	bmsg = buf_msg(*tskb);
+	bsz = msg_size(bmsg);
+
+	/* If target is a bundle already, try to bundle the new buffer to */
+	if (msg_user(bmsg) == MSG_BUNDLER)
+		goto bundle;
+
+	/* Target is not a bundle (i.e. the previously potential buffer), make
+	 * a new bundle of the two buffers if possible
+	 */
+	if (unlikely(mss < align(INT_H_SIZE + bsz) + msz))
+		goto new_target;
+	if (unlikely(pskb_expand_head(*tskb, INT_H_SIZE, mss - bsz,
+				      GFP_ATOMIC)))
+		goto new_target;
+
+	omsg = buf_msg(*tskb);
+	skb_push(*tskb, INT_H_SIZE);
+	bmsg = buf_msg(*tskb);
+	tipc_msg_init(msg_prevnode(omsg), bmsg, MSG_BUNDLER, 0, INT_H_SIZE,
+		      dnode);
+	msg_set_importance(bmsg, msg_importance(omsg));
+	msg_set_size(bmsg, INT_H_SIZE + bsz);
+	msg_set_msgcnt(bmsg, 1);
+
+bundle:
+	if (likely(tipc_msg_bundle(*tskb, msg, mss)))
+		return msg_msgcnt(bmsg);
+
+new_target:
+	*tskb = skb;
+	return 1;
+
+flush:
+	*tskb = NULL;
+	return 0;
+}
+
+/**
  *  tipc_msg_extract(): extract bundled inner packet from buffer
  *  @skb: buffer to be extracted from.
  *  @iskb: extracted inner buffer, to be returned
@@ -510,49 +568,6 @@ bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos)
 }
 
 /**
- * tipc_msg_make_bundle(): Create bundle buf and append message to its tail
- * @list: the buffer chain, where head is the buffer to replace/append
- * @skb: buffer to be created, appended to and returned in case of success
- * @msg: message to be appended
- * @mtu: max allowable size for the bundle buffer, inclusive header
- * @dnode: destination node for message. (Not always present in header)
- * Returns true if success, otherwise false
- */
-bool tipc_msg_make_bundle(struct sk_buff **skb,  struct tipc_msg *msg,
-			  u32 mtu, u32 dnode)
-{
-	struct sk_buff *_skb;
-	struct tipc_msg *bmsg;
-	u32 msz = msg_size(msg);
-	u32 max = mtu - INT_H_SIZE;
-
-	if (msg_user(msg) == MSG_FRAGMENTER)
-		return false;
-	if (msg_user(msg) == TUNNEL_PROTOCOL)
-		return false;
-	if (msg_user(msg) == BCAST_PROTOCOL)
-		return false;
-	if (msz > (max / 2))
-		return false;
-
-	_skb = tipc_buf_acquire(max, GFP_ATOMIC);
-	if (!_skb)
-		return false;
-
-	skb_trim(_skb, INT_H_SIZE);
-	bmsg = buf_msg(_skb);
-	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
-		      INT_H_SIZE, dnode);
-	msg_set_importance(bmsg, msg_importance(msg));
-	msg_set_seqno(bmsg, msg_seqno(msg));
-	msg_set_ack(bmsg, msg_ack(msg));
-	msg_set_bcast_ack(bmsg, msg_bcast_ack(msg));
-	tipc_msg_bundle(_skb, msg, mtu);
-	*skb = _skb;
-	return true;
-}
-
-/**
  * tipc_msg_reverse(): swap source and destination addresses and add error code
  * @own_node: originating node id for reversed message
  * @skb:  buffer containing message to be reversed; will be consumed
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 0daa6f04ca81..281fcda55311 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1057,9 +1057,8 @@ struct sk_buff *tipc_msg_create(uint user, uint type, uint hdr_sz,
 				uint data_sz, u32 dnode, u32 onode,
 				u32 dport, u32 oport, int errcode);
 int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf);
-bool tipc_msg_bundle(struct sk_buff *skb, struct tipc_msg *msg, u32 mtu);
-bool tipc_msg_make_bundle(struct sk_buff **skb, struct tipc_msg *msg,
-			  u32 mtu, u32 dnode);
+u16 tipc_msg_try_bundle(struct sk_buff **tskb, struct sk_buff *skb, u32 mss,
+			u32 dnode);
 bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos);
 int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
 		      int pktmax, struct sk_buff_head *frags);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
