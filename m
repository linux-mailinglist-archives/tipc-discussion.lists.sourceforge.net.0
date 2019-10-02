Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 068D3C4B5A
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Oct 2019 12:25:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iFbpC-00009x-Pm; Wed, 02 Oct 2019 10:25:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iFbpB-00009M-Nx
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Oct 2019 10:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NpaYM1TvlI09k7sAzqjO8cR4Vj9DjxuwMHsFzWIwWHY=; b=VMp9tDRbvhlV43itGhP4BAS8L5
 RwZ9rmDm13trxmJEZ83afqwn07/0ulXg/EwzKhrUlkXR0VePO0opt3U4g4nphYD9Pw9D3uNxfG1i3
 A/fev2BpvHNtnhBBsDTrsqwePrdEICNr91NkYU6kEGN1Cdt9aNU8rInCSCqa8OeDHDl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NpaYM1TvlI09k7sAzqjO8cR4Vj9DjxuwMHsFzWIwWHY=; b=R
 RIxsVO8lGCi9uFrcCkGNlL814w6G/yYA2TJGko3BMGaSUtZUGMlEukKjL4CRb9O9EPCoSMwtB424i
 VOLZJP9CsXnzjmK9fneL3cbwibUiD/v10uRHSDrzSqKQGqmdAA9YY2FqPyuzpt5/bZXXVFP6i+Rcr
 KaHKoWJFVxLDiXKY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iFbp8-001Rw3-NI
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Oct 2019 10:25:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 3A88649F43;
 Wed,  2 Oct 2019 20:25:27 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1570011927; bh=3uBg6VNDab491csfETFJ21qnXzgDKBmjJ
 or4nsXTpYw=; b=eVS6zWxxu/clFGsVUHGeUnTavOblTLdGHlzrl34qkuRz1wqci
 dVDSYPNxjLs77iueR2DHOe1QMBURE/n3qpXCGnG0po0rSIwWwAC2vyCdfYB2n2ZR
 c9yPRBg4RPWLsyGuytMz70akp/s8AzVovwh7OwMD44pzROKp0wUX1C/9QY=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rlvpYABx5gWj; Wed,  2 Oct 2019 20:25:27 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 1254E49F45;
 Wed,  2 Oct 2019 20:25:26 +1000 (AEST)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4E0DD49F43;
 Wed,  2 Oct 2019 20:25:25 +1000 (AEST)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  2 Oct 2019 17:25:30 +0700
Message-Id: <20191002102530.6987-1-hoang.h.le@dektech.com.au>
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
X-Headers-End: 1iFbp8-001Rw3-NI
Subject: [tipc-discussion] [net-next] tipc: improve throughput between nodes
 in netns
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

Introduce traffic cross namespaces transmission as local node.
By this way, throughput between nodes in namespace as fast as local.

Testcase:
$ip netns exec 1 benchmark_client -c 100
$ip netns exec 2 benchmark_server

Before:
+---------------------------------------------------------------------------------------------+
|  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput                  |
|  [octets]  | Conns |    Conn   |  [ms]     +------------------------------------------------+
|            |       |           |           | Total [Msg/s] | Total [Mb/s] | Per Conn [Mb/s] |
+---------------------------------------------------------------------------------------------+
|        64  |  100  |    64000  |    13005  |       492103  |         251  |              2  |
+---------------------------------------------------------------------------------------------+
|       256  |  100  |    32000  |     4964  |       644627  |        1320  |             13  |
+---------------------------------------------------------------------------------------------+
|      1024  |  100  |    16000  |     4524  |       353612  |        2896  |             28  |
+---------------------------------------------------------------------------------------------+
|      4096  |  100  |     8000  |     3675  |       217644  |        7131  |             71  |
+---------------------------------------------------------------------------------------------+
|     16384  |  100  |     4000  |     7914  |        50540  |        6624  |             66  |
+---------------------------------------------------------------------------------------------+
|     65536  |  100  |     2000  |    13000  |        15384  |        8065  |             80  |
+---------------------------------------------------------------------------------------------+

