Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE252AFBED
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Nov 2020 02:27:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kd1OP-0003yV-Mo; Thu, 12 Nov 2020 01:27:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kd1OJ-0003xc-0p
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3u7KYH7X6gab+XDgjBwvqSgNMXsqTlrb4X2cnQThq6w=; b=bd9vZwwKlupAliEvPJYjhkK6Mz
 ALv/OTtq2MDpXjxrluMqQ1rzeHTOM4tPvlt5bRFjoLaRDiYmHBdRBMkegfpDBqlYk/BE8K8RkSLPr
 AuGunEJegNWmLHxMitK0MR0NxR9BOX9knpZmYq2DU3iXFe7LbxcfJpAChatw8R1gv0LY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3u7KYH7X6gab+XDgjBwvqSgNMXsqTlrb4X2cnQThq6w=; b=jqNHaRLtHsD9BY/518X9YD6YuD
 fj188OQRs6Ch/MHhUuibbsJqkf0mK8aI4/6adz9pUzPO5QkHHdhz5io91vwI1kMlwvVidFyct0/Pj
 jXyzb1BkcShucrY098x/NcNE3OmBRAN1kKhZ3RMqGqifc+PuWaA3Fr5WRVDTsftRq1OM=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kd1O3-00HXl6-Ve
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605144410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3u7KYH7X6gab+XDgjBwvqSgNMXsqTlrb4X2cnQThq6w=;
 b=TGErcvL/O5PW2fWL9mybX5hMnYIEYUefki5VdeBhYbx/Lwqj23WT2yod4gqsdeTM7LgWRF
 05UzVKDBbBB566377r65XKYWUR+6hWqB5CActmvVx5UhSlHR0IY0LruP1AesyDugcUEJ2w
 qCeAiOYf3iP/utWLWAkPsORKeadhXBc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-AZLnuPB4NC-5IW5ETVfeoQ-1; Wed, 11 Nov 2020 20:26:47 -0500
X-MC-Unique: AZLnuPB4NC-5IW5ETVfeoQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 467D78049CA;
 Thu, 12 Nov 2020 01:26:46 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-40.rdu2.redhat.com [10.10.112.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1E1E35C62B;
 Thu, 12 Nov 2020 01:26:45 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 11 Nov 2020 20:26:40 -0500
Message-Id: <20201112012640.525346-4-jmaloy@redhat.com>
In-Reply-To: <20201112012640.525346-1-jmaloy@redhat.com>
References: <20201112012640.525346-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kd1O3-00HXl6-Ve
Subject: [tipc-discussion] [net-next 3/3] tipc: update address terminology
 in code
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

We update the terminology in the code so that deprecated structure
names and macros are replaced with those currently recommended in
the user API.

struct tipc_portid   -> struct tipc_socket_addr
struct tipc_name     -> struct tipc_service_addr
struct tipc_name_seq -> struct tipc_service_range

TIPC_ADDR_ID       -> TIPC_SOCKET_ADDR
TIPC_ADDR_NAME     -> TIPC_SERVICE_ADDR
TIPC_ADDR_NAMESEQ  -> TIPC_SERVICE_RANGE
TIPC_CFG_SRV       -> TIPC_NODE_STATE

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/group.c      |  3 ++-
 net/tipc/group.h      |  3 ++-
 net/tipc/name_table.c | 11 ++++++-----
 net/tipc/net.c        |  2 +-
 net/tipc/socket.c     | 44 +++++++++++++++++++++----------------------
 net/tipc/subscr.c     |  5 +++--
 net/tipc/subscr.h     |  5 +++--
 net/tipc/topsrv.c     |  4 ++--
 8 files changed, 41 insertions(+), 36 deletions(-)

diff --git a/net/tipc/group.c b/net/tipc/group.c
index b1fcd2ad5ecf..3e137d8c9d2f 100644
--- a/net/tipc/group.c
+++ b/net/tipc/group.c
@@ -2,6 +2,7 @@
  * net/tipc/group.c: TIPC group messaging code
  *
  * Copyright (c) 2017, Ericsson AB
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -359,7 +360,7 @@ struct tipc_nlist *tipc_group_dests(struct tipc_group *grp)
 	return &grp->dests;
 }
 
