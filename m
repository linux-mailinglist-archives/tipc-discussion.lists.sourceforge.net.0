Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E9353F7A0
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Jun 2022 09:51:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyTzf-00030d-Vm; Tue, 07 Jun 2022 07:51:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nyTze-00030X-7T
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 07:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mcVFDiEk//l6z6CXF+x5svCGxo23gqkO6eC0LzmJzKU=; b=IcdSe7FkGb4ZA2s8QyblmDyq4Q
 +HH3xMBAVHxrunj/uPGvj/jarHHa1tEvcOjuZuNSBUd9ARXRre8yKkDXhA/wUPsEn1M3x1rxrP+eH
 FgADSWm6hiUs9E6qI1VwGwSLPfWy7KtOK9maU0LV80OXXG7sAI+UtTc7xidp5L60Xd8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mcVFDiEk//l6z6CXF+x5svCGxo23gqkO6eC0LzmJzKU=; b=Y
 2NybeydttUjpVF7GbYqLZ/Ktmz6k8g+XuyA6LaiwTCdlbnNjOZTCS2xo4wOKo4dM2Dq63B/ltx8Tv
 7UM8UC8xZOsi0mPxiMyJuz2ItRjJPhv5YT60RDgonMzod3hmi7BoGn9sn6OY/CJQqvKLu7OJ3NSti
 RmHhMEI5UHUW9MdY=;
