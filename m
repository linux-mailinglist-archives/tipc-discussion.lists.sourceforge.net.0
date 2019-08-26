Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E1C9CE60
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Aug 2019 13:46:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i2DS0-0006FQ-Id; Mon, 26 Aug 2019 11:46:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1i2DRy-0006Ex-LH
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 11:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jZotNkVB1lFVsvcRLotrb94noAHZ30xL6NoabjYGGOY=; b=AfvPKBQcaBGNske3oxtfCA5Nv3
 9H1HzER+dn6BbP7XlfvZdvrKoxgW6Un4xSQA6X+W3HfpX6MxPZbPwh1pu3PlzPZsRn1zq1SMZStJx
 e41oqeMdxpSo8O2pWuMvM9vdgNsDemOwekumjF538u3PJ7F6JrcFREf5Ta1QOJhn1MEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jZotNkVB1lFVsvcRLotrb94noAHZ30xL6NoabjYGGOY=; b=TR3XxcqNsH3PQhNOg8Q7hEt8Ls
 7JcXA8vjFDgwztVQJZugsRjF/i/lvDUNbyb1FLEBqtrK8ykjY59izqryFrEX+cGWtvOgy+OISRa6G
 mWeGAHcMuPOstagCbS/FZSxE4O7IQpTo/l4+SdslkHj2mmP513fQiBfHhTElHkU/2Mss=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i2DRx-003BrO-1p
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 11:46:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 854614924C;
 Mon, 26 Aug 2019 21:46:09 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1566819969; bh=xM33J
 K1YkivA924xku9Js9/lj2Kp4cWGJAbqQgVl7ac=; b=AtEFuA9DrXSEWSFITAxyY
 RSgbKlfsOypeSF/YL9GZ4Q9FrQfjAeGjag8//nU2tCv/a4LDvIRePn7eGzWLmhoU
 crp0dRWlsRRkjyNe+Kc8F/TTnWDGcd0/el0Xv+BDB2w2kQH9p/ylDtVxMsBfxRpT
 W9ztm4lMMbFNh1QUwOe+WY=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id iLC8T1O1p7lV; Mon, 26 Aug 2019 21:46:09 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0936449173;
 Mon, 26 Aug 2019 21:46:09 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 593A5441BC;
 Mon, 26 Aug 2019 21:46:07 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 26 Aug 2019 18:45:58 +0700