-void tipc_group_self(struct tipc_group *grp, struct tipc_name_seq *seq,
+void tipc_group_self(struct tipc_group *grp, struct tipc_service_range *seq,
 		     int *scope)
 {
 	seq->type = grp->type;
diff --git a/net/tipc/group.h b/net/tipc/group.h
index 76b4e5a7b39d..ea4c3be64c78 100644
--- a/net/tipc/group.h
+++ b/net/tipc/group.h
@@ -2,6 +2,7 @@
  * net/tipc/group.h: Include file for TIPC group unicast/multicast functions
  *
  * Copyright (c) 2017, Ericsson AB
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -50,7 +51,7 @@ void tipc_group_delete(struct net *net, struct tipc_group *grp);
 void tipc_group_add_member(struct tipc_group *grp, u32 node,
 			   u32 port, u32 instance);
 struct tipc_nlist *tipc_group_dests(struct tipc_group *grp);
-void tipc_group_self(struct tipc_group *grp, struct tipc_name_seq *seq,
+void tipc_group_self(struct tipc_group *grp, struct tipc_service_range *seq,
 		     int *scope);
 u32 tipc_group_exclude(struct tipc_group *grp);
 void tipc_group_filter_msg(struct tipc_group *grp,
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 2ac33d32edc2..e1233d6d5163 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2014-2018, Ericsson AB
  * Copyright (c) 2004-2008, 2010-2014, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -403,12 +404,12 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	struct publication *p, *first, *tmp;
 	struct list_head publ_list;
 	struct service_range *sr;
-	struct tipc_name_seq ns;
+	struct tipc_service_range r;
 	u32 filter;
 
-	ns.type = tipc_sub_read(sb, seq.type);
-	ns.lower = tipc_sub_read(sb, seq.lower);
-	ns.upper = tipc_sub_read(sb, seq.upper);
+	r.type = tipc_sub_read(sb, seq.type);
+	r.lower = tipc_sub_read(sb, seq.lower);
+	r.upper = tipc_sub_read(sb, seq.upper);
 	filter = tipc_sub_read(sb, filter);
 
 	tipc_sub_get(sub);
@@ -418,7 +419,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
 		return;
 
 	INIT_LIST_HEAD(&publ_list);
-	service_range_foreach_match(sr, service, ns.lower, ns.upper) {
+	service_range_foreach_match(sr, service, r.lower, r.upper) {
 		first = NULL;
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			if (filter & TIPC_SUB_PORTS)
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 0bb2323201da..a129f661bee3 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -132,7 +132,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 	tipc_named_reinit(net);
 	tipc_sk_reinit(net);
 	tipc_mon_reinit_self(net);
-	tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
+	tipc_nametbl_publish(net, TIPC_NODE_STATE, addr, addr,
 			     TIPC_CLUSTER_SCOPE, 0, addr);
 }
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 2b633463f40d..75e81fc8e9a8 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -139,9 +139,9 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 		       bool kern);
 static void tipc_sk_timeout(struct timer_list *t);
 static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
-			   struct tipc_name_seq const *seq);
+			   struct tipc_service_range const *seq);
 static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_name_seq const *seq);
+			    struct tipc_service_range const *seq);
 static int tipc_sk_leave(struct tipc_sock *tsk);
 static struct tipc_sock *tipc_sk_lookup(struct net *net, u32 portid);
 static int tipc_sk_insert(struct tipc_sock *tsk);
@@ -667,7 +667,7 @@ static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 	if (unlikely(!alen))
 		return tipc_sk_withdraw(tsk, 0, NULL);
 
-	if (addr->addrtype == TIPC_ADDR_NAME)
+	if (addr->addrtype == TIPC_SERVICE_ADDR)
 		addr->addr.nameseq.upper = addr->addr.nameseq.lower;
 
 	if (tsk->group)
@@ -740,7 +740,7 @@ static int tipc_getname(struct socket *sock, struct sockaddr *uaddr,
 		addr->addr.id.node = tipc_own_addr(sock_net(sk));
 	}
 
-	addr->addrtype = TIPC_ADDR_ID;
+	addr->addrtype = TIPC_SOCKET_ADDR;
 	addr->family = AF_TIPC;
 	addr->scope = 0;
 	addr->addr.name.domain = 0;
