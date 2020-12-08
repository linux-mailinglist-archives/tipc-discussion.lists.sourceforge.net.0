Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B83CB2D326A
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4x-0004mI-Ed; Tue, 08 Dec 2020 18:51:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4i-0004jU-R6
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GxMMJuTvrWgcbsTldPiUPLzrKCPVFr/lcSzyPM9dozM=; b=AGim6YUdTY9W6s0OwsToKiXh3I
 aJppkGkNwRYBSi91quOHIo7Ip7q5hR7umK45muUUcTb/8Hs5iudruo+TX8QSOps8ahuqWbnyUsoqr
 Yw0atXtOoyTiXa84egpUfGzn7yegHf0Ja9e5UXwhgMsV1MJWRrK0IsDN5lWnzxeNeQmI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GxMMJuTvrWgcbsTldPiUPLzrKCPVFr/lcSzyPM9dozM=; b=Aju06oY92GiwCOFpM3W4Kfj+CN
 f7VCfdcaU+t3M0Vp7Zc1oII/mIjTJ6DhMuAxLuXoJRZltqVZRmHNtPhe/k5/kkWmtLJ9GhygLGXvA
 FYRzhyc3bO1Np6fO96EKmKuOPB/m0JSUup3eAod/b6F73s/nBv/kt/RtzF1Herw/fI84=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4e-003uhb-36
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GxMMJuTvrWgcbsTldPiUPLzrKCPVFr/lcSzyPM9dozM=;
 b=aSdcM1YfyUW/bhflkTsRZ/Js4RqfQJmF2qG28u3HRHlhsvcVGDMIHiGTI3ZpvYh3Z6L3HJ
 Worx7mkNrad3sj1w5D7cf+KVGWYuHBZ5WxOZX9TGVzgUva9ph8sbBV52t+qyIbM6A+VJLj
 hPL7AUmQ18LgpslnbQIZxgGobhm9Fu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587--d5YH9qKMsKuTXomiRTSqg-1; Tue, 08 Dec 2020 13:50:46 -0500
X-MC-Unique: -d5YH9qKMsKuTXomiRTSqg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5233814410;
 Tue,  8 Dec 2020 18:50:30 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B645C60877;
 Tue,  8 Dec 2020 18:50:27 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:03 -0500
Message-Id: <20201208185012.265508-8-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4e-003uhb-36
Subject: [tipc-discussion] [net-next 07/16] tipc: rename binding table
 lookup functions
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

The binding table provides four different lookup functions, which
purpose is not obvious neither by their names nor by the (lack of)
descriptions.

We now give these functions that match their purpose, and add comments
that further describe what they are doing.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/msg.c        |  4 ++--
 net/tipc/name_table.c | 51 ++++++++++++++++++++++++++++---------------
 net/tipc/name_table.h | 19 +++++++++-------
 net/tipc/socket.c     | 19 ++++++++--------
 4 files changed, 56 insertions(+), 37 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2aca86021df5..9eddbddb2fec 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -727,8 +727,8 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 	if (msg_reroute_cnt(msg))
 		return false;
 	dnode = tipc_scope2node(net, msg_lookup_scope(msg));
-	dport = tipc_nametbl_translate(net, msg_nametype(msg),
-				       msg_nameinst(msg), &dnode);
+	dport = tipc_nametbl_lookup_anycast(net, msg_nametype(msg),
+					    msg_nameinst(msg), &dnode);
 	if (!dport)
 		return false;
 	msg_incr_reroute_cnt(msg);
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 50562d086016..e6177ccf1140 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -547,24 +547,26 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 }
 
 /**
- * tipc_nametbl_translate - perform service instance to socket translation
+ * tipc_nametbl_lookup_anycast - perform service instance to socket translation
  * @net: network namespace
  * @type: message type
  * @instance: message instance
  * @dnode: the search domain used during translation
  *
+ * On entry, 'dnode' is the search domain used during the lookup
+ *
  * On exit:
- * - if translation is deferred to another node, leave 'dnode' unchanged and
- * return 0
- * - if translation is attempted and succeeds, set 'dnode' to the publishing
- * node and return the published (non-zero) port number
- * - if translation is attempted and fails, set 'dnode' to 0 and return 0
+ * - if lookup is deferred to another node, leave 'dnode' unchanged and return 0
+ * - if lookup is attempted and succeeds, set 'dnode' to the publishing node and
+ *   return the published (non-zero) port number
+ * - if lookup is attempted and fails, set 'dnode' to 0 and return 0
  *
  * Note that for legacy users (node configured with Z.C.N address format) the
  * 'closest-first' lookup algorithm must be maintained, i.e., if dnode is 0
  * we must look in the local binding list first
  */
-u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
+u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
+				u32 instance, u32 *dnode)
 {
 	struct tipc_net *tn = tipc_net(net);
 	bool legacy = tn->legacy_addr_format;
@@ -620,9 +622,15 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
 	return port;
 }
 
-bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
-			 struct list_head *dsts, int *dstcnt, u32 exclude,
-			 bool all)
+/* tipc_nametbl_lookup_group(): lookup destinaton(s) in a communication group
+ * Returns a list of one (== group anycast) or more (== group multicast)
+ * destination socket/node pairs matching the given address.
+ * The requester may or may not want to exclude himself from the list.
+ */
+bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
+			       u32 scope, struct list_head *dsts,
+			       int *dstcnt, u32 exclude,
+			       bool mcast)
 {
 	u32 self = tipc_own_addr(net);
 	struct service_range *sr;
@@ -649,7 +657,7 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
 			continue;
 		tipc_dest_push(dsts, p->sk.node, p->sk.ref);
 		(*dstcnt)++;
-		if (all)
+		if (mcast)
 			continue;
 		list_move_tail(&p->all_publ, &sr->all_publ);
 		break;
@@ -661,8 +669,14 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
 	return !list_empty(dsts);
 }
 
-void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
-			    u32 scope, bool exact, struct list_head *dports)
+/* tipc_nametbl_lookup_mcast_sockets(): look up node local destinaton sockets
+ *                                      matching the given address
+ * Used on nodes which have received a multicast/broadcast message
+ * Returns a list of local sockets
+ */
+void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
+				       u32 upper, u32 scope, bool exact,
+				       struct list_head *dports)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
@@ -685,12 +699,13 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
 	rcu_read_unlock();
 }
 
-/* tipc_nametbl_lookup_dst_nodes - find broadcast destination nodes
- * - Creates list of nodes that overlap the given multicast address
- * - Determines if any node local destinations overlap
+/* tipc_nametbl_lookup_mcast_nodes(): look up all destination nodes matching
+ *                                    the given address. Used in sending node.
+ * Used on nodes which are sending out a multicast/broadcast message
+ * Returns a list of nodes, including own node if applicable
  */
-void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
-				   u32 upper, struct tipc_nlist *nodes)
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
+				     u32 upper, struct tipc_nlist *nodes)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 5f48f05b93be..9f6e8efca00f 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -112,16 +112,19 @@ struct name_table {
 
 int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
 
-u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *node);
-void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
-			    u32 scope, bool exact, struct list_head *dports);
+u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type, u32 instance,
+				u32 *node);
+void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
+				       u32 upper, u32 scope, bool exact,
+				   struct list_head *dports);
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
+				     u32 upper, struct tipc_nlist *nodes);
+bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
+			       u32 domain, struct list_head *dsts,
+			       int *dstcnt, u32 exclude,
+			       bool all);
 void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 			      u32 type, u32 domain);
-void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
-				   u32 upper, struct tipc_nlist *nodes);
-bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 domain,
-			 struct list_head *dsts, int *dstcnt, u32 exclude,
-			 bool all);
 struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
 void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 5a017a34fb5f..05cfe179458e 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -863,8 +863,8 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 
 	/* Lookup destination nodes */
 	tipc_nlist_init(&dsts, tipc_own_addr(net));
-	tipc_nametbl_lookup_dst_nodes(net, seq->type, seq->lower,
-				      seq->upper, &dsts);
+	tipc_nametbl_lookup_mcast_nodes(net, seq->type, seq->lower,
+					seq->upper, &dsts);
 	if (!dsts.local && !dsts.remote)
 		return -EHOSTUNREACH;
 
@@ -1032,8 +1032,9 @@ static int tipc_send_group_anycast(struct socket *sock, struct msghdr *m,
 
 		/* Look for a non-congested destination member, if any */
 		while (1) {
-			if (!tipc_nametbl_lookup(net, type, inst, scope, &dsts,
-						 &dstcnt, exclude, false))
+			if (!tipc_nametbl_lookup_group(net, type, inst, scope,
+						       &dsts, &dstcnt, exclude,
+						       false))
 				return -EHOSTUNREACH;
 			tipc_dest_pop(&dsts, &node, &port);
 			cong = tipc_group_cong(tsk->group, node, port, blks,
@@ -1179,8 +1180,8 @@ static int tipc_send_group_mcast(struct socket *sock, struct msghdr *m,
 	scope = msg_lookup_scope(hdr);
 	exclude = tipc_group_exclude(grp);
 
-	if (!tipc_nametbl_lookup(net, type, inst, scope, &dsts,
-				 &dstcnt, exclude, true))
+	if (!tipc_nametbl_lookup_group(net, type, inst, scope, &dsts,
+				       &dstcnt, exclude, true))
 		return -EHOSTUNREACH;
 
 	if (dstcnt == 1) {
@@ -1254,8 +1255,8 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		}
 
 		/* Create destination port list: */
-		tipc_nametbl_mc_lookup(net, type, lower, upper,
-				       scope, exact, &dports);
+		tipc_nametbl_lookup_mcast_sockets(net, type, lower, upper,
+						  scope, exact, &dports);
 
 		/* Clone message per destination */
 		while (tipc_dest_pop(&dports, NULL, &portid)) {
@@ -1485,7 +1486,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		type = dest->addr.name.name.type;
 		inst = dest->addr.name.name.instance;
 		dnode = dest->addr.name.domain;
-		dport = tipc_nametbl_translate(net, type, inst, &dnode);
+		dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
 		if (unlikely(!dport && !dnode))
 			return -EHOSTUNREACH;
 	} else if (dest->addrtype == TIPC_SOCKET_ADDR) {
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
