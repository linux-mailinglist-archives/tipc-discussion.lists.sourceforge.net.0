Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5297E2EA8
	for <lists+tipc-discussion@lfdr.de>; Thu, 24 Oct 2019 12:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iNaCs-0001HD-Jt; Thu, 24 Oct 2019 10:19:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iNaCq-0001Gx-70
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 10:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yjgas8M1OSthVVyTk1liQ96HayV3B+UJ1LQFQStAlsA=; b=g/+thMhIYV82tsZYbd4kYUdj71
 iGyenk4uOGCsaoAP1LNRlswI43gfjDxj7pmuaQ7ptxPhkANbNpCnMflIYzAVQAVtkZaSRHJZDkTf8
 bs3RkdJ3iJcWYSXj9oWMFltCoTKaTtjE9I2ANmk3AzCUPiCjUIenD/HiJnVoRF9Oclq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yjgas8M1OSthVVyTk1liQ96HayV3B+UJ1LQFQStAlsA=; b=M
 jJg7rPsE9WTGlcpiWkogdiKimoSJAU1s1/DqpXzbZFPRy49r1urMh4j4rZoDZxY6RsrAreXGXsRMu
 MQVlS4ucNfDbBwKb259thaaTM6kNsbpxFP7mu8mjkGBOEN7vZH1ZsVyZegGGBVWiezQa6DHV3ZUwQ
 7XP456r4uxziJhC4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNaCm-001Pxi-3a
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 10:19:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id DF4F24A402;
 Thu, 24 Oct 2019 21:18:46 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1571912326; bh=12vgwoqpGHf3yR76hbSTjfIFC3gXFUR8x
 OepIrflm84=; b=jdMUYTAKP70oquUtAhqvM1V1F5N1iNlJvVvJwsbYq0ImalFAN
 4ning74gZEW0wODMX3TeVYR6r52ujgXa6t2gIcbS2iKqsDv96mbH3F82X8BHD3b5
 aFN+aVPIMZKGzDZJF8vsJO6SiZ0Unw1EHsd0YFvk263oqSOEoU+pDUCweE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bDlGtPRwHMmH; Thu, 24 Oct 2019 21:18:46 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 483474A404;
 Thu, 24 Oct 2019 21:18:46 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4FA744A402;
 Thu, 24 Oct 2019 21:18:45 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, tipc-dek@dektech.com.au, ying.xue@windriver.com
Date: Thu, 24 Oct 2019 17:17:23 +0700
Message-Id: <20191024101723.10189-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iNaCm-001Pxi-3a
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
network namespaces located in the same kernel. On the send path, the
call chain is as always accompanied by the sending node's network name
space pointer. However, once we have reliably established that the
receiving node is represented by a namespace on the same host, we just
replace the namespace pointer with the receiving node/namespace's
ditto, and follow the regular socket receive patch though the receiving
node. This technique gives us a throughput similar to the node internal
throughput, several times larger than if we let the traffic go though
the full network stacks. As a comparison, max throughput for 64k
messages is four times larger than TCP throughput for the same type of
traffic.

To meet any security concerns, the following should be noted.

- All nodes joining a cluster are supposed to have been be certified
and authenticated by mechanisms outside TIPC. This is no different for
nodes/namespaces on the same host; they have to auto discover each
other using the attached interfaces, and establish links which are
supervised via the regular link monitoring mechanism. Hence, a kernel
local node has no other way to join a cluster than any other node, and
have to obey to policies set in the IP or device layers of the stack.

- Only when a sender has established with 100% certainty that the peer
node is located in a kernel local namespace does it choose to let user
data messages, and only those, take the crossover path to the receiving
node/namespace.

- If the receiving node/namespace is removed, its namespace pointer
is invalidated at all peer nodes, and their neighbor link monitoring
will eventually note that this node is gone.

- To ensure the "100% certainty" criteria, and prevent any possible
spoofing, received discovery messages must contain a proof that the
sender knows a common secret. We use the hash mix of the sending
node/namespace for this purpose, since it can be accessed directly by
all other namespaces in the kernel. Upon reception of a discovery
message, the receiver checks this proof against all the local
namespaces'hash_mix:es. If it finds a match, that, along with a
matching node id and cluster id, this is deemed sufficient proof that
the peer node in question is in a local namespace, and a wormhole can
be opened.

- We should also consider that TIPC is intended to be a cluster local
IPC mechanism (just like e.g. UNIX sockets) rather than a network
protocol, and hence we think it can justified to allow it to shortcut the
lower protocol layers.

