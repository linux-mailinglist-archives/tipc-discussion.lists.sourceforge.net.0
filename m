Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 782432881A3
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Oct 2020 07:15:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQkkZ-0001yu-8I; Fri, 09 Oct 2020 05:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQkkX-0001yl-1M
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 05:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7VVdXN6Cq1z+wjr22tEtd1N/awS6wkJpRad7d6tFwo8=; b=cmsOYZS/6GtCOCzprwijKn/DBI
 Yu3zYb2tE3MswITzY7ElcQ/wCuM/gIqdN55orBrU2I266JutBNt02w3J/WGlQrQODbSydBQwSiTga
 cy/9yWgxBVRSWKGr7BOkmz8+rG7yX2nXeUJrI1RkL1SZB4a5XBZOcF836kraEOnPExVk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7VVdXN6Cq1z+wjr22tEtd1N/awS6wkJpRad7d6tFwo8=; b=b
 HPZu536HoXZ9jZAja8snJSDSFOtx3hVG0gd2vDBoVlrQ9J7XR5e9jaMzdLCl/kN1T5bihqTM0AHRH
 2OsFQ6GIGnfSA9ebqYrfstUnOL3EkAzjIR57JMA4HTAJeSQlXqJiTDU/CUgplcAWPIaLXGjddKNOJ
 lr2vb6oblzrtEnaE=;
