Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1B5326DF9
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2t6-0000Qk-6F; Sat, 27 Feb 2021 16:56:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2t4-0000Q7-Mn
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S+cLF2ppYtVwz5t7BAHkWEasZc873BbesBYOs4h2jLY=; b=IybStG3lTqA4SdTvXFHuPKZDM5
 +MZZnWVZc4NnWw735ukyY1p4Ag2KJlHo2RWekx0TyM8naqd4xP9+hW0gRXJeQlvAH3Oua1gcZvkbQ
 jcHhkcODHz8UwRHgMG91jJpUsfDfnFNgvAW+T8EVJMkEPtM/WgvnLSQ/wVigHiq55oHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S+cLF2ppYtVwz5t7BAHkWEasZc873BbesBYOs4h2jLY=; b=iwI1OQksL4F5vqfxwjyDjVxlLQ
 5ljvJNK7BnnVDIwXBOgiZLmfEYMiTJSu1iaA9la+OwdHTQ+9lg5ZOIXddGqFJJIIJndr3B4DiUDK/
 fOYCJ7+Py242At+bw13mfVD6iwhedIXOb32YvnyXJ8UhAEtWJ1FWbHmXtszNYmjYrcuI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2sw-007iB9-SR
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S+cLF2ppYtVwz5t7BAHkWEasZc873BbesBYOs4h2jLY=;
 b=IQurR02sr4qGpDGNcjFU7hm4UtkBh7X708V7Kik2pqYoXU+knigoX6ih7nY0l4ElbCLs95
 eg8X+HW2kJxSZIIsiAon4/+K/drR+w7CIDAqBSO9Q8/C6HQzMBLUJY6hfcTJTVRwL1zSFC
 XzBc3f1cI1wPuDK5Gs7OhBVBbBapHd4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-NkVj1R4MNjK9C60fQYyS7w-1; Sat, 27 Feb 2021 11:55:58 -0500
X-MC-Unique: NkVj1R4MNjK9C60fQYyS7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6405E107ACC7;
 Sat, 27 Feb 2021 16:55:57 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ECA9B62A02;
 Sat, 27 Feb 2021 16:55:55 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:34 -0500
Message-Id: <20210227165542.3781624-9-jmaloy@redhat.com>
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
X-Headers-End: 1lG2sw-007iB9-SR
Subject: [tipc-discussion] [net-next v2 08/16] tipc: refactor tipc_sendmsg()
 and tipc_lookup_anycast()
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

We simplify the signature if function tipc_nametbl_lookup_anycast(),
using address structures instead of discrete integers.

This also makes it possible to make some improvements to the functions
__tipc_sendmsg() in socket.c and tipc_msg_lookup_dest() in msg.c.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.c        | 23 ++++++------
 net/tipc/name_table.c | 75 +++++++++++++++++++-------------------
 net/tipc/name_table.h |  5 ++-
 net/tipc/socket.c     | 83 +++++++++++++++++++++----------------------
 4 files changed, 91 insertions(+), 95 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 25afb5949892..3f0a25345a7c 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -707,8 +707,11 @@ bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy)
 bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 {
 	struct tipc_msg *msg = buf_msg(skb);
-	u32 dport, dnode;
-	u32 onode = tipc_own_addr(net);
+	u32 scope = msg_lookup_scope(msg);
+	u32 self = tipc_own_addr(net);
+	u32 inst = msg_nameinst(msg);
+	struct tipc_socket_addr sk;
+	struct tipc_uaddr ua;
 
 	if (!msg_isdata(msg))
 		return false;
@@ -722,16 +725,16 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 	msg = buf_msg(skb);
 	if (msg_reroute_cnt(msg))
 		return false;
-	dnode = tipc_scope2node(net, msg_lookup_scope(msg));
-	dport = tipc_nametbl_lookup_anycast(net, msg_nametype(msg),
-					    msg_nameinst(msg), &dnode);
-	if (!dport)
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, scope,
+		   msg_nametype(msg), inst, inst);
+	sk.node = tipc_scope2node(net, scope);
+	if (!tipc_nametbl_lookup_anycast(net, &ua, &sk))
 		return false;
 	msg_incr_reroute_cnt(msg);
