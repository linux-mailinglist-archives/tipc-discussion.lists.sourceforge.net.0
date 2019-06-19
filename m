Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 577834AEE7
	for <lists+tipc-discussion@lfdr.de>; Wed, 19 Jun 2019 02:11:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdOCe-0006Kz-9i; Wed, 19 Jun 2019 00:11:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xdtjory@dek-tpc.internal>) id 1hdOCb-0006Kb-NX
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Jun 2019 00:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RHWowe2j2BxYxuQHy6ccdldGur43wOgMBCkj3qMPccA=; b=IRH8JCO5LVc3w4vIsgyPYrtEEL
 FiKbeZIb5JJ1WqTUQ51q1646l3AR0G/wNiqmcoLLm/rie/KXQVlEI1bNeFSALxeqZFPTC7oEv7+wh
 MrTwJjlyrGUmV5JtTJh1aV2axmMg0nvZq3KeMx4eZNAYQAs1IKYJ5wgyeHuaarZHY96E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RHWowe2j2BxYxuQHy6ccdldGur43wOgMBCkj3qMPccA=; b=Yhrxme6XZgoQ0GBy9QkiIQV8Wz
 5CIMY1nbqmhXs2I30pubo0Fd1CMrzGKVIlLbZB3l81KVaXiXKjR9yIt9i/sqOcUVn03XtyxvpRoOk
 1C6olNTMf4ZfXDvsrsaLU2kImWVlgLHzBaQSk4caTEvCZHjqbBS2lyI9aezuIBXdZSIY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdOCY-003kYI-9k
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Jun 2019 00:11:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 70D51E55C0;
 Wed, 19 Jun 2019 10:11:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1560903099; bh=Sjy8X
 i/+7qhWjozKmBjlOeT/jxtTRDC6O6LdPzJhVyI=; b=Vbr9P2JMTwmnjGVkWc8ph
 5AA0JNdXdt6tSdW+ZcM3M8p1PQZjBqw0uKazxvjdfEKPRSBTQOiHh+toKHooYF3i
 uph+NXL9K4IU3pBhKkeVWn9zqLPfD84rQ2D3qat8/quT3c1plfPTyKi9ZBAcRNyz
 0FxCVkg57gnvcMW4CntX0I=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id P6_8TNipcHhx; Wed, 19 Jun 2019 10:11:39 +1000 (AEST)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id 5214BE55BF;
 Wed, 19 Jun 2019 10:11:39 +1000 (AEST)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id 4822E183323; Wed, 19 Jun 2019 10:11:39 +1000 (AEST)
From: John Rutherford <john.rutherford@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 19 Jun 2019 10:11:18 +1000
Message-Id: <20190619001118.16154-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hdOCY-003kYI-9k
Subject: [tipc-discussion] [net-next v2] tipc: add loopback device tracking
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

Since node internal messages are passed directly to socket it is not
possible to observe this message exchange via tcpdump or wireshark.

We now remedy this by making it possible to clone such messages and send
the clones to the loopback interface.  The clones are dropped at reception
and have no functional role except making the traffic visible.

The feature is turned on/off by enabling/disabling the loopback "bearer"
"eth:lo".
 
Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 net/tipc/bcast.c  |  4 +++-
 net/tipc/bearer.c | 67 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/tipc/bearer.h |  3 +++
 net/tipc/core.c   |  5 ++++-
 net/tipc/core.h   | 12 ++++++++++
 net/tipc/node.c   |  1 +
 net/tipc/topsrv.c |  2 ++
 7 files changed, 92 insertions(+), 2 deletions(-)

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
index 2bed658..27b4fd7 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -836,6 +836,12 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb, struct genl_info *info)
 
 	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
 
+	if (!strcmp(name, "eth:lo")) {
+		tipc_net(net)->loopback_trace = false;
+		pr_info("Disabled packet tracing on loopback interface\n");
+		return 0;
+	}
+
 	bearer = tipc_bearer_find(net, name);
 	if (!bearer)
 		return -EINVAL;