After:
+---------------------------------------------------------------------------------------------+
|  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput                  |
|  [octets]  | Conns |    Conn   |  [ms]     +------------------------------------------------+
|            |       |           |           | Total [Msg/s] | Total [Mb/s] | Per Conn [Mb/s] |
+---------------------------------------------------------------------------------------------+
|        64  |  100  |    64000  |     7842  |       816090  |         417  |              4  |
+---------------------------------------------------------------------------------------------+
|       256  |  100  |    32000  |     3593  |       890469  |        1823  |             18  |
+---------------------------------------------------------------------------------------------+
|      1024  |  100  |    16000  |     1835  |       871828  |        7142  |             71  |
+---------------------------------------------------------------------------------------------+
|      4096  |  100  |     8000  |     1134  |       704904  |       23098  |            230  |
+---------------------------------------------------------------------------------------------+
|     16384  |  100  |     4000  |      878  |       455295  |       59676  |            596  |
+---------------------------------------------------------------------------------------------+
|     65536  |  100  |     2000  |     1007  |       198487  |      104064  |           1040  |
+---------------------------------------------------------------------------------------------+

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/discover.c   |  6 ++-
 net/tipc/msg.h        | 10 +++++
 net/tipc/name_distr.c |  2 +-
 net/tipc/node.c       | 94 +++++++++++++++++++++++++++++++++++++++++--
 net/tipc/node.h       |  4 +-
 net/tipc/socket.c     |  6 +--
 6 files changed, 111 insertions(+), 11 deletions(-)

diff --git a/net/tipc/discover.c b/net/tipc/discover.c
index c138d68e8a69..98d4eea97eb7 100644
--- a/net/tipc/discover.c
+++ b/net/tipc/discover.c
@@ -38,6 +38,8 @@
 #include "node.h"
 #include "discover.h"
 
+#include <net/netns/hash.h>
+
 /* min delay during bearer start up */
 #define TIPC_DISC_INIT	msecs_to_jiffies(125)
 /* max delay if bearer has no links */
@@ -94,6 +96,7 @@ static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
 	msg_set_dest_domain(hdr, dest_domain);
 	msg_set_bc_netid(hdr, tn->net_id);
 	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
+	msg_set_peer_net_hash(hdr, net_hash_mix(net));
 	msg_set_node_id(hdr, tipc_own_id(net));
 }
 
@@ -200,6 +203,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
 	u8 peer_id[NODE_ID_LEN] = {0,};
 	u32 dst = msg_dest_domain(hdr);
 	u32 net_id = msg_bc_netid(hdr);
+	u32 pnet_hash = msg_peer_net_hash(hdr);
 	struct tipc_media_addr maddr;
 	u32 src = msg_prevnode(hdr);
 	u32 mtyp = msg_type(hdr);
@@ -242,7 +246,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
 	if (!tipc_in_scope(legacy, b->domain, src))
 		return;
 	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
-			     &maddr, &respond, &dupl_addr);
+			     pnet_hash, &maddr, &respond, &dupl_addr);
 	if (dupl_addr)
 		disc_dupl_alert(b, src, &maddr);
 	if (!respond)
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 0daa6f04ca81..a8d0f28094f2 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -973,6 +973,16 @@ static inline void msg_set_grp_remitted(struct tipc_msg *m, u16 n)
 	msg_set_bits(m, 9, 16, 0xffff, n);
 }
 
+static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n)
+{
+	msg_set_word(m, 9, n);
+}
+
+static inline u32 msg_peer_net_hash(struct tipc_msg *m)
+{
+	return msg_word(m, 9);
+}
+
 /* Word 10
  */
 static inline u16 msg_grp_evt(struct tipc_msg *m)
diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 836e629e8f4a..5feaf3b67380 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -146,7 +146,7 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
 	struct publication *publ;
 	struct sk_buff *skb = NULL;
 	struct distr_item *item = NULL;
-	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0) - INT_H_SIZE) /
+	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) - INT_H_SIZE) /
 			ITEM_SIZE) * ITEM_SIZE;
 	u32 msg_rem = msg_dsz;
 
diff --git a/net/tipc/node.c b/net/tipc/node.c
index c8f6177dd5a2..9a4ffd647701 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -45,6 +45,8 @@
 #include "netlink.h"
 #include "trace.h"
 
+#include <net/netns/hash.h>
+
 #define INVALID_NODE_SIG	0x10000
 #define NODE_CLEANUP_AFTER	300000
 
@@ -126,6 +128,7 @@ struct tipc_node {
 	struct timer_list timer;
 	struct rcu_head rcu;
 	unsigned long delete_at;
+	struct net *pnet;
 };
 
 /* Node FSM states and events:
@@ -184,7 +187,7 @@ static struct tipc_link *node_active_link(struct tipc_node *n, int sel)
 	return n->links[bearer_id].link;
 }
 
-int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
+int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected)
 {
 	struct tipc_node *n;
 	int bearer_id;
@@ -194,6 +197,14 @@ int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
 	if (unlikely(!n))
 		return mtu;
 
+	/* Allow MAX_MSG_SIZE when building connection oriented message
+	 * if they are in the same core network
+	 */
+	if (n->pnet && connected) {
+		tipc_node_put(n);
+		return mtu;
+	}
+
 	bearer_id = n->active_links[sel & 1];
 	if (likely(bearer_id != INVALID_BEARER_ID))
 		mtu = n->links[bearer_id].mtu;
@@ -361,11 +372,14 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 }
 
 static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
-					  u8 *peer_id, u16 capabilities)
+					  u8 *peer_id, u16 capabilities,
+					  u32 signature, u32 pnet_hash)
 {
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_node *n, *temp_node;
+	struct tipc_net *tn_peer;
 	struct tipc_link *l;
+	struct net *tmp;
 	int bearer_id;
 	int i;
 
@@ -400,6 +414,23 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 	memcpy(&n->peer_id, peer_id, 16);
 	n->net = net;
 	n->capabilities = capabilities;
+	n->pnet = NULL;
+	for_each_net_rcu(tmp) {
+		/* Integrity checking whether node exists in namespace or not */
+		if (net_hash_mix(tmp) != pnet_hash)
+			continue;
+		tn_peer = net_generic(tmp, tipc_net_id);
+		if (!tn_peer)
+			continue;
+
+		if ((tn_peer->random & 0x7fff) != (signature & 0x7fff))
+			continue;
+
+		if (!memcmp(n->peer_id, tn_peer->node_id, NODE_ID_LEN)) {
+			n->pnet = tmp;
+			break;
+		}
+	}
 	kref_init(&n->kref);
 	rwlock_init(&n->lock);
 	INIT_HLIST_NODE(&n->hash);
@@ -979,7 +1010,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr)
 
 void tipc_node_check_dest(struct net *net, u32 addr,
 			  u8 *peer_id, struct tipc_bearer *b,
-			  u16 capabilities, u32 signature,
+			  u16 capabilities, u32 signature, u32 pnet_hash,
 			  struct tipc_media_addr *maddr,
 			  bool *respond, bool *dupl_addr)
 {
@@ -998,7 +1029,8 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	*dupl_addr = false;
 	*respond = false;
 
-	n = tipc_node_create(net, addr, peer_id, capabilities);
+	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
+			     pnet_hash);
 	if (!n)
 		return;
 
@@ -1424,6 +1456,49 @@ static int __tipc_nl_add_node(struct tipc_nl_msg *msg, struct tipc_node *node)
 	return -EMSGSIZE;
 }
 
