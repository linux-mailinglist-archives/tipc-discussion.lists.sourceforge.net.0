Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B0D10361D
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 09:39:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXLWE-0006Jv-RZ; Wed, 20 Nov 2019 08:39:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iXLWD-0006Jo-8s
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 08:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q6ullhQ52JzsEbM+1tH+8AqpZGOuD9070iH50jkXOlA=; b=ka3xZd9mGf+vOQbJ35HZOJ4i0d
 WOZ66rN5liGW23sa/K1Lybb1UZTJv7t6z1l0T7VGGAFjqzA2GToTChq99ZKGwoOpvxLj56AxGmfPI
 gBiwdoQGWLrDH+yROtX7EtHEUZcr4BVx1Zia7AiJOMK7pdFJXXTboZ6g7nZs+h6OjRo8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q6ullhQ52JzsEbM+1tH+8AqpZGOuD9070iH50jkXOlA=; b=c
 OFX3RgHKxncmxK6dMUtOMPF8ePekzNfgw7EcyfdP3kV/Til6RuHs8uPox33gOgSUt2p2erGr0WtD1
 j7izMI4/Vpy9xf0rwgsbn9oyUYu/MLFWto4yhDiAyOIQNUb/hhI1lTQEEbpmhWwezCKImOGmUibaG
 rSE7otPNlUMurGGs=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXLW7-00DoxG-V2
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 08:39:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 732514AF1C;
 Wed, 20 Nov 2019 19:39:06 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1574239146; bh=tfNz1GOH1wssa9r3bYQ2D50aYD0gMzRWe
 W9b5PZVcKc=; b=FShRMQE8rV71BKGT9K4H+4M5Q0Tx9SlAJjwQaYwTzOI5PHFrD
 4SkofDStOdfWmQ908ekqspb5ZkRAlP8AR6ZPaMF8Ci8gi+5SUuzMv8tiI+q+CdAp
 5VPSFb89Tot/2/lWZRvrdNP0vCuSnfq3gxo268Dd0/lRv/0JEWqClVsl+c=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kPXQih-_8f4e; Wed, 20 Nov 2019 19:39:06 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 1D3354AF1D;
 Wed, 20 Nov 2019 19:39:05 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 20F544AF1C;
 Wed, 20 Nov 2019 19:39:04 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Date: Wed, 20 Nov 2019 15:38:58 +0700
Message-Id: <20191120083858.4908-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iXLW7-00DoxG-V2
Subject: [tipc-discussion] [net-next] tipc: update replicast capability for
 broadcast send link
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

When setting up a cluster with non-replicast/replicast capability
supported. This capability will be disabled for broadcast send link
in order to be backwards compatible.

However, when these non-support nodes left and be removed out the cluster.
We don't update this capability on broadcast send link. Then, some of
features that based on this capability will also disabling as unexpected.

In this commit, we make sure the broadcast send link capabilities will
be re-calculated as soon as a node removed/rejoined a cluster.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c | 4 ++--
 net/tipc/bcast.h | 2 +-
 net/tipc/link.c  | 2 +-
 net/tipc/node.c  | 8 +++++++-
 4 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 44ed481fec47..3d14e60ef642 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -87,9 +87,9 @@ int tipc_bcast_get_mtu(struct net *net)
 	return tipc_link_mss(tipc_bc_sndlink(net));
 }
 
-void tipc_bcast_disable_rcast(struct net *net)
+void tipc_bcast_toggle_rcast(struct net *net, bool supp)
 {
-	tipc_bc_base(net)->rcast_support = false;
+	tipc_bc_base(net)->rcast_support = supp;
 }
 
 static void tipc_bcbase_calc_bc_threshold(struct net *net)
diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
index dadad953e2be..9e847d9617d3 100644
--- a/net/tipc/bcast.h
+++ b/net/tipc/bcast.h
@@ -85,7 +85,7 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_bcl);
 void tipc_bcast_inc_bearer_dst_cnt(struct net *net, int bearer_id);
 void tipc_bcast_dec_bearer_dst_cnt(struct net *net, int bearer_id);
 int  tipc_bcast_get_mtu(struct net *net);
-void tipc_bcast_disable_rcast(struct net *net);
+void tipc_bcast_toggle_rcast(struct net *net, bool supp);
 int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 		    struct tipc_mc_method *method, struct tipc_nlist *dests,
 		    u16 *cong_link_cnt);
diff --git a/net/tipc/link.c b/net/tipc/link.c
index a2e9a64d5a0f..5153b9bb7b3f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -550,7 +550,7 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
 
 	/* Disable replicast if even a single peer doesn't support it */
 	if (link_is_bc_rcvlink(l) && !(peer_caps & TIPC_BCAST_RCAST))
-		tipc_bcast_disable_rcast(net);
+		tipc_bcast_toggle_rcast(net, false);
 
 	return true;
 }
diff --git a/net/tipc/node.c b/net/tipc/node.c
index b058647fa78b..b9f6b5dfdb5b 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -496,6 +496,9 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 			tn->capabilities &= temp_node->capabilities;
 		}
 
+		tipc_bcast_toggle_rcast(net,
+					(tn->capabilities & TIPC_BCAST_RCAST));
+
 		goto exit;
 	}
 	n = kzalloc(sizeof(*n), GFP_ATOMIC);
@@ -557,6 +560,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
 		tn->capabilities &= temp_node->capabilities;
 	}
+	tipc_bcast_toggle_rcast(net, (tn->capabilities & TIPC_BCAST_RCAST));
 	trace_tipc_node_create(n, true, " ");
 exit:
 	spin_unlock_bh(&tn->node_list_lock);
@@ -740,7 +744,8 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
 	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
 		tn->capabilities &= temp_node->capabilities;
 	}
-
+	tipc_bcast_toggle_rcast(peer->net,
+				(tn->capabilities & TIPC_BCAST_RCAST));
 	spin_unlock_bh(&tn->node_list_lock);
 	return deleted;
 }
@@ -2198,6 +2203,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
 		tn->capabilities &= temp_node->capabilities;
 	}
+	tipc_bcast_toggle_rcast(net, (tn->capabilities & TIPC_BCAST_RCAST));
 	err = 0;
 err_out:
 	tipc_node_put(peer);
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