Regarding traceability, we should notice that since commit 6c9081a3915d
("tipc: add loopback device tracking") it is possible to follow the node
internal packet flow by just activating tcpdump on the loopback
interface. This will be true even for this mechanism; by activating
tcpdump on the involved nodes' loopback interfaces their inter-name
space messaging can easily be tracked.

v2:
- update 'net' pointer when node left/rejoined

Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c       |  16 +++++
 net/tipc/core.h       |   6 ++
 net/tipc/discover.c   |   4 +-
 net/tipc/msg.h        |  14 ++++
 net/tipc/name_distr.c |   2 +-
 net/tipc/node.c       | 148 ++++++++++++++++++++++++++++++++++++++++--
 net/tipc/node.h       |   5 +-
 net/tipc/socket.c     |   6 +-
 8 files changed, 190 insertions(+), 11 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 23cb379a93d6..ab648dd150ee 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -105,6 +105,15 @@ static void __net_exit tipc_exit_net(struct net *net)
 	tipc_sk_rht_destroy(net);
 }
 
+static void __net_exit tipc_pernet_pre_exit(struct net *net)
+{
+	tipc_node_pre_cleanup_net(net);
+}
+
+static struct pernet_operations tipc_pernet_pre_exit_ops = {
+	.pre_exit = tipc_pernet_pre_exit,
+};
+
 static struct pernet_operations tipc_net_ops = {
 	.init = tipc_init_net,
 	.exit = tipc_exit_net,
@@ -151,6 +160,10 @@ static int __init tipc_init(void)
 	if (err)
 		goto out_pernet_topsrv;
 
+	err = register_pernet_subsys(&tipc_pernet_pre_exit_ops);
+	if (err)
+		goto out_register_pernet_subsys;
+
 	err = tipc_bearer_setup();
 	if (err)
 		goto out_bearer;
@@ -158,6 +171,8 @@ static int __init tipc_init(void)
 	pr_info("Started in single node mode\n");
 	return 0;
 out_bearer:
+	unregister_pernet_subsys(&tipc_pernet_pre_exit_ops);
+out_register_pernet_subsys:
 	unregister_pernet_device(&tipc_topsrv_net_ops);
 out_pernet_topsrv:
 	tipc_socket_stop();
@@ -177,6 +192,7 @@ static int __init tipc_init(void)
 static void __exit tipc_exit(void)
 {
 	tipc_bearer_cleanup();
+	unregister_pernet_subsys(&tipc_pernet_pre_exit_ops);
 	unregister_pernet_device(&tipc_topsrv_net_ops);
 	tipc_socket_stop();
 	unregister_pernet_device(&tipc_net_ops);
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 60d829581068..8776d32a4a47 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -59,6 +59,7 @@
 #include <net/netns/generic.h>
 #include <linux/rhashtable.h>
 #include <net/genetlink.h>
+#include <net/netns/hash.h>
 
 struct tipc_node;
 struct tipc_bearer;
@@ -185,6 +186,11 @@ static inline int in_range(u16 val, u16 min, u16 max)
 	return !less(val, min) && !more(val, max);
 }
 
+static inline u32 tipc_net_hash_mixes(struct net *net, int tn_rand)
+{
+	return net_hash_mix(&init_net) ^ net_hash_mix(net) ^ tn_rand;
+}
+
 #ifdef CONFIG_SYSCTL
 int tipc_register_sysctl(void);
 void tipc_unregister_sysctl(void);
diff --git a/net/tipc/discover.c b/net/tipc/discover.c
index c138d68e8a69..b043e8c6397a 100644
--- a/net/tipc/discover.c
+++ b/net/tipc/discover.c
@@ -94,6 +94,7 @@ static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
 	msg_set_dest_domain(hdr, dest_domain);
 	msg_set_bc_netid(hdr, tn->net_id);
 	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
+	msg_set_peer_net_hash(hdr, tipc_net_hash_mixes(net, tn->random));
 	msg_set_node_id(hdr, tipc_own_id(net));
 }
 
@@ -242,7 +243,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
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
index 0daa6f04ca81..2d7cb66a6912 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1026,6 +1026,20 @@ static inline bool msg_is_reset(struct tipc_msg *hdr)
 	return (msg_user(hdr) == LINK_PROTOCOL) && (msg_type(hdr) == RESET_MSG);
 }
 
