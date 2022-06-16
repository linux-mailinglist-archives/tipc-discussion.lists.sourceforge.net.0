Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6856454E5D8
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 17:19:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1rGp-0000Nx-NE; Thu, 16 Jun 2022 15:18:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o1rGo-0000Nh-1E
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GiMteV4TX9fEmoVJRgcY9ER1CEnhk/7NMQRFtnCtfb8=; b=i2jOc6aSbTLegXuS5+n5bQziAv
 XiCbRr2GqvJmDk03gXRbl0M+GvZNNmt/w/pdrN9p6VIIkqOYyApwdcA8yWCbwOtSGg3nB9BCmSJv/
 yNTfqGLqCKkSwHoIXaIo9geDfytXqW27GY4oV04wTThCWtYD8KlqmJ+BQJIadCf3NTHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GiMteV4TX9fEmoVJRgcY9ER1CEnhk/7NMQRFtnCtfb8=; b=A
 Q5ZbY5jw7dAB3B0CsasN2mJATlP4K4NV1rg7qvCD7vE5Onk1+xqlQHO3bEpmzw/gJsFIlRh/Izsrc
 NY4jrdWlf7ZV1vQSDJmY8radxqKG//CXJYDQS5PPeCWJhX70svjj9EaK52b9XlN8P+KAFcsvAqdi3
 BeCGfu1TiNewrYTU=;
Received: from mail-am6eur05on2121.outbound.protection.outlook.com
 ([40.107.22.121] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1rGn-004G8a-Ch
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:18:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrFEAIL9VnCfHne+eQgvJ77v+2NC0IGFUx4JrN8d3UI0rx9QiHBcTwa3jlgIR7hrYUrR/CnbSq2SwAkQlodpw3UPYkkRzM+oLoUBYtAEKU53u2dXbJylcheI72dNWlrOUqrptbwr+tqW5kpq478MB9NFQ8MRZHcJfsSFcfPJrrV0cNhIf80iYPF9aqmagMLtGnRoCmuj5J5IXsumP4tflNoAxyU3UMEfFzG7KvwyMPvSobnaevGuwyWBNyxduRKngSNAECgzbwh7qhKJWgZe7eAJbt7EwwA9bv9fQUMy91TX+l1sYU92tM3tKQ6/fnuKlofoWsenj4UjypZ4K8Ff9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GiMteV4TX9fEmoVJRgcY9ER1CEnhk/7NMQRFtnCtfb8=;
 b=MNuEMl5A1FAn6v8l5BypBMlhP8sGU86sb2SW5PiElS/bwjLK9LEid6i81YwH7jCwvXhj++GbQgITcDlYEjl7nU2eqH8nNUoxBzHvpLVg1zQOA45976oY334KWymYboAnfwOoRtZcaOr74f6Z/CxVACiuGi0+/LjWR1zUzr9VONa+QIUHx516I+V1Y7XW3DaOIavm/mZutm1C+iTrXRMuIGHFXinzkV0LB31c56ukvZJ5OpPPzHgDH//30WrwFScq9BKUCchgdrjvSzevOnbP26rBPRQQ7qdI/CPISAXjdUc4khSOEVy7wGqNiPc2AD5Wg3bjj6cFOOtOugYhGaXFCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GiMteV4TX9fEmoVJRgcY9ER1CEnhk/7NMQRFtnCtfb8=;
 b=jfIBkzQwEwMnuFaOZfgYuKx8yh2ee9KlUiQINC/Hx9uJVvlzJGiIoi4dvW8FqXMP6ypXN24YgzCrutEN/E4eSA/SIrY+5ijGCFk86S/5RmlsmbdfogxCeMo33WbT7BPK3DSdY4zEA8GR+FIapFwoTisMt+Gfnf7+1AUVGP+rOKQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by AS1PR05MB9650.eurprd05.prod.outlook.com (2603:10a6:20b:476::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Thu, 16 Jun
 2022 15:18:45 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%5]) with mapi id 15.20.5353.015; Thu, 16 Jun 2022
 15:18:45 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, tipc-discussion@lists.sourceforge.net
