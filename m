Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 312866D947
	for <lists+tipc-discussion@lfdr.de>; Fri, 19 Jul 2019 05:10:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hoJI9-0000fd-2m; Fri, 19 Jul 2019 03:10:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.rutherford@dektech.com.au>) id 1hoJI7-0000fU-NR
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 03:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r+Uj2Xq47i1eQ/bnM0tbF6gXGZ8Nd+0mzdvpcHGqEok=; b=cOh3T7oe0DemiKcqfYNCQyFpkj
 UukiQhJb1f38TPFwFxQvEbt16Y/cmoySRlP88sAiL+KBK9YQv1x2YRg5UA6vaDjhWnymg8oAqI8Wp
 FUd8Ys0vSp4vq5aH2wmfiaHo3uk0Y8dqDNSxpRNjK4Ps41fnqVvzcHY39LZwBxMsPjk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r+Uj2Xq47i1eQ/bnM0tbF6gXGZ8Nd+0mzdvpcHGqEok=; b=dOSD1xMQ5O+OFlCmeYVnlwct88
 5Qkv/80cbQlE7/ZnZsEnDnuwAkelF+U52VaQ569Sw7ayiFNRcGpLxyvHweGcOzO43J7corQsgCbOc
 7DTj7yTSu2oSgAVpNmHCEzxsIrJIclasWQh6gjKz2dRrGDqGzK1XUgKRoUaqiZDTeVj0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hoJI5-006tSI-22
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 03:10:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 69E0F46397;
 Fri, 19 Jul 2019 13:10:30 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1563505830; bh=iJKLf
 QCGARxKkVPGGhxoqMa9I1JrZceyDQadLr67WgQ=; b=dvIoPTTbXbj2mlrvYs7dX
 rC8jh/CHW2P7GNXiHyvjOXsCptomVnGgb6iMt23J8ur4kwTjdMjGmx32ype8Z8EW
 yTCI0+M9VrcTCL65Q35mpkXht8wDI9JRRZmHV6cylmXH2akX5szgkAABjbYOtkNx
 JBUIIOlRvCju/GwRttIil0=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id PlWnvJdu5FUj; Fri, 19 Jul 2019 13:10:30 +1000 (AEST)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id 4C55146336;
 Fri, 19 Jul 2019 13:10:30 +1000 (AEST)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id DB14C19E614; Fri, 19 Jul 2019 13:10:29 +1000 (AEST)
From: john.rutherford@dektech.com.au
To: tipc-discussion@lists.sourceforge.net
Date: Fri, 19 Jul 2019 13:10:14 +1000
Message-Id: <20190719031014.4563-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hoJI5-006tSI-22
Subject: [tipc-discussion] [net-next v3] tipc: add loopback device tracking
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

From: John Rutherford <john.rutherford@dektech.com.au>

Since node internal messages are passed directly to the socket, it is not
possible to observe those messages via tcpdump or wireshark.

We now remedy this by making it possible to clone such messages and send
the clones to the loopback interface.  The clones are dropped at reception
and have no functional role except making the traffic visible.

The feature is enabled if network taps are active for the loopback device.
pcap filtering restrictions require the messages to be presented to the
receiving side of the loopback device.

v3 - Function dev_nit_active used to check for network taps.
   - Procedure netif_rx_ni used to send cloned messages to loopback device.

Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 net/tipc/bcast.c  |  4 +++-
 net/tipc/bearer.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/tipc/bearer.h | 10 +++++++++
 net/tipc/core.c   |  5 +++++
 net/tipc/core.h   |  3 +++
 net/tipc/node.c   |  1 +
 net/tipc/topsrv.c |  2 ++
 7 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 6c997d4..235331d 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -406,8 +406,10 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
 	}
 
-	if (dests->local)
+	if (dests->local) {
+		tipc_loopback_trace(net, &localq);
 		tipc_sk_mcast_rcv(net, &localq, &inputq);
+	}
 exit:
 	/* This queue should normally be empty by now */
 	__skb_queue_purge(pkts);
diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 2bed658..5273ec5 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -389,6 +389,12 @@ int tipc_enable_l2_media(struct net *net, struct tipc_bearer *b,
 		dev_put(dev);
 		return -EINVAL;
 	}
+	if (dev == net->loopback_dev) {
+		dev_put(dev);
+		pr_info("Bearer <%s>: loopback device not permitted\n",
+			b->name);
+		return -EINVAL;
+	}
 
 	/* Autoconfigure own node identity if needed */
 	if (!tipc_own_id(net) && hwaddr_len <= NODE_ID_LEN) {
@@ -674,6 +680,65 @@ void tipc_bearer_stop(struct net *net)
 	}
 }
 