+/* Word 13
+ */
+static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n)
+{
+	msg_set_word(m, 13, n);
+}
+
+static inline u32 msg_peer_net_hash(struct tipc_msg *m)
+{
+	return msg_word(m, 13);
+}
+
+/* Word 14
+ */
 static inline u32 msg_sugg_node_addr(struct tipc_msg *m)
 {
 	return msg_word(m, 14);
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
index f2e3cf70c922..cecb2fc3dc20 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -126,6 +126,8 @@ struct tipc_node {
 	struct timer_list timer;
 	struct rcu_head rcu;
 	unsigned long delete_at;
+	struct net *peer_net;
+	u32 peer_hash_mix;
 };
 
 /* Node FSM states and events:
@@ -184,7 +186,7 @@ static struct tipc_link *node_active_link(struct tipc_node *n, int sel)
 	return n->links[bearer_id].link;
 }
 
-int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
+int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected)
 {
 	struct tipc_node *n;
 	int bearer_id;
@@ -194,6 +196,14 @@ int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
 	if (unlikely(!n))
 		return mtu;
 
+	/* Allow MAX_MSG_SIZE when building connection oriented message
+	 * if they are in the same core network
+	 */
+	if (n->peer_net && connected) {
+		tipc_node_put(n);
+		return mtu;
+	}
+
 	bearer_id = n->active_links[sel & 1];
 	if (likely(bearer_id != INVALID_BEARER_ID))
 		mtu = n->links[bearer_id].mtu;
@@ -360,8 +370,37 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	}
 }
 
+static void tipc_node_assign_peer_net(struct tipc_node *n, u32 hash_mixes)
+{
+	int net_id = tipc_netid(n->net);
+	struct tipc_net *tn_peer;
+	struct net *tmp;
+	u32 hash_chk;
+
+	if (n->peer_net)
+		return;
+
+	for_each_net_rcu(tmp) {
+		tn_peer = tipc_net(tmp);
+		if (!tn_peer)
+			continue;
+		/* Integrity checking whether node exists in namespace or not */
+		if (tn_peer->net_id != net_id)
+			continue;
+		if (memcmp(n->peer_id, tn_peer->node_id, NODE_ID_LEN))
+			continue;
+		hash_chk = tipc_net_hash_mixes(tmp, tn_peer->random);
+		if (hash_mixes ^ hash_chk)
+			continue;
+		n->peer_net = tmp;
+		n->peer_hash_mix = hash_mixes;
+		break;
+	}
+}
+
 static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
-					  u8 *peer_id, u16 capabilities)
+					  u8 *peer_id, u16 capabilities,
+					  u32 signature, u32 hash_mixes)
 {
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_node *n, *temp_node;
@@ -372,6 +411,8 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 	spin_lock_bh(&tn->node_list_lock);
 	n = tipc_node_find(net, addr);
 	if (n) {
+		if (n->peer_hash_mix ^ hash_mixes)
+			tipc_node_assign_peer_net(n, hash_mixes);
 		if (n->capabilities == capabilities)
 			goto exit;
 		/* Same node may come back with new capabilities */
@@ -389,6 +430,7 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 		list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
 			tn->capabilities &= temp_node->capabilities;
 		}
+
 		goto exit;
 	}
 	n = kzalloc(sizeof(*n), GFP_ATOMIC);
@@ -399,6 +441,10 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 	n->addr = addr;
 	memcpy(&n->peer_id, peer_id, 16);
 	n->net = net;
+	n->peer_net = NULL;
+	n->peer_hash_mix = 0;
+	/* Assign kernel local namespace if exists */
+	tipc_node_assign_peer_net(n, hash_mixes);
 	n->capabilities = capabilities;
 	kref_init(&n->kref);
 	rwlock_init(&n->lock);
@@ -426,6 +472,10 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 				 tipc_bc_sndlink(net),
 				 &n->bc_entry.link)) {
 		pr_warn("Broadcast rcv link creation failed, no memory\n");
+		if (n->peer_net) {
+			n->peer_net = NULL;
+			n->peer_hash_mix = 0;
+		}
 		kfree(n);
 		n = NULL;
 		goto exit;
@@ -979,7 +1029,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr)
 
 void tipc_node_check_dest(struct net *net, u32 addr,
 			  u8 *peer_id, struct tipc_bearer *b,
-			  u16 capabilities, u32 signature,
+			  u16 capabilities, u32 signature, u32 hash_mixes,
 			  struct tipc_media_addr *maddr,
 			  bool *respond, bool *dupl_addr)
 {
@@ -998,7 +1048,8 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	*dupl_addr = false;
 	*respond = false;
 
-	n = tipc_node_create(net, addr, peer_id, capabilities);
+	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
+			     hash_mixes);
 	if (!n)
 		return;
 
