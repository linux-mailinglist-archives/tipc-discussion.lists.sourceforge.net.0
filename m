Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1363DE2EC
	for <lists+tipc-discussion@lfdr.de>; Mon, 21 Oct 2019 06:17:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iMP8I-0002CS-7W; Mon, 21 Oct 2019 04:17:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iMP8G-0002Bz-1O
 for tipc-discussion@lists.sourceforge.net; Mon, 21 Oct 2019 04:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M34pyHXU0aIrLh3C6WXAJ8OrUrWy1m1l/7gnd/7wvQw=; b=Jl2NDzRxxSkptV5Lyjyvl3AV5J
 /EJvuMTmjpjLEljk07ccWP1m2ajcjOEMONoN8yTzrlnl31yuD8Y3Ovt0uCVhiYBnk7m2xCFrawUZs
 FxPM6ksgIlzgnszJmBiP3YXKhZjgtr+j+Ms2EsZvmC5AjLKneySqs9URP4K6CNbuk6+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M34pyHXU0aIrLh3C6WXAJ8OrUrWy1m1l/7gnd/7wvQw=; b=H
 0Jw5Q+b3St5k3KhnhQj40YHFk/Jgikc8rtbFq2+4ho26rh2Zr4RD3aQYXqp2A6JHUcL958dV4ERW7
 IIv3nRP1V3YnVVIYcCumVtlnrZ0eTxsKqaJ1jit7lHuV/8J0B/spf5qZV5YxGqkccJYDL35vHpaly
 GLRfqeOF32hNFtY8=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iMP8C-00Fcut-S9
 for tipc-discussion@lists.sourceforge.net; Mon, 21 Oct 2019 04:17:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id EEFDE48DC9;
 Mon, 21 Oct 2019 15:17:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1571631433; bh=LVzD0eUs45b7dXSin5BwEQ8GIzVVkXgbl
 PejUSVP6HE=; b=sWTZ1C1g9eN7hVAF15IiQXIIuoSiZJrngKlIZmAvXJbW/J54a
 F84eIA/5A7eHlvS8FqHhK9S1FFJr92Lo1EtdwBTcMlTCYd/EtsicIXQ/3o6JnhpG
 OOHZVMBrMTBqiPCJJ+iQ3Lze4zK+xBh6i6eLhs50HPIJKqHpFElKRtrmZw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id C-851OapWK-2; Mon, 21 Oct 2019 15:17:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 9149848EA5;
 Mon, 21 Oct 2019 15:17:13 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3E9FA48DC9;
 Mon, 21 Oct 2019 15:17:12 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com, lxin@redhat.com
Date: Mon, 21 Oct 2019 11:15:37 +0700
Message-Id: <20191021041537.16788-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
X-Headers-End: 1iMP8C-00Fcut-S9
Subject: [tipc-discussion] [net-next v2] tipc: improve throughput between
 nodes in netns
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

Currently, TIPC transports intra-node user data messages directly
socket to socket, hence shortcutting all the lower layers of the
communication stack. This gives TIPC very good intra node performance,
both regarding throughput and latency.

We now introduce a similar mechanism for TIPC data traffic across
network name spaces located in the same kernel. On the send path, the
call chain is as always accompanied by the sending node's network name
space pointer. However, once we have reliably established that the
receiving node is represented by a name space on the same host, we just
replace the name space pointer with the receiving node/name space's
ditto, and follow the regular socket receive patch though the receiving
node. This technique gives us a throughput similar to the node internal
throughput, several times larger than if we let the traffic go though
the full network stack. As a comparison, max throughput for 64k
messages is four times larger than TCP throughput for the same type of
traffic.

To meet any security concerns, the following should be noted.

- All nodes joining a cluster are supposed to have been be certified
and authenticated by mechanisms outside TIPC. This is no different for
nodes/name spaces on the same host; they have to auto discover each
other using the attached interfaces, and establish links which are
supervised via the regular link monitoring mechanism. Hence, a kernel
local node has no other way to join a cluster than any other node, and
have to obey to policies set in the IP or device layers of the stack.

- Only when a sender has established with 100% certainty that the peer
node is located in a kernel local name space does it choose to let user
data messages, and only those, take the crossover path to the receiving
node/name space.

- If the receiving node/name space  is removed, its name space pointer
is invalidated at all peer nodes, and their neighbor link monitoring
will eventually note that this node is gone.

- To ensure the "100% certainty" criteria, and prevent any possible
spoofing, received discovery messages must contain a proof that they
know a common secret. We use the hash_mix of the sending node/name
space for this purpose, since it can be accessed directly by all other
name spaces in the kernel. Upon reception of a discovery message, the
receiver checks this proof against all the local name spaces'
hash_mix:es.  If it finds a match, that, along with a matching node id
and cluster id, this is deemed sufficient proof that the peer node in
question is in a local name space, and a wormhole can be opened.

- We should also consider that TIPC is intended to be a cluster local
IPC mechanism (just like e.g. UNIX sockets)  rather than a network
protocol, and hence should be given more freedom to shortcut the lower
protocol than other protocols.

