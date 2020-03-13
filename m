Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA25618452C
	for <lists+tipc-discussion@lfdr.de>; Fri, 13 Mar 2020 11:48:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jChrF-000554-5J; Fri, 13 Mar 2020 10:48:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jChrC-00054s-VA
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Mar 2020 10:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gR7ykEU1HX+BbOrF4F41VuYnUPcx2iJOuLsFMAsiCTY=; b=HKxN5oinvOjyQ8jUonslwubmZd
 tS+ZdxYAtSk5v9daIwGE7Xn1F/RJc63IlFJ8+iy2N5y6GWk29fOjTdOixreAiYvx2i/4KkskWxGN0
 a5wtJsJ2ES9cnFvJnyxqVLESSXbWqU13BMNNHIQPaVczcoXnZp4ERD8O4qUJ6Z2lPkpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gR7ykEU1HX+BbOrF4F41VuYnUPcx2iJOuLsFMAsiCTY=; b=cZa47l92NuHL7CvqQxQ4nPdtQu
 Xh8TvX0Wz4mUzD/Lz+HAiggE5AAI1wF2iic4ISwsaAMTqML9W/Qm/f6X6f83Xc67BOyZT5/i30DE6
 xndK48fSOqnpDrDsuIsFSlzP/0eYI9g0lGV6f2tjEGGEEgQGHpygfzXujiEFdc1nLMMo=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jChr4-00A9YL-4X
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Mar 2020 10:47:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 15D534DA76;
 Fri, 13 Mar 2020 21:47:43 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1584096462; bh=7tX5BJcE31QUu83F5423vZ8HCHlAdVxgcJ6xz+Ysn1c=; b=V
 OrJ7RBBFmPV+dY00R+0IgFD11n44tmP5XDO5HoDBxBaU6ioY1z+pJopzTkXcBlu0
 zDHnfzR7w+Mn+TEdC5mI/RjZgcnZOa+O/EY9lpP4dt+v3mq5gxOD/muFXZmADgMx
 jN2acxcPXXqPLQPjwPVMrJYkpBis240Dy8ydkEBytc=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id K9wtFHx73n5L; Fri, 13 Mar 2020 21:47:42 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id F11104DA77;
 Fri, 13 Mar 2020 21:47:42 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 183A34DA76;
 Fri, 13 Mar 2020 21:47:41 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 13 Mar 2020 17:47:28 +0700
Message-Id: <20200313104728.2330-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200313104728.2330-1-tuong.t.lien@dektech.com.au>
References: <20200313104728.2330-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jChr4-00A9YL-4X
Subject: [tipc-discussion] [PATCH RFC 2/2] tipc: enable broadcast
 retransmission via unicast
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

In some environment, broadcast traffic is suppressed at high rate (i.e.
a kind of bandwidth limit setting). When it is applied, TIPC broadcast
can still run successfully. However, when it comes to a high load, some
packets will be dropped first and TIPC tries to retransmit them but the
packet retransmission is intentionally broadcast too, so making things
worse and not helpful at all.

This commit enables the broadcast retransmission via unicast which only
retransmits packets to the specific peer that has really reported a gap
i.e. not broadcasting to all nodes in the cluster, so will prevent from
being suppressed, and also reduce some overheads on the other peers due
to duplicates, finally improve the overall TIPC broadcast performance.

Note: the functionality can be turned on/off via the sysctl file:

echo 1 > /proc/sys/net/tipc/bc_retruni
echo 0 > /proc/sys/net/tipc/bc_retruni

Default is '0', i.e. the broadcast retransmission still works as usual.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bcast.c  | 11 ++++++++---
 net/tipc/bcast.h  |  4 +++-
 net/tipc/link.c   | 10 ++++++----
 net/tipc/link.h   |  3 ++-
 net/tipc/node.c   |  2 +-
 net/tipc/sysctl.c |  9 ++++++++-
 6 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 3ce690a96ee9..50a16f8bebd9 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -46,6 +46,7 @@
 #define BCLINK_WIN_MIN      32	/* bcast minimum link window size */
 
 const char tipc_bclink_name[] = "broadcast-link";
+unsigned long sysctl_tipc_bc_retruni __read_mostly;
 
 /**
  * struct tipc_bc_base - base structure for keeping broadcast send state
@@ -474,7 +475,7 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 	__skb_queue_head_init(&xmitq);
 
 	tipc_bcast_lock(net);
-	tipc_link_bc_ack_rcv(l, acked, 0, NULL, &xmitq);
+	tipc_link_bc_ack_rcv(l, acked, 0, NULL, &xmitq, NULL);
 	tipc_bcast_unlock(net);
 
 	tipc_bcbase_xmit(net, &xmitq);
@@ -489,7 +490,8 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
  * RCU is locked, no other locks set
  */
 int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