+static void tipc_lxc_xmit(struct net *pnet, struct sk_buff_head *list)
+{
+	struct tipc_msg *hdr = buf_msg(skb_peek(list));
+	struct sk_buff_head inputq;
+
+	switch (msg_user(hdr)) {
+	case TIPC_LOW_IMPORTANCE:
+	case TIPC_MEDIUM_IMPORTANCE:
+	case TIPC_HIGH_IMPORTANCE:
+	case TIPC_CRITICAL_IMPORTANCE:
+		if (msg_connected(hdr) || msg_named(hdr)) {
+			spin_lock_init(&list->lock);
+			tipc_sk_rcv(pnet, list);
+			return;
+		}
+		if (msg_mcast(hdr)) {
+			skb_queue_head_init(&inputq);
+			tipc_sk_mcast_rcv(pnet, list, &inputq);
+			__skb_queue_purge(list);
+			skb_queue_purge(&inputq);
+			return;
+		}
+		return;
+	case MSG_FRAGMENTER:
+		if (tipc_msg_assemble(list)) {
+			skb_queue_head_init(&inputq);
+			tipc_sk_mcast_rcv(pnet, list, &inputq);
+			__skb_queue_purge(list);
+			skb_queue_purge(&inputq);
+		}
+		return;
+	case LINK_PROTOCOL:
+	case NAME_DISTRIBUTOR:
+	case GROUP_PROTOCOL:
+	case CONN_MANAGER:
+	case TUNNEL_PROTOCOL:
+	case BCAST_PROTOCOL:
+		return;
+	default:
+		return;
+	};
+}
+
 /**
  * tipc_node_xmit() is the general link level function for message sending
  * @net: the applicable net namespace
@@ -1439,6 +1514,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 	struct tipc_link_entry *le = NULL;
 	struct tipc_node *n;
 	struct sk_buff_head xmitq;
+	bool node_up = false;
 	int bearer_id;
 	int rc;
 
@@ -1455,6 +1531,16 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 		return -EHOSTUNREACH;
 	}
 
+	node_up = node_is_up(n);
+	if (node_up && n->pnet && check_net(n->pnet)) {
+		/* xmit inner linux container */
+		tipc_lxc_xmit(n->pnet, list);
+		if (likely(skb_queue_empty(list))) {
+			tipc_node_put(n);
+			return 0;
+		}
+	}
+
 	tipc_node_read_lock(n);
 	bearer_id = n->active_links[selector & 1];
 	if (unlikely(bearer_id == INVALID_BEARER_ID)) {
diff --git a/net/tipc/node.h b/net/tipc/node.h
index 291d0ecd4101..11eb95ce358b 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
 u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);
 void tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
 			  struct tipc_bearer *bearer,
-			  u16 capabilities, u32 signature,
+			  u16 capabilities, u32 signature, u32 pnet_hash,
 			  struct tipc_media_addr *maddr,
 			  bool *respond, bool *dupl_addr);
 void tipc_node_delete_links(struct net *net, int bearer_id);
@@ -92,7 +92,7 @@ void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
 void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
 int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
 void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
-int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel);
+int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);
 bool tipc_node_is_up(struct net *net, u32 addr);
 u16 tipc_node_get_capabilities(struct net *net, u32 addr);
 int tipc_nl_node_dump(struct sk_buff *skb, struct netlink_callback *cb);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 3b9f8cc328f5..fb24df03da6c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -854,7 +854,7 @@ static int tipc_send_group_msg(struct net *net, struct tipc_sock *tsk,
 
 	/* Build message as chain of buffers */
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
+	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
@@ -1388,7 +1388,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		return rc;
 
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
+	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
@@ -1526,7 +1526,7 @@ static void tipc_sk_finish_conn(struct tipc_sock *tsk, u32 peer_port,
 	sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
 	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
 	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
-	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
+	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid, true);
 	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
 	__skb_queue_purge(&sk->sk_write_queue);
 	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