Date: Thu, 16 Jun 2022 22:04:11 +0700
Message-Id: <20220616150411.10329-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2P153CA0039.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::8)
 To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f28fd519-4d1d-4bc8-8597-08da4fab8132
X-MS-TrafficTypeDiagnostic: AS1PR05MB9650:EE_
X-Microsoft-Antispam-PRVS: <AS1PR05MB9650DC83A500E7BA71213FCFF1AC9@AS1PR05MB9650.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +5vOI06F69MmGdEkHWQnnrEiin3SNJwX8fP6hFKe712EV1ANNqGHRuA9/IwFF87kp0cLKt/maj5oG7AeGbnCF9qdVVqUjNKIkTEXM22qOF/b+s31eQ8iGVl+qBfJJ/IHzWwueP47jIbfhNojCeXn2Ukz4vsrL9lExFS2MOqak6rDvtvyf0tVtqSlBVVBsIPVANz9qtacboQ/QkjO1fBUrEwAJwFSUJjnj7G/LQ3BpDZj3Q+4ODGAcY4Gcva0Qu77MegOnPB0wI9WLcgYSYlgXJkp3fZXRGeRsNyptos9aMHZbId4uiasRsKnVrgxhfb/zmS/bznuxKi+IXvigJ8wbd7Kute+0drssZDAe1jfeQZ8dUbI8+x77fWXaVmUGdWezIszVobslHIcbY30vVlc+nk2XoxVql5m5ZHJLWi2Rko5Di60sSrpueFHQhUlDor6pAjk/ChHe85JxGa0Q7QvcDnu+BYY7t4W3dA6hzUBLRc9cgTfrc4LvdiDCGVtNP61cemWpR5cyx43CqDJ/Tj+wmwKAFqS4Zfo8J+VuGX+LctzQfSWK1qfMjb7UK0A6daSSlAwSKR11QQJIXAMnAFVG4CrchN6bHnZM/0F7LDEIJql2O+hJwy/C2R9YqR/H7ON29MiK1H52fuO3PCjl7PGy55EEp30pRnAE5nhxuUJoAKAbHlMhphhRyIp5vHXdwEQrHNZRz4TqvN0r2LYD92RVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(39850400004)(396003)(136003)(316002)(66946007)(2616005)(5660300002)(26005)(508600001)(41300700001)(66556008)(6512007)(66476007)(52116002)(86362001)(83380400001)(186003)(6506007)(36756003)(38100700002)(8676002)(4326008)(8936002)(55236004)(6486002)(2906002)(38350700002)(1076003)(6666004)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gY5110mJGTXf2ZV0UyREn4ezEHlRAiFSnAYk3v5v8yhNOOKZqR9chluAm8tr?=
 =?us-ascii?Q?UpTtq1+HwAvh36uiL5CKh8D/SH9ZMJWIzhyBHS7+pZfwTb73tN+9M58KMBug?=
 =?us-ascii?Q?7JGnRl83uRuyV/l2YdC1bdT8eVmjjz1kEzo4kDZvW46BTelBgsPgbfde6B/k?=
 =?us-ascii?Q?dmCSIJTeYNlxPbWNLjRdV3bjAcmFyFJ6sh2qevTDay7uWUU3F2dqFc7bR1KM?=
 =?us-ascii?Q?MeO1yDX38iKq6DuWuxq9QmX5B8W0aUboJHiJtaJGoriAbKuxYLyjoQCSqKrN?=
 =?us-ascii?Q?EzeoAoOc0rahABWdpJeJkPVyq45tr/MTdNe5Ulu4+PqLz2/fwHf/Oncp2/ur?=
 =?us-ascii?Q?Vwxzvlq5rWeXzx5sJ7nWeUChuYJOnOuQDNZL5ynVPotOzLwBol7OS6KWrPT0?=
 =?us-ascii?Q?EMK9NybmsD8yuaEehQSkYwV0EoJ3uzFbx2R5Phw1zqwt6aRqhHXQCSgAsrgb?=
 =?us-ascii?Q?fp5PPsvcpMAQAZZ7mAvujR9p8cLlPy9q873kmtkXU7J7VZfhA8xsz4sxGlf5?=
 =?us-ascii?Q?3aKGcZH2K9OMkrL7OLzLbdjRsPuY2Ht0rFzACaN6CKelunvo9VGSNz4VT2+r?=
 =?us-ascii?Q?o4hzgfcXb0wU+bpY0VqGJd5O6i11+fLeTdztVVcTGEFNjCI5U6A5ThPhzQb6?=
 =?us-ascii?Q?JbPixZIfZaE9WpGEa8U/ZKAsA5GMb4SL4ZQoHXxgSpTsdZ0NT0GotUhCnsEf?=
 =?us-ascii?Q?5gooTYbaOEvTS+f3jzcqvb1fcV7aPgdNBgQvHTMclmrfjSqymwZCbFaWuUar?=
 =?us-ascii?Q?4MigAtHQI6DYF15OAVuClPKuTJlDd6F54AVkN2Nq73zyizRt+UR3V+kUPYQZ?=
 =?us-ascii?Q?AEQLTqM2kAG3FAYbdkF/9vc/hal2EO5XpwMAiyusrfekyJzFxzbGvThd8N6E?=
 =?us-ascii?Q?I09ahaDoWVH3ATU7AISZYDICeZSIrE4v82Tj55BVV1ct4HBaKeWw/8w3Q9Sl?=
 =?us-ascii?Q?cAvkkZ00oo6YR65UQpkc8wxlOIogEFymJQx1F0W1U094IXoPyaxZYZoJpp8f?=
 =?us-ascii?Q?15XfXpE2XNfSLoFXYe5QOrGRng7NavkaU9nkk89DTdrB3ysNbBu7CkX39ipu?=
 =?us-ascii?Q?d6YdeWqhn+L1p1mAHJGIJkRD7dfQGM+5AcduSrFO3eww04FWmct0JKDLIrZ6?=
 =?us-ascii?Q?9yfZWf08aLZqIw1SwbUpocsm+dCgaiULG5u1qHSK+2otusJfLr8FE78Eyn1A?=
 =?us-ascii?Q?+1LZhP1ytHrIJ0jHIrjdHLUG1WBJ3e3FAPubOwhBNHfPhhKc9e/PexQmpzoW?=
 =?us-ascii?Q?pGV2gssuhFFuW97A70wOP87JY8ZS79AsKPyheJ32DHwkL0VRKISK6aS+UpD7?=
 =?us-ascii?Q?+q/JFYbaJM2Mfr9ZV3u6z5VqiVOpiePd/9RqgPu3n6lTaPIOEkmxuSTpcfgQ?=
 =?us-ascii?Q?Wg0dAbHCKq/XMS8mCc5xUQ1CWW/+ZQVF7+OTRp9r/7QocsjyqOmCjHHC09jD?=
 =?us-ascii?Q?292Oz4vlHJypJWjn9uJ2qyvL0+JZnVznic5MqEzIVrsIhplW0AT1kZT0NMyt?=
 =?us-ascii?Q?AOQp9QhjmrC+OA9M3EWdIaswemzpkB3kP2ul9sI2kO9bbJOKNieJEMP1p9SL?=
 =?us-ascii?Q?cAFXBpXDD56n256+N/lKxgo+NmbdB0K64ZI+fSVq35o2ZSCb1tZVU+QuHsKr?=
 =?us-ascii?Q?IUpUlwRGC8TNOl59Z3fNM/qbtlHg6+kXlJg+Upt6AYJfJErbdv1GsIIftfIm?=
 =?us-ascii?Q?Bwyvk73owXH/N4UXeI8PxZS7Vu33eQqMzU3rlGx6goytrA7R0Kaomw3N9PWk?=
 =?us-ascii?Q?GnKxEQ9i7RE/CMVxeK4e6m9fZjITutY=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f28fd519-4d1d-4bc8-8597-08da4fab8132
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 15:18:45.3482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MF77i0HLsabnEDufPSLCDfR9oxGkHL9Jhjq0977IYZ1wNka+eD+E1qZIMl9RAQI2SudUkCCuEi4g99cRLwNOHOeaAAXu4q0/dXDBAxEd/M4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR05MB9650
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.121 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1rGn-004G8a-Ch
Subject: [tipc-discussion] [net] tipc: fix use-after-free Read in
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