-			struct tipc_msg *hdr)
+			struct tipc_msg *hdr,
+			struct sk_buff_head *retrq)
 {
 	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 	struct tipc_gap_ack_blks *ga;
@@ -503,8 +505,11 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 		tipc_link_bc_init_rcv(l, hdr);
 	} else if (!msg_bc_ack_invalid(hdr)) {
 		tipc_get_gap_ack_blks(&ga, l, hdr, false);
+		if (!sysctl_tipc_bc_retruni)
+			retrq = &xmitq;
 		rc = tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr),
-					  msg_bc_gap(hdr), ga, &xmitq);
+					  msg_bc_gap(hdr), ga, &xmitq,
+					  retrq);
 		rc |= tipc_link_bc_sync_rcv(l, hdr, &xmitq);
 	}
 	tipc_bcast_unlock(net);
diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
index 9e847d9617d3..97d3cf9d3e4d 100644
--- a/net/tipc/bcast.h
+++ b/net/tipc/bcast.h
@@ -45,6 +45,7 @@ struct tipc_nl_msg;
 struct tipc_nlist;
 struct tipc_nitem;
 extern const char tipc_bclink_name[];
+extern unsigned long sysctl_tipc_bc_retruni;
 
 #define TIPC_METHOD_EXPIRE msecs_to_jiffies(5000)
 
@@ -93,7 +94,8 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb);
 void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr);
 int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
-			struct tipc_msg *hdr);
+			struct tipc_msg *hdr,
+			struct sk_buff_head *retrq);
 int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg);
 int tipc_nl_bc_link_set(struct net *net, struct nlattr *attrs[]);
 int tipc_bclink_reset_stats(struct net *net);
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 6198b6d89a69..dabdf08cc9f4 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -375,7 +375,7 @@ void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
 	snd_l->ackers--;
 	rcv_l->bc_peer_is_up = true;
 	rcv_l->state = LINK_ESTABLISHED;
-	tipc_link_bc_ack_rcv(rcv_l, ack, 0, NULL, xmitq);
+	tipc_link_bc_ack_rcv(rcv_l, ack, 0, NULL, xmitq, NULL);
 	trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
 	tipc_link_reset(rcv_l);
 	rcv_l->state = LINK_RESET;
@@ -2412,7 +2412,8 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 
 int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 			 struct tipc_gap_ack_blks *ga,
-			 struct sk_buff_head *xmitq)
+			 struct sk_buff_head *xmitq,
+			 struct sk_buff_head *retrq)
 {
 	struct tipc_link *l = r->bc_sndlink;
 	bool unused = false;
@@ -2425,7 +2426,7 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 		return 0;
 
 	trace_tipc_link_bc_ack(r, r->acked, acked, &l->transmq);
-	tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc);
+	tipc_link_advance_transmq(l, r, acked, gap, ga, retrq, &unused, &rc);
 
 	tipc_link_advance_backlog(l, xmitq);
 	if (unlikely(!skb_queue_empty(&l->wakeupq)))
@@ -2459,7 +2460,8 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
 		return 0;
 
 	if (dnode == tipc_own_addr(l->net)) {
-		rc = tipc_link_bc_ack_rcv(l, acked, to - acked, NULL, xmitq);
+		rc = tipc_link_bc_ack_rcv(l, acked, to - acked, NULL, xmitq,
+					  xmitq);
 		l->stats.recv_nacks++;
 		return rc;
 	}
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 0a0fa7350722..4d0768cf91d5 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -147,7 +147,8 @@ u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc_link *l,
 			  struct tipc_msg *hdr, bool uc);
 int tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked, u16 gap,
 			 struct tipc_gap_ack_blks *ga,
-			 struct sk_buff_head *xmitq);
+			 struct sk_buff_head *xmitq,
+			 struct sk_buff_head *retrq);
 void tipc_link_build_bc_sync_msg(struct tipc_link *l,
 				 struct sk_buff_head *xmitq);
 void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hdr);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index eb6b62de81a7..917ad3920fac 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1771,7 +1771,7 @@ static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
 	struct tipc_link *ucl;
 	int rc;
 
-	rc = tipc_bcast_sync_rcv(n->net, n->bc_entry.link, hdr);
+	rc = tipc_bcast_sync_rcv(n->net, n->bc_entry.link, hdr, xmitq);
 
 	if (rc & TIPC_LINK_DOWN_EVT) {
 		tipc_node_reset_links(n);
diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
index 58ab3d6dcdce..97a6264a2993 100644
--- a/net/tipc/sysctl.c
+++ b/net/tipc/sysctl.c
@@ -36,7 +36,7 @@
 #include "core.h"
 #include "trace.h"
 #include "crypto.h"
-
+#include "bcast.h"
 #include <linux/sysctl.h>
 
 static struct ctl_table_header *tipc_ctl_hdr;
@@ -75,6 +75,13 @@ static struct ctl_table tipc_table[] = {
 		.extra1         = SYSCTL_ONE,
 	},
 #endif
+	{
+		.procname	= "bc_retruni",
+		.data		= &sysctl_tipc_bc_retruni,
+		.maxlen		= sizeof(sysctl_tipc_bc_retruni),
+		.mode		= 0644,
+		.proc_handler	= proc_doulongvec_minmax,
+	},
 	{}
 };
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
