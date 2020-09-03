Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A987825C0B3
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Sep 2020 14:03:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDnxz-0000eu-KX; Thu, 03 Sep 2020 12:03:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kDnxy-0000ee-Kq
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 12:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K/K7vVr+fPuHax70oG8vz1krqwz9d95+u7XCWPDYJOU=; b=MfwyFqfZ67YK/Wg5/YfSA6a7xV
 hXjAXuB3feVThjvJkAhYQcvQId/QNfH0nC2Sbd4k8odYVywXH1gdwnowh5aavSSWdCu+Jv6bL8bmT
 flRQ/6nb4ieddtDk5cEzLIJWoMCYCGZlouTgQnjiNN0lG7hmysN5ODu6qFdF2Pc/z69o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K/K7vVr+fPuHax70oG8vz1krqwz9d95+u7XCWPDYJOU=; b=gZGnYrH7gobgF+WsC0ARQ9Y70f
 IOW4Pv21voa9YfLpOX8HpXiEELWrfeVrv+/2rsAMLDfXwHqVUQ0PRj1nfGQXWdeIeh8CFXK3cpTlP
 YEOD/d6iMXg+vVCFtIFSwh/yo5Vr/Ux+eb/2+xbEB4UYmTvvGfMn7lLzQTboiGEYj+18=;
