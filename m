Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5062B35766B
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Apr 2021 22:59:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lUFGw-0000c9-Ml; Wed, 07 Apr 2021 20:59:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lUFGv-0000bx-KW
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZTftILsb7nv6VzyzNg48vOU3TYC/3v+8f8ObPG2SZuo=; b=fDbi8ZyXHRO4Dx9pvrp1A6AzgV
 AU2ZqWESpNksweCd9plToMuXbFnMXoN0GKqQBdtQ0Hs5m3G82yqpkdjeenaP1y+BFgUK87JWpGiep
 Wc6Q3C3gaGB/LpbKpvEyHK8p0TNeGhx6WCJRPsM5Z8HmRKZt+t4MPucxs25ukHyxoTsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZTftILsb7nv6VzyzNg48vOU3TYC/3v+8f8ObPG2SZuo=; b=cn3xIYJ9nU6y+T1ItjNLuM4KZc
 akWmxt0PPfBVQo/EheFItCPz9aer8csjRWaHVoEbL0yt0j7m9aPCv+mlrj1Shh+StXoDNZdOGcr9g
 2e25sICPtsf+CM5uRohipPXv0HhqMQMksySQnU4wFUJrAweWfHNQkUgFEQePCMzWieDo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUFGq-000oD5-S4
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617829163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZTftILsb7nv6VzyzNg48vOU3TYC/3v+8f8ObPG2SZuo=;
 b=YXqZDpM0NQftwVnB4lm+Hc0z5wCYli97Xf4GMMooBO6llQzASRB/P1jvyMEmOVCZJlpGjO
 6xA+fuufv6upqIix0e2a013yHxrihJjZ/tM3eg1plxofbGqUB4a5Lt9zosthD3V4LxwV+S
 P4xlkAzx14Fx5S+QJQfsB8oBa/7/B5s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-_Bc9nqkGOT6to71CNQLllQ-1; Wed, 07 Apr 2021 16:58:51 -0400
X-MC-Unique: _Bc9nqkGOT6to71CNQLllQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B20C519251A0;
 Wed,  7 Apr 2021 20:58:49 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DDFAF5D9DC;
 Wed,  7 Apr 2021 20:58:41 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed,  7 Apr 2021 16:58:34 -0400
Message-Id: <20210407205836.3187340-2-jmaloy@redhat.com>
In-Reply-To: <20210407205836.3187340-1-jmaloy@redhat.com>
References: <20210407205836.3187340-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
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
X-Headers-End: 1lUFGq-000oD5-S4
Subject: [tipc-discussion] [net-next v2 1/3] tipc: eliminate redundant
 fields in struct tipc_sock
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
Cc: lxin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We eliminate the redundant fields conn_type and conn_instance in
struct tipc_sock. On the connecting side, this information is already
present in the unused (after the connection is established) part of
the pre-allocated header, and on the accepting side, we put the info
there when the new socket is created.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 53 ++++++++++++++++++++++++-----------------------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index f21162aa0cf7..12a97755bc80 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -73,9 +73,6 @@ struct sockaddr_pair {
 /**
  * struct tipc_sock - TIPC socket structure
  * @sk: socket - interacts with 'port' and with user via the socket API
- * @conn_type: TIPC type used when connection was established
- * @conn_instance: TIPC instance used when connection was established
- * @published: non-zero if port has one or more associated names
  * @max_pkt: maximum packet size "hint" used when building messages sent by port
  * @maxnagle: maximum size of msg which can be subject to nagle
  * @portid: unique port identity in TIPC socket hash table
@@ -106,11 +103,11 @@ struct sockaddr_pair {
  * @expect_ack: whether this TIPC socket is expecting an ack
  * @nodelay: setsockopt() TIPC_NODELAY setting
  * @group_is_open: TIPC socket group is fully open (FIXME)
+ * @published: true if port has one or more associated names
+ * @conn_addrtype: address type used when establishing connection
  */
 struct tipc_sock {
 	struct sock sk;
-	u32 conn_type;
-	u32 conn_instance;
 	u32 max_pkt;
 	u32 maxnagle;
 	u32 portid;
@@ -141,6 +138,7 @@ struct tipc_sock {
 	bool nodelay;
 	bool group_is_open;
 	bool published;
+	u8 conn_addrtype;
 };
 
 static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb);
@@ -1460,10 +1458,8 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 			return -EISCONN;
 		if (tsk->published)
 			return -EOPNOTSUPP;
-		if (atype == TIPC_SERVICE_ADDR) {
-			tsk->conn_type = ua->sa.type;
-			tsk->conn_instance = ua->sa.instance;
-		}
+		if (atype == TIPC_SERVICE_ADDR)
+			tsk->conn_addrtype = atype;
 		msg_set_syn(hdr, 1);
 	}
 
