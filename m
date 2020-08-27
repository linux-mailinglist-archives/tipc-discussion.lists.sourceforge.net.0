Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BE7253BFA
	for <lists+tipc-discussion@lfdr.de>; Thu, 27 Aug 2020 04:57:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kB86R-000405-4a; Thu, 27 Aug 2020 02:57:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kB86O-0003zl-S2
 for tipc-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 02:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=; b=Ub01ld0sCo7C0lDhLd3ZsJIK91
 xuLvZW/Ec7uz8fatsn75+IwBp2CXZXViadBOreTiG/C0a4xLIfN8i2quAlgwms0xRjBB5kFvECsnQ
 ofjrXDZz7DkLAzlBUG30mwLOM9Kt8BYzfa22FNMW2aoAFfA/5DU5eGj7kTbxkkr9TfPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=; b=M
 zLRIHcrbP6gsWIMTBMHpvrUFtYadT8gRQXCkVj9RJAt9f565Ms/qUkwlws0ps0dVWmuoSgoC50HwI
 Ck3E+W1EeHQC+kMQSHZLzQCx3cszDXZGBYlLeHL5GOwChjqGX2Ci4uReoPrJNp8yiM8KVWQEwiXak
 m1k+0uG8oGCoggZI=;
Received: from mail-eopbgr20137.outbound.protection.outlook.com
 ([40.107.2.137] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kB86M-004bKc-3c
 for tipc-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 02:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQHzN0KswnFGKepMTTUBMhyHW8PLRH6rKRlBclkv3CdVyUadrPOx1hUbD3YuEEQMRenqJlEh4ull8iMNtVLMSNJjSCYFYzCTnvAy02UDYhEZUrVU/l3Yj3zByDpHjWoV2nq3ofUzU8VC/OG/FMfrUa6AUB2EdrYsE/4dTm4kMtnv0eGrymi+avQ+pqe7tIbClVrgNl6qDBNe51Ifau5wEUYKzofS9oTJE9PkDXaXpiB3FrlVX1F88FpcnU0YtT4dBShF0Hy0jZAJdejCOK+I+s/Uiz1vfInDfU62dXfSuonbEKOBtdL0EjXP5t/SVPQnxcIv22M4rYciOFSoxxVj7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=;
 b=TkSWfsjmuwsSZmiSI/vyzVi/MuCUgc/GevuBpMzLiCxV3x5N/Dy7mnmHw/M/qDzITUbGdnSlhjl7M0xrPpJ4JJUTV4M6KhE2G2LkfsYnc6b5crPW1SKcGVcFM/5PGv5QKcJMhMqGz9sZB4c3lpe/o4GpmGVBRj3tgL/SvZIHprL9pg2N844eRjJoI+o2Xc0IMbhlHronK7/HgDW+lTG1Zz+YqOHDBvcoeMQYOmpcaq6rxXmqPZEgOv66J04R64UUieCewBo6tr03ALGvcaYxYDIJ10ja4BnALXL6NTWFQnUmg3Jug4DamSUHJf4VzwMHLBURY6J84m0n7EOFCU1d1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQo/lhqOFsgO8stuJ0Rvgsvdipo7xdl15cqdtXCCx58=;
 b=eZYlYvX+ubbxl7BpWJfkpEavsRBycIh8icKdBXL6/U3kiSDtFXjkvsuYXnyRjwXd0XFjwA0do1oMmEvNlwUqY7p+8Q8e4CimdKq6xt0h3V0Pda3hrF97TCB0UB4zsXn6ZBSOONVFw955rgPepjHUct663JAmHAp1amcmfgfOEsg=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2334.eurprd05.prod.outlook.com (2603:10a6:800:24::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 27 Aug
 2020 02:57:06 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Thu, 27 Aug 2020
 02:57:06 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 27 Aug 2020 09:56:51 +0700
Message-Id: <20200827025651.52652-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR06CA0250.apcprd06.prod.outlook.com
 (2603:1096:4:ac::34) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0250.apcprd06.prod.outlook.com (2603:1096:4:ac::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Thu, 27 Aug 2020 02:57:04 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f96beee-858a-4ed9-7efd-08d84a34e1a4
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2334:
X-Microsoft-Antispam-PRVS: <VI1PR0501MB2334BFA4EB1FEB87CE44EB6DF1550@VI1PR0501MB2334.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UXQu/s1zLtBLAFCf7Hg5Xvk3cnJthsO87pv6LbdTVmL+lE2fJa4PwjbVTF29dnOmnsC4vPuBYKDCcU1NcIxCwaTg7kYUHkvosbjR/TWMP4u/sLj3BIJUGdO0EGLF7CWNqFfGC3/WNO1iIvFJWotAzuUHGXr6JlfLjq5g2c0kb3MdWRItt4nWkOGp0rAiatTS47pCt7chN9ZMYDILM36Wa00SpzMNxGeLYx6qYRklRxChUk4b6hlgEYDRGFFQFsfzwlj0pBrAL0lUa334PXmDcyVLrIFE0smYRRuVo2xqKoG+CwJdkoY9QHDBcfzYH7oJQvYGRIqIfl/vBDSE6rh0jQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(396003)(39850400004)(366004)(6666004)(186003)(16526019)(103116003)(2616005)(956004)(55016002)(2906002)(8676002)(1076003)(8936002)(66476007)(66946007)(66556008)(5660300002)(316002)(86362001)(83380400001)(52116002)(36756003)(478600001)(4326008)(7696005)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: CzkS2sAK9hjA9XYmyetaLBYzL7sTie9R1D3oV+jtWdv9bB86ixG6UloJlnkCZuYviRZZ0q++d+K4auZwh0U0rQGfpgRKDt9ijlJphIsESx5HQs1lqxPC8RcTtTacQJvCh996h+7KvJ7SoljnT5uJhxNZgKBx+bRZyOHhE5QixJ4KuJaaUPOaTBRZN6jNUJydLjeQjCQob9Mqz6vvxtJwm+kbY/ZlrboJ7vbitLGvDjgPVYbA4vyNHoofPqXu3p0yzx/t8UlFAN7zQ1HdoZ/du1+6+qmYdWCZY5doJet7eLn+QppDrd7RUV5d1h5+bbvNghHOssvt/c4tZfUXqtGQ3Kc/mGdI8I6CKvQ+XttwTybdnP9jn/2kolJq4iWmWzCoA4jY79NywNupzMzw+OG3aCmSmyZnl6jzAVI4v0k4s+kQ/d4BN6Pej7ZKUfaUS2HYdBBiY8UB8rR4XirqfFgg4FWy65CEy/EqepTBCxKYPA36J6j7vAHoD7Vo7C79Fb1S+Fp0uJltV418i1ZF/2XteeiekV51L7D/n4K4y9EKrkYY1WYX5qYA2CPLO6+raL7ffSZjVcJOX/s7rV5/SBzRNwP+hyzDbrOf3r75moBqIOftp1ba7aj+h/aM/Y61sdSCXS909Nq+0WLqgug9C2/RvA==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f96beee-858a-4ed9-7efd-08d84a34e1a4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2020 02:57:06.0762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GTy56PmYUYjPfg3pUy45j/nb0NUPNS9qrfsR3ZgKrbanxUY7pVrrmNA054VvYEUTF5xGCkM89SUXQixXiZizsNrvLAunfjCHU5bGjuTUkkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2334
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.2.137 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.137 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kB86M-004bKc-3c
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
