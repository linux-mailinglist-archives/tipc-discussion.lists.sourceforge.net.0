Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 142376660D
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Jul 2019 07:16:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hlnue-0006EG-Az; Fri, 12 Jul 2019 05:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hlnud-0006E2-9q
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 05:16:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dXt61609auNqaIhdSFY4eAnt5i7lm6VzQOVepFGfY2s=; b=I6CyJw1Ajc91cyfxefqSjibU5S
 fS84TCHKA2UXiSLhGrdIBmo7NTz/vqZgCj3H/5S3bHNm9DRIROaZYlOb48laeC+LE4e7dkU3goeL5
 bo4NH9T3+E4N9NWZJ8IuuPNnE3R7UciNbju+EeqFBco1Qws+zGFB1qpGSKDc0hMwTsps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dXt61609auNqaIhdSFY4eAnt5i7lm6VzQOVepFGfY2s=; b=MAzYZGumRQQKrX7S9s4N0+qvQ5
 /FApkCUYmaY3j0fycroEAPLSQ4Go5z10zCNDwpTYBVjYQ3g5VBNGcrjzDNRsrq+k61pEBS3iudqdb
 2yOQvQ8ihXniVOA/RZOA9/Qlx3vCQD1uFuIPukPjHOTbA0tHJIUL45+jOVyR1VJoVrnU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlnuZ-00GItx-2p
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 05:16:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 7E9A846097;
 Fri, 12 Jul 2019 15:15:51 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1562908551; bh=g2qd9u/pjQDSatn9091GvvbU/momkDMHi+U4Y4Zs2H8=; b=i
 8Q6hr1zpkAc33n6g4oyZs+mr3cK8PeC0WRHcT2XK0Mtv5gSoRbYalEwRJOYN3xdR
 CH3uHnE4uvGmAtq9cbK6lTp4I9Igv/hlPiymQ8dTBmXii4umizS1/oO1iX7Pz6bH
 6K7MfdxuvNskJ4gVJJ3Qdvdkdl2JFtsl3dhSmgTKlw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id m0n1UA5l0ZOR; Fri, 12 Jul 2019 15:15:51 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 60B2046093;
 Fri, 12 Jul 2019 15:15:51 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 8E26946097;
 Fri, 12 Jul 2019 15:15:49 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri, 12 Jul 2019 12:15:36 +0700
Message-Id: <20190712051537.10826-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712051537.10826-1-tuong.t.lien@dektech.com.au>
References: <20190712051537.10826-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hlnuZ-00GItx-2p
Subject: [tipc-discussion] [net-next 1/2] tipc: optimize link synching
 mechanism
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

This commit along with the next one are to resolve the issues with the
link changeover mechanism. See that commit for details.

Basically, for the link synching, from now on, we will send only one
single ("dummy") SYNCH message to peer. The SYNCH message does not
contain any data, just a header conveying the synch point to the peer.

A new node capability flag ("TIPC_TUNNEL_ENHANCED") is introduced for
backward compatible!

Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 26 ++++++++++++++++++++++++++
 net/tipc/msg.h  | 10 ++++++++++
 net/tipc/node.c |  6 ++++--
 net/tipc/node.h |  6 ++++--
 4 files changed, 44 insertions(+), 4 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 66d3a07bc571..e215b4ba6a4b 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1665,6 +1665,7 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 	struct sk_buff_head *queue = &l->transmq;
 	struct sk_buff_head tmpxq, tnlq;
 	u16 pktlen, pktcnt, seqno = l->snd_nxt;
+	u16 syncpt;
 
 	if (!tnl)
 		return;
@@ -1684,6 +1685,31 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 	tipc_link_xmit(l, &tnlq, &tmpxq);
 	__skb_queue_purge(&tmpxq);
 