-	if (dnode != onode)
-		msg_set_prevnode(msg, onode);
-	msg_set_destnode(msg, dnode);
-	msg_set_destport(msg, dport);
+	if (sk.node != self)
+		msg_set_prevnode(msg, self);
+	msg_set_destnode(msg, sk.node);
+	msg_set_destport(msg, sk.ref);
 	*err = TIPC_OK;
 
 	return true;
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 22616a943e70..20beb04b2db0 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -546,66 +546,64 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 /**
  * tipc_nametbl_lookup_anycast - perform service instance to socket translation
  * @net: network namespace
- * @type: message type
- * @instance: message instance
- * @dnode: the search domain used during translation
- *
- * On entry, 'dnode' is the search domain used during the lookup
+ * @ua: service address to look up
+ * @sk: address to socket we want to find
  *
+ * On entry, a non-zero 'sk->node' indicates the node where we want lookup to be
+ * performed, which may not be this one.
  * On exit:
- * - if lookup is deferred to another node, leave 'dnode' unchanged and return 0
- * - if lookup is attempted and succeeds, set 'dnode' to the publishing node and
- *   return the published (non-zero) port number
- * - if lookup is attempted and fails, set 'dnode' to 0 and return 0
+ * - If lookup is deferred to another node, leave 'sk->node' unchanged and
+ *   return 'true'.
+ * - If lookup is successful, set the 'sk->node' and 'sk->ref' (== portid) which
+ *   represent the bound socket and return 'true'.
+ * - If lookup fails, return 'false'
  *
  * Note that for legacy users (node configured with Z.C.N address format) the
- * 'closest-first' lookup algorithm must be maintained, i.e., if dnode is 0
+ * 'closest-first' lookup algorithm must be maintained, i.e., if sk.node is 0
  * we must look in the local binding list first
  */
-u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
-				u32 instance, u32 *dnode)
+bool tipc_nametbl_lookup_anycast(struct net *net,
+				 struct tipc_uaddr *ua,
+				 struct tipc_socket_addr *sk)
 {
 	struct tipc_net *tn = tipc_net(net);
 	bool legacy = tn->legacy_addr_format;
 	u32 self = tipc_own_addr(net);
-	struct service_range *sr;
+	u32 inst = ua->sa.instance;
+	struct service_range *r;
 	struct tipc_service *sc;
-	struct list_head *list;
 	struct publication *p;
-	u32 port = 0;
-	u32 node = 0;
+	struct list_head *l;
+	bool res = false;
 
-	if (!tipc_in_scope(legacy, *dnode, self))
-		return 0;
+	if (!tipc_in_scope(legacy, sk->node, self))
+		return true;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sr.type);
 	if (unlikely(!sc))
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	service_range_foreach_match(sr, sc, instance, instance) {
+	service_range_foreach_match(r, sc, inst, inst) {
 		/* Select lookup algo: local, closest-first or round-robin */
-		if (*dnode == self) {
-			list = &sr->local_publ;
-			if (list_empty(list))
+		if (sk->node == self) {
+			l = &r->local_publ;
+			if (list_empty(l))
 				continue;
-			p = list_first_entry(list, struct publication,
-					     local_publ);
-			list_move_tail(&p->local_publ, &sr->local_publ);
-		} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
-			list = &sr->local_publ;
-			p = list_first_entry(list, struct publication,
-					     local_publ);
-			list_move_tail(&p->local_publ, &sr->local_publ);
+			p = list_first_entry(l, struct publication, local_publ);
+			list_move_tail(&p->local_publ, &r->local_publ);
+		} else if (legacy && !sk->node && !list_empty(&r->local_publ)) {
+			l = &r->local_publ;
+			p = list_first_entry(l, struct publication, local_publ);
+			list_move_tail(&p->local_publ, &r->local_publ);
 		} else {
-			list = &sr->all_publ;
-			p = list_first_entry(list, struct publication,
-					     all_publ);
-			list_move_tail(&p->all_publ, &sr->all_publ);
+			l = &r->all_publ;
+			p = list_first_entry(l, struct publication, all_publ);
+			list_move_tail(&p->all_publ, &r->all_publ);
 		}
-		port = p->sk.ref;
-		node = p->sk.node;
+		*sk = p->sk;
+		res = true;
 		/* Todo: as for legacy, pick the first matching range only, a
 		 * "true" round-robin will be performed as needed.
 		 */
@@ -615,8 +613,7 @@ u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
 
 exit:
 	rcu_read_unlock();
-	*dnode = node;
-	return port;
+	return res;
 }
 
 /* tipc_nametbl_lookup_group(): lookup destinaton(s) in a communication group
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 07a297f22135..9896205a5d66 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -110,9 +110,8 @@ struct name_table {
 };
 
 int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
-
-u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type, u32 instance,
-				u32 *node);
+bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
+				 struct tipc_socket_addr *sk);
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
 				       u32 upper, u32 scope, bool exact,
 				   struct list_head *dports);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index b80c82d3ab87..26e1ca6e4766 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1424,44 +1424,43 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	struct sock *sk = sock->sk;
 	struct net *net = sock_net(sk);
 	struct tipc_sock *tsk = tipc_sk(sk);
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
 	struct list_head *clinks = &tsk->cong_links;
 	bool syn = !tipc_sk_type_connectionless(sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
-	struct tipc_service_range *seq;
+	struct tipc_socket_addr skaddr;
 	struct sk_buff_head pkts;
-	u32 dport = 0, dnode = 0;
-	u32 type = 0, inst = 0;
-	int mtu, rc;
+	int atype, mtu, rc;
 
 	if (unlikely(dlen > TIPC_MAX_USER_MSG_SIZE))
 		return -EMSGSIZE;
 
-	if (likely(dest)) {
-		if (unlikely(m->msg_namelen < sizeof(*dest)))
-			return -EINVAL;
-		if (unlikely(dest->family != AF_TIPC))
+	if (ua) {
+		if (!tipc_uaddr_valid(ua, m->msg_namelen))
 			return -EINVAL;
+		 atype = ua->addrtype;
 	}
 
+	/* If socket belongs to a communication group follow other paths */
 	if (grp) {
-		if (!dest)
+		if (!ua)
 			return tipc_send_group_bcast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_SERVICE_ADDR)
+		if (atype == TIPC_SERVICE_ADDR)
 			return tipc_send_group_anycast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_SOCKET_ADDR)
