Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DBDEB099
	for <lists+tipc-discussion@lfdr.de>; Thu, 31 Oct 2019 13:51:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iQ9vZ-0007hR-Dy; Thu, 31 Oct 2019 12:51:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iQ9vY-0007hK-1n
 for tipc-discussion@lists.sourceforge.net; Thu, 31 Oct 2019 12:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=27uHjSjck5+Jp5YrlWBfFq//F22ah75L3qTnrPQn2Q0=; b=KUzumOZfyXTNrt/y7R8181FRSp
 lymGlnSAEY2KnMmxElxnGHtuT26StSbCIP/hU4CRpJfaVVlsUxkrYvMFhcY8NJYRR58WSrvBFm/aC
 cwxt9SIvrj1DCgH6Ou98Ix3yLYwyfJQix8YKihKw5F1EGrfA3E/MPHSRz2do+6GweDMQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=27uHjSjck5+Jp5YrlWBfFq//F22ah75L3qTnrPQn2Q0=; b=WigvFC/tY4fc3zojlGzxWkqfyN
 axTrauvAS1xyrhVP1gfcW+CTV4B3z949HWq0dVaaUltfAetpIxRq2xxCJ616wcW+1rJM4txSwPaE7
 yu39azVIPo5FNmovrdfNzv4OImY8ctoB8Oh5PJwqjSpcPmhxe1vd+xVESBT5MHMOgLUM=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iQ9vW-00CSm8-3o
 for tipc-discussion@lists.sourceforge.net; Thu, 31 Oct 2019 12:51:48 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x9VCpNSo015163
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Thu, 31 Oct 2019 05:51:25 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.80]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Thu,
 31 Oct 2019 05:51:22 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [net-next] tipc: improve message bundling algorithm
Thread-Index: AQHVgxVK7NhbkxPwEUKgpxfTrTUUoKd0zWcg
Date: Thu, 31 Oct 2019 12:51:22 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CA72155@ALA-MBD.corp.ad.wrs.com>
References: <20191015045900.16280-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191015045900.16280-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.16.203]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iQ9vW-00CSm8-3o
Subject: Re: [tipc-discussion] [net-next] tipc: improve message bundling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Sorry for late response to this commit. Great change!

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Tuesday, October 15, 2019 12:59 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
Subject: [net-next] tipc: improve message bundling algorithm

