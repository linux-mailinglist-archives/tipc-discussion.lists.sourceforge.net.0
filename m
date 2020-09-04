Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5398225E180
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Sep 2020 20:33:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kEGWQ-0003Vu-73; Fri, 04 Sep 2020 18:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kEGWO-0003Ve-PO
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 18:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6RuncgFlR+iTrJGloE346TaDRVrwHOPF8z1TinPdlQ0=; b=F2JjDvCeoicG7o9joNbcTjr1Eo
 Sol4qgRrUYFzi8E2VxZ3NJ/s3XWthiMtYQF54xKgoD0B7ErTuHSBw5MvNyBjl7hQ6AhJjVlhy5awa
 sMYCsEp+8dXU95XoJVaVekkn075XR+mdtzdnoHRzcj4bFNx8xoEdEwU3ncjzHhwjzXQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6RuncgFlR+iTrJGloE346TaDRVrwHOPF8z1TinPdlQ0=; b=J
 s9zTmUCz0NKux5rkCd+bqCYa5t+usSImBSGzze57ZpbqbCzLqRj2Biu519rxyXk/OQGjNEMI30fZL
 JZIQJPPqcvuIjadh/WQr6So5pjTZPAPR+gX9fj6+x443LoSmd+S/IAofbJh8SFkR/rI1caZM2+nr0
 3faaW2lGzV2c1CLk=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kEGW6-00CT0w-8u
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 18:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599244360;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=6RuncgFlR+iTrJGloE346TaDRVrwHOPF8z1TinPdlQ0=;
 b=R4XkJD50yGVnuXXeP+dKvdLNE73d6lCuzpo8mKyg9G0w2RzSTG5Pae6gXc5rbZEVczUkks
 yuVBVYGGW5HaWqQXKmtGjmLVHK3j4nS89D4ezXKANCjvp1lCxuLLYFo3U/UTu2vc/7SAtO
 sd/2weCarN7aWa01SVv6RjCanoc4HsE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-jzCyQBAWPEWRAZM7CQWP7A-1; Fri, 04 Sep 2020 14:32:36 -0400
X-MC-Unique: jzCyQBAWPEWRAZM7CQWP7A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07014801ABB;
 Fri,  4 Sep 2020 18:32:35 +0000 (UTC)
Received: from f31.redhat.com (ovpn-118-242.rdu2.redhat.com [10.10.118.242])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3B24D10023A7;
 Fri,  4 Sep 2020 18:32:32 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Fri,  4 Sep 2020 14:32:31 -0400
Message-Id: <20200904183231.156384-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kEGW6-00CT0w-8u
Subject: [tipc-discussion] [RFC PATCH v2] tipc: adding unified 128 bit
 address struct
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

The existing 32-bit based address types in TIPC have a value space
that is perceived as too limited in some environments. It would
be more attractive in a modern user environment such as Kubernetes
if it could provide a larger address range.

Advantages:
- Users could directly use UUIDs, strings or other values as service
  instances types and instances.
- No more risk of collisions between randomly selected service types

The effect on the TIPC implementation and protocol would be significant,
but this is still worth considering.
---
 include/uapi/linux/tipc.h | 56 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 6 deletions(-)

diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
index add01db1daef..c0c46742ffbd 100644
--- a/include/uapi/linux/tipc.h
+++ b/include/uapi/linux/tipc.h
@@ -42,9 +42,22 @@
 #include <linux/sockios.h>
 
 /*
- * TIPC addressing primitives
+ * Unified address type
+ * node: destination node id or binding scope. Zero if whole cluster.
+ * type: service type. Must be unique for service.
+ * instance: service instance. Can be bound to by multiple sockets.
+ * range: binding, subscription or multicast range.
  */
+struct tipc_addr {
+        __u8 node[16];      /* zero if whole cluster */
+        __u8 type[16];      /* zero if socket address */
+        __u8 instance[16];  /* port number if socket address */
+        __u8 range;         /* number of trailing bits in 'instance' */
+};
 