+		if (atype == TIPC_SOCKET_ADDR)
 			return tipc_send_group_unicast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_ADDR_MCAST)
+		if (atype == TIPC_SERVICE_RANGE)
 			return tipc_send_group_mcast(sock, m, dlen, timeout);
 		return -EINVAL;
 	}
 
-	if (unlikely(!dest)) {
-		dest = &tsk->peer;
-		if (!syn && dest->family != AF_TIPC)
+	if (!ua) {
+		ua = (struct tipc_uaddr *)&tsk->peer;
+		if (!syn && ua->family != AF_TIPC)
 			return -EDESTADDRREQ;
+		 atype = ua->addrtype;
 	}
 
 	if (unlikely(syn)) {
@@ -1471,54 +1470,51 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 			return -EISCONN;
 		if (tsk->published)
 			return -EOPNOTSUPP;
-		if (dest->addrtype == TIPC_SERVICE_ADDR) {
-			tsk->conn_type = dest->addr.name.name.type;
-			tsk->conn_instance = dest->addr.name.name.instance;
+		if (atype == TIPC_SERVICE_ADDR) {
+			tsk->conn_type = ua->sa.type;
+			tsk->conn_instance = ua->sa.instance;
 		}
 		msg_set_syn(hdr, 1);
 	}
 
-	seq = &dest->addr.nameseq;
-	if (dest->addrtype == TIPC_ADDR_MCAST)
-		return tipc_sendmcast(sock, seq, m, dlen, timeout);
-
-	if (dest->addrtype == TIPC_SERVICE_ADDR) {
-		type = dest->addr.name.name.type;
-		inst = dest->addr.name.name.instance;
-		dnode = dest->addr.name.domain;
-		dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
-		if (unlikely(!dport && !dnode))
+	/* Determine destination */
+	if (atype == TIPC_SERVICE_RANGE) {
+		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
+	} else if (atype == TIPC_SERVICE_ADDR) {
+		skaddr.node = ua->lookup_node;
+		ua->scope = tipc_node2scope(skaddr.node);
+		if (!tipc_nametbl_lookup_anycast(net, ua, &skaddr))
 			return -EHOSTUNREACH;
-	} else if (dest->addrtype == TIPC_SOCKET_ADDR) {
-		dnode = dest->addr.id.node;
+	} else if (atype == TIPC_SOCKET_ADDR) {
+		skaddr = ua->sk;
 	} else {
 		return -EINVAL;
 	}
 
 	/* Block or return if destination link is congested */
 	rc = tipc_wait_for_cond(sock, &timeout,
-				!tipc_dest_find(clinks, dnode, 0));
+				!tipc_dest_find(clinks, skaddr.node, 0));
 	if (unlikely(rc))
 		return rc;
 
-	if (dest->addrtype == TIPC_SERVICE_ADDR) {
+	/* Finally build message header */
+	msg_set_destnode(hdr, skaddr.node);
+	msg_set_destport(hdr, skaddr.ref);
+	if (atype == TIPC_SERVICE_ADDR) {
 		msg_set_type(hdr, TIPC_NAMED_MSG);
 		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
-		msg_set_nametype(hdr, type);
-		msg_set_nameinst(hdr, inst);
-		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dport);
+		msg_set_nametype(hdr, ua->sa.type);
+		msg_set_nameinst(hdr, ua->sa.instance);
+		msg_set_lookup_scope(hdr, ua->scope);
 	} else { /* TIPC_SOCKET_ADDR */
 		msg_set_type(hdr, TIPC_DIRECT_MSG);
 		msg_set_lookup_scope(hdr, 0);
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dest->addr.id.ref);
 		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
 	}
 
+	/* Add message body */
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
+	mtu = tipc_node_get_mtu(net, skaddr.node, tsk->portid, true);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
@@ -1527,10 +1523,11 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		return -ENOMEM;
 	}
 
+	/* Send message */
 	trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, " ");
-	rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
+	rc = tipc_node_xmit(net, &pkts, skaddr.node, tsk->portid);
 	if (unlikely(rc == -ELINKCONG)) {
-		tipc_dest_push(clinks, dnode, 0);
+		tipc_dest_push(clinks, skaddr.node, 0);
 		tsk->cong_link_cnt++;
 		rc = 0;
 	}
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
