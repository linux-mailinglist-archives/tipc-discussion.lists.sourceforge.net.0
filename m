Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF42D325C
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4g-0007vV-F1; Tue, 08 Dec 2020 18:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4e-0007vE-Co
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iIoHai6tXwmbSfmb7A0oT7Dc5cME63kOr1O2dhs8dRE=; b=iYu2z6krEfse6JXlzBkRJUlLPa
 aNy8w7oQGnuUA4e3bpYiswUbb/NHtZTN6jH+k6cc6N+BsLQHkiEzPoGnDtbjiAkHir6aOTow9tmT4
 9hrgbs4jke+PC6+E+dGdGJ2mK6KeSdWUaMSy/0V5TEmkl/zKmwxKiUnyPtDbGQj+2aWw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iIoHai6tXwmbSfmb7A0oT7Dc5cME63kOr1O2dhs8dRE=; b=LGNr8H4RvOLxaerUlbq2D6b8N0
 IOc17w5H4wVcKQ/OqRPu1UbTnT/BYZX2A8DiVaYIJ/9rPcimy4xFw76RnZHbFZrIrppiuMGT34a4d
 52ODFadcrCdCUUEcSA7YbLdi0WNLExRF+K43lX2Ir+J4ZHMulG0VeBaoF+spWFzEOD9E=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4a-003uhT-Gb
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iIoHai6tXwmbSfmb7A0oT7Dc5cME63kOr1O2dhs8dRE=;
 b=CkbEPIZPPzBnbahpy0FppS5oAMlPnv/lceVZyCGqym9wVDXAUBFNmEN4wUsKAdj+nXMzQk
 B1eYyTyWh0mpu+1ik0HV9AyzFte6amsf+hyT2iHHZUjt89f5U1TeGTNuvlaNaAMWS0LbF5
 BDllVbafjJUzEQc9fggvWfG1KwRwj9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-lj3wZHQQNl24LlV0qo7EXg-1; Tue, 08 Dec 2020 13:50:43 -0500
X-MC-Unique: lj3wZHQQNl24LlV0qo7EXg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 096669FBD2;
 Tue,  8 Dec 2020 18:50:22 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1DDC76091B;
 Tue,  8 Dec 2020 18:50:20 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:49:59 -0500
Message-Id: <20201208185012.265508-4-jmaloy@redhat.com>
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
X-Headers-End: 1kmi4a-003uhT-Gb
Subject: [tipc-discussion] [net-next 03/16] tipc: introduce new unified
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
---
 net/tipc/addr.h | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/net/tipc/addr.h b/net/tipc/addr.h
index 1a11831bef62..2d7992e5da64 100644
--- a/net/tipc/addr.h
+++ b/net/tipc/addr.h
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
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