@@ -1780,10 +1776,10 @@ static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
 		anc_data[2] = msg_nameupper(msg);
 		break;
 	case TIPC_CONN_MSG:
-		has_name = (tsk->conn_type != 0);
-		anc_data[0] = tsk->conn_type;
-		anc_data[1] = tsk->conn_instance;
-		anc_data[2] = tsk->conn_instance;
+		has_name = !!tsk->conn_addrtype;
+		anc_data[0] = msg_nametype(&tsk->phdr);
+		anc_data[1] = msg_nameinst(&tsk->phdr);
+		anc_data[2] = anc_data[1];
 		break;
 	default:
 		has_name = 0;
@@ -2747,8 +2743,9 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 
 	tsk_set_importance(new_sk, msg_importance(msg));
 	if (msg_named(msg)) {
-		new_tsock->conn_type = msg_nametype(msg);
-		new_tsock->conn_instance = msg_nameinst(msg);
+		new_tsock->conn_addrtype = TIPC_SERVICE_ADDR;
+		msg_set_nametype(&new_tsock->phdr, msg_nametype(msg));
+		msg_set_nameinst(&new_tsock->phdr, msg_nameinst(msg));
 	}
 
 	/*
@@ -3452,13 +3449,14 @@ void tipc_socket_stop(void)
 /* Caller should hold socket lock for the passed tipc socket. */
 static int __tipc_nl_add_sk_con(struct sk_buff *skb, struct tipc_sock *tsk)
 {
-	u32 peer_node;
-	u32 peer_port;
+	u32 peer_node, peer_port;
+	u32 conn_type, conn_instance;
 	struct nlattr *nest;
 
 	peer_node = tsk_peer_node(tsk);
 	peer_port = tsk_peer_port(tsk);
-
+	conn_type = msg_nametype(&tsk->phdr);
+	conn_instance = msg_nameinst(&tsk->phdr);
 	nest = nla_nest_start_noflag(skb, TIPC_NLA_SOCK_CON);
 	if (!nest)
 		return -EMSGSIZE;
@@ -3468,12 +3466,12 @@ static int __tipc_nl_add_sk_con(struct sk_buff *skb, struct tipc_sock *tsk)
 	if (nla_put_u32(skb, TIPC_NLA_CON_SOCK, peer_port))
 		goto msg_full;
 
-	if (tsk->conn_type != 0) {
+	if (tsk->conn_addrtype != 0) {
 		if (nla_put_flag(skb, TIPC_NLA_CON_FLAG))
 			goto msg_full;
-		if (nla_put_u32(skb, TIPC_NLA_CON_TYPE, tsk->conn_type))
+		if (nla_put_u32(skb, TIPC_NLA_CON_TYPE, conn_type))
 			goto msg_full;
-		if (nla_put_u32(skb, TIPC_NLA_CON_INST, tsk->conn_instance))
+		if (nla_put_u32(skb, TIPC_NLA_CON_INST, conn_instance))
 			goto msg_full;
 	}
 	nla_nest_end(skb, nest);
@@ -3863,9 +3861,9 @@ bool tipc_sk_filtering(struct sock *sk)
 	}
 
 	if (!tipc_sk_type_connectionless(sk)) {
-		type = tsk->conn_type;
-		lower = tsk->conn_instance;
-		upper = tsk->conn_instance;
+		type = msg_nametype(&tsk->phdr);
+		lower = msg_nameinst(&tsk->phdr);
+		upper = lower;
 	}
 
 	if ((_type && _type != type) || (_lower && _lower != lower) ||
@@ -3930,6 +3928,7 @@ int tipc_sk_dump(struct sock *sk, u16 dqueues, char *buf)
 {
 	int i = 0;
 	size_t sz = (dqueues) ? SK_LMAX : SK_LMIN;
+	u32 conn_type, conn_instance;
 	struct tipc_sock *tsk;
 	struct publication *p;
 	bool tsk_connected;
@@ -3950,8 +3949,10 @@ int tipc_sk_dump(struct sock *sk, u16 dqueues, char *buf)
 	if (tsk_connected) {
 		i += scnprintf(buf + i, sz - i, " %x", tsk_peer_node(tsk));
 		i += scnprintf(buf + i, sz - i, " %u", tsk_peer_port(tsk));
-		i += scnprintf(buf + i, sz - i, " %u", tsk->conn_type);
-		i += scnprintf(buf + i, sz - i, " %u", tsk->conn_instance);
+		conn_type = msg_nametype(&tsk->phdr);
+		conn_instance = msg_nameinst(&tsk->phdr);
+		i += scnprintf(buf + i, sz - i, " %u", conn_type);
+		i += scnprintf(buf + i, sz - i, " %u", conn_instance);
 	}
 	i += scnprintf(buf + i, sz - i, " | %u", tsk->published);
 	if (tsk->published) {
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