Received: from mail-eopbgr30101.outbound.protection.outlook.com
 ([40.107.3.101] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDnxt-00ATbT-4A
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 12:03:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKEsfTXiLFeZg4w5H66Fp9DQMS9o9qpUW8rbUG8uCoiH8VHy6V8ns4xy+69pMRxiqeK0HT6cMMg+iAffMDPLLDjVHa5mdRHx6RFVpjxrnD91Oc384tKt2SPGKEa+VWrjFTfPDtcOm61Ho7WIE6LMx/BCsG/SK82lRgjtvdqMGUQfDN3KLt5s93ML4/Jmo/Oqc2IXw1RS6+xGz2Pdh85TNpArXDXvOPNxXfGVrDJnByVXXGe7GjLH9qHphy+xNPAmftcsLh/v6jip6uLOgSjC4sUXDFO0/lZDxFoGFs9YrK3RFAp3O5YjuySEb0QKFr9VWdC62fByw+hoib3HzfHbIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/K7vVr+fPuHax70oG8vz1krqwz9d95+u7XCWPDYJOU=;
 b=jlTk5Zs5R5Q6wl3IRvz+YVSVAHU7UsPKsaGJb36KbUvl8oYrg/Tf8byrDTnCDYEFE85415X6lCM2Njx8q2V2ebmWrMMrHn4oTEiRBTVcIv3lkTYTN1mOIVu22jpzvrw+I2q+FWcVy/CIFkb4XInADVR3wbdOcnUtNQ+k3o8gU1Pj4KJXA73BHjkIzqMlK0XeBRAZ4F+r+yRwhKJM3N7mxuzn3R8nXO+Ylluke0PskdIVyccfY7vNIh2spg0ac+n6AbdPA0gM/cii0t5UG1vGM7Oy99oMutXP2p1LfIJv2JpgpQNfJeGo4oyelbxgy/6CJhCHIT6aRir3IMNlAK2qmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/K7vVr+fPuHax70oG8vz1krqwz9d95+u7XCWPDYJOU=;
 b=qWMnVet9CLb96yzVF1w23oka7CBymPVyAQ6LUiRAxTS5C3R3PWouvrNXb1tswFe7YWx5EbsnPVmnse9ljxCi1mqY0kEiYqKVIBaTuD6ZzzFRPAKXHue6/oTfAgANNfwUEFtHwPuzNhxgFPRdrCL1Tr3rjLbbc1TRRMTiTFJcfhg=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4526.eurprd05.prod.outlook.com (2603:10a6:802:67::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Thu, 3 Sep
 2020 12:03:20 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3326.025; Thu, 3 Sep 2020
 12:03:20 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  3 Sep 2020 19:03:03 +0700
Message-Id: <20200903120303.3098-2-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200903120303.3098-1-hoang.h.le@dektech.com.au>
References: <20200903120303.3098-1-hoang.h.le@dektech.com.au>
X-ClientProxiedBy: SG2PR01CA0109.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::13) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (123.20.195.8) by
 SG2PR01CA0109.apcprd01.prod.exchangelabs.com (2603:1096:4:40::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15 via Frontend
 Transport; Thu, 3 Sep 2020 12:03:18 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [123.20.195.8]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1490191b-a907-4d33-1fd0-08d850015957
X-MS-TrafficTypeDiagnostic: VI1PR05MB4526:
X-Microsoft-Antispam-PRVS: <VI1PR05MB4526DDCEF667C7F286E12E22F12C0@VI1PR05MB4526.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5nBPk/zEI+544VtUQb4Q7BkvRKH1txr+mnwbTKfzS1DlJ7sWPTbnT9ju3T1iIxjtetyLZ2z3ImqK+uxxX8DYPQmiJvqfrd/DOZbUK7ZmuD+JFaZ0vJj02O8goH72qpGBi4TD7ySPKcXw68B7KJ1pKyBv2pLR8MKsLiR9p/s2/f5CHPhpaDJ4SDGu1hpYY9jNZppM/9Sar1eSkvpTOJ83BzINXqQVlBKJMZDbsNyryVdOD1zcYDy7RrO9iF8XT/TJtv9wRfQ1rF9uAJmCMAOe3lNlvj7iy0Vp42QB2ASxOw6MU5TqAPKXA8IGvnmBdtN02ZiGunh7sVi3HOwVQOGUmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(39850400004)(396003)(136003)(478600001)(2906002)(83380400001)(66946007)(103116003)(66476007)(52116002)(8936002)(7696005)(956004)(66556008)(6666004)(1076003)(5660300002)(26005)(8676002)(55236004)(55016002)(36756003)(316002)(16526019)(186003)(4326008)(2616005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: KirEYtllKTtuGZBp4KLtsA8x4GUOPU1LvyfzLDrsCAo4WzNsLZVA+oQif9e9g3TvbU8e2rjWhD7QTXDvfflImAzR+BUN4Hm4NJJT/Y6GvDZC81Bfu/RGDRUBH8NAdjIAvJXyxnrsGr2pwOxh1EGupt2L8nVULxj1bMY9sCPd9rqHmj6+J4LKfBXnPc/+qzntLruyHiP3ovG2Fb9vsgbB2Hk2+NI/L8p2ybLd1P9uYr5FNVX1Fm2IG1wtjX+G32mbU8f9hbK7nIx1PL4kUWBk3THyhZbsc4Nk9fMhPLubVKba+WLIGr/0b5PPps42IdlFB3zck8c25kcdeK66d93188aotvLuZiJfVFJ/r/MmQDmPl39WJIcyhG4vCxmwhZ9a7SeS/ftPTnF4Uai/DMnwl1ftPMTAtJLW9jt4BpdorWgbvXvVrxIVOXgSDkU8rQyfw0om9CtNjus+Tm8/+dp6oY2zENRlUEwrP4oVPkXYTXBiK/RXvtKhum9SS2Vcz/ZFsUq8wnUODvuJ5mvCF5MFuKJBN9tfwY87kYSDzQeJZijM4alFoyMefCyORG/ASqhR3sGI7ih4/BcGa/m8Sg/9n6z/BDZjwxpcLHDKUOSjSvggE7e19vJcPiVCCFq/9q/qnw/bL1EaenqaWJYLmaw7Og==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1490191b-a907-4d33-1fd0-08d850015957
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2020 12:03:20.1284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KvdMKdmojk8GtVQQazSRyDh/8WtVgsdvw94YgF2baLgEqEvhu4oWgVAyRricOTEit4quyhmvbGrgb6C1PgrYsBceiZS+Chi1QzRIkxlf1lU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.3.101 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.101 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kDnxt-00ATbT-4A
Subject: [tipc-discussion] [net-next v2 2/2] tipc: fix use-after-free in
 tipc_bcast_get_mode
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
Cc: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com,
 syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Syzbot has reported those issues as:

==================================================================
BUG: KASAN: use-after-free in tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759
Read of size 1 at addr ffff88805e6b3571 by task kworker/0:6/3850

CPU: 0 PID: 3850 Comm: kworker/0:6 Not tainted 5.8.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: events tipc_net_finalize_work

Thread 1's call trace:
[...]
  kfree+0x103/0x2c0 mm/slab.c:3757 <- bcbase releasing
  tipc_bcast_stop+0x1b0/0x2f0 net/tipc/bcast.c:721
  tipc_exit_net+0x24/0x270 net/tipc/core.c:112
[...]

Thread 2's call trace:
[...]
  tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759 <- bcbase
has already been freed by Thread 1

  tipc_node_broadcast+0x9e/0xcc0 net/tipc/node.c:1744
  tipc_nametbl_publish+0x60b/0x970 net/tipc/name_table.c:752
  tipc_net_finalize net/tipc/net.c:141 [inline]
  tipc_net_finalize+0x1fa/0x310 net/tipc/net.c:131
  tipc_net_finalize_work+0x55/0x80 net/tipc/net.c:150
[...]

==================================================================
BUG: KASAN: use-after-free in tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
Read of size 8 at addr ffff888052ab2000 by task kworker/0:13/30628
CPU: 0 PID: 30628 Comm: kworker/0:13 Not tainted 5.8.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: events tipc_net_finalize_work
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1f0/0x31e lib/dump_stack.c:118
 print_address_description+0x66/0x5a0 mm/kasan/report.c:383
 __kasan_report mm/kasan/report.c:513 [inline]
 kasan_report+0x132/0x1d0 mm/kasan/report.c:530
 tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
 tipc_net_finalize+0x85/0xe0 net/tipc/net.c:138
 tipc_net_finalize_work+0x50/0x70 net/tipc/net.c:150
 process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
 worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
 kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
[...]
Freed by task 14058:
 save_stack mm/kasan/common.c:48 [inline]
 set_track mm/kasan/common.c:56 [inline]
 kasan_set_free_info mm/kasan/common.c:316 [inline]
 __kasan_slab_free+0x114/0x170 mm/kasan/common.c:455
 __cache_free mm/slab.c:3426 [inline]
 kfree+0x10a/0x220 mm/slab.c:3757
 tipc_exit_net+0x29/0x50 net/tipc/core.c:113
 ops_exit_list net/core/net_namespace.c:186 [inline]
 cleanup_net+0x708/0xba0 net/core/net_namespace.c:603
 process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
 worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
 kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

Fix it by calling cancel_work_sync() to make sure the
tipc_net_finalize_work() finished before releasing bcbase object.

Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c |  6 ++++++
 net/tipc/core.h | 10 ++++++++++
 net/tipc/net.c  | 21 +++++++++------------
 3 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 4f6dc74adf45..f81b999980e7 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -60,6 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
 	tn->trial_addr = 0;
 	tn->addr_trial_end = 0;
 	tn->capabilities = TIPC_NODE_CAPABILITIES;
+	clear_bit_unlock(0, &tn->final_work_flag);
 	memset(tn->node_id, 0, sizeof(tn->node_id));
 	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
 	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
@@ -119,7 +120,12 @@ static void __net_exit tipc_exit_net(struct net *net)
 
 static void __net_exit tipc_pernet_pre_exit(struct net *net)
 {
+	struct tipc_net *tn = tipc_net(net);
+
 	tipc_node_pre_cleanup_net(net);
+	/* Make sure the tipc_net_finalize_work() finished */
+	if (likely(test_bit(0, &tn->final_work_flag)))
+		cancel_work_sync(&tn->final_work.work);
 }
 
 static struct pernet_operations tipc_pernet_pre_exit_ops = {
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 631d83c9705f..396105f17bc9 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -90,6 +90,12 @@ extern unsigned int tipc_net_id __read_mostly;
 extern int sysctl_tipc_rmem[3] __read_mostly;
 extern int sysctl_tipc_named_timeout __read_mostly;
 
+struct tipc_net_work {
+	struct work_struct work;
+	struct net *net;
+	u32 addr;
+};
+
 struct tipc_net {
 	u8  node_id[NODE_ID_LEN];
 	u32 node_addr;
@@ -143,6 +149,10 @@ struct tipc_net {
 	/* TX crypto handler */
 	struct tipc_crypto *crypto_tx;
 #endif
+	/* Work item for finalize */
+	struct tipc_net_work final_work;
+	/* Flag to indicate final_work queued */
+	unsigned long final_work_flag;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 85400e4242de..580c542531b4 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -105,11 +105,6 @@
  *     - A local spin_lock protecting the queue of subscriber events.
 */
 
-struct tipc_net_work {
-	struct work_struct work;
-	struct net *net;
-	u32 addr;
-};
 
 static void tipc_net_finalize(struct net *net, u32 addr);
 
@@ -140,6 +135,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 	tipc_mon_reinit_self(net);
 	tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
 			     TIPC_CLUSTER_SCOPE, 0, addr);
+	clear_bit_unlock(0, &tn->final_work_flag);
 }
 
 static void tipc_net_finalize_work(struct work_struct *work)
@@ -148,19 +144,20 @@ static void tipc_net_finalize_work(struct work_struct *work)
 
 	fwork = container_of(work, struct tipc_net_work, work);
 	tipc_net_finalize(fwork->net, fwork->addr);
-	kfree(fwork);
 }
 
 void tipc_sched_net_finalize(struct net *net, u32 addr)
 {
-	struct tipc_net_work *fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);
+	struct tipc_net *tn = tipc_net(net);
 
-	if (!fwork)
+	if (likely(test_bit(0, &tn->final_work_flag)))
 		return;
-	INIT_WORK(&fwork->work, tipc_net_finalize_work);
-	fwork->net = net;
-	fwork->addr = addr;
-	schedule_work(&fwork->work);
+
+	INIT_WORK(&tn->final_work.work, tipc_net_finalize_work);
+	tn->final_work.net = net;
+	tn->final_work.addr = addr;
+	test_and_set_bit_lock(0, &tn->final_work_flag);
+	schedule_work(&tn->final_work.work);
 }
 
 void tipc_net_stop(struct net *net)
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