@@ -881,6 +887,12 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
 
 	bearer = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
 
+	if (!strcmp(bearer, "eth:lo")) {
+		tipc_net(net)->loopback_trace = true;
+		pr_info("Enabled packet tracing on loopback interface\n");
+		return 0;
+	}
+
 	if (attrs[TIPC_NLA_BEARER_DOMAIN])
 		domain = nla_get_u32(attrs[TIPC_NLA_BEARER_DOMAIN]);
 
@@ -1021,6 +1033,61 @@ int tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
 	return err;
 }
 
+void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *xmitq)
+{
+	struct net_device *dev = net->loopback_dev;
+	struct sk_buff *skb, *_skb;
+	int exp;
+
+	skb_queue_walk(xmitq, _skb) {
+		skb = pskb_copy(_skb, GFP_ATOMIC);
+		if (!skb)
+			continue;
+		exp = SKB_DATA_ALIGN(dev->hard_header_len - skb_headroom(skb));
+		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
+			kfree_skb(skb);
+			continue;
+		}
+		skb_reset_network_header(skb);
+		skb->dev = dev;
+		skb->protocol = htons(ETH_P_TIPC);
+		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
+				dev->dev_addr, skb->len);
+		dev_queue_xmit(skb);
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
+	dev_hold(dev);
+	tn->loopback_pt.dev = dev;
+	tn->loopback_pt.type = htons(ETH_P_TIPC);
+	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
+	tn->loopback_trace = false;
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
 static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
 			       struct tipc_media *media, int nlflags)
 {
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index 7f4c569..ef7fad9 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -232,6 +232,9 @@ void tipc_bearer_xmit(struct net *net, u32 bearer_id,
 		      struct tipc_media_addr *dst);
 void tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
 			 struct sk_buff_head *xmitq);
+void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *xmitq);
+int tipc_attach_loopback(struct net *net);
+void tipc_detach_loopback(struct net *net);
 
 /* check if device MTU is too low for tipc headers */
 static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve)
diff --git a/net/tipc/core.c b/net/tipc/core.c
index ed536c0..1867687 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -81,7 +81,9 @@ static int __net_init tipc_init_net(struct net *net)
 	err = tipc_bcast_init(net);
 	if (err)
 		goto out_bclink;
-
+	err = tipc_attach_loopback(net);
+	if (err)
+		goto out_bclink;
 	return 0;
 
 out_bclink:
@@ -94,6 +96,7 @@ static int __net_init tipc_init_net(struct net *net)
 
 static void __net_exit tipc_exit_net(struct net *net)
 {
+	tipc_detach_loopback(net);
 	tipc_net_stop(net);
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 7a68e1b..c1c2906 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -67,6 +67,7 @@ struct tipc_link;
 struct tipc_name_table;
 struct tipc_topsrv;
 struct tipc_monitor;
+void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *pkts);
 
 #define TIPC_MOD_VER "2.0.0"
 
@@ -125,6 +126,10 @@ struct tipc_net {
 
 	/* Cluster capabilities */
 	u16 capabilities;
+
+	/* Tracing of node internal messages */
+	struct packet_type loopback_pt;
+	bool loopback_trace;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
@@ -152,6 +157,13 @@ static inline struct tipc_topsrv *tipc_topsrv(struct net *net)
 	return tipc_net(net)->topsrv;
 }
 
+static inline void tipc_loopback_trace(struct net *net,
+				       struct sk_buff_head *pkts)
+{
+	if (unlikely(tipc_net(net)->loopback_trace))
+		tipc_clone_to_loopback(net, pkts);
+}
+
 static inline unsigned int tipc_hashfn(u32 addr)
 {
 	return addr & (NODE_HTABLE_SIZE - 1);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 9e106d3..7e58831 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1439,6 +1439,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
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
