Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D5C25857F
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Sep 2020 04:04:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kCveU-0002pv-10; Tue, 01 Sep 2020 02:04:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kCveR-0002pd-MP
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 02:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=; b=SoUjx6SCok6gMIPARPU2xe5JST
 MIPWhfCYqmj3Ab/rdK4qOrE+v5OQzLASIyYgL8+KJvgjpjfRsU2BguvziZu/xljy9MhiOUpwf98j/
 KKBun57GpaeBv6sTt0yQU2XN5yQ7fVc+97O0TEEh34Bq96U7pVjKpDyn6796jUP+4EX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=; b=C
 /owMq49NxGn1oxwCx0o678GftGd6bcDn/9W9Aj+qXcTfNEalU14zQEhk4zcpRAIK1/2K3YJfw6QjB
 rkgmx5smOsNhEEJRCXoQAGEIln1CyVrmdAAt3CgzmwRjKQ3p6dkziII8EKUBNS7vV3HcZdm7IULwZ
 mM95zX30mx0ubmGU=;
Received: from mail-eopbgr70109.outbound.protection.outlook.com
 ([40.107.7.109] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCveM-008P6u-Rp
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 02:03:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ehiuXaUwOIrd8aE5sFXnSCALrDNhvJJjEo2+6UF15f0dPpMK3BUGaSDbx5z5LS+KblnGdWxY+npxI5fPZa28mDrnyt/978wfZZdghXY928akqxUIQYknuzhdWBXMUSAHz6PSSRFihaNjLmF1VRwNTLaFALbb9hImKTWRA30VQtXvqVjniOr8LqI1QIIAQ9AoLdmOFcQEIuCF7U/aLWFwHNvkpRkOa5MKS/VAlSeViQg3fg4O7I2xLWAQ47aUCvVeBbAC0cpiH3k149ekWruBrzbu0Gekc66Hk4IPtGaxQlIim0QVDcj4CeUgPdBjs37uYaXxbndv1WU3snBcofqeKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=;
 b=MHFQ8vM1VkpXq+y8Hps7lkAqf6jcRn7p0KTqW9gsf+ULM7ey9JdUXHMgHSe/Pvt1rzflpM9jRotOpmvHm0JIwuphCJ/w2Y3L6/FeKSA+eqS9ugkARjcfNj7bHLcdqOH0gQs96T0+OXHzjanEYyV1q0ICwD8uZvHpZumLCpMVyDevnM1K8R2QhYfQ8UuSztf/qCI4HM5bymhO0VgA6I5VDQkuLk7IRd1t66YS3+u59dLGsOUk2YYCLIT5vVYBGwVtsxP1iylYA7LzsljUerjO818AHFxLxExUP/Zpm5xWZawpy5F2ZYbpOCRwrCxYoiXz/UhbvVj21EyqmiG8mKeuag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIzaOu2pwVbcuA/rB/10keFYgc3tBFuL6296nnF09Gg=;
 b=Kbuu0WQ75+9rwnDS00D58dDx9ERgrcgGQCXiHPG49Ou1+9x9Bn1PTxI8z3kcbU+DiUrMal/AVBN+iXgC68S8SvBsKGPrvw/IfvU3ydYL0vmGHYtG1y2Qr5Tl5sc65uNeOHmlah3OmgMeNvz9ZXo+g+hl+wycs7npYpoZQpRZuiU=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB3694.eurprd05.prod.outlook.com (2603:10a6:803:5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.25; Tue, 1 Sep
 2020 02:03:45 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3326.025; Tue, 1 Sep 2020
 02:03:45 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com,
 eric.dumazet@gmail.com
Date: Tue,  1 Sep 2020 09:03:31 +0700
Message-Id: <20200901020331.3245-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR02CA0079.apcprd02.prod.outlook.com
 (2603:1096:4:90::19) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR02CA0079.apcprd02.prod.outlook.com (2603:1096:4:90::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Tue, 1 Sep 2020 02:03:43 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fb0db45-7561-4ad4-e22d-08d84e1b420f
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3694:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB3694E40B2868E9A3F8F06F66F12E0@VI1PR0502MB3694.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:234;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XobgilH1mfIEEF7LExPGI2Whxuh3Ozw9mLorFL2W0iFEzR0zCryrKEWlTGVS+dru+ZJCaD4ELrgRgTPQ8yXRSdBdRC+ydvc/a2pJuDaFBeHM7Q5ro+0QwA3f6Q2oKnhgTxJ1VmE4V/1f022xjYsveouVO8gXRJDX4dDNtFY3jZcCyfFx+6fmNglbTiifmkzFGJ7i3PLnnhpSK6+QLms6W7EHNbLX8nia6Z3Ma8S6q2fEpkQ+QunPS6v5r/FHvajWn6do2K6YXs0kXBma5Vh4E9xpIjjCDpS4mMU4nfRlBDe7Umlpo+fVUeyswq8v3ufEbBvY5fbcIgYeoSF6FpJLcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(366004)(376002)(39850400004)(396003)(6666004)(103116003)(186003)(66476007)(956004)(66556008)(86362001)(16526019)(4326008)(55016002)(2616005)(66946007)(83380400001)(26005)(478600001)(7696005)(8936002)(1076003)(8676002)(316002)(52116002)(36756003)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 1rqKxaZtiaVnW9yBTS+twXXQExT+EJBAInRkn57K9I/BL46CnJK+HGaU4kGwZUFFZrbO0o3gvos2NnNQbYGkyW2DVFnBSZiPq0soZQqve2PDnGEiYjXmI7xnBZUhujoDphZyFEpjHdrvFSfTPGRaj+mwO93vH8Yb8oljiuHrr4b1ll3XECO4UVOEbj3QDoP5VmwPgSQ8fcSF0ghIKmmTtaW4WY/qoyzBQlZSB0xgmBppVtOGSQztbBv7s9XR/6oeDDvJXsjRvhIGj21osUc//ZHef1Yu7rzX/pCTCsAvnrrpHYWBCPLjt3a4EkuT1vJgsDRygALLknSkF/JzQTSR4jKrQV9D52PFeRJNY9Yhw+emsK8u6s+6ByFy82FjOhmY0+bGyzsG7IaqWCdUsfoU+IhSf2Xlq2bQHXMuhJaWScui51HUltY+H5jauwEYWP+T+68vUhrKGYyKoTgDQjehblZ99eBidDeBO8Hv9LdBdoGEKhS6G4oVsQDBTJVgAOjJBY5UFr81HiF7XIfb/9ex79o5uM9qPpPem5/sDS+EdxO2mqNRvcjNyxmP96c+4gCMlCCaWYcomhpJSZAoPguPsWcMTdyc12KycwW99ulci+ajvOljCt9T8BMFRc3wHKDQ7mD+Hsi7jzBVDqbj9+ce2A==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb0db45-7561-4ad4-e22d-08d84e1b420f
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2020 02:03:45.4774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yaeDLKOqiERQTdJ3R79/67AbzcT0R0DtCk4aIz5Ye4Rm7RWhDVIMjdEOcg79UOFLr/UQHRh/YQj2jMFk8nALmUqzToOB82PVAss8c87zqsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3694
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.109 listed in wl.mailspike.net]
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kCveM-008P6u-Rp
Subject: [tipc-discussion] [net-next] Revert "tipc: fix use-after-free in
 tipc_bcast_get_mode"
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
