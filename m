Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3DB2D3266
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4k-0003BC-4m; Tue, 08 Dec 2020 18:51:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4h-0003Ap-Fd
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qAIWRVG3+IgTjIggBpSecAAZwrZkTm4sf9Ms0mMZWYY=; b=EbZGuOdn9Iqjo1VgpcoNjEtgxK
 NW2LAot/mIR7JifZfhJWI3lobV2eQgXl8ZEeyinSLmpaG7Gq5j92BISU62dim6N7FqUNFehtUJVBw
 1vz4EhhyP5oBiiI8oMv3AY85p2Pu26uL0UBs4Yeefua5tqd68b8LRmH8mznHruVf7FZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qAIWRVG3+IgTjIggBpSecAAZwrZkTm4sf9Ms0mMZWYY=; b=arFF4PfdGMNXYeFdsWY6Cprf1t
 MMUhTOpH30WxaosxTyXiXGmR61rw3ELvSKFeJ/qVO4v4vDMooDkaJDKiVlLJ8FR6I5/q5UhHTjJKt
 tSfv+41/QzaoyGoHX662hV6HehgGUxvbzsLTbNIUw1xkdnIUPET6R4n0dod20pfhPW5Q=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4c-006uym-Kv
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qAIWRVG3+IgTjIggBpSecAAZwrZkTm4sf9Ms0mMZWYY=;
 b=SutuOZRTiK7xSYKPBDUW6UVbyy1HRx+UoN8xcZD77R6aOu7q92+HYVzRK1XVBoSupKTb68
 ZvLEeg+aZ3ywgKfrLj9k5jpA/J6GQBXnFY/c3T5BDGxOlEoPHZBCUmMvKgxI0ELU/sz3Df
 yevJTH7llgnav6vJPDgF0Ip5jY4Ml/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-VsGaHAnRP5SflPlmbgDLcg-1; Tue, 08 Dec 2020 13:50:44 -0500
X-MC-Unique: VsGaHAnRP5SflPlmbgDLcg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 957E2A0C2E;
 Tue,  8 Dec 2020 18:50:36 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A77F60877;
 Tue,  8 Dec 2020 18:50:35 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:06 -0500
Message-Id: <20201208185012.265508-11-jmaloy@redhat.com>
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
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4c-006uym-Kv
Subject: [tipc-discussion] [net-next 10/16] tipc: simplify signature of
 tipc_nametbl_lookup_mcast_nodes()
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

We follow up the preceding commits by reducing the signature of
the function tipc_nametbl_lookup_mcast_nodes().

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c |  8 ++++----
 net/tipc/name_table.h |  4 ++--
 net/tipc/socket.c     | 16 +++++++---------
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ea4356dfb47d..23af099370fb 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -701,20 +701,20 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
  * Used on nodes which are sending out a multicast/broadcast message
  * Returns a list of nodes, including own node if applicable
  */
-void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
-				     u32 upper, struct tipc_nlist *nodes)
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
+				     struct tipc_nlist *nodes)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sr.type);
 	if (!sc)
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	service_range_foreach_match(sr, sc, lower, upper) {
+	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			tipc_nlist_add(nodes, p->sk.node);
 		}
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 368a76f73892..259ba514193e 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -115,8 +115,8 @@ bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
 				 struct tipc_socket_addr *sk);
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
 				       bool exact, struct list_head *dports);
-void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
-				     u32 upper, struct tipc_nlist *nodes);
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
+				     struct tipc_nlist *nodes);
 bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
 			       u32 domain, struct list_head *dsts,
 			       int *dstcnt, u32 exclude,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 68d457c41c89..7d4807d0e2d1 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -840,7 +840,7 @@ static __poll_t tipc_poll(struct file *file, struct socket *sock,
  * Called from function tipc_sendmsg(), which has done all sanity checks
  * Return: the number of bytes sent on success, or errno
  */
-static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
+static int tipc_sendmcast(struct  socket *sock, struct tipc_uaddr *ua,
 			  struct msghdr *msg, size_t dlen, long timeout)
 {
 	struct sock *sk = sock->sk;
@@ -848,7 +848,6 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct net *net = sock_net(sk);
 	int mtu = tipc_bcast_get_mtu(net);
-	struct tipc_mc_method *method = &tsk->mc_method;
 	struct sk_buff_head pkts;
 	struct tipc_nlist dsts;
 	int rc;
@@ -863,8 +862,7 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 
 	/* Lookup destination nodes */
 	tipc_nlist_init(&dsts, tipc_own_addr(net));
-	tipc_nametbl_lookup_mcast_nodes(net, seq->type, seq->lower,
-					seq->upper, &dsts);
+	tipc_nametbl_lookup_mcast_nodes(net, ua, &dsts);
 	if (!dsts.local && !dsts.remote)
 		return -EHOSTUNREACH;
 
@@ -874,9 +872,9 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	msg_set_lookup_scope(hdr, TIPC_CLUSTER_SCOPE);
 	msg_set_destport(hdr, 0);
 	msg_set_destnode(hdr, 0);
-	msg_set_nametype(hdr, seq->type);
-	msg_set_namelower(hdr, seq->lower);
-	msg_set_nameupper(hdr, seq->upper);
+	msg_set_nametype(hdr, ua->sr.type);
+	msg_set_namelower(hdr, ua->sr.lower);
+	msg_set_nameupper(hdr, ua->sr.upper);
 
 	/* Build message as chain of buffers */
 	__skb_queue_head_init(&pkts);
@@ -886,7 +884,7 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	if (unlikely(rc == dlen)) {
 		trace_tipc_sk_sendmcast(sk, skb_peek(&pkts),
 					TIPC_DUMP_SK_SNDQ, " ");
-		rc = tipc_mcast_xmit(net, &pkts, method, &dsts,
+		rc = tipc_mcast_xmit(net, &pkts, &tsk->mc_method, &dsts,
 				     &tsk->cong_link_cnt);
 	}
 
@@ -1479,7 +1477,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 
 	/* Determine destination */
 	if (atype == TIPC_SERVICE_RANGE) {
-		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
+		return tipc_sendmcast(sock, ua, m, dlen, timeout);
 	} else if (atype == TIPC_SERVICE_ADDR) {
 		skaddr.node = ua->lookup_node;
 		ua->scope = skaddr.node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