Message-Id: <20190826114558.12881-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1i2DRx-003BrO-1p
Subject: [tipc-discussion] [PATCH RFC] tipc: improve bundle algorithm
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

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 29 ++++++++++++++++++-----------
 net/tipc/msg.c  |  4 ++--
 2 files changed, 20 insertions(+), 13 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 6cc75ffd9e2c..22ba0c8af3a8 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -160,6 +160,7 @@ struct tipc_link {
 	struct {
 		u16 len;
 		u16 limit;
+		struct sk_buff *tskb;
 	} backlog[5];
 	u16 snd_nxt;
 	u16 window;
@@ -880,6 +881,7 @@ static void link_prepare_wakeup(struct tipc_link *l)
 void tipc_link_reset(struct tipc_link *l)
 {
 	struct sk_buff_head list;
+	u32 imp;
 
 	__skb_queue_head_init(&list);
 
@@ -901,11 +903,10 @@ void tipc_link_reset(struct tipc_link *l)
 	__skb_queue_purge(&l->deferdq);
 	__skb_queue_purge(&l->backlogq);
 	__skb_queue_purge(&l->failover_deferdq);
-	l->backlog[TIPC_LOW_IMPORTANCE].len = 0;
-	l->backlog[TIPC_MEDIUM_IMPORTANCE].len = 0;
-	l->backlog[TIPC_HIGH_IMPORTANCE].len = 0;
-	l->backlog[TIPC_CRITICAL_IMPORTANCE].len = 0;
-	l->backlog[TIPC_SYSTEM_IMPORTANCE].len = 0;
+	for (imp = 0; imp <= TIPC_SYSTEM_IMPORTANCE; imp++) {
+		l->backlog[imp].len = 0;
+		l->backlog[imp].tskb = NULL;
+	}
 	kfree_skb(l->reasm_buf);
 	kfree_skb(l->reasm_tnlmsg);
 	kfree_skb(l->failover_reasm_skb);
@@ -947,7 +948,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	struct sk_buff_head *transmq = &l->transmq;
 	struct sk_buff_head *backlogq = &l->backlogq;
-	struct sk_buff *skb, *_skb, *bskb;
+	struct sk_buff *skb, *_skb, **tskb;
 	int pkt_cnt = skb_queue_len(list);
 	int rc = 0;
 
@@ -999,19 +1000,21 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 			seqno++;
 			continue;
 		}
-		if (tipc_msg_bundle(skb_peek_tail(backlogq), hdr, mtu)) {
+		tskb = &l->backlog[imp].tskb;
+		if (tipc_msg_bundle(*tskb, hdr, mtu)) {
 			kfree_skb(__skb_dequeue(list));
 			l->stats.sent_bundled++;
 			continue;
 		}
-		if (tipc_msg_make_bundle(&bskb, hdr, mtu, l->addr)) {
+		if (tipc_msg_make_bundle(tskb, hdr, mtu, l->addr)) {
 			kfree_skb(__skb_dequeue(list));
-			__skb_queue_tail(backlogq, bskb);
-			l->backlog[msg_importance(buf_msg(bskb))].len++;
+			__skb_queue_tail(backlogq, *tskb);
+			l->backlog[imp].len++;
 			l->stats.sent_bundled++;
 			l->stats.sent_bundles++;
 			continue;
 		}
+		l->backlog[imp].tskb = NULL;
 		l->backlog[imp].len += skb_queue_len(list);
 		skb_queue_splice_tail_init(list, backlogq);
 	}
@@ -1027,6 +1030,7 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 	u16 seqno = l->snd_nxt;
 	u16 ack = l->rcv_nxt - 1;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
+	u32 imp;
 
 	while (skb_queue_len(&l->transmq) < l->window) {
 		skb = skb_peek(&l->backlogq);
@@ -1037,7 +1041,10 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 			break;
 		__skb_dequeue(&l->backlogq);
 		hdr = buf_msg(skb);
-		l->backlog[msg_importance(hdr)].len--;
+		imp = msg_importance(hdr);
+		l->backlog[imp].len--;
+		if (unlikely(skb == l->backlog[imp].tskb))
+			l->backlog[imp].tskb = NULL;
 		__skb_queue_tail(&l->transmq, skb);
 		/* next retransmit attempt */
 		if (link_is_bc_sndlink(l))
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index e6d49cdc61b4..25c884cc8b88 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -518,7 +518,7 @@ bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos)
  * @dnode: destination node for message. (Not always present in header)
  * Returns true if success, otherwise false
  */
-bool tipc_msg_make_bundle(struct sk_buff **skb,  struct tipc_msg *msg,
+bool tipc_msg_make_bundle(struct sk_buff **skb, struct tipc_msg *msg,
 			  u32 mtu, u32 dnode)
 {
 	struct sk_buff *_skb;
@@ -544,7 +544,7 @@ bool tipc_msg_make_bundle(struct sk_buff **skb,  struct tipc_msg *msg,
 	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
 		      INT_H_SIZE, dnode);
 	if (msg_isdata(msg))
-		msg_set_importance(bmsg, TIPC_CRITICAL_IMPORTANCE);
+		msg_set_importance(bmsg, msg_importance(msg));
 	else
 		msg_set_importance(bmsg, TIPC_SYSTEM_IMPORTANCE);
 	msg_set_seqno(bmsg, msg_seqno(msg));
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
