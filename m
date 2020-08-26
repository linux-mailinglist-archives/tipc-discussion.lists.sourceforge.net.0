Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F822525E9
	for <lists+tipc-discussion@lfdr.de>; Wed, 26 Aug 2020 05:53:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kAmV6-0005i0-FA; Wed, 26 Aug 2020 03:53:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kAmV4-0005hs-MS
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 03:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9K9VxJuw6C8l1KKaxabcd190aB4IvHUiG+8tAiC20gA=; b=cwX+zcbQkYSppv/9zZP2XhppA1
 4RWgRy+qZnEza3g4TCaroTPE7MNTxv42KebUWy+Gfo+m8K5noCQGcJR1huIGcCoK6YvnuBE232rs4
 mMElOyUUf5+yuValshD11iEO5gzn1jb7EJHCl9BL7RMPMSGfpOS9DbBDHfpObcYPmTrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9K9VxJuw6C8l1KKaxabcd190aB4IvHUiG+8tAiC20gA=; b=jzo+9tZ5ndntEPe5bGy+DZavgv
 I92pqETLStsLY1J5gYT/vlwYk/HDxVVUCUsVyEy8wxSLCze/WuInedO23YkNzvIZnJsjcWcmhVgUk
 NVWxRkfAbOsyYjA/+ReO/6/8NC1YAVYOW/Hv/Wd7jwXdOyn1pmpO8QSJam+/gy5r06P4=;