+void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *pkts)
+{
+	struct net_device *dev = net->loopback_dev;
+	struct sk_buff *skb, *_skb;
+	int exp;
+
+	skb_queue_walk(pkts, _skb) {
+		skb = pskb_copy(_skb, GFP_ATOMIC);
+		if (!skb)
+			continue;
+
+		exp = SKB_DATA_ALIGN(dev->hard_header_len - skb_headroom(skb));
+		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
+			kfree_skb(skb);
+			continue;
+		}
+
+		skb_reset_network_header(skb);
+		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
+				dev->dev_addr, skb->len);
+		skb->dev = dev;
+		skb->pkt_type = PACKET_HOST;
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		skb->protocol = eth_type_trans(skb, dev);
+		netif_rx_ni(skb);
+	}
+}
+
+static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device *dev,
+				 struct packet_type *pt, struct net_device *od)
+{
+	consume_skb(skb);
+	return NET_RX_SUCCESS;
+}
+
+int tipc_attach_loopback(struct net *net)
+{
+	struct net_device *dev = net->loopback_dev;
+	struct tipc_net *tn = tipc_net(net);
+
+	if (!dev)
+		return -ENODEV;
+
+	dev_hold(dev);
+	tn->loopback_pt.dev = dev;
+	tn->loopback_pt.type = htons(ETH_P_TIPC);
+	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
+	dev_add_pack(&tn->loopback_pt);
+	return 0;
+}
+
+void tipc_detach_loopback(struct net *net)
+{
+	struct tipc_net *tn = tipc_net(net);
+
+	dev_remove_pack(&tn->loopback_pt);
+	dev_put(net->loopback_dev);
+}
+
 /* Caller should hold rtnl_lock to protect the bearer */
 static int __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
 				struct tipc_bearer *bearer, int nlflags)
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index 7f4c569..ea0f3c4 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -232,6 +232,16 @@ void tipc_bearer_xmit(struct net *net, u32 bearer_id,
 		      struct tipc_media_addr *dst);
 void tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
 			 struct sk_buff_head *xmitq);
+void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *pkts);
+int tipc_attach_loopback(struct net *net);
+void tipc_detach_loopback(struct net *net);
+
+static inline void tipc_loopback_trace(struct net *net,
+				       struct sk_buff_head *pkts)
+{
+	if (unlikely(dev_nit_active(net->loopback_dev)))
+		tipc_clone_to_loopback(net, pkts);
+}
 
 /* check if device MTU is too low for tipc headers */
 static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve)
diff --git a/net/tipc/core.c b/net/tipc/core.c
index c837072..23cb379 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -82,6 +82,10 @@ static int __net_init tipc_init_net(struct net *net)
 	if (err)
 		goto out_bclink;
 
+	err = tipc_attach_loopback(net);
+	if (err)
+		goto out_bclink;
+
 	return 0;
 
 out_bclink:
@@ -94,6 +98,7 @@ static int __net_init tipc_init_net(struct net *net)
 
 static void __net_exit tipc_exit_net(struct net *net)
 {
+	tipc_detach_loopback(net);
 	tipc_net_stop(net);
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 7a68e1b..60d8295 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -125,6 +125,9 @@ struct tipc_net {
 
 	/* Cluster capabilities */
 	u16 capabilities;
+
+	/* Tracing of node internal messages */
+	struct packet_type loopback_pt;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 550581d..16d251b 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1443,6 +1443,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 	int rc;
 
 	if (in_own_node(net, dnode)) {
+		tipc_loopback_trace(net, list);
 		tipc_sk_rcv(net, list);
 		return 0;
 	}
diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index f345662..e3a6ba1 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -40,6 +40,7 @@
 #include "socket.h"
 #include "addr.h"
 #include "msg.h"
+#include "bearer.h"
 #include <net/sock.h>
 #include <linux/module.h>
 
@@ -608,6 +609,7 @@ static void tipc_topsrv_kern_evt(struct net *net, struct tipc_event *evt)
 	memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
 	skb_queue_head_init(&evtq);
 	__skb_queue_tail(&evtq, skb);
+	tipc_loopback_trace(net, &evtq);
 	tipc_sk_rcv(net, &evtq);
 }
 
-- 
2.11.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