Regarding traceability, we should notice that since commit 6c9081a3915d
("tipc: add loopback device tracking") it is possible to follow the node
internal packet flow by just activating tcpdump on the loopback
interface. This will be true even for this mechanism; by activating
tcpdump on the invloved nodes' loopback interfaces their inter-name
space messaging can easily be tracked.

Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/discover.c   |  10 ++++-
 net/tipc/msg.h        |  10 +++++
 net/tipc/name_distr.c |   2 +-
 net/tipc/node.c       | 100 ++++++++++++++++++++++++++++++++++++++++--
 net/tipc/node.h       |   4 +-
 net/tipc/socket.c     |   6 +--
 6 files changed, 121 insertions(+), 11 deletions(-)

diff --git a/net/tipc/discover.c b/net/tipc/discover.c
index c138d68e8a69..338d402fcf39 100644
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
@@ -83,6 +85,7 @@ static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
 	struct tipc_net *tn = tipc_net(net);
 	u32 dest_domain = b->domain;
 	struct tipc_msg *hdr;
+	u32 hash;
 
 	hdr = buf_msg(skb);
 	tipc_msg_init(tn->trial_addr, hdr, LINK_CONFIG, mtyp,
@@ -94,6 +97,10 @@ static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
 	msg_set_dest_domain(hdr, dest_domain);
 	msg_set_bc_netid(hdr, tn->net_id);
 	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
+	hash = tn->random;
+	hash ^= net_hash_mix(&init_net);
+	hash ^= net_hash_mix(net);
+	msg_set_peer_net_hash(hdr, hash);
 	msg_set_node_id(hdr, tipc_own_id(net));
 }
 
@@ -242,7 +249,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
 	if (!tipc_in_scope(legacy, b->domain, src))
 		return;
 	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
-			     &maddr, &respond, &dupl_addr);
+			     msg_peer_net_hash(hdr), &maddr, &respond,
+			     &dupl_addr);
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
index c8f6177dd5a2..780b726041dd 100644
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
@@ -361,12 +372,16 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 }
 
 static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
-					  u8 *peer_id, u16 capabilities)
+					  u8 *peer_id, u16 capabilities,
+					  u32 signature, u32 hash_mixes)
 {
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_node *n, *temp_node;
+	struct tipc_net *tn_peer;
 	struct tipc_link *l;
+	struct net *tmp;
 	int bearer_id;
+	u32 hash_chk;
 	int i;
 
 	spin_lock_bh(&tn->node_list_lock);
@@ -400,6 +415,25 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 	memcpy(&n->peer_id, peer_id, 16);
 	n->net = net;
 	n->capabilities = capabilities;
+	n->pnet = NULL;
+	for_each_net_rcu(tmp) {
+		tn_peer = net_generic(tmp, tipc_net_id);
+		if (!tn_peer)
+			continue;
+		/* Integrity checking whether node exists in namespace or not */
+		if (tn_peer->net_id != tn->net_id)
+			continue;
+		if (memcmp(peer_id, tn_peer->node_id, NODE_ID_LEN))
+			continue;
+
+		hash_chk = tn_peer->random;
+		hash_chk ^= net_hash_mix(&init_net);
+		hash_chk ^= net_hash_mix(tmp);
+		if (hash_chk ^ hash_mixes)
+			continue;
+		n->pnet = tmp;
+		break;
+	}
 	kref_init(&n->kref);
 	rwlock_init(&n->lock);
 	INIT_HLIST_NODE(&n->hash);
@@ -979,7 +1013,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr)
 
 void tipc_node_check_dest(struct net *net, u32 addr,
 			  u8 *peer_id, struct tipc_bearer *b,
-			  u16 capabilities, u32 signature,
+			  u16 capabilities, u32 signature, u32 hash_mixes,
 			  struct tipc_media_addr *maddr,
 			  bool *respond, bool *dupl_addr)
 {
@@ -998,7 +1032,8 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	*dupl_addr = false;
 	*respond = false;
 
-	n = tipc_node_create(net, addr, peer_id, capabilities);
+	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
+			     hash_mixes);
 	if (!n)
 		return;
 
@@ -1424,6 +1459,52 @@ static int __tipc_nl_add_node(struct tipc_nl_msg *msg, struct tipc_node *node)
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
+	case GROUP_PROTOCOL:
+	case CONN_MANAGER:
+		spin_lock_init(&list->lock);
+		tipc_sk_rcv(pnet, list);
+		return;
+	case LINK_PROTOCOL:
+	case NAME_DISTRIBUTOR:
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
@@ -1439,6 +1520,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 	struct tipc_link_entry *le = NULL;
 	struct tipc_node *n;
 	struct sk_buff_head xmitq;
+	bool node_up = false;
 	int bearer_id;
 	int rc;
 
@@ -1455,6 +1537,16 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
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
index 291d0ecd4101..2557d40fd417 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
 u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);
 void tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
 			  struct tipc_bearer *bearer,
-			  u16 capabilities, u32 signature,
+			  u16 capabilities, u32 signature, u32 hash_mixes,
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