+/*
+ * Legacy address types
+ */
 struct tipc_socket_addr {
 	__u32 ref;
 	__u32 node;
@@ -74,7 +87,7 @@ struct tipc_service_range {
  * Publication scopes when binding service / service range
  */
 enum tipc_scope {
-	TIPC_CLUSTER_SCOPE = 2, /* 0 can also be used */
+	TIPC_GLOBAL_SCOPE  = 0,
 	TIPC_NODE_SCOPE    = 3
 };
 
@@ -114,8 +127,18 @@ enum tipc_scope {
 
 #define TIPC_WAIT_FOREVER	(~0)	/* timeout for permanent subscription */
 
+struct tipc_topsub {
+        struct tipc_addr service;       /* subscribed service */
+        __u32 timeout;                  /* subscription duration [ms] */
+        __u32 filter;                   /* subscription option bits */
+        __u8 handle[16];                /* user handle */
+};
+
+/*
+ * Legacy subscription structure
+ */
 struct tipc_subscr {
-	struct tipc_service_range seq;	/* range of interest */
+        struct tipc_service_range seq;	/* range of interest */
 	__u32 timeout;			/* subscription duration (in ms) */
 	__u32 filter;			/* bitmask of filter options */
 	char usr_handle[8];		/* available for subscriber use */
@@ -125,6 +148,16 @@ struct tipc_subscr {
 #define TIPC_WITHDRAWN		2	/* withdrawal event */
 #define TIPC_SUBSCR_TIMEOUT	3	/* subscription timeout event */
 
+struct tipc_topevt {
+        struct tipc_topsub sub;        /* original subscription */
+        struct tipc_addr socket;       /* associated socket */
+        struct tipc_addr service;      /* matching address */
+	__u32 event;			/* publ/withdraw/timeout */
+};
+
+/*
+ * Legacy event structure
+ */
 struct tipc_event {
 	__u32 event;			/* event type */
 	__u32 found_lower;		/* matching range */
@@ -153,18 +186,21 @@ struct tipc_event {
 #define TIPC_SERVICE_RANGE      1
 #define TIPC_SERVICE_ADDR       2
 #define TIPC_SOCKET_ADDR        3
+#define TIPC_ADDR               4
 
 struct sockaddr_tipc {
 	unsigned short family;
 	unsigned char  addrtype;
 	signed   char  scope;
 	union {
+
 		struct tipc_socket_addr id;
 		struct tipc_service_range nameseq;
 		struct {
 			struct tipc_service_addr name;
 			__u32 domain;
 		} name;
+                struct tipc_addr a;
 	} addr;
 };
 
@@ -188,17 +224,25 @@ struct sockaddr_tipc {
 #define TIPC_SOCK_RECVQ_DEPTH	132	/* Default: none (read only) */
 #define TIPC_MCAST_BROADCAST    133     /* Default: TIPC selects. No arg */
 #define TIPC_MCAST_REPLICAST    134     /* Default: TIPC selects. No arg */
-#define TIPC_GROUP_JOIN         135     /* Takes struct tipc_group_req* */
+#define TIPC_GROUP_JOIN         135     /* Takes struct tipc_group_join */
 #define TIPC_GROUP_LEAVE        136     /* No argument */
 #define TIPC_SOCK_RECVQ_USED    137     /* Default: none (read only) */
 #define TIPC_NODELAY            138     /* Default: false */
 
 /*
- * Flag values
+ * Group join flag values
  */
 #define TIPC_GROUP_LOOPBACK     0x1  /* Receive copy of sent msg when match */
 #define TIPC_GROUP_MEMBER_EVTS  0x2  /* Receive membership events in socket */
 
+struct tipc_group_join {
+	struct tipc_addr addr;
+	__u32 flags;
+};
+
+/*
+ * Legacy structure
+ */
 struct tipc_group_req {
 	__u32 type;      /* group id */
 	__u32 instance;  /* member id */
@@ -259,7 +303,7 @@ static inline int tipc_aead_key_size(struct tipc_aead_key *key)
 
 #define TIPC_CFG_SRV		0
 #define TIPC_ZONE_SCOPE         1
-
+#define	TIPC_CLUSTER_SCOPE      2
 #define TIPC_ADDR_NAMESEQ	1
 #define TIPC_ADDR_NAME		2
 #define TIPC_ADDR_ID		3
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
