Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFCE25C0B2
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Sep 2020 14:03:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDnxz-0000el-IK; Thu, 03 Sep 2020 12:03:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kDnxx-0000eV-Jr
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 12:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=; b=aSCvOcNCTkXg5HAuWSGKikRzdQ
 mWqKrtjIkshVKH2hOfeOf4QQ7/+q37QMgydONPvksWr6TFk/k3lLZmqRUZXk0uNPQg0AAarj6SKn0
 mWLCqRZ7JDcB+VEDSG6cMgNLBF4F0N/D/7Q+2uu43zcsqN1Ef5y9jbxo2etspBg570Ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=; b=Y
 iDX4rGHswGdPqTti+E9knW7K4KWN887ywwIHb5+fMqBdKTklFyCgRpRlGHCWik7K3AzyiJlwPlink
 cqnO4XxKZwcNBS5mrEECN8dVldQI9sUCMFtMocEaSjOHd76FpqNnmFGwR3itQFfyAP8oi1ESpl45s
 HypQ8hsR5u0yVtVk=;
Received: from mail-am6eur05on2112.outbound.protection.outlook.com
 ([40.107.22.112] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDnxn-00ATb2-7X
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 12:03:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mg4+qxLEr28s41JHsZaHqJiugmyWkr7bDAzvZnpGNcz0z9HnxuFr61RJ09Rus0BVbpEpGowesUGBI7HwAUOU3fpl0uwDG6+mYRZEuD5/okmfcua+AKPwSrSlEeyMhbKyiGFAkIfcrcH1WHELgpVzi2vDepJotvcV9RJjvKpPJa1SoZiLXXiF5t0vTqjn9+Bc4l8LHLWBXoZZ9r3rL7xqptyv3lVDHHFe8gNiYKn076Bj/daOdHs51Gl+KYeXazwegbgItAP5q2/3LzMvnkzzM7A0+YOd82ARMbN1+esGTYaUXDfKsaf847vLL5yLHxPTXq3orP8NwhthDCb97nRsug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=;
 b=Mh4Y7Ks3gx/bRLZpPRFjDnMNL/qlSuKxM2VkEcXMdRIDscgm4Xj0/Ir9hnUiKL8IjxKGAoKhrrbjd6QC81x0n/5HWmyGHmIUtGDTmvF2+t1X00ddhQcU7+ZUHRVsEUC/RZIc2LIFHAF7zPfgH4tx9CsP0NYDSvg0hyqVnKUCb4ZwhjLTcFKh1Wbn0deEJI8CwCulFaRklXtFEUfglZlp6090KgWT1itEEnAwiYahhcoWJBXLt76kzqo8FuuAvMcOpKFnOfxnk4nziQtwLrbUjU4ztyrqZBaSlt0Me7k8Z+4vLsLsdeRy4GMoEtL11sq/FVU+601zBDwCMge94aWBtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=;
 b=Z7SyL08pTFjqqZzdrE1M1UuzYOOmZw2OF2Ga7GqaHMBBnMZG+u5AjLAu+Gnf7g5uBpt3wTdiImNS5kV+9xnrMBDchGgDaQ+1x2P3h2bIlJYvX9g36qWySrJw2P1nWwyLawtmCatOJYBoUenPUksh+CH5f66a4scHV5JaXxtpkdI=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5981.eurprd05.prod.outlook.com (2603:10a6:803:e3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16; Thu, 3 Sep
 2020 12:03:18 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3326.025; Thu, 3 Sep 2020
 12:03:18 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  3 Sep 2020 19:03:02 +0700
Message-Id: <20200903120303.3098-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0109.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::13) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (123.20.195.8) by
 SG2PR01CA0109.apcprd01.prod.exchangelabs.com (2603:1096:4:40::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15 via Frontend
 Transport; Thu, 3 Sep 2020 12:03:15 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [123.20.195.8]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 97b682af-aaf5-47ff-4c65-08d85001581b
X-MS-TrafficTypeDiagnostic: VI1PR05MB5981:
X-Microsoft-Antispam-PRVS: <VI1PR05MB5981FE1C702A88667B2B3DB5F12C0@VI1PR05MB5981.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:234;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: it1jvf28BfbBd/4WinazsyjMOz57PwSgkY3/J9ZOTIbqjbS1MUbYzHZ+Y2Glnvl8Nt9Fys/+0mHu+3x54t5vowqeKzGTcg37gT3ghy2a3I63dDo/jebsHCa05kuMrDAhkcruVZlCs03K/wqu7fjPPKxiRfNe4EmaXir713vvDKcNYxhvY7FPNCW9DButtNgfixxWYIoKAdJntmEm3nfcX+JeimLgIwlGozCN8Pdg+U//ME+KBt50IoAEngisi7BWXb5KbYXt+sNLmIAj0d2pODNB3go0AibiXfOiuJbyqVyyiZ1zsvwmjH5AZJON9ZSlJxuEb6aDJ+Kr+bkZUYQAgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(136003)(396003)(39850400004)(66476007)(66556008)(1076003)(66946007)(5660300002)(52116002)(7696005)(26005)(186003)(16526019)(55236004)(4326008)(8936002)(6666004)(2906002)(8676002)(478600001)(956004)(103116003)(86362001)(55016002)(2616005)(316002)(83380400001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: yVKTm7y2pLwNlAODxiOau2N7vvWDpNb6a9PSXa/ZkwkKChyong0d2KSFqyVCV+b6264lKfFp6itLtqOQZqrPFxDMoKoConFFBjF1mMQA5rnwMaNHx3LMQRVF03WRAXhOwqLz3mhHPjItkRWXlGfOJDOOLjZfvSzcMYYhOfqy/FFDGcO1rUsHFVd2AZyQmRENlVNINUSk4v4RsGDs7sOrtyrznXQMV190upjEf0ULN6xOK+KXdAVzZz6ybIDWX/1XQ32n8QU2P9VZ3fkydI1dGXcRtHgj0LkXmL1uyHeFrf3PIbFaepAIJoLj/m/qB5PmXc2K1U9tR98XwfZFu+GR5ULNcuW7ocaU8hmrEOVSMjB3jtVkmBGKLhT9fuonpGtUctO+a4mzS/TQbQT+w3b0/VvgnAn4i3lXu9LNi5v9Br/rA1IOUCBtmx2os83Bm/bS+AXAJEH+97R/iOuRg5nh0s/orEHY6ti29BbhVD80C+NpcPU+U43swOROJ5Gax4cuozZp/s/7NDhOeE7RmtoB5RWKNTKgbVzX1xExxR3xhTbLzOU1yIYOmsmYTBl+K3Liv4HVUtxrhUbsga618Zu3WF+9pj0jlDsyc+EyRfWA3hWERtrPmix+2dsOQdc/YIhuY8Y6rrsVtrHWUXtloxzrrw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 97b682af-aaf5-47ff-4c65-08d85001581b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2020 12:03:17.8237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X7/5bjc4u88aRo0qoO9dUpcE+BEB3Gbl5nHKlJ7GvP1en6xQofO9JXsrYMh8zL5F5wfdeWpmvBXP3MskLIvJqL1a8QxijV1sCpeZ/u1+JbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5981
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.112 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kDnxn-00ATb2-7X
Subject: [tipc-discussion] [net-next v2 1/2] Revert "tipc: fix
 use-after-free in tipc_bcast_get_mode"
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
Cc: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This reverts commit fdeba99b1e58ecd18c2940c453e19e4ef20ff591.

The commit caused to another deadlock as syzbot reported:
======================================================
WARNING: possible circular locking dependency detected
5.9.0-rc2-next-20200828-syzkaller #0 Not tainted
------------------------------------------------------
kworker/u4:6/349 is trying to acquire lock:
ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: flush_workqueue+0xe1/0x13e0 kernel/workqueue.c:2777

but task is already holding lock:
ffffffff8a879430 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0x9b/0xb10 net/core/net_namespace.c:565

[...]
 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(pernet_ops_rwsem);
                               lock(&sb->s_type->i_mutex_key#13);
                               lock(pernet_ops_rwsem);
  lock((wq_completion)events);

 *** DEADLOCK ***
[...]

We need to find out another solution to fix the original issue.

Reported-by: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
Fixes: fdeba99b1e58 ("tipc: fix use-after-free in tipc_bcast_get_mode")
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 37d8695548cf..4f6dc74adf45 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -109,11 +109,6 @@ static void __net_exit tipc_exit_net(struct net *net)
 {
 	tipc_detach_loopback(net);
 	tipc_net_stop(net);
-
-	/* Make sure the tipc_net_finalize_work stopped
-	 * before releasing the resources.
-	 */
-	flush_scheduled_work();
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
 	tipc_sk_rht_destroy(net);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
