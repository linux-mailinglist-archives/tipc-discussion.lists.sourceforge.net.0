Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60598326DF4
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2t2-0000lg-Vk; Sat, 27 Feb 2021 16:56:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2sw-0000lK-Ji
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DAOAzsO3nRxP4u98oBjXQWR4CYTRLsckAuZphxUZMeQ=; b=UWZC9wfFpcpAOvxdjr7tLvCv3J
 fyF8RTOmm3fpiQqUVsTVjTHNTn/QbeKvz49oXTIfdtxX+MxPhMcLru+YqJUAK/dNMaaN0JJMHYECQ
 pBQPPHq5r9oTF4+g6CEcnS/6fs07LANkhEpQ1tuu9Qv0cN92sdgp0GSaiUJZxSYTnJzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DAOAzsO3nRxP4u98oBjXQWR4CYTRLsckAuZphxUZMeQ=; b=MEeEWBQm2cFavbhw0QP3/duQuI
 YYtrp5eIVt8w7Xwj2htH+lYIr9uPWEYNYKNxNlCXg8DmB3hV5zUkuPWLd841zC/XGPchmwlI0OK2Z
 uFsuSYYDDP571hSROcpsuG5Bs5Z812/NgSKl+gF23jriNRPZnRW3eNzOn7UpKXuLrG9c=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lG2so-0002GQ-SP
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444953;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DAOAzsO3nRxP4u98oBjXQWR4CYTRLsckAuZphxUZMeQ=;
 b=IADjQ8tK3vxSJ9L57E1J9U4lEj6VYQ5crB9p+kBDfmSwIiO7OP+M8Kk8xBnWiEZ0cl6fc5
 /QECmkbI9FmkaNi3hLwq+qeEvB9p7E+sVdi8bRKjglF9Dl7rSGyy87tgVVfxdV6nsrebWD
 oHDq2zspl0O3zZHIhleHMPiaRwqZ5IU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-xaiOetQmMYWs1x62cTE5GQ-1; Sat, 27 Feb 2021 11:55:51 -0500
X-MC-Unique: xaiOetQmMYWs1x62cTE5GQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C78327BA3;
 Sat, 27 Feb 2021 16:55:49 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67BB2669F2;
 Sat, 27 Feb 2021 16:55:48 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:29 -0500
Message-Id: <20210227165542.3781624-4-jmaloy@redhat.com>
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
 for more information. [URIs: windriver.com]
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
X-Headers-End: 1lG2so-0002GQ-SP
Subject: [tipc-discussion] [net-next v2 03/16] tipc: introduce new unified
 address type for internal use
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

We introduce a simplified version of struct sockaddr_tipc, using
anonymous unions and structures. Apart from being nicer to work with,
this struct will come in handy when we in a later commit add another
address type.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/addr.c |  1 +
 net/tipc/addr.h | 46 +++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/net/tipc/addr.c b/net/tipc/addr.c
index abe29d1aa23a..fd0796269eed 100644
--- a/net/tipc/addr.c
+++ b/net/tipc/addr.c
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2018, Ericsson AB
  * Copyright (c) 2004-2005, 2010-2011, Wind River Systems
+ * Copyright (c) 2020-2021, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
diff --git a/net/tipc/addr.h b/net/tipc/addr.h
index 1a11831bef62..0772cfadaa0d 100644
--- a/net/tipc/addr.h
+++ b/net/tipc/addr.h
@@ -3,7 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2018, Ericsson AB
  * Copyright (c) 2004-2005, Wind River Systems
- * Copyright (c) 2020, Red Hat Inc
+ * Copyright (c) 2020-2021, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -44,6 +44,50 @@
 #include <net/netns/generic.h>
 #include "core.h"
 
+/* Struct tipc_uaddr: internal version of struct sockaddr_tipc.
+ * Must be kept aligned both regarding field positions and size.
+ */
+struct tipc_uaddr {
+	unsigned short family;
+	unsigned char addrtype;
+	signed char scope;
+	union {
+		struct {
+			struct tipc_service_addr sa;
+			u32 lookup_node;
+		};
+		struct tipc_service_range sr;
+		struct tipc_socket_addr sk;
+	};
+};
+
+static inline void tipc_uaddr(struct tipc_uaddr *ua, u32 atype, u32 scope,
+			      u32 type, u32 lower, u32 upper)
+{
+	ua->family = AF_TIPC;
+	ua->addrtype = atype;
+	ua->scope = scope;
+	ua->sr.type = type;
+	ua->sr.lower = lower;
+	ua->sr.upper = upper;
+}
+
+static inline bool tipc_uaddr_valid(struct tipc_uaddr *ua, int len)
+{
+	u32 atype;
+
+	if (len < sizeof(struct sockaddr_tipc))
+		return false;
+	atype = ua->addrtype;
+	if (ua->family != AF_TIPC)
+		return false;
+	if (atype == TIPC_SERVICE_ADDR || atype == TIPC_SOCKET_ADDR)
+		return true;
+	if (atype == TIPC_SERVICE_RANGE)
+		return ua->sr.upper >= ua->sr.lower;
+	return false;
+}
+
 static inline u32 tipc_own_addr(struct net *net)
 {
 	return tipc_net(net)->node_addr;
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