As mentioned in commit e95584a889e1 ("tipc: fix unlimited bundling of
small messages"), the current message bundling algorithm is inefficient
that can generate bundles of only one payload message, that causes
unnecessary overheads for both the sender and receiver.

This commit re-designs the 'tipc_msg_make_bundle()' function (now named
as 'tipc_msg_try_bundle()'), so that when a message comes at the first
place, we will just check & keep a reference to it if the message is
suitable for bundling. The message buffer will be put into the link
backlog queue and processed as normal. Later on, when another one comes
we will make a bundle with the first message if possible and so on...
This way, a bundle if really needed will always consist of at least two
payload messages. Otherwise, we let the first buffer go its way without
any need of bundling, so reduce the overheads to zero.

Moreover, since now we have both the messages in hand, we can even
optimize the 'tipc_msg_bundle()' function, make bundle of a very large
(size ~ MSS) and small messages which is not with the current algorithm
e.g. [1400-byte message] + [10-byte message] (MTU = 1500).

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c |  60 +++++++++++-----------
 net/tipc/msg.c  | 153 +++++++++++++++++++++++++++++---------------------------
 net/tipc/msg.h  |   5 +-
 3 files changed, 114 insertions(+), 104 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 999eab592de8..3bd60bdbf56c 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -940,16 +940,17 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		   struct sk_buff_head *xmitq)
 {
 	struct tipc_msg *hdr = buf_msg(skb_peek(list));
-	unsigned int maxwin = l->window;
-	int imp = msg_importance(hdr);
-	unsigned int mtu = l->mtu;
+	struct sk_buff_head *backlogq = &l->backlogq;
+	struct sk_buff_head *transmq = &l->transmq;
+	struct sk_buff *skb, *_skb;
+	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u16 ack = l->rcv_nxt - 1;
 	u16 seqno = l->snd_nxt;
-	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
-	struct sk_buff_head *transmq = &l->transmq;
-	struct sk_buff_head *backlogq = &l->backlogq;
-	struct sk_buff *skb, *_skb, **tskb;
 	int pkt_cnt = skb_queue_len(list);
+	int imp = msg_importance(hdr);
+	unsigned int maxwin = l->window;
+	unsigned int mtu = l->mtu;
+	bool new_bundle;
 	int rc = 0;
 
 	if (unlikely(msg_size(hdr) > mtu)) {
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
@@ -1000,22 +999,27 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
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
-			l->backlog[imp].len++;
-			l->stats.sent_bundled++;
-			l->stats.sent_bundles++;
+		if (tipc_msg_try_bundle(l->backlog[imp].target_bskb, &skb,
+					mtu - INT_H_SIZE, l->addr,
+					&new_bundle)) {
+			if (skb) {
+				/* Keep a ref. to the skb for next try */
+				l->backlog[imp].target_bskb = skb;
+				l->backlog[imp].len++;
+				__skb_queue_tail(backlogq, skb);
+			} else {
+				if (new_bundle) {
+					l->stats.sent_bundles++;
+					l->stats.sent_bundled++;
+				}
+				l->stats.sent_bundled++;
+			}
 			continue;
 		}
+		/* Let's the last skb (if any) go its way! */
 		l->backlog[imp].target_bskb = NULL;
-		l->backlog[imp].len += skb_queue_len(list);
+		l->backlog[imp].len += (1 + skb_queue_len(list));
+		__skb_queue_tail(backlogq, skb);
 		skb_queue_splice_tail_init(list, backlogq);
 	}
 	l->snd_nxt = seqno;
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 922d262e153f..a2f3582cf9fe 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -419,48 +419,98 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
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
+	if (unlikely(skb_tailroom(bskb) < (pad + msz)))
 		return false;
-	if (unlikely(msg_user(msg) == BCAST_PROTOCOL))
+	if (unlikely(max < (offset + msz)))
 		return false;
-	if (unlikely(msg_user(bmsg) != MSG_BUNDLER))
+
+	skb_put(bskb, pad + msz);
+	skb_copy_to_linear_data_offset(bskb, offset, msg, msz);
+	msg_set_size(bmsg, offset + msz);
+	msg_set_msgcnt(bmsg, msg_msgcnt(bmsg) + 1);
+	return true;
+}
+
+/**
+ * tipc_msg_try_bundle - Try to bundle a new message to the last one
+ * @tskb: the last/target message to which the new one will be appended
+ * @skb: the new message skb pointer
+ * @mss: max message size (header inclusive)
+ * @dnode: destination node for the message
+ * @new_bundle: if this call made a new bundle or not
+ *
+ * Return: "true" if the new message skb is potential for bundling this time or
+ * later, in the case a bundling has been done this time, the skb is consumed
+ * (the skb pointer = NULL).
+ * Otherwise, "false" if the skb cannot be bundled at all.
+ */
+bool tipc_msg_try_bundle(struct sk_buff *tskb, struct sk_buff **skb, u32 mss,
+			 u32 dnode, bool *new_bundle)
+{
+	struct tipc_msg *msg, *inner, *outer;
+	u32 bsz;
+
+	/* First, check if the new buffer is suitable for bundling */
+	msg = buf_msg(*skb);
+	if (msg_user(msg) == MSG_FRAGMENTER)
 		return false;
-	if (unlikely(skb_tailroom(skb) < (pad + msz)))
+	if (msg_user(msg) == TUNNEL_PROTOCOL)
 		return false;
-	if (unlikely(max < (start + msz)))
+	if (msg_user(msg) == BCAST_PROTOCOL)
 		return false;
-	if ((msg_importance(msg) < TIPC_SYSTEM_IMPORTANCE) &&
-	    (msg_importance(bmsg) == TIPC_SYSTEM_IMPORTANCE))
+	if (mss <= INT_H_SIZE + msg_size(msg))
 		return false;
 
-	skb_put(skb, pad + msz);
-	skb_copy_to_linear_data_offset(skb, start, msg, msz);
-	msg_set_size(bmsg, start + msz);
-	msg_set_msgcnt(bmsg, msg_msgcnt(bmsg) + 1);
+	/* Ok, but the last/target buffer can be empty? */
+	if (unlikely(!tskb))
+		return true;
+
+	/* Is it a bundle already? Try to bundle the new message to it */
+	if (msg_user(buf_msg(tskb)) == MSG_BUNDLER) {
+		*new_bundle = false;
+		goto bundle;
+	}
+
+	/* Make a new bundle of the two messages if possible */
+	bsz = msg_size(buf_msg(tskb));
+	if (unlikely(mss < align(INT_H_SIZE + bsz) + msg_size(msg)))
+		return true;
+	if (unlikely(pskb_expand_head(tskb, INT_H_SIZE, mss - bsz,
+				      GFP_ATOMIC)))
+		return true;
+	inner = buf_msg(tskb);
+	skb_push(tskb, INT_H_SIZE);
+	outer = buf_msg(tskb);
+	tipc_msg_init(msg_prevnode(inner), outer, MSG_BUNDLER, 0, INT_H_SIZE,
+		      dnode);
+	msg_set_importance(outer, msg_importance(inner));
+	msg_set_size(outer, INT_H_SIZE + bsz);
+	msg_set_msgcnt(outer, 1);
+	*new_bundle = true;
+
+bundle:
+	if (likely(tipc_msg_bundle(tskb, msg, mss))) {
+		consume_skb(*skb);
+		*skb = NULL;
+	}
 	return true;
 }
 
@@ -510,49 +560,6 @@ bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos)
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
index 0daa6f04ca81..4d4ed4bd058a 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1057,9 +1057,8 @@ struct sk_buff *tipc_msg_create(uint user, uint type, uint hdr_sz,
 				uint data_sz, u32 dnode, u32 onode,
 				u32 dport, u32 oport, int errcode);
 int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf);
-bool tipc_msg_bundle(struct sk_buff *skb, struct tipc_msg *msg, u32 mtu);
-bool tipc_msg_make_bundle(struct sk_buff **skb, struct tipc_msg *msg,
-			  u32 mtu, u32 dnode);
+bool tipc_msg_try_bundle(struct sk_buff *tskb, struct sk_buff **skb, u32 mss,
+			 u32 dnode, bool *new_bundle);
 bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos);
 int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
 		      int pktmax, struct sk_buff_head *frags);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