+	/* Link Synching:
+	 * From now on, send only one single ("dummy") SYNCH message
+	 * to peer. The SYNCH message does not contain any data, just
+	 * a header conveying the synch point to the peer.
+	 */
+	if (mtyp == SYNCH_MSG && (tnl->peer_caps & TIPC_TUNNEL_ENHANCED)) {
+		tnlskb = tipc_msg_create(TUNNEL_PROTOCOL, SYNCH_MSG,
+					 INT_H_SIZE, 0, l->addr,
+					 tipc_own_addr(l->net),
+					 0, 0, 0);
+		if (!tnlskb) {
+			pr_warn("%sunable to create dummy SYNCH_MSG\n",
+				link_co_err);
+			return;
+		}
+
+		hdr = buf_msg(tnlskb);
+		syncpt = l->snd_nxt + skb_queue_len(&l->backlogq) - 1;
+		msg_set_syncpt(hdr, syncpt);
+		msg_set_bearer_id(hdr, l->peer_bearer_id);
+		__skb_queue_tail(&tnlq, tnlskb);
+		tipc_link_xmit(tnl, &tnlq, xmitq);
+		return;
+	}
+
 	/* Initialize reusable tunnel packet header */
 	tipc_msg_init(tipc_own_addr(l->net), &tnlhdr, TUNNEL_PROTOCOL,
 		      mtyp, INT_H_SIZE, l->addr);
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index da509f0eb9ca..fca042cdff88 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -877,6 +877,16 @@ static inline void msg_set_msgcnt(struct tipc_msg *m, u16 n)
 	msg_set_bits(m, 9, 16, 0xffff, n);
 }
 
+static inline u16 msg_syncpt(struct tipc_msg *m)
+{
+	return msg_bits(m, 9, 16, 0xffff);
+}
+
+static inline void msg_set_syncpt(struct tipc_msg *m, u16 n)
+{
+	msg_set_bits(m, 9, 16, 0xffff, n);
+}
+
 static inline u32 msg_conn_ack(struct tipc_msg *m)
 {
 	return msg_bits(m, 9, 16, 0xffff);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 324a1f91b394..5d8b48051bb9 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1649,7 +1649,6 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 	int usr = msg_user(hdr);
 	int mtyp = msg_type(hdr);
 	u16 oseqno = msg_seqno(hdr);
-	u16 iseqno = msg_seqno(msg_inner_hdr(hdr));
 	u16 exp_pkts = msg_msgcnt(hdr);
 	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
 	int state = n->state;
@@ -1748,7 +1747,10 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 
 	/* Initiate synch mode if applicable */
 	if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG) && (oseqno == 1)) {
-		syncpt = iseqno + exp_pkts - 1;
+		if (n->capabilities & TIPC_TUNNEL_ENHANCED)
+			syncpt = msg_syncpt(hdr);
+		else
+			syncpt = msg_seqno(msg_inner_hdr(hdr)) + exp_pkts - 1;
 		if (!tipc_link_is_up(l))
 			__tipc_node_link_up(n, bearer_id, xmitq);
 		if (n->state == SELF_UP_PEER_UP) {
diff --git a/net/tipc/node.h b/net/tipc/node.h
index c0bf49ea3de4..291d0ecd4101 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -53,7 +53,8 @@ enum {
 	TIPC_NODE_ID128       = (1 << 5),
 	TIPC_LINK_PROTO_SEQNO = (1 << 6),
 	TIPC_MCAST_RBCTL      = (1 << 7),
-	TIPC_GAP_ACK_BLOCK    = (1 << 8)
+	TIPC_GAP_ACK_BLOCK    = (1 << 8),
+	TIPC_TUNNEL_ENHANCED  = (1 << 9)
 };
 
 #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
@@ -64,7 +65,8 @@ enum {
 				TIPC_NODE_ID128        |   \
 				TIPC_LINK_PROTO_SEQNO  |   \
 				TIPC_MCAST_RBCTL       |   \
-				TIPC_GAP_ACK_BLOCK)
+				TIPC_GAP_ACK_BLOCK     |   \
+				TIPC_TUNNEL_ENHANCED)
 #define INVALID_BEARER_ID -1
 
 void tipc_node_stop(struct net *net);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
