Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB832525E8
	for <lists+tipc-discussion@lfdr.de>; Wed, 26 Aug 2020 05:53:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kAmV4-0000QR-4l; Wed, 26 Aug 2020 03:53:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kAmV3-0000QG-0G
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 03:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=meor0mFtlX0CE9s3aV0y6WKroEiJYfhSd97QEv1Qx98=; b=cmpMYORvvc123k2k4+XZ206Bn6
 vOBkDE7np8g8czE5UozKN3n+HZlQTKmijaKHHFXIfc2PDhC35X+iDTy1fO0QZ4n1iO4aSv4xbQjZG
 wZJX74opGPZ/EcbjYefmHvPeVITFcsTzZbyasBIolU2G5w8e5Rm2QrJr/yZkHwWZwNbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=meor0mFtlX0CE9s3aV0y6WKroEiJYfhSd97QEv1Qx98=; b=O
 933N84HflpFmpG80Ci35kmU0AQGjucjMZjhVBee/ZGrJOgoeJA+4XgJMLdF8mcBTsIGGcp82tkOWl
 L1u8ebQYlJSlmZBCKW5npVjY8NEmmFXHrx/ULcdEddLtaX7LKBl0gNjyWbYJF7nMFH/zLv4o/bdvH
 2gTXD2h72cJvSi2s=;
Received: from mail-db8eur05on2114.outbound.protection.outlook.com
 ([40.107.20.114] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kAmUw-006XBn-Iq
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 03:53:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gv/BITTnX9FLHx0O1feDrbEor4w/KhjhX31p0lJN19g75po+pEFSHOfpAXwKcErqhLAhHxdxVdwrfIeQ5ydFuLEtuKGYZnWX6AuX7Iz5U3kGvVqNMxF1FOxcPT7/vOzIQRmEOZxvo6L6W26dNR2OCyKkFCwmyNMejnfqa74aN7ozqNQVWdLuqRmU/Y0Nj18KtY9w57JIwj9zqyZ3Gc4lwwBY04NGVBqTqi5ZRPzenzVyFRpndStzxi8T8ouX+E4RDZ3bGaImQMUii6OwNgx1e+OFLFd8/B7Ia1G42IPy+fENZLXhRuqDLbXYYoQhApnk1g6g5xUN7B4k9vXurq0fYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=meor0mFtlX0CE9s3aV0y6WKroEiJYfhSd97QEv1Qx98=;
 b=h+jARDeQycKyKDf3t5AaTi1SRpLY85wUWfcnMdZQjouz8DoW3pZUgW3qOQR/v5E1w0jKgkYQYRRVEoIA6ZzuCpmviBKTYpCDAX2umai/h4TJm1W1a+rwKZMkL+Ft2p2ZfheR2GP5flsJSQjGR0GekiMymtRy4EC2Jv78gn96ZQTKj1I6D1KbfQRc+Im1i7pBSaK+Njvk/UM+c+lDgdIF7IcUz/kRjp5q4X+9YxJzrZX/cO35qGcgQsRFh56Rzhp87G8FUcaAdPGqe7GmRKWbW86tEtKIDCmeH7pAxnTWu6dabbtskDVGEDIGFd1ozoWQuB5rzetpyINOWi3mTOKZpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=meor0mFtlX0CE9s3aV0y6WKroEiJYfhSd97QEv1Qx98=;
 b=iJdmnJoVjvP+96h6/WQSd+izu4u3C9J/d1auLm5Ewm+AYu//iIYZSdHHtifjipbbtswB6ue6QPgP+xYQdkL2Pe0Mnl9PFi9acmdKlJhXQZOnKGjrAeAKd/bwndyYuOo6Waa4mEuylTFpX3QMV6vleoM85xfiF6mX1ZFeSgrXe7s=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3344.eurprd05.prod.outlook.com (2603:10a6:802:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Wed, 26 Aug
 2020 03:53:03 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Wed, 26 Aug 2020
 03:53:03 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 26 Aug 2020 10:52:48 +0700
Message-Id: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0153.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::33) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0153.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Wed, 26 Aug 2020 03:53:01 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9fa14638-c6a4-469e-4b66-08d849738858
X-MS-TrafficTypeDiagnostic: VI1PR05MB3344:
X-Microsoft-Antispam-PRVS: <VI1PR05MB33448314EE62E8F475563CACF1540@VI1PR05MB3344.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UW0SHq3q0reIpHey7yDh1RmiLOYOYpSG1sqmB4l+b3VtWkc7UBCw2XcZIUBMojulAMpKlZNzbcdXeeUrc2iiA5Q8jroTRJ1NwqWLFPKrK8k9Xe5Tuko9g55hNmSAPGzqvmFhlBxsKNh3rnzoLzi4RQK40Ed+n8/OMtO08tWJwjERvLESEu081uJyimJNKGyIcSADBHyon6wlYrvTQjqt48z0RlTroWJT5pryRQF0QGQ0ew/RXhKAsefGWZfkwgcIlzFSIr2PFUBjSEnqWLFkMaLiNnUifirRUjoUdK7A6COs7clDrGnyOSwtzk86/fSyPqBzoHKeE8D8ZCMhc2woAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(39840400004)(376002)(396003)(366004)(52116002)(86362001)(5660300002)(8676002)(478600001)(7696005)(316002)(8936002)(83380400001)(2616005)(4326008)(186003)(103116003)(1076003)(16526019)(6666004)(36756003)(2906002)(66556008)(26005)(55016002)(66946007)(66476007)(956004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 3cx95yjGbH/j7D6AjwrbZDQGZF1jkab+BklViq1zielOlkU+GRa5hCQiGIG04MBvEHfSEMlcEs+aefwsx4rMJWeGR+hQSXS5NHRFffEqw8YrQPlPMKWh4V6jv9Hdo4vd/yaWIwBFYlWEJncv3yyjtUXqOrHIyKURiuxpFzrDv0u/eOc6uYHU/NG3PKstYQLocDiEnB9V/MtiqAMPMRu+qAOFaj2IBrMXbiEL8XCUiQ1eFUouU8fe9Fwtzc1MBsQjhkxNvYPm7Jke5Ah7Hjh66kTeI/m3cCAnZIwVVk4lhJUO2Pmf1y/og302qv4BsCvDFCJvu25429hh8qRah4lInRPek98Dj9TRmVj28U6S3keU2oayz4kRNWKYmNHVlBv/aBoqLZAwTCwS35GBnO3PYDd2jmwCnwYxXm1axHAQSratIDRLKm1gm+QS07R1Cx5P4Ul6cyN6/iDtmkmCds6kWrvHO8RMKoF+yqnSsxFIyTiFzhnQXmwiRJjFIsFvZdDYX9xbArX7biI3r5WwNx0QrBWOd7n7bPMa3HBcIwdoHD8Lzkdsfu7fSAyyuJlEcBc+4ztXo+J0sGhkXH0JYyrk2Xvcqj/z81h4mlNH10ACKEVEzf587vCEWCZ6UYlHOPVGZRfxtUb/ZeLAnJ1WkM6yhw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa14638-c6a4-469e-4b66-08d849738858
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2020 03:53:03.4297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q9S8q/TdYBfR4+W+2KC863ytJ3DJ6duFspej+hIKhXRbvnL7oMGYcM9h5YPMM5xJXJ63anIfwBiHOL0JvkBH2fookA9ZbTN0bK4n9ujvPDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3344
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kAmUw-006XBn-Iq
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
