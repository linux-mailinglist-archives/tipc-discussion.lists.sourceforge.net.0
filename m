Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35213326DF7
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2t3-0000PX-24; Sat, 27 Feb 2021 16:56:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2sz-0000P1-Ka
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fozq5T4fZC3c6V3LdvyGj0OC+j5qJc2UJ+qQhmWRD9o=; b=PCqOpaSW+zAfD7DmXcsYh9aOlX
 8N7g1p4vv8AM2gv4CEQcESXO1dex1D1FL2q1+uS/YfWf9nH58GfU1PJowWv+KwdQVKomw7qkMkDSe
 3uCAbVEvIwlsBTzu9o28v7dNGx7HpVmK4SC2x5P2NpIE1/O2BQo7GJIREagcV0Ia4fyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fozq5T4fZC3c6V3LdvyGj0OC+j5qJc2UJ+qQhmWRD9o=; b=B6xo3PcDei4NtVvyZKESO0atZC
 WtaaAAYh4PsfqRsK7Cc5jycxO5yOuqCZqIwNSCpNksh3gIvlXtwTOCGsk1kxEwU6j5irnRDAaDqWS
 VHNh8V4tGR2xoYjVjeVhLmrsTO4BgOhJwmHBaawsLfYITMTH9CNNAGMoBB7yKEArQUxs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2sv-007iB6-AH
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444959;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fozq5T4fZC3c6V3LdvyGj0OC+j5qJc2UJ+qQhmWRD9o=;
 b=Vv5+m5qdoi491KfxBvj9LPwe79FL3/5wiYJgkMEEl2ikAsMDjSDY1zXXNHy8A9y5bxbjHy
 zROubqjZ/BlUY6ZOwXcnaS1mCV1It89dmttny5EvQMM80fdxoPrSsYzQ6ljYXGjVGaZpGc
 lRdkI0pr6uqapRhv8vmOr+0qYciYSJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-Iuw-KB1-NpGZ0GEZbg7hKA-1; Sat, 27 Feb 2021 11:55:57 -0500
X-MC-Unique: Iuw-KB1-NpGZ0GEZbg7hKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B75B27B9E;
 Sat, 27 Feb 2021 16:55:55 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 77C7E62A02;
 Sat, 27 Feb 2021 16:55:54 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:33 -0500
Message-Id: <20210227165542.3781624-8-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
References: <20210227165542.3781624-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
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
X-Headers-End: 1lG2sv-007iB6-AH
Subject: [tipc-discussion] [net-next v2 07/16] tipc: rename binding table
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

We now give these functions names that better match their purposes,
and improve the comments that describe what they are doing.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.c        |  4 ++--
 net/tipc/name_table.c | 51 ++++++++++++++++++++++++++++---------------
 net/tipc/name_table.h | 19 +++++++++-------
 net/tipc/socket.c     | 19 ++++++++--------
 4 files changed, 56 insertions(+), 37 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index e9263280a2d4..25afb5949892 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -723,8 +723,8 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
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
index 5676b8d4f08f..22616a943e70 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -544,24 +544,26 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
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
@@ -617,9 +619,15 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
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
@@ -646,7 +654,7 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
 			continue;
 		tipc_dest_push(dsts, p->sk.node, p->sk.ref);
 		(*dstcnt)++;
-		if (all)
+		if (mcast)
 			continue;
 		list_move_tail(&p->all_publ, &sr->all_publ);
 		break;
@@ -658,8 +666,14 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
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
@@ -682,12 +696,13 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
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
index 5a7c83d22ef9..07a297f22135 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -111,16 +111,19 @@ struct name_table {
 
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
index 7f5722d3b3d0..b80c82d3ab87 100644
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
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
