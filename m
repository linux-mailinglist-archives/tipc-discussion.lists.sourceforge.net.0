Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C40144CF3D5
	for <lists+tipc-discussion@lfdr.de>; Mon,  7 Mar 2022 09:41:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nR8vx-0002a1-To; Mon, 07 Mar 2022 08:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nR8vw-0002Zq-5b
 for tipc-discussion@lists.sourceforge.net; Mon, 07 Mar 2022 08:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1GcuHp3FGXWGjv5xkpRTrRmKfs898Wol4WVS4h3sMxg=; b=NTBly2oIYanS2pS8qSIMZkAp2h
 FHbKFGXpEDNX1tTUbggGJ3T8f24WNI1F7etl6yp8wGw811Do/xo9BKpIVpGPns5GexpY1epeBIucb
 97RZwP4VPsbszs/MJq4lTziMzIL0TFKE6+iV/Z9nF0IA65BGl8LfUfP6VaMgdQhgTQoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1GcuHp3FGXWGjv5xkpRTrRmKfs898Wol4WVS4h3sMxg=; b=m
 1LvYTczVf/3CQqx3OCKjS9B/TGOjNjd6jMDjhq9SxKHUAcNPWzP37gv0Ag6/91Pm+UuDV9r2T6DGL
 eIZRvV5/L187to1zgqHjKLsWNNyy3t95Y3QfsSxkyQiUlDFs5nsXEaJ/mBwm5mQBFw1ekMLaPuQQz
 QyKD1egKqjD+2+Kc=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nR8vt-0005iN-0a
 for tipc-discussion@lists.sourceforge.net; Mon, 07 Mar 2022 08:41:34 +0000
Received: by mail-qv1-f42.google.com with SMTP id d3so11482300qvb.5
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 07 Mar 2022 00:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1GcuHp3FGXWGjv5xkpRTrRmKfs898Wol4WVS4h3sMxg=;
 b=EOU0bjqjgMmSs9mion9MRiE+QCqbHVhCIm9hHbuzl6kCpiAk8nGrMZknhlKH+wmZnr
 rwtHlGa/r2aZ1qOs7rXnMZJ+NW4TXcqa6KjLvAbLFw44lPYExfZ4otYikLLVwx//e031
 amhpQSUkO6vDGzmI4nt2p2F+vKVqqvIVMSCRIHMUf/IeJs0OS5JZjDjmm9neLVSTJzKc
 4crfDwotGeh1PFZixffqLO+U691MGT3yRkPXdFwBuhtRZJJF0/wXiJIyewpoqiCzQBt8
 a5PCpd+wLSDz8MeevupZx6R8xtZOInBvsPNi9M3xWfrXBGL2iDzksG7F6lXvBxJvCcSC
 R4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1GcuHp3FGXWGjv5xkpRTrRmKfs898Wol4WVS4h3sMxg=;
 b=Apse7ngkJDZzkJdr/5lms0k3ZlNqCn6bndKTAzCfOAQWKS/C/mEMvxFGXIePWNm5z/
 qYsUbKRd8K83Yi+pKHU8bIoQuZJbxdqXQC8fQy7Id4RiMnC0ynqZPYDlNfSGc8lO4T2u
 iu3PF0p7e0DX3CgA5rpLUTp26xv2jWNDHGm6ldo1BN85M97uKzZYEzFw1UxLI75hGQLd
 GD2qsHeVzkLl8xql9S0P1Z1e8DtB+Txjtck+tj/uqiUlRDxLLh/aH62oeGWlnqvPZMDA
 PBl/CWR7dcVoZQHwxYaFC9gNYCmqTtqHxvVc2T19yWla3jQk8Ah7SlPm7SEqvXPA2Sqt
 fBQw==
X-Gm-Message-State: AOAM5314EiMtD2gzZeRjyfcktv6jFiijnB7UL2Nb6n4U9NS4Afd4XLij
 +CN1rWnEQ42VM1SFf1l0hBCdVA1FfnCWwg==
X-Google-Smtp-Source: ABdhPJwhP/kjRkkmeO+pym+Cs9IHo+MhI01tBIkI6WOlCYcBgFZhFAIaO3FSMFtyK0Z3t+sUoSS4WA==
X-Received: by 2002:a05:6214:1c88:b0:42c:459a:53b2 with SMTP id
 ib8-20020a0562141c8800b0042c459a53b2mr7611683qvb.57.1646642487023; 
 Mon, 07 Mar 2022 00:41:27 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 70-20020a370649000000b0067b4cd8ffbasm18395qkg.60.2022.03.07.00.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 00:41:26 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Mon,  7 Mar 2022 03:41:24 -0500
Message-Id: <a3564a88f88c6a4671b1174713c71aa2209caee8.1646642484.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We need this switch, as lxc_xmit works around the MEDIA to
 send the data to another netns directly. It causes all netfilter and tc rules
 to not apply to the traffic, which might not be expected in som [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nR8vt-0005iN-0a
Subject: [tipc-discussion] [PATCH net-next] tipc: add lxc_xmit switch for
 the transmission between netns
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

We need this switch, as lxc_xmit works around the MEDIA to send
the data to another netns directly. It causes all netfilter and
tc rules to not apply to the traffic, which might not be
expected in some cases. Also, it cause that we can't do testing
over UDP/ETH MEDIA properly.

So add a systcl switch for lxc_xmit, so that users can use TIPC
between netns as before by setting it to 0. Note that it only
affects the new created nodes.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/node.c   | 4 +++-
 net/tipc/node.h   | 2 ++
 net/tipc/sysctl.c | 9 +++++++++
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 6ef95ce565bd..c7ffb2cdefc3 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -49,6 +49,8 @@
 #define INVALID_NODE_SIG	0x10000
 #define NODE_CLEANUP_AFTER	300000
 
+int sysctl_tipc_lxc_xmit __read_mostly = 1;
+
 /* Flags used to take different actions according to flag type
  * TIPC_NOTIFY_NODE_DOWN: notify node is down
  * TIPC_NOTIFY_NODE_UP: notify node is up
@@ -446,7 +448,7 @@ static void tipc_node_assign_peer_net(struct tipc_node *n, u32 hash_mixes)
 	struct net *tmp;
 	u32 hash_chk;
 
-	if (n->peer_net)
+	if (!sysctl_tipc_lxc_xmit || n->peer_net)
 		return;
 
 	for_each_net_rcu(tmp) {
diff --git a/net/tipc/node.h b/net/tipc/node.h
index 154a5bbb0d29..db57335c9d6c 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -42,6 +42,8 @@
 #include "bearer.h"
 #include "msg.h"
 
+extern int sysctl_tipc_lxc_xmit __read_mostly;
+
 /* Optional capabilities supported by this code version
  */
 enum {
diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
index 9fb65c988f7f..ca27c1922e71 100644
--- a/net/tipc/sysctl.c
+++ b/net/tipc/sysctl.c
@@ -91,6 +91,15 @@ static struct ctl_table tipc_table[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_doulongvec_minmax,
 	},
+	{
+		.procname	= "lxc_xmit",
+		.data		= &sysctl_tipc_lxc_xmit,
+		.maxlen		= sizeof(sysctl_tipc_lxc_xmit),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1         = SYSCTL_ZERO,
+		.extra2         = SYSCTL_ONE,
+	},
 	{}
 };
 
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
