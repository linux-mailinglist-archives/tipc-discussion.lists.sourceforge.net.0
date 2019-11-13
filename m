Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A65C9FAB0A
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 08:35:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUnBr-00035m-Es; Wed, 13 Nov 2019 07:35:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iUnBp-00035P-5m
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 07:35:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jhm7g8Pzy1D/74fL6QckwP+DcdcLpvZr/LHg2ybcXFQ=; b=K5Ku4e3XIJ+Nr4OSiteuyLk2T6
 tiVnkXX2mJKU/6s7yKWF+h/T7rT3Um8cgrVfcs/WOJxPtp6l69n3tMsrcNZ4VmgWNCxAiaWFL1l+y
 60mgPX6avs9uVB5ceI51fwnAletUSRiw6MjMjL2GEkKmvm2wlPTjqWQ+fqpxPPfPLKgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jhm7g8Pzy1D/74fL6QckwP+DcdcLpvZr/LHg2ybcXFQ=; b=V
 wOLro+wY8IRJ5wGuyzZzEs3L9skxqCPtKTkEofKSmmvr/8GMdVzBlv63A4xhzTo2t4jVdyLzBnqQ4
 nKsM2PN9pv5zr2WB3b7sz2Prn4fpXpfdhqq+fZ9AIB8qNeZzlBraMPGhjrOaU5+jrXvQsPuSqwsPu
 GYWVrxp835KOclNk=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUnBj-00EYxN-Pz
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 07:35:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 7F3394ACCB;
 Wed, 13 Nov 2019 18:35:28 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1573630528; bh=OGvSTcSaW4fk0RcQdyMTGw3DVilTIN4OQ
 OcJp33+9s4=; b=YwnWEO8U8X/pbakoYzMd+txWhU89KytR39g41IUH2Y5W5GBIV
 l+tETxWrOjzWoF8pHNh7RV8Bs+I85Yr6wyj/16gT5xenVTuuAYoOGXyEV7ITpSua
 j9IN6mLzzjWgt5fZwgoYjcTeX+S8PDoYJvfGC5kgD2PdMkPk3aTHwo8L3M=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4Ocua9_vauGS; Wed, 13 Nov 2019 18:35:28 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 530834ACCD;
 Wed, 13 Nov 2019 18:35:28 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 84E5F4ACCB;
 Wed, 13 Nov 2019 18:35:27 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 13 Nov 2019 14:35:21 +0700
Message-Id: <20191113073521.9394-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUnBj-00EYxN-Pz
Subject: [tipc-discussion] [net-next] tipc: update a binding service via
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

Currently, updating binding table (add service binding to
name table/withdraw a service binding) is being sent over replicast.
However, if we are scaling up clusters to > 100 nodes/containers this
method is less affection because of looping through nodes in a cluster one
by one.

It is worth to use broadcast to update a binding service. Then binding
table updates in all nodes for one shot.

The mechanism is backward compatible because of sending side changing.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c      | 13 +++++++++++++
 net/tipc/bcast.h      |  2 ++
 net/tipc/name_table.c |  4 ++--
 3 files changed, 17 insertions(+), 2 deletions(-)

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
+	struct sk_buff_head xmitq;
+	u16 cong_link_cnt;
+	int rc = 0;
+
+	__skb_queue_head_init(&xmitq);
+	__skb_queue_tail(&xmitq, skb);
+	rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
+	__skb_queue_purge(&xmitq);
+	return rc;
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
 
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 66a65c2cdb23..9e9c61f7c999 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -633,7 +633,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
 	spin_unlock_bh(&tn->nametbl_lock);
 
 	if (skb)
-		tipc_node_broadcast(net, skb);
+		tipc_bcast_named_publish(net, skb);
 	return p;
 }
 
@@ -664,7 +664,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
 	spin_unlock_bh(&tn->nametbl_lock);
 
 	if (skb) {
-		tipc_node_broadcast(net, skb);
+		tipc_bcast_named_publish(net, skb);
 		return 1;
 	}
 	return 0;
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