Received: from mail-db8eur05on2114.outbound.protection.outlook.com
 ([40.107.20.114] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kAmV3-006XBn-9T
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 03:53:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2A9vlwmfr7TCFs3BCV8r8IfjU2bB1F6ju/4hqdNtCdlcZawuNcSjFBpLph5orUsS7AX3vzAlNxEyQorl60qDqPf3WqfMsJkwayzNv8KVVhiC0CPIDONds9rejNFhF4MvVjNiGO4ls4MQNPPrti8hg1JlLPYXIYyfdpzcxaLuC05r17U7ZWH88JgEoYBZKnNKUUl6/T9uWh3qm/w6RNIu27E01VbwqK8NQGka+J2lvD1YSPXTfhSVLU8rWN8xGtCkXiO9Jlx5FIM2QJGTdLKpN7hOgg65ZzyESW5mXNp4eca/G2i3Zpx+YL9YAl7LACryhdgyZGa3urjqwz26kPs/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K9VxJuw6C8l1KKaxabcd190aB4IvHUiG+8tAiC20gA=;
 b=bxlqWChIu5IWufDZqUzwP3vrXdM3L+s/BPd1hNxFdrBpwtd2yvVAIMbAOUzxLqPDEkt69pACZp7EFTfyAV+VGLv2FwWIYVoSAoz8bRy0uD2vzxxRKmK6dzLTsR2xOL87Y2R5xRdJ5iwDOpseXoLAb0Ibwkcrz/P57UU3qzFIq0f+OpTR9jenW+ZCw30l2/w8fWh84QqGTEu02q9nImi4IZ10jrOqkSp4wdpY+AI2yC0w4djOzJ0HjYI6dpPWiEgXxETN/dvl8+wSzW8bU1S1TS9yhvVNZObm0h3e0cEuyZ0oY9cz1LLk413yxVQhU13QJuDEY1ZYS8iSXPf4mMjbEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K9VxJuw6C8l1KKaxabcd190aB4IvHUiG+8tAiC20gA=;
 b=Xl11zbMUhiIOn02+/wvlyDE6DOPz8zLZz2mUDYaQhNvH2v/O+83Aj/vg9Ijl/r01yfTSvO7WJP1QcpQkKHnSodTwnqt5ZXerN7ZreIJbhcYbilNckgr1FLAFLpGoKQxgNYglYJ5AEZpQK+mvjN+XSia3IPv5OufzzXpJUc6697w=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3344.eurprd05.prod.outlook.com (2603:10a6:802:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Wed, 26 Aug
 2020 03:53:05 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Wed, 26 Aug 2020
 03:53:05 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 26 Aug 2020 10:52:49 +0700
Message-Id: <20200826035249.33849-2-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
References: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
X-ClientProxiedBy: SG2PR01CA0153.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::33) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0153.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Wed, 26 Aug 2020 03:53:03 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af868db2-e44f-486b-f097-08d8497389a7
X-MS-TrafficTypeDiagnostic: VI1PR05MB3344:
X-Microsoft-Antispam-PRVS: <VI1PR05MB33447710190B7F2851B231AEF1540@VI1PR05MB3344.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ACzQtlTYOUkBvJI40oKaZRC10wQ6pebq0t437OBWL9lct5P9GZmxF/drIe0HU2tAVgszSLFgf7/gWAMy+3HaaM/bOQZVSAnhcIasJHemxPGmp/hgvRwC+G8aN077cffnh8GjJQahf3fsINtO/9WabsVMaPBl6WQgrIAk8zm2YVq4RY19Y0+JkWBeOWDBUl+mfdsPjZVFjm8gbxHMaoYpVlnA+xACFluP8b09ZxndxndJyTv5jTTpXpsvhlKmZ7wuevBbdwr/a/VfdQuICR20I8FzmI5nkmKD1M8Ot2paHbFz6BtR5B/LtUiO5tEeOrkeT8KEEGy2j7ywnAP1kjepZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(39840400004)(376002)(396003)(366004)(52116002)(86362001)(5660300002)(8676002)(478600001)(7696005)(316002)(8936002)(83380400001)(2616005)(4326008)(186003)(103116003)(1076003)(16526019)(6666004)(36756003)(2906002)(66556008)(26005)(55016002)(66946007)(66476007)(956004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ENtMal9uXIYsROL1oftLYuz5qukZvW0mVSQcXRLbLBMsPf0FFglqYdmYcFMGKSLuJhin+WQWA7U+AcSo6tdhEw72zL3IqVTacRwVn+WA+NKAMDuEqDMg6iXsUap8q+idaLG1FYE473cfJJxAmENQaA3sg2ZZA4k05eH10ileC6WpKuVqL9m8arGyJaxEoDRH6oJU/w1xr2l+UJafqkeILrb9uhrjpoPeaZNVtwEwquWx5XsJJH+mpOEtMo8f1BL891f8x2WudGzeNUjP2u9zM4kf1ObM00e/Kq5/kgTTEfr4mQftYX157jBlZMLRvtC/rBjuogE2gebgBIPIbP/tmuTnHpKAkD8Kdlt7Ip1KWwNyiiNhb8E9fnSV/egk63Mt9iYtJbsvOw2y993KYX/NuS1zwhnsvQwvwDMn/38bRomWOIFLp4zjdXtw5w8px2+PHQHmCxBj6lJ3ztjGOSCwQ2eLfagitsJ1NVA9qTXzAw3H8WNZk0jgRrH/NjDPJZzZKP/Ol7cTfj+43Wx/XsBjacT3x/LLdRk0tNlPydFyIQUvLAoKccUm2Axfi6keCzpELh3qBXlKvIKxW3EP8dJaxM46qbhgSQ7uUSxY2ZyDnBTI1cl5BKtiRf6vvf4pH/wyimq5ECLIA0rhKuw8tZPS3A==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: af868db2-e44f-486b-f097-08d8497389a7
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2020 03:53:05.5444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2zzLTQpf0WKfDeckz2G2Fpgvy5tZ0QBKkTg1uFdMiKdYl7Ztf0swMO/pfObStsXRU/wEahTXuT1csrvnY1YRsZ4n9BecySaOp/7J6E46Q3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3344
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kAmV3-006XBn-9T
Subject: [tipc-discussion] [PATCH] tipc: fix use-after-free in
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

Solution 1 (preferer):
Fix it by calling flush_scheduled_work() to make sure the
tipc_net_finalize_work() stopped before releasing bcbase object.

Solution 2:
Fix it by introducing a bit flag and returning if flag is zero
(object had already been freed)

Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c | 1 +
 net/tipc/core.c  | 1 +
 net/tipc/core.h  | 1 +
 net/tipc/net.c   | 3 +++
 4 files changed, 6 insertions(+)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 940d176e0e87..56b624c8b6d4 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -718,6 +718,7 @@ void tipc_bcast_stop(struct net *net)
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 
 	synchronize_net();
+	clear_bit_unlock(0, &tn->net_exit_flag);
 	kfree(tn->bcbase);
 	kfree(tn->bcl);
 }
diff --git a/net/tipc/core.c b/net/tipc/core.c
index 4f6dc74adf45..93ea7dc05bf2 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -60,6 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
 	tn->trial_addr = 0;
 	tn->addr_trial_end = 0;
 	tn->capabilities = TIPC_NODE_CAPABILITIES;
+	test_and_set_bit_lock(0, &tn->net_exit_flag);
 	memset(tn->node_id, 0, sizeof(tn->node_id));
 	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
 	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 631d83c9705f..aa75882dd932 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -143,6 +143,7 @@ struct tipc_net {
 	/* TX crypto handler */
 	struct tipc_crypto *crypto_tx;
 #endif
+	unsigned long net_exit_flag;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 85400e4242de..0dcbfcff5ad3 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -132,6 +132,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
 
+	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
+		return;
+
 	if (cmpxchg(&tn->node_addr, 0, addr))
 		return;
 	tipc_set_node_addr(net, addr);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