@@ -818,7 +818,7 @@ static __poll_t tipc_poll(struct file *file, struct socket *sock,
  * Called from function tipc_sendmsg(), which has done all sanity checks
  * Returns the number of bytes sent on success, or errno
  */
-static int tipc_sendmcast(struct  socket *sock, struct tipc_name_seq *seq,
+static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 			  struct msghdr *msg, size_t dlen, long timeout)
 {
 	struct sock *sk = sock->sk;
@@ -1403,7 +1403,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	bool syn = !tipc_sk_type_connectionless(sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
-	struct tipc_name_seq *seq;
+	struct tipc_service_range *seq;
 	struct sk_buff_head pkts;
 	u32 dport = 0, dnode = 0;
 	u32 type = 0, inst = 0;
@@ -1422,9 +1422,9 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	if (grp) {
 		if (!dest)
 			return tipc_send_group_bcast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_ADDR_NAME)
+		if (dest->addrtype == TIPC_SERVICE_ADDR)
 			return tipc_send_group_anycast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_ADDR_ID)
+		if (dest->addrtype == TIPC_SOCKET_ADDR)
 			return tipc_send_group_unicast(sock, m, dlen, timeout);
 		if (dest->addrtype == TIPC_ADDR_MCAST)
 			return tipc_send_group_mcast(sock, m, dlen, timeout);
@@ -1444,7 +1444,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 			return -EISCONN;
 		if (tsk->published)
 			return -EOPNOTSUPP;
-		if (dest->addrtype == TIPC_ADDR_NAME) {
+		if (dest->addrtype == TIPC_SERVICE_ADDR) {
 			tsk->conn_type = dest->addr.name.name.type;
 			tsk->conn_instance = dest->addr.name.name.instance;
 		}
@@ -1455,14 +1455,14 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	if (dest->addrtype == TIPC_ADDR_MCAST)
 		return tipc_sendmcast(sock, seq, m, dlen, timeout);
 
-	if (dest->addrtype == TIPC_ADDR_NAME) {
+	if (dest->addrtype == TIPC_SERVICE_ADDR) {
 		type = dest->addr.name.name.type;
 		inst = dest->addr.name.name.instance;
 		dnode = dest->addr.name.domain;
 		dport = tipc_nametbl_translate(net, type, inst, &dnode);
 		if (unlikely(!dport && !dnode))
 			return -EHOSTUNREACH;
-	} else if (dest->addrtype == TIPC_ADDR_ID) {
+	} else if (dest->addrtype == TIPC_SOCKET_ADDR) {
 		dnode = dest->addr.id.node;
 	} else {
 		return -EINVAL;
@@ -1474,7 +1474,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	if (unlikely(rc))
 		return rc;
 
-	if (dest->addrtype == TIPC_ADDR_NAME) {
+	if (dest->addrtype == TIPC_SERVICE_ADDR) {
 		msg_set_type(hdr, TIPC_NAMED_MSG);
 		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
 		msg_set_nametype(hdr, type);
@@ -1482,7 +1482,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
 		msg_set_destnode(hdr, dnode);
 		msg_set_destport(hdr, dport);
-	} else { /* TIPC_ADDR_ID */
+	} else { /* TIPC_SOCKET_ADDR */
 		msg_set_type(hdr, TIPC_DIRECT_MSG);
 		msg_set_lookup_scope(hdr, 0);
 		msg_set_destnode(hdr, dnode);
@@ -1687,7 +1687,7 @@ static void tipc_sk_set_orig_addr(struct msghdr *m, struct sk_buff *skb)
 		return;
 
 	srcaddr->sock.family = AF_TIPC;
-	srcaddr->sock.addrtype = TIPC_ADDR_ID;
+	srcaddr->sock.addrtype = TIPC_SOCKET_ADDR;
 	srcaddr->sock.scope = 0;
 	srcaddr->sock.addr.id.ref = msg_origport(hdr);
 	srcaddr->sock.addr.id.node = msg_orignode(hdr);
@@ -1699,7 +1699,7 @@ static void tipc_sk_set_orig_addr(struct msghdr *m, struct sk_buff *skb)
 
 	/* Group message users may also want to know sending member's id */
 	srcaddr->member.family = AF_TIPC;
-	srcaddr->member.addrtype = TIPC_ADDR_NAME;
+	srcaddr->member.addrtype = TIPC_SERVICE_ADDR;
 	srcaddr->member.scope = 0;
 	srcaddr->member.addr.name.name.type = msg_nametype(hdr);
 	srcaddr->member.addr.name.name.instance = TIPC_SKB_CB(skb)->orig_member;
@@ -2867,7 +2867,7 @@ static void tipc_sk_timeout(struct timer_list *t)
 }
 
 static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
-			   struct tipc_name_seq const *seq)
+			   struct tipc_service_range const *seq)
 {
 	struct sock *sk = &tsk->sk;
 	struct net *net = sock_net(sk);
@@ -2895,7 +2895,7 @@ static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
 }
 
 static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_name_seq const *seq)
+			    struct tipc_service_range const *seq)
 {
 	struct net *net = sock_net(&tsk->sk);
 	struct publication *publ;
@@ -3042,7 +3042,7 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	struct net *net = sock_net(&tsk->sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
-	struct tipc_name_seq seq;
+	struct tipc_service_range seq;
 	int rc;
 
 	if (mreq->type < TIPC_RESERVED_TYPES)
@@ -3079,7 +3079,7 @@ static int tipc_sk_leave(struct tipc_sock *tsk)
 {
 	struct net *net = sock_net(&tsk->sk);
 	struct tipc_group *grp = tsk->group;
-	struct tipc_name_seq seq;
+	struct tipc_service_range seq;
 	int scope;
 
 	if (!grp)
@@ -3203,7 +3203,7 @@ static int tipc_getsockopt(struct socket *sock, int lvl, int opt,
 {
 	struct sock *sk = sock->sk;
 	struct tipc_sock *tsk = tipc_sk(sk);
-	struct tipc_name_seq seq;
+	struct tipc_service_range seq;
 	int len, scope;
 	u32 value;
 	int res;
@@ -3304,12 +3304,12 @@ static int tipc_socketpair(struct socket *sock1, struct socket *sock2)
 	u32 onode = tipc_own_addr(sock_net(sock1->sk));
 
 	tsk1->peer.family = AF_TIPC;
-	tsk1->peer.addrtype = TIPC_ADDR_ID;
+	tsk1->peer.addrtype = TIPC_SOCKET_ADDR;
 	tsk1->peer.scope = TIPC_NODE_SCOPE;
 	tsk1->peer.addr.id.ref = tsk2->portid;
 	tsk1->peer.addr.id.node = onode;
 	tsk2->peer.family = AF_TIPC;
-	tsk2->peer.addrtype = TIPC_ADDR_ID;
+	tsk2->peer.addrtype = TIPC_SOCKET_ADDR;
 	tsk2->peer.scope = TIPC_NODE_SCOPE;
 	tsk2->peer.addr.id.ref = tsk1->portid;
 	tsk2->peer.addr.id.node = onode;
diff --git a/net/tipc/subscr.c b/net/tipc/subscr.c
index f340e53da625..5edfb2d522b9 100644
--- a/net/tipc/subscr.c
+++ b/net/tipc/subscr.c
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2017, Ericsson AB
  * Copyright (c) 2005-2007, 2010-2013, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -60,7 +61,7 @@ static void tipc_sub_send_event(struct tipc_subscription *sub,
  *
  * Returns 1 if there is overlap, otherwise 0.
  */
-int tipc_sub_check_overlap(struct tipc_name_seq *seq, u32 found_lower,
+int tipc_sub_check_overlap(struct tipc_service_range *seq, u32 found_lower,
 			   u32 found_upper)
 {
 	if (found_lower < seq->lower)
@@ -79,7 +80,7 @@ void tipc_sub_report_overlap(struct tipc_subscription *sub,
 {
 	struct tipc_subscr *s = &sub->evt.s;
 	u32 filter = tipc_sub_read(s, filter);
-	struct tipc_name_seq seq;
+	struct tipc_service_range seq;
 
 	seq.type = tipc_sub_read(s, seq.type);
 	seq.lower = tipc_sub_read(s, seq.lower);
diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
index 6ebbec1bedd1..a083b1b0c1d2 100644
--- a/net/tipc/subscr.h
+++ b/net/tipc/subscr.h
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2003-2017, Ericsson AB
  * Copyright (c) 2005-2007, 2012-2013, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -71,8 +72,8 @@ struct tipc_subscription *tipc_sub_subscribe(struct net *net,
 					     int conid);
 void tipc_sub_unsubscribe(struct tipc_subscription *sub);
 
-int tipc_sub_check_overlap(struct tipc_name_seq *seq, u32 found_lower,
-			   u32 found_upper);
+int tipc_sub_check_overlap(struct tipc_service_range *seq,
+			   u32 found_lower, u32 found_upper);
 void tipc_sub_report_overlap(struct tipc_subscription *sub,
 			     u32 found_lower, u32 found_upper,
 			     u32 event, u32 port, u32 node,
diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index cec029349662..69a994871dd7 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -519,8 +519,8 @@ static int tipc_topsrv_create_listener(struct tipc_topsrv *srv)
 		goto err;
 
 	saddr.family	                = AF_TIPC;
-	saddr.addrtype		        = TIPC_ADDR_NAMESEQ;
-	saddr.addr.nameseq.type         = TIPC_TOP_SRV;
+	saddr.addrtype		        = TIPC_SERVICE_RANGE;
+	saddr.addr.nameseq.type	= TIPC_TOP_SRV;
 	saddr.addr.nameseq.lower	= TIPC_TOP_SRV;
 	saddr.addr.nameseq.upper	= TIPC_TOP_SRV;
 	saddr.scope			= TIPC_NODE_SCOPE;
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
