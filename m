Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D287241B
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Jul 2019 03:56:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hq6WG-0003vL-1n; Wed, 24 Jul 2019 01:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hq6WD-0003ux-8y
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Jul 2019 01:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QVGbb85xMAg5kSUOfG4HsGHKAzhmS3a4UYs8BzVpc9w=; b=OnmbHZEnbYod39+ILCc6Gvu0YZ
 F6IjNOJ5o/MehdNKcbpf7bULot2bdagsJCuWYyIvXUxPuawivOF8BbqN0L9CB+ru+F/ceQMaF4Yyg
 YO5MkOFBMdVwfSybYZivwGFdVr3swoAUi8fBk+H/Ozq6YHMuVGgG11R8VJ40dmlSUbIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QVGbb85xMAg5kSUOfG4HsGHKAzhmS3a4UYs8BzVpc9w=; b=AN/ivkTrZIVrxq4Vp7Sx8tC77X
 oQf/VEV5caCGcbmZPY3I4+eW5LdSTwaFLiqhF9ShBewyoCheGHnbqbkgsh93cVwuoi7M4hTPyrtDc
 6YaNruD1Ut2zEaH9QAviXjSLJ5xdlcUj0hKb9ucIrpK2Cph2NrLmN1ezfeSjfElJWPIc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hq6WA-00FI6E-DV
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Jul 2019 01:56:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A56EC46579;
 Wed, 24 Jul 2019 11:56:27 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1563933387; bh=zVSoHHrwvJqIRHGtSTgFlOFqG2fzcMht6hHVUB7FH/c=; b=P
 w3W0k+66G6a6x383epeCUCcIapSdTZqaRjJ2aNVc7rPblnduoVQHkE8rE4eAl2IM
 0qWf+xdDV2wqos2owBFDLFDpJ9pepk3/X3xsE8lUTJ0pJTfVwMrvkS0tJFPy9uPA
 gUk0EXQBr2irLhBC7qX5/1ASHuJP5D8+3bIIEdZGxg=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id o-8nHiWWyHGe; Wed, 24 Jul 2019 11:56:27 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 896A64657B;
 Wed, 24 Jul 2019 11:56:27 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id B70B346579;
 Wed, 24 Jul 2019 11:56:25 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Wed, 24 Jul 2019 08:56:12 +0700
Message-Id: <20190724015612.2518-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190724015612.2518-1-tuong.t.lien@dektech.com.au>
References: <20190724015612.2518-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hq6WA-00FI6E-DV
Subject: [tipc-discussion] [net-next 2/2] tipc: fix changeover issues due to
 large packet
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

In conjunction with changing the interfaces' MTU (e.g. especially in
the case of a bonding) where the TIPC links are brought up and down
in a short time, a couple of issues were detected with the current link
changeover mechanism:

1) When one link is up but immediately forced down again, the failover
procedure will be carried out in order to failover all the messages in
the link's transmq queue onto the other working link. The link and node
state is also set to FAILINGOVER as part of the process. The message
will be transmited in form of a FAILOVER_MSG, so its size is plus of 40
bytes (= the message header size). There is no problem if the original
message size is not larger than the link's MTU - 40, and indeed this is
the max size of a normal payload messages. However, in the situation
above, because the link has just been up, the messages in the link's
transmq are almost SYNCH_MSGs which had been generated by the link
synching procedure, then their size might reach the max value already!
When the FAILOVER_MSG is built on the top of such a SYNCH_MSG, its size
will exceed the link's MTU. As a result, the messages are dropped
silently and the failover procedure will never end up, the link will
not be able to exit the FAILINGOVER state, so cannot be re-established.

2) The same scenario above can happen more easily in case the MTU of
the links is set differently or when changing. In that case, as long as
a large message in the failure link's transmq queue was built and
fragmented with its link's MTU > the other link's one, the issue will
happen (there is no need of a link synching in advance).

3) The link synching procedure also faces with the same issue but since
the link synching is only started upon receipt of a SYNCH_MSG, dropping
the message will not result in a state deadlock, but it is not expected
as design.