Received: from mail-eopbgr30093.outbound.protection.outlook.com ([40.107.3.93]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyTzU-0000Y0-Tr
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 07:51:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQiXdvIKXw1EjEKJWW2uq9czpNC+FEJun2/5dioCpsKmwq9wi90BARrBMWtSY1GJVZr5IFTlw267m4WHXeSHFZibDXfx1Kg151/XadNQurIEmx79Zoh+InSt/HCfS8AG9zqJbTwLfFV+K9EBZekxdQV2Nbl9NNHPvPrpfbvpAIIuAU3BuE3C8El5PRUc+pmkWmTIsKROx+ALN5Yh81E78+O9WS4vt0m4o+K4e2OHRxcV8MBplxmToHfi08jPF6MLqErUduri8rcGdJO4hi1TjQ0YItznklF5xVKKLwkuY7bPwJmxYs5ZeygIJf0h30ek73MrMfLwn/qOLdtPcg1vQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcVFDiEk//l6z6CXF+x5svCGxo23gqkO6eC0LzmJzKU=;
 b=L7mP1KMxM6VgLm7SCfKxAMSjAXpSTwQ7KEgUnT99Q2ax2wy9ILWpNQz/Gd3BZOAvpzkljBPzw+zkWVWd0sWmBA1Rz95qxxh7uy995npZ9lycE6Ov7kz123a2aj+79VElbaXVdwKeGTLyiF4FajeoACrU8IoQL5SzaMUC15LTvBs7EwHw5wHhr8Jm4uRDoyyQqk/Y5qFC6Cs8c1wHDDw1ssJpfaIwEEtOf3vcQwk97k37fgzriGQnrl+UXRHkoNw/swslFDBw16cI21PHPspzzn0DmHmG5qMkltuiW7LF4QZby/xmSFZtg6H7u/8eGmHjrLYDemuHkOuZ37R3F8mp1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mcVFDiEk//l6z6CXF+x5svCGxo23gqkO6eC0LzmJzKU=;
 b=fpy1I2rH/P4dpwMXmQqkmRuJBh+Ij46Mdcx7LLlo+IYGHt1B8wFeVH1MjVkZV5/k0jNESJmPZGUcsEagmDtaBg4vlDIWCg59i4rWe4HoNIpgM7rUFVYjxTt74b12RQfLqKjnlp71FRSdyLg446stFG4bw6cKirZ/lhE1gNTLkSc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by AM6PR0502MB3797.eurprd05.prod.outlook.com (2603:10a6:209:c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Tue, 7 Jun
 2022 07:35:19 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8%2]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 07:35:19 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tipc-discussion@lists.sourceforge.net
Date: Tue,  7 Jun 2022 14:35:06 +0700
Message-Id: <20220607073506.74619-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SGXP274CA0015.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::27)
 To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5565bd18-dddf-4718-8c3e-08da485845e4
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3797:EE_
X-Microsoft-Antispam-PRVS: <AM6PR0502MB37972664353A1BA62F068537F1A59@AM6PR0502MB3797.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9gIANcy517GmCF+gyut5qToG11Z+aZROnoIeVIawC1E4EzW+EIHmD+pKF5XB3R+XFnt5MyebWMFBLM8z6O3MnUMrmhyWpiKSNcZ6Om5rD8DKLVlPYzPBwMCV7eg7u/xvdkdtMlVbBng3mZs1Tbjcuhoa6G8kz2WlTOmt9+Z/vs1ykGCFuN3gSNgfwTi/y2XoHtXOQ+6nh64zhWSbxdEz4kaN+NYpCagr8gxN/1QHGxv0tY6a8Sk7p/hpi2q9TrpThx8BaB2rof4ePG7vyd7wq2ruBKxYMJ0BskqqN1EUL/kyo4r1IvLe9Chm4qpGHnX0xkXToZgSz0NIo924jLQfDso7M0WIkeUuxHkSjktsGbyXbqkyvAalPxJpfiCp4PzN45bKjjsiuesr+cICkCh5Cv2ryG/6w/NN9Va1FCOQTlCCK0XlVgHJfWwc1KcLssG+bWL9OiPdQ4y+3suzRGYG2Mm/34kB6o1v8bzZtAcJ9DRQ/5bxKYY8o0021Uu+Mco6+IwBsDSsgJCQqs72qIBS9SHrjsDGKdoIiaWBZ+nmGeCm3TykCIGdf1jgMgp0A5pmbS415/M2OggZjz/hP/y2FpT+WHyRqws6rWiUXINC3riQqqGNIO9Fpr7LuirkmT0t8TzBQ02GOYMRkJxHJC2JygUEoNSr3h1U4su4GaiVJI9IHb9BSGNOnk7gGdOMtuvWNsx5nPL0ytHmmh6gtOhUQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(6666004)(52116002)(6506007)(1076003)(2616005)(26005)(6512007)(83380400001)(38350700002)(38100700002)(86362001)(8676002)(4326008)(66946007)(66476007)(66556008)(2906002)(103116003)(5660300002)(36756003)(8936002)(508600001)(316002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YY+yGYpJCjkFHwfXOywkoQeXsBtB3u/jM7hGsLhTmK3W04ZZsEatRh3ZM5p0?=
 =?us-ascii?Q?FH0wrV4pHXm+yxVI1c3enkp2fqF4ay0ljmBVORUXZnIQL8DXRQlTPLERvUJO?=
 =?us-ascii?Q?3PF2N4672rUOF4kUQ/v0HBwXXRq0RQjY9RFpmU3NQ8a3DEmDoquEc4QbQ3j2?=
 =?us-ascii?Q?uuJxSBrwAmNasnSGgxw7xAi2eNVllSvB6TscLHP7cVUMBeERS2lMkZThVcN1?=
 =?us-ascii?Q?RotkWhCCD2tzzm43LYBJnB1mWMUCssCBrX7p5q5P24g+BgegYDMdyuoCUU4c?=
 =?us-ascii?Q?aloVIRqtsszzljlpOqnNptXUbcsuvXqR6fFQjHtb0kr56ZEss7bC+/Fb7BZs?=
 =?us-ascii?Q?xUWlasgOC/f0SNPkY/jwTRs0VeuS/0J+kDA8RhAyaTuVbJx+6mwN8Qe8hbXe?=
 =?us-ascii?Q?0D0O7aDNRkaI7edgl4GRVN6FNkSSPfQtDGOXDBad1THwaWZmI+b2srQJlFcR?=
 =?us-ascii?Q?feYumhfRFaUmkN/duXYRs6+GHPlJ2Jam4e7R45GpYDUIp4K0u9CaDCZRS3TK?=
 =?us-ascii?Q?KbezOUAq5r0GWje/Uregf/7P/5/11d3VDgvSNEZQEoTOZ764Su8iP5SnGI4G?=
 =?us-ascii?Q?kT/7onT/kgQdb9qiue3X2LW/TbepJVu0OJMSKf236qG+HSoT+fSaaqZAVaPJ?=
 =?us-ascii?Q?iDQaNfj80OytVK2cCropdooeMmRgduoWu1TYs0WP7nsmNGYfPFrXetR2d8Fi?=
 =?us-ascii?Q?ViFpbTz61WUE9qXu8yTeSwlk4psfUuGOD5AXBI3xVtZ+8MfId/1RhbQfDD8Y?=
 =?us-ascii?Q?Hk2CP7vagXA6wOAJK/3yLKmMqE4CKCxnTynI9jqkKMEgJv0Z/7hF9s4JHO+U?=
 =?us-ascii?Q?NLWK6+et2/X0JvJ3EzIMckUDUBA7yxHjaCb1hsY2Wxf8DxyWBJnx3bO15MPC?=
 =?us-ascii?Q?lko+1Wk1vbkhb7fVY+cvyX+twxxaISqleZjTWNeSI/KTMQq3MyEk+CWFr7Bi?=
 =?us-ascii?Q?bTffqw5WGmq5BxozN8xRW3fbFoQ4TLggmZZAacJXG+DFjCvIllzystfRDjh4?=
 =?us-ascii?Q?bsvtYhgjikLYfYbknz75nyr9noTA3aYc8edEkF4QZwmry/UnoHjkM7wQ2lXI?=
 =?us-ascii?Q?jliLTgqVt2iGHJyW93hg6Yf1L926fULlec/7mzpADoWLTvZwOb16QbKAnx2L?=
 =?us-ascii?Q?VSpySkPe9YNkdLXI2AY9doHpYjI1Pa6fGxzSJEIWgAljfCqrjIgHeweeZbqB?=
 =?us-ascii?Q?8F5yLha6CJQ6S7V0aMx0t6RwfxADp8GSXCRM5VFTHZemrTG2zBKDcEE7O4Vo?=
 =?us-ascii?Q?ix421SAiZSZkWziwx09UXQ8YL2uS6Qapmu4uBKJp83hwjV4jm05BRYxkPBjJ?=
 =?us-ascii?Q?UMztKQecrnhoWM1mwLH/OqpODWoHmsWmvBwJPB3aSkCfxnxlPhRGzg/7wSDP?=
 =?us-ascii?Q?IAkwfCCH8SkJYaW1p/aYWztz2vmqlPlMYQVVWbv9kElknczC9t5eCsp6/leF?=
 =?us-ascii?Q?NXmy7reLCJ7oLs3FSH06JcE58LdbW1OFELD3U/R4KjlOefw5Lyq9VNV35kZp?=
 =?us-ascii?Q?tXU3jwtDMbrqB2EvcuBCCBQYUQxTHVKtNV7i+FbqalrvX3+ihDeJSR7Y4QkE?=
 =?us-ascii?Q?3G4CN3mI109sdW0iP/ml61KVuybYH8dHRhzgJeesAQ7wl9i4IHITO7F3iVfK?=
 =?us-ascii?Q?PxLQzldbIKcqy8gWbE2h5cPHo5DfCMoXSF30+zbZuLcZA3UrCy5M7hFN+JDB?=
 =?us-ascii?Q?uXCRlMFLmBO8o1KvAAqHo1tYzicJuLkuvsa3nTfWA5zUbeOR20Tlp9BuE9x+?=
 =?us-ascii?Q?W24C+vzfknENX1aFKcFEZ9LqH2u4M6A=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 5565bd18-dddf-4718-8c3e-08da485845e4
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2022 07:35:19.6086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rhgHBQg1hF40wXxBX4bO1II94QZDvIBSWAGDtMIr7r/fZQYlrk4jfnxTM+LZK5tbZUm9dr3DJ8EUIoD/QilFXAotXUHygH71tZV3MNoT5EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3797
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot found the following issue on:
 ==================================================================
 BUG: KASAN: use-after-free in tipc_named_reinit+0x94f/0x9b0
 net/tipc/name_distr.c:413 Read of si [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.93 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.93 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nyTzU-0000Y0-Tr
Subject: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in
 tipc_named_reinit
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
Cc: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following issue on:
==================================================================
BUG: KASAN: use-after-free in tipc_named_reinit+0x94f/0x9b0
net/tipc/name_distr.c:413
Read of size 8 at addr ffff88805299a000 by task kworker/1:9/23764

CPU: 1 PID: 23764 Comm: kworker/1:9 Not tainted
5.18.0-rc4-syzkaller-00878-g17d49e6e8012 #0
Hardware name: Google Compute Engine/Google Compute Engine,
BIOS Google 01/01/2011
Workqueue: events tipc_net_finalize_work
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description.constprop.0.cold+0xeb/0x495
mm/kasan/report.c:313
 print_report mm/kasan/report.c:429 [inline]
 kasan_report.cold+0xf4/0x1c6 mm/kasan/report.c:491
 tipc_named_reinit+0x94f/0x9b0 net/tipc/name_distr.c:413
 tipc_net_finalize+0x234/0x3d0 net/tipc/net.c:138
 process_one_work+0x996/0x1610 kernel/workqueue.c:2289
 worker_thread+0x665/0x1080 kernel/workqueue.c:2436
 kthread+0x2e9/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298
 </TASK>
[...]
==================================================================

In the commit
d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work"),
the cancel_work_sync() function just to make sure ONLY the work
tipc_net_finalize_work() is executing/pending on any CPU completed before
tipc namespace is destroyed through tipc_exit_net(). But this function
is not guaranteed the work is the last queued. So, the destroyed instance
may be accessed in the work which will try to enqueue later.

In order to completely fix, we re-order the calling of cancel_work_sync()
to make sure the work tipc_net_finalize_work() was last queued and it
must be completed by calling cancel_work_sync().

Reported-by: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
Fixes: d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work")
Signed-off-by: Ying Xue <ying.xue@windriver.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 3f4542e0f065..434e70eabe08 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -109,10 +109,9 @@ static void __net_exit tipc_exit_net(struct net *net)
 	struct tipc_net *tn = tipc_net(net);
 
 	tipc_detach_loopback(net);
+	tipc_net_stop(net);
 	/* Make sure the tipc_net_finalize_work() finished */
 	cancel_work_sync(&tn->work);
-	tipc_net_stop(net);
-
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
 	tipc_sk_rht_destroy(net);
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
