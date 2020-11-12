Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A332AFBEC
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Nov 2020 02:27:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kd1OM-0004Pd-0w; Thu, 12 Nov 2020 01:27:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kd1OI-0004PP-6K
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=toUDt+UwxUFHwEVVGLvkI56y9sT/IHhcribTPsA8yEg=; b=SNcI1BmrNvgwbImuBO7s/UwkNf
 1CzqLkoyEETKnZg6kg2ikTSTN19RqDc1dD9ewfyL1y8B7jifPC7jKwpWuz1PNwAEJcqafvlEu+P7A
 X6Snp9fK+MHSVjXmUl6+i79enU0E9M+bhjg1aY4YWsU6b1z9AL0MfdB+DcvIIyi8RvuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=toUDt+UwxUFHwEVVGLvkI56y9sT/IHhcribTPsA8yEg=; b=GlY/b+m5wz6cc1y7IyX8ylCuEl
 FUayz3/BD/1EaEMX0L7oLY2Oh/GdYsmEVB4p+ZPoFanDjr1YO8AEL2YDdWZcTLTxxBepTHdnQRjnv
 Sg3wFtNtDN378lwQzAZCrsU3UbogxIUrJEhEOA3JN0HC+468wIFtXwRltoFOVY21cCLY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kd1OB-008ZyU-Ex
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605144410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=toUDt+UwxUFHwEVVGLvkI56y9sT/IHhcribTPsA8yEg=;
 b=FwgM8HIVVRJWTdZQRpNseZUEySMksEDDpJO6Kc2Aw1VLPO9ban0aPY+kSbbCqJDJpNFPSm
 riRA4B6FXE6SDvb92KyiS/L02hFpXMB+3+7Pc3E2styqWdOIYc2hL6h/OOjaMpIPXeiaT7
 T+YbNERsmp5J8wKLAo6tNX1jwqNjgiA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-fq5SnvzNOh6RbgLrxdvnig-1; Wed, 11 Nov 2020 20:26:46 -0500
X-MC-Unique: fq5SnvzNOh6RbgLrxdvnig-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E59208049D7;
 Thu, 12 Nov 2020 01:26:44 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-40.rdu2.redhat.com [10.10.112.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D933A5C62B;
 Thu, 12 Nov 2020 01:26:43 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 11 Nov 2020 20:26:39 -0500
Message-Id: <20201112012640.525346-3-jmaloy@redhat.com>
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
 trust [216.205.24.124 listed in list.dnswl.org]
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
X-Headers-End: 1kd1OB-008ZyU-Ex
Subject: [tipc-discussion] [net-next 2/3] tipc: make node number calculation
 reproducible
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

The 32-bit node number, aka node hash or node address, is calculated
based on the 128-bit node identity when it is not set explicitly by
the user. In future commits we will need to perform this hash operation
on peer nodes while feeling safe that we obtain the same result.

We do this by interpreting the initial hash as a network byte order
number. Whenever we need to use the number locally on a node
we must therefore translate it to host byte order to obtain an
architecure independent result.

Furthermore, given the context where we use this number, we must not
allow it to be zero unless the node identity also is zero. Hence, in
the rare cases when the xor-ed hash value may end up as zero we replace
it with a fix number, knowing that the code anyway is capable of
handling hash collisions.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/addr.c |  7 +++----
 net/tipc/addr.h |  1 +
 net/tipc/core.h | 13 +++++++++++++
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/net/tipc/addr.c b/net/tipc/addr.c
index 0f1eaed1bd1b..abe29d1aa23a 100644
--- a/net/tipc/addr.c
+++ b/net/tipc/addr.c
@@ -55,12 +55,11 @@ bool tipc_in_scope(bool legacy_format, u32 domain, u32 addr)
 void tipc_set_node_id(struct net *net, u8 *id)
 {
 	struct tipc_net *tn = tipc_net(net);
-	u32 *tmp = (u32 *)id;
 
 	memcpy(tn->node_id, id, NODE_ID_LEN);
 	tipc_nodeid2string(tn->node_id_string, id);
-	tn->trial_addr = tmp[0] ^ tmp[1] ^ tmp[2] ^ tmp[3];
-	pr_info("Own node identity %s, cluster identity %u\n",
+	tn->trial_addr = hash128to32(id);
+	pr_info("Node identity %s, cluster identity %u\n",
 		tipc_own_id_string(net), tn->net_id);
 }
 
@@ -76,7 +75,7 @@ void tipc_set_node_addr(struct net *net, u32 addr)
 	}
 	tn->trial_addr = addr;
 	tn->addr_trial_end = jiffies;
-	pr_info("32-bit node address hash set to %x\n", addr);
+	pr_info("Node number set to %u\n", addr);
 }
 
 char *tipc_nodeid2string(char *str, u8 *id)
diff --git a/net/tipc/addr.h b/net/tipc/addr.h
index 31bee0ea7b3e..1a11831bef62 100644
--- a/net/tipc/addr.h
+++ b/net/tipc/addr.h
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2018, Ericsson AB
  * Copyright (c) 2004-2005, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
diff --git a/net/tipc/core.h b/net/tipc/core.h
index df34dcdd0607..464ad20dd2cc 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2005-2006, 2013-2018 Ericsson AB
  * Copyright (c) 2005-2007, 2010-2013, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -210,6 +211,18 @@ static inline u32 tipc_net_hash_mixes(struct net *net, int tn_rand)
 	return net_hash_mix(&init_net) ^ net_hash_mix(net) ^ tn_rand;
 }
 
+static inline u32 hash128to32(char *bytes)
+{
+	u32 *tmp = (u32 *)bytes;
+	u32 res;
+
+	res = ntohl(tmp[0] ^ tmp[1] ^ tmp[2] ^ tmp[3]);
+	if (likely(res))
+		return res;
+	res = tmp[0] | tmp[1] | tmp[2] | tmp[3];
+	return !res ? 0 : ntohl(18140715);
+}
+
 #ifdef CONFIG_SYSCTL
 int tipc_register_sysctl(void);
 void tipc_unregister_sysctl(void);
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