@@ -1343,6 +1394,10 @@ static void node_lost_contact(struct tipc_node *n,
 	/* Notify publications from this node */
 	n->action_flags |= TIPC_NOTIFY_NODE_DOWN;
 
+	if (n->peer_net) {
+		n->peer_net = NULL;
+		n->peer_hash_mix = 0;
+	}
 	/* Notify sockets connected to node */
 	list_for_each_entry_safe(conn, safe, conns, list) {
 		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE, TIPC_CONN_MSG,
@@ -1424,6 +1479,52 @@ static int __tipc_nl_add_node(struct tipc_nl_msg *msg, struct tipc_node *node)
 	return -EMSGSIZE;
 }
 
+static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
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
+			tipc_sk_rcv(peer_net, list);
+			return;
+		}
+		if (msg_mcast(hdr)) {
+			skb_queue_head_init(&inputq);
+			tipc_sk_mcast_rcv(peer_net, list, &inputq);
+			__skb_queue_purge(list);
+			skb_queue_purge(&inputq);
+			return;
+		}
+		return;
+	case MSG_FRAGMENTER:
+		if (tipc_msg_assemble(list)) {
+			skb_queue_head_init(&inputq);
+			tipc_sk_mcast_rcv(peer_net, list, &inputq);
+			__skb_queue_purge(list);
+			skb_queue_purge(&inputq);
+		}
+		return;
+	case GROUP_PROTOCOL:
+	case CONN_MANAGER:
+		spin_lock_init(&list->lock);
+		tipc_sk_rcv(peer_net, list);
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
@@ -1439,6 +1540,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 	struct tipc_link_entry *le = NULL;
 	struct tipc_node *n;
 	struct sk_buff_head xmitq;
+	bool node_up = false;
 	int bearer_id;
 	int rc;
 
@@ -1455,6 +1557,16 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 		return -EHOSTUNREACH;
 	}
 
+	node_up = node_is_up(n);
+	if (node_up && n->peer_net && check_net(n->peer_net)) {
+		/* xmit inner linux container */
+		tipc_lxc_xmit(n->peer_net, list);
+		if (likely(skb_queue_empty(list))) {
+			tipc_node_put(n);
+			return 0;
+		}
+	}
+
 	tipc_node_read_lock(n);
 	bearer_id = n->active_links[selector & 1];
 	if (unlikely(bearer_id == INVALID_BEARER_ID)) {
@@ -2587,3 +2699,31 @@ int tipc_node_dump(struct tipc_node *n, bool more, char *buf)
 
 	return i;
 }
+
+void tipc_node_pre_cleanup_net(struct net *exit_net)
+{
+	struct tipc_node *n;
+	struct tipc_net *tn;
+	struct net *tmp;
+	u32 hash_mix = net_hash_mix(exit_net);
+
+	for_each_net_rcu(tmp) {
+		if (!(net_hash_mix(tmp) ^ hash_mix))
+			continue;
+		tn = tipc_net(tmp);
+		if (!tn)
+			continue;
+		spin_lock_bh(&tn->node_list_lock);
+		list_for_each_entry_rcu(n, &tn->node_list, list) {
+			if (!n->peer_net)
+				continue;
+			if (net_hash_mix(n->peer_net) ^ hash_mix)
+				continue;
+			n->peer_net = NULL;
+			n->peer_hash_mix = 0;
+			break;
+		}
+		spin_unlock_bh(&tn->node_list_lock);
+	}
+}
+
diff --git a/net/tipc/node.h b/net/tipc/node.h
index 291d0ecd4101..30563c4f35d5 100644
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
@@ -107,4 +107,5 @@ int tipc_nl_node_get_monitor(struct sk_buff *skb, struct genl_info *info);
 int tipc_nl_node_dump_monitor(struct sk_buff *skb, struct netlink_callback *cb);
 int tipc_nl_node_dump_monitor_peer(struct sk_buff *skb,
 				   struct netlink_callback *cb);
+void tipc_node_pre_cleanup_net(struct net *exit_net);
 #endif
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 35e32ffc2b90..2bcacd6022d5 100644
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
