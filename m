Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A391BB39D
	for <lists+tipc-discussion@lfdr.de>; Tue, 28 Apr 2020 03:53:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jTFRH-0001hT-ES; Tue, 28 Apr 2020 01:53:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jTFRG-0001hM-P5
 for tipc-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 01:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WxJhqDMuWTc4OE7+HO4kFS2howOi5r0nD+0uaeibTPw=; b=TiuT/7r4/9HnIE6fIq5CsKNA43
 DT81o5LD2frRalo6C6AUb9v3PvLfNIcKD1nYRVC/WdDo6zdAVZnobVsdvbd2rqGYq1kNUGbh6TtG0
 /3rltupUweiSmtfiEdk9w47dvjXL/RYTRlc9aUiZgvMTRiSptr3l2fZZLnQMqb3k1WhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WxJhqDMuWTc4OE7+HO4kFS2howOi5r0nD+0uaeibTPw=; b=M
 W6iibBC17cxiw9Kbyvkyj2WVSk8y8I68jo7LtG3qIILT5srjggKmRFuRH3gOzAuOnIWeeFCSFDPnq
 uJiBT1T21sAlCAK1MNZefn/NlxN3TuYffuUD+Iw2IPeO473BlH85nBpS/zz9sjWazJoA7TLdgqFC+
 yJnOl74Y2/u49POc=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jTFRB-000gC7-VO
 for tipc-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 01:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588038803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=WxJhqDMuWTc4OE7+HO4kFS2howOi5r0nD+0uaeibTPw=;
 b=azCVZ24eWtCsAiTx7Ylzt4mbp3qeS7VM/LElRWI3lzT6VXjFL4vAHiz/I1+zkQRMtWMd7s
 Z4rhvZgHXV6DVMtQ2tjt8WCexiitIZN7ZMzlfnMczvA4QPzWVOXMFgMQwOtHuLpvEUkf2V
 REsUIyy0wgxhLjMPNr57jpOL+k8JrR8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-B1_uKYN6Ob2_brSGTzoICw-1; Mon, 27 Apr 2020 21:53:21 -0400
X-MC-Unique: B1_uKYN6Ob2_brSGTzoICw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FB5D800C78;
 Tue, 28 Apr 2020 01:53:19 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5EC9D5C1B2;
 Tue, 28 Apr 2020 01:53:16 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Mon, 27 Apr 2020 21:53:15 -0400
Message-Id: <20200428015315.591224-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jTFRB-000gC7-VO
Subject: [tipc-discussion] [RFC PATCH] tipc: define TIPC version 3 address
 types
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

TIPC would be more attractive in a modern user environment such
as Kubernetes if it could provide a larger address range.

Advantages:
- Users could directly use UUIDs, strings or other values as service
  instances types and instances.
- No more risk of collisions between randomly selected service types

The effect on the TIPC implementation and protocol would be significant,
but this is still worth considering.
---
 include/linux/socket.h     |  5 ++-
 include/uapi/linux/tipc3.h | 79 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 82 insertions(+), 2 deletions(-)
 create mode 100644 include/uapi/linux/tipc3.h

diff --git a/include/linux/socket.h b/include/linux/socket.h
index 54338fac45cb..ff2268ceedaf 100644
--- a/include/linux/socket.h
+++ b/include/linux/socket.h
@@ -209,8 +209,8 @@ struct ucred {
 				 * reuses AF_INET address family
 				 */
 #define AF_XDP		44	/* XDP sockets			*/
-
-#define AF_MAX		45	/* For now.. */
+#define AF_TIPC3	45	/* TIPC version 3 sockets	*/
+#define AF_MAX		46	/* For now.. */
 
 /* Protocol families, same as address families. */
 #define PF_UNSPEC	AF_UNSPEC
@@ -260,6 +260,7 @@ struct ucred {
 #define PF_QIPCRTR	AF_QIPCRTR
 #define PF_SMC		AF_SMC
 #define PF_XDP		AF_XDP
+#define PF_TIPC3	AF_TIPC3
 #define PF_MAX		AF_MAX
 
 /* Maximum queue length specifiable by listen.  */
diff --git a/include/uapi/linux/tipc3.h b/include/uapi/linux/tipc3.h
new file mode 100644
index 000000000000..0d385bc41b66
--- /dev/null
+++ b/include/uapi/linux/tipc3.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause) */
+/*
+ * include/uapi/linux/tipc3.h: Header for TIPC v3 socket interface
+ *
+ * Copyright (c) 2020 Red Hat Inc
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the names of the copyright holders nor the names of its
+ *    contributors may be used to endorse or promote products derived from
+ *    this software without specific prior written permission.
+ *
+ * Alternatively, this software may be distributed under the terms of the
+ * GNU General Public License ("GPL") version 2 as published by the Free
+ * Software Foundation.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+ * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
+ * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
+ * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
+ * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+ * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
+ * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
+ * POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#ifndef _LINUX_TIPC3_H_
+#define _LINUX_TIPC3_H_
+
+#include <linux/types.h>
+#include <linux/sockios.h>
+#include <linux/tipc.h>
+
+struct tipc3_addr {
+	__u8[16] type;      /* zero if socket address */
+	__u8[16] instance;  /* port if socket address */
+	__u8[16] node;      /* zero if whole cluster */
+};
+
+struct tipc3_subscr {
+	__u8[16] type;
+	__u8[16] lower;
+	__u8[16] upper;
+	__u8[16] node;
+	__u32 timeout;			/* subscription duration (in ms) */
+	__u32 filter;			/* bitmask of filter options */
+	__u8 usr_handle[16];		/* available for subscriber use */
+};
+
+struct tipc3_event {
+	__u8[16] lower;		        /* matching range */
+	__u8[16] upper;		        /*    "      "    */
+	struct tipc3_addr socket;	/* associated socket */
+	struct tipc2_subscr sub;	/* associated subscription */
+	__u32 event;			/* event type */
+};
+
+struct sockaddr_tipc3 {
+	unsigned short family;
+	bool mcast;
+	struct tipc3_addr addr;
+};
+
+struct tipc3_group_req {
+	struct tipc3_addr addr;
+	__u32 flags;
+};
+
+#endif
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