The 1) & 3) issues are resolved by the last commit that only a dummy
SYNCH_MSG (i.e. without data) is generated at the link synching, so the
size of a FAILOVER_MSG if any then will never exceed the link's MTU.

For the 2) issue, the only solution is trying to fragment the messages
in the failure link's transmq queue according to the working link's MTU
so they can be failovered then. A new function is made to accomplish
this, it will still be a TUNNEL PROTOCOL/FAILOVER MSG but if the
original message size is too large, it will be fragmented & reassembled
at the receiving side.

Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++---------
 net/tipc/msg.c  | 59 ++++++++++++++++++++++++++++++++++++
 net/tipc/msg.h  | 18 ++++++++++-
 3 files changed, 155 insertions(+), 15 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index e215b4ba6a4b..2c274777b2dd 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -180,6 +180,7 @@ struct tipc_link {
 
 	/* Fragmentation/reassembly */
 	struct sk_buff *reasm_buf;
+	struct sk_buff *reasm_tnlmsg;
 
 	/* Broadcast */
 	u16 ackers;
@@ -897,8 +898,10 @@ void tipc_link_reset(struct tipc_link *l)
 	l->backlog[TIPC_CRITICAL_IMPORTANCE].len = 0;
 	l->backlog[TIPC_SYSTEM_IMPORTANCE].len = 0;
 	kfree_skb(l->reasm_buf);
+	kfree_skb(l->reasm_tnlmsg);
 	kfree_skb(l->failover_reasm_skb);
 	l->reasm_buf = NULL;
+	l->reasm_tnlmsg = NULL;
 	l->failover_reasm_skb = NULL;
 	l->rcv_unacked = 0;
 	l->snd_nxt = 1;
@@ -940,6 +943,9 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	int rc = 0;
 
 	if (unlikely(msg_size(hdr) > mtu)) {
+		pr_warn("Too large msg, purging xmit list %d %d %d %d %d!\n",
+			skb_queue_len(list), msg_user(hdr),
+			msg_type(hdr), msg_size(hdr), mtu);
 		skb_queue_purge(list);
 		return -EMSGSIZE;
 	}
@@ -1233,6 +1239,7 @@ static int tipc_link_tnl_rcv(struct tipc_link *l, struct sk_buff *skb,
 			     struct sk_buff_head *inputq)
 {
 	struct sk_buff **reasm_skb = &l->failover_reasm_skb;
+	struct sk_buff **reasm_tnlmsg = &l->reasm_tnlmsg;
 	struct sk_buff_head *fdefq = &l->failover_deferdq;
 	struct tipc_msg *hdr = buf_msg(skb);
 	struct sk_buff *iskb;
@@ -1240,40 +1247,56 @@ static int tipc_link_tnl_rcv(struct tipc_link *l, struct sk_buff *skb,
 	int rc = 0;
 	u16 seqno;
 
-	/* SYNCH_MSG */
-	if (msg_type(hdr) == SYNCH_MSG)
-		goto drop;
+	if (msg_type(hdr) == SYNCH_MSG) {
+		kfree_skb(skb);
+		return 0;
+	}
 
-	/* FAILOVER_MSG */
-	if (!tipc_msg_extract(skb, &iskb, &ipos)) {
-		pr_warn_ratelimited("Cannot extract FAILOVER_MSG, defq: %d\n",
-				    skb_queue_len(fdefq));
-		return rc;
+	/* Not a fragment? */
+	if (likely(!msg_nof_fragms(hdr))) {
+		if (unlikely(!tipc_msg_extract(skb, &iskb, &ipos))) {
+			pr_warn_ratelimited("Unable to extract msg, defq: %d\n",
+					    skb_queue_len(fdefq));
+			return 0;
+		}
+		kfree_skb(skb);
+	} else {
+		/* Set fragment type for buf_append */
+		if (msg_fragm_no(hdr) == 1)
+			msg_set_type(hdr, FIRST_FRAGMENT);
+		else if (msg_fragm_no(hdr) < msg_nof_fragms(hdr))
+			msg_set_type(hdr, FRAGMENT);
+		else
+			msg_set_type(hdr, LAST_FRAGMENT);
+
+		if (!tipc_buf_append(reasm_tnlmsg, &skb)) {
+			/* Successful but non-complete reassembly? */
+			if (*reasm_tnlmsg || link_is_bc_rcvlink(l))
+				return 0;
+			pr_warn_ratelimited("Unable to reassemble tunnel msg\n");
+			return tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
+		}
+		iskb = skb;
 	}
 
 	do {
 		seqno = buf_seqno(iskb);
-
 		if (unlikely(less(seqno, l->drop_point))) {
 			kfree_skb(iskb);
 			continue;
 		}
-
 		if (unlikely(seqno != l->drop_point)) {
 			__tipc_skb_queue_sorted(fdefq, seqno, iskb);
 			continue;
 		}
 
 		l->drop_point++;
-
 		if (!tipc_data_input(l, iskb, inputq))
 			rc |= tipc_link_input(l, iskb, inputq, reasm_skb);
 		if (unlikely(rc))
 			break;
 	} while ((iskb = __tipc_skb_dequeue(fdefq, l->drop_point)));
 
-drop:
-	kfree_skb(skb);
 	return rc;
 }
 
@@ -1663,15 +1686,18 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 	struct sk_buff *skb, *tnlskb;
 	struct tipc_msg *hdr, tnlhdr;
 	struct sk_buff_head *queue = &l->transmq;
-	struct sk_buff_head tmpxq, tnlq;
+	struct sk_buff_head tmpxq, tnlq, frags;
 	u16 pktlen, pktcnt, seqno = l->snd_nxt;
+	bool pktcnt_need_update = false;
 	u16 syncpt;
+	int rc;
 
 	if (!tnl)
 		return;
 
 	skb_queue_head_init(&tnlq);
 	skb_queue_head_init(&tmpxq);
+	skb_queue_head_init(&frags);
 
 	/* At least one packet required for safe algorithm => add dummy */
 	skb = tipc_msg_create(TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
@@ -1727,6 +1753,39 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 		if (queue == &l->backlogq)
 			msg_set_seqno(hdr, seqno++);
 		pktlen = msg_size(hdr);
+
+		/* Tunnel link MTU is not large enough? This could be
+		 * due to:
+		 * 1) Link MTU has just changed or set differently;
+		 * 2) Or FAILOVER on the top of a SYNCH message
+		 *
+		 * The 2nd case should not happen if peer supports
+		 * TIPC_TUNNEL_ENHANCED
+		 */
+		if (pktlen > tnl->mtu - INT_H_SIZE) {
+			if (mtyp == FAILOVER_MSG &&
+			    (tnl->peer_caps & TIPC_TUNNEL_ENHANCED)) {
+				rc = tipc_msg_fragment(skb, &tnlhdr, tnl->mtu,
+						       &frags);
+				if (rc) {
+					pr_warn("%sunable to frag msg: rc %d\n",
+						link_co_err, rc);
+					return;
+				}
+				pktcnt += skb_queue_len(&frags) - 1;
+				pktcnt_need_update = true;
+				skb_queue_splice_tail_init(&frags, &tnlq);
+				continue;
+			}
+			/* Unluckily, peer doesn't have TIPC_TUNNEL_ENHANCED
+			 * => Just warn it and return!
+			 */
+			pr_warn_ratelimited("%stoo large msg <%d, %d>: %d!\n",
+					    link_co_err, msg_user(hdr),
+					    msg_type(hdr), msg_size(hdr));
+			return;
+		}
+
 		msg_set_size(&tnlhdr, pktlen + INT_H_SIZE);
 		tnlskb = tipc_buf_acquire(pktlen + INT_H_SIZE, GFP_ATOMIC);
 		if (!tnlskb) {
@@ -1742,6 +1801,12 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 		goto tnl;
 	}
 
+	if (pktcnt_need_update)
+		skb_queue_walk(&tnlq, skb) {
+			hdr = buf_msg(skb);
+			msg_set_msgcnt(hdr, pktcnt);
+		}
+
 	tipc_link_xmit(tnl, &tnlq, xmitq);
 
 	if (mtyp == FAILOVER_MSG) {
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index f48e5857210f..e6d49cdc61b4 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -244,6 +244,65 @@ bool tipc_msg_validate(struct sk_buff **_skb)
 }
 
 /**
+ * tipc_msg_fragment - build a fragment skb list for TIPC message
+ *
+ * @skb: TIPC message skb
+ * @hdr: internal msg header to be put on the top of the fragments
+ * @pktmax: max size of a fragment incl. the header
+ * @frags: returned fragment skb list
+ *
+ * Returns 0 if the fragmentation is successful, otherwise: -EINVAL
+ * or -ENOMEM
+ */
+int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
+		      int pktmax, struct sk_buff_head *frags)
+{
+	int pktno, nof_fragms, dsz, dmax, eat;
+	struct tipc_msg *_hdr;
+	struct sk_buff *_skb;
+	u8 *data;
+
+	/* Non-linear buffer? */
+	if (skb_linearize(skb))
+		return -ENOMEM;
+
+	data = (u8 *)skb->data;
+	dsz = msg_size(buf_msg(skb));
+	dmax = pktmax - INT_H_SIZE;
+	if (dsz <= dmax || !dmax)
+		return -EINVAL;
+
+	nof_fragms = dsz / dmax + 1;
+	for (pktno = 1; pktno <= nof_fragms; pktno++) {
+		if (pktno < nof_fragms)
+			eat = dmax;
+		else
+			eat = dsz % dmax;
+		/* Allocate a new fragment */
+		_skb = tipc_buf_acquire(INT_H_SIZE + eat, GFP_ATOMIC);
+		if (!_skb)
+			goto error;
+		skb_orphan(_skb);
+		__skb_queue_tail(frags, _skb);
+		/* Copy header & data to the fragment */
+		skb_copy_to_linear_data(_skb, hdr, INT_H_SIZE);
+		skb_copy_to_linear_data_offset(_skb, INT_H_SIZE, data, eat);
+		data += eat;
+		/* Update the fragment's header */
+		_hdr = buf_msg(_skb);
+		msg_set_fragm_no(_hdr, pktno);
+		msg_set_nof_fragms(_hdr, nof_fragms);
+		msg_set_size(_hdr, INT_H_SIZE + eat);
+	}
+	return 0;
+
+error:
+	__skb_queue_purge(frags);
+	__skb_queue_head_init(frags);
+	return -ENOMEM;
+}
+
+/**
  * tipc_msg_build - create buffer chain containing specified header and data
  * @mhdr: Message header, to be prepended to data
  * @m: User message
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index fca042cdff88..1c8c8dd32a4e 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -721,12 +721,26 @@ static inline void msg_set_last_bcast(struct tipc_msg *m, u32 n)
 	msg_set_bits(m, 4, 16, 0xffff, n);
 }
 
+static inline u32 msg_nof_fragms(struct tipc_msg *m)
+{
+	return msg_bits(m, 4, 0, 0xffff);
+}
+
+static inline void msg_set_nof_fragms(struct tipc_msg *m, u32 n)
+{
+	msg_set_bits(m, 4, 0, 0xffff, n);
+}
+
+static inline u32 msg_fragm_no(struct tipc_msg *m)
+{
+	return msg_bits(m, 4, 16, 0xffff);
+}
+
 static inline void msg_set_fragm_no(struct tipc_msg *m, u32 n)
 {
 	msg_set_bits(m, 4, 16, 0xffff, n);
 }
 
-
 static inline u16 msg_next_sent(struct tipc_msg *m)
 {
 	return msg_bits(m, 4, 0, 0xffff);
@@ -1045,6 +1059,8 @@ bool tipc_msg_bundle(struct sk_buff *skb, struct tipc_msg *msg, u32 mtu);
 bool tipc_msg_make_bundle(struct sk_buff **skb, struct tipc_msg *msg,
 			  u32 mtu, u32 dnode);
 bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos);
+int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
+		      int pktmax, struct sk_buff_head *frags);
 int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m,
 		   int offset, int dsz, int mtu, struct sk_buff_head *list);
 bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