Received: from mail-am6eur05on2107.outbound.protection.outlook.com
 ([40.107.22.107] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQkkH-007yaM-HE
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 05:15:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXknJS43dZvkTzwCVBiXJOyTg9+GsS5hP/y2h9I8Ku2R14UG+KYMGhRlkPrxTcoHFRyYRK7dq+RI/MD2atNzKH+b20aFeXrceeo13/GsDAHHGRYQy1QEpl67wTxhal3MPepMfUS1CADa3jVKECGaQxW8i8KbkiDd9YVgRgxkxyTfIgirZIVkXNTfCPAisVTBJoIL0NBqiIJdBvvNpsWXEWAyaCGHaoPMJzJfJLfXGmpO0WV+pIj8oYby0A4BIgb/Q2iP+ola8uuZx18zkzhICajBg5BBHp4IWPZSFEQJJJ6e2MyvUjWHwumcxlHTdx4DJKOzwWCC7FhCqvSQtuzIug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VVdXN6Cq1z+wjr22tEtd1N/awS6wkJpRad7d6tFwo8=;
 b=MNxEh7f0clNqx0paXJuLVyexWxS3UPkTRE3vihAh8XcHjI/MiTpSe6wLSLMtEQAN4LPrb3kV9UadN7H+5qcbjEAzTOIoKTBsKFJDazcapaSbViHwJNh0hyVpoDGBdYDXqDYNAC3482kAD4bqGa6dQhUgyFzWwAcY5ay2n7uTYqYl+wmQEf7cpJF5VnBoRy2vgdo7ZF7E/awxEDIoUadd92SiRUmZfppbXJ2HteBZult0SexAXOASMCR7SPsl1bLHg2DUkegHN9qcCxL11hOBzDfoi40TCCGueZnMmoUqu1VK7OByDx9rdM5blIWhe2EOjVzWKYW66R5eI3/tDJBXwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VVdXN6Cq1z+wjr22tEtd1N/awS6wkJpRad7d6tFwo8=;
 b=NtjY3ogBqMxq8ioGnN/bwDHqzl259j1FQG8zQ4mK6Fzar5JW9/6TPff4twK/kjp4DoufdjuiHKiS/kSXtCrXf3CuyK4Dw6bA3jA6G52YGjiQdQN464cBulGnKyhWqdHB9Vui0pt94WdkaHsQhLoIDdwyFCBBm8OXxCRRsAss0D4=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4782.eurprd05.prod.outlook.com (2603:10a6:802:5f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.42; Fri, 9 Oct
 2020 05:14:55 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Fri, 9 Oct 2020
 05:14:55 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri,  9 Oct 2020 12:14:42 +0700
Message-Id: <20201009051442.69663-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2P153CA0017.APCP153.PROD.OUTLOOK.COM (2603:1096::27) To
 VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2P153CA0017.APCP153.PROD.OUTLOOK.COM (2603:1096::27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.11 via Frontend Transport; Fri, 9 Oct 2020 05:14:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c8ca19d8-a107-408c-4f00-08d86c124206
X-MS-TrafficTypeDiagnostic: VI1PR05MB4782:
X-Microsoft-Antispam-PRVS: <VI1PR05MB4782F9F832C5CD2D59781271F1080@VI1PR05MB4782.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:126;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kVG8A+55Lg2FWNSIbyLkLeQgO4iSgDxPgsEn1VghHhabxYZcBDEyKwbzTWYMXe0T3VQqYvZMiJa0KPaVy2x/cPXYTLDjZ7+wN7+O9TDLF8fdq6yJEj+1WlHKOZcU/R2mFyD3AGV8uYI/2Qn/JoCI4y95rlTVOzvzi9auEW26Lx7yZ6jlm6kXmEX6YsgoXE5zcNn+4n8y9CCKmA4YbVqnHLzUcmm4JzH8xiT4ugSpDJ0Z4eV1RehQwF8NhvmVc1KD5Lv7HmjIjz2i3b25oardKzmXyG2Ho93Cg6gsMBUh9cTSPtZy3VZDeelBJVXdVDU0MGkqcqoYPazeLw+zZvczlA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(396003)(39840400004)(346002)(376002)(86362001)(52116002)(7696005)(316002)(83380400001)(478600001)(36756003)(66556008)(66476007)(956004)(55016002)(5660300002)(66946007)(26005)(2616005)(16526019)(8936002)(6666004)(1076003)(186003)(103116003)(8676002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: grAjQaamm8919LHebVUwgsYNlJ8WBf0jUkM879cjpQIv7ISDG1X9NAMhUMfGJwdMTVcD8/BLog+2yiWfTN5tw5w8kYHKN256yYlUsxQrNVNqYNgu5n7h8PgvsRxlk23aHB0e9k5vjt6I+ahSFItlDDNwVyvOUoOUa5ASETInX4mzT0KNiCSyK8MW8AcAcSwk2JiAaYGIIILaJRykteGSl2bnmjKk0ddyK8zLKpbsMNsdQAzo75TdN7+5LLBHTq1z4/MUmoMgJdspeafLTqfClABikckOERbt/dlnpLUyBRmu0a9aZqY+66nq3U+zGIEIfID5MnlrlCyub0JZHAIWZrop0rfWcP8OAZCZbbacnRUS+oJ06vO28jqSQMp9AVASRv2E2VJMQg845+pj2PjMwlWrRQv5GzIRAsCiLT8zuyS3Mwr+UFSFLvjfaoG53rmViUCaPwGRs/28nGzvL0IzB1B+eKPKDdg3o0x+GNS3wayi62kwjk2lcbqac/7Wc8XPpPbzp///NMwT9SfJnsKb1dwXQaHJFW6Nbh/J7oEGxliXvMLXBLLEi9q6uE1J85GEeCZof32InWZ33wTfNEgBtOhkAKoYVdBMC+FAiGFn5oDOYr0kVkmgb8fCiEhXL9Dj6grM5FgBZYOs6F+luenTbw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ca19d8-a107-408c-4f00-08d86c124206
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 05:14:54.9304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7wiQqWB5OulXwKePHNdRXL56vD5e4R9JlWgzBLIF0whwygF0OT/sB9Nm46V9nYkq5aF/Y5cArWcwG+pLSZobCdVtYdDqU44tniPm8QzSnDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4782
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.107 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.107 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kQkkH-007yaM-HE
Subject: [tipc-discussion] [net-next] tipc: remove dead code in tipc_net and
 relatives
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

dist_queue is no longer used since commit 37922ea4a310
("tipc: permit overlapping service ranges in name table")

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c       |  2 --
 net/tipc/core.h       |  3 ---
 net/tipc/name_distr.c | 19 -------------------
 3 files changed, 24 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index c2ff42900b53..5cc1f0307215 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -81,8 +81,6 @@ static int __net_init tipc_init_net(struct net *net)
 	if (err)
 		goto out_nametbl;
 
-	INIT_LIST_HEAD(&tn->dist_queue);
-
 	err = tipc_bcast_init(net);
 	if (err)
 		goto out_bclink;
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 1d57a4d3b05e..df34dcdd0607 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -132,9 +132,6 @@ struct tipc_net {
 	spinlock_t nametbl_lock;
 	struct name_table *nametbl;
 
-	/* Name dist queue */
-	struct list_head dist_queue;
-
 	/* Topology subscription server */
 	struct tipc_topsrv *topsrv;
 	atomic_t subscription_count;
diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 2f9c148f17e2..4d50798fe36c 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -244,24 +244,6 @@ static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
 		kfree_rcu(p, rcu);
 }
 
-/**
- * tipc_dist_queue_purge - remove deferred updates from a node that went down
- */
-static void tipc_dist_queue_purge(struct net *net, u32 addr)
-{
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
-	struct distr_queue_item *e, *tmp;
-
-	spin_lock_bh(&tn->nametbl_lock);
-	list_for_each_entry_safe(e, tmp, &tn->dist_queue, next) {
-		if (e->node != addr)
-			continue;
-		list_del(&e->next);
-		kfree(e);
-	}
-	spin_unlock_bh(&tn->nametbl_lock);
-}
-
 void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
 		      u32 addr, u16 capabilities)
 {
@@ -272,7 +254,6 @@ void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
 
 	list_for_each_entry_safe(publ, tmp, nsub_list, binding_node)
 		tipc_publ_purge(net, publ, addr);
-	tipc_dist_queue_purge(net, addr);
 	spin_lock_bh(&tn->nametbl_lock);
 	if (!(capabilities & TIPC_NAMED_BCAST))
 		nt->rc_dests--;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
