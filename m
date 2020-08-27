Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C34253BE9
	for <lists+tipc-discussion@lfdr.de>; Thu, 27 Aug 2020 04:40:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kB7pW-0003jV-71; Thu, 27 Aug 2020 02:39:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kB7pU-0003jK-GL
 for tipc-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 02:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=; b=TggQ3c+5qjHhigfjcEJzeNERAp
 G1AmeNqF1MtbMMZkdC/P9Y9PuxX9F9geCIuRoWof0Cfurwc1QIHyrwlBQIGBgv8sN0LDGUcpl8vK9
 DiNnWGbTiqSptqJeWR8HO0sM3EG2dv/j/DQom2fOtsWeR+pmpHWWVZlSyinETj21FN4Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=; b=b
 zUxdXkgkKOvsyHczGRj6AXYA3HNky7G56ST71tIa65faqNKa+J8o2XEbaOTM7Ezm8cfoUph2dRFef
 2kk4U+5abwG+4qjE1v6RmvFUBmK44Dik0oKZidFldoYuelYtq6tZcfCakul467IlekkMwwPKBksS6
 BRsK7IAGEKslSeB8=;
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kB7pQ-004akL-BU
 for tipc-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 02:39:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iclTmwWC45VJfmgtsU6HaSIlYmfGfSCuiaY1KBHy4+8WtZ5NiUdpndW8X5dKXhShzWW4yX82IWs+DgnSsGeLOuthp2Sj9BbIAYkiFFW7NOcmOilIg0wciRjASgdZJr1wh0xk4+OQwgWcnv5MOxgdN2HdURozkauc9VHF0jtqkzj5hNmVhmzcDlFhnIX6T9quVX/kOXszme8IUZIIkPADrwm5KJf/AtFbf6K3mpq2QoDznYah7bR3bP5/l6kCbwJyU+nqxvkCKqE+ufVvNotKh3sgCq2lby6C82sicc5TwZHos/6C8GEkhjjyxy43fJUSRQYHBzCi1iPqTPQrb/XcXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=;
 b=GhIhAgHjgCmh9Re/dbIc56mtlpH4Yp2J85I+TzVlVs2kw1W1jIXDf0RB51o/wQwtmY6ZOdaUh8pS6oPyevbOv9g4jYBlMvZuzqvy0u6yX3aOYAdK/yALnpntpXGGZISOXvRvQUc7PXYleCf717zKDp3CFEKcLq607N9aXQ/viU842XJYGKa1kY/oDSKQ3itVrYyPXIB0YF3ls133UeyzLdCeP4/OSGfFWhA3ocLOLRYqaOYEtcjy9Qh7NlvGuHHR8JAMp8IxsSjxei3avx62zjZUoT51iEXX2f1yXF9OllSD+58Zfnwu2v/DG7M+RSiDKvZeCFyBcPhK/IwveJUMdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=;
 b=m+b1UvKICwYsPbkPfJJd8ufaw2TDU7ML9boPq1U05xxqiTFiTX8hG86E+ojj9moBGR+jirQwOoIjki65YVZu57v4WCuO3HpTuwuMelTLC3WNh2ACVRKyBbKRC0PPVlzcFW/+FwTA8ED4+/fjMm1JK4tNIqTBHa3TVS9tqQDc0wY=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VE1PR05MB7326.eurprd05.prod.outlook.com (2603:10a6:800:1a0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 27 Aug
 2020 02:39:45 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Thu, 27 Aug 2020
 02:39:45 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
Date: Thu, 27 Aug 2020 09:39:29 +0700
Message-Id: <20200827023929.3931-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0112.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::16) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0112.apcprd01.prod.exchangelabs.com (2603:1096:4:40::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Thu, 27 Aug 2020 02:39:42 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3e55a25-2346-4710-a28d-08d84a32749d
X-MS-TrafficTypeDiagnostic: VE1PR05MB7326:
X-Microsoft-Antispam-PRVS: <VE1PR05MB7326C176CB4155A9A3CE8A59F1550@VE1PR05MB7326.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: okhMaNCBvM/zWHHCFIEnMwn98HAQPiwzKSXxDAVep72pIMVEMv7ogJfB/DP42t5lFtdi6cuN5CeNBLieMXBSDLDazjUCbFKx6K/6tIdL0MkQiWd+FIiXaE2wVQFjkNnOVBM/dlRD3vx2+w+UZbPDRKumzmXmr2ljpQoE1Zjn9bAQHmMknfCk91oisWmLEt5Ihm3MIFr/ai012qWAYY29hChyHm2HN0SkaAz3tvLM/T8amrJWA6V1U0jfRlsYlcuG8+bCVVOF+JiO23EuuF9bVr2f31xt9G84BNHe3TS8D8I2NSuyA+Bg0wvMj8/mJWLNk13zWZ9Esi9Sv/yVJpLPIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39850400004)(376002)(136003)(396003)(366004)(478600001)(86362001)(316002)(2906002)(7696005)(186003)(83380400001)(4326008)(52116002)(5660300002)(26005)(55016002)(16526019)(8936002)(8676002)(6666004)(66946007)(66476007)(66556008)(956004)(2616005)(36756003)(1076003)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: /L0wMfamnvPrxB8iJPrpaOYwnz+SPyav7KAL6u+h23XWHNCYjtCmeGMHUKSDLNP8ZSXSc3D62mUA5HNXFp8xx+UysVnTPA8miIrzHjjlxhEjVowCAKgQEMzOfDGci+SpssBl2DuFgBM2VKwx2MqczIovnv6wyDwSEZbIMXukjoMmWvoxrB0cyjGc2Nw8JhNBBAHLIMcWUxdQJIJsa8+R8TiBmnndQwfXnWt5EVwKEPo1Icdfo4mw8w9n85aI1vbZRFPYTP3dpMxa03vqlmNDKutv7V+R93/RHnXj4iaJFXKgKNAOWyN01Xf9bwHLtxyGsR3IdopTO//OOCRBaONG4P5JRjC/7Kz2r8LQ+cyTB9v87eZ7pzPZyXHJbdkl9xvtmsqT3CdCv9Y5e+5/R4CmnWkJ/aXAZzh6oI+emeNCUaI7fPZ6weFbAurQtxxZ/y+kt3ILIJF2+rYvZfSLzlgnukzsHlA1tsKtuo75AHdxZQV5RHIMaQKydHWQggdHhuHE8rnJOBQo16Fa/f018ulKIahisnWJNXfbNTV3FBlFTnVJ17ot7WLEYO3+ezyINSZ/avCXE1HFh0rr3WtJFyUb611Dmd1DTE4jHGmKjtqICbhoBfyTwHmQiYv4HBoJziPqSdRIa7VCNIt7IxA22pwNNg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e55a25-2346-4710-a28d-08d84a32749d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2020 02:39:45.0176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 28zm9qGvaV+7rIcIMojt0y1YhvaHSrsJR9X0vZNJl9YWarlIJFeK5MjGIOcQciuEty6sjztEbaSSoqqvUr9K5m0kjbuj9KRD1UpCcFkm5WY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7326
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.114 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kB7pQ-004akL-BU
Subject: [tipc-discussion] [net-next] tipc: fix use-after-free in
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

Fix it by calling flush_scheduled_work() to make sure the
tipc_net_finalize_work() stopped before releasing bcbase object.

Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 4f6dc74adf45..37d8695548cf 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -109,6 +109,11 @@ static void __net_exit tipc_exit_net(struct net *net)
 {
 	tipc_detach_loopback(net);
 	tipc_net_stop(net);
+
+	/* Make sure the tipc_net_finalize_work stopped
+	 * before releasing the resources.
+	 */
+	flush_scheduled_work();
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
 	tipc_sk_rht_destroy(net);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
