Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 891C63E5768
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Aug 2021 11:49:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mDOO8-00039W-O3; Tue, 10 Aug 2021 09:49:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mDOO5-00038X-Mq
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 09:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XZSZIl0uv9uo95eQuCdJW9A6WHN3RkD0ADm8GY6otQI=; b=XryXjuJAn1G4YYtam+WrkrqxF+
 3QKeuD/t4XJo5IXxcBeggXwfNojZp8quQP6yTK+1wzU8PkWeWITHP2zq/iTKXaCqVCRSYRzE6YKKZ
 2BWOty7+lAOhBU4nPMq4u3PSiUHm0leGpl6SwpT85b0N+R/8CsOfzmVamSXdjNZbq5wM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XZSZIl0uv9uo95eQuCdJW9A6WHN3RkD0ADm8GY6otQI=; b=A
 oitLNzUnwck1oGJz6lm7gbg0/Oxarsu8tt7KicS5EWJY/Atj+0lB3fgRVZ299WDArZHORlTPiGYwR
 tOvNdFpGYyJyOa8k58P2NgokeVRgyDNWU7N9ZEcfexaZcBlqN5GSxuKaYw6je6zPTVwrxFalxTOdq
 xjsjac3MZ06dDwO8=;
Received: from mail-vi1eur05on2108.outbound.protection.outlook.com
 ([40.107.21.108] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDONy-001heB-CT
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 09:49:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCtdC01D+tZtq+7xIyS7VY5V7XxUB5HsAuELq2cneRdgcJHF0XETFGrDORl34TEODEOVFoQpEAhxSbo/Ah412SPPlGQvjjyE4LoEFl4B+oJLfObjwaXc0s8rSRXj5Ai/cOvYR0hOQDhdjMae1CpuOnFvABr9qve8oGCeBXfjHltDjTZvyTj8a/ASNTfZxHJAu3ouS3dVslgWqlu4TDfffUUkhKYt54Q9qcRWk6qr4oL+B+KrRA+UC5dGw5ZJZan+7VBISMTA+snKkuD5vzMbDRV3Ro+bulF2YBTNOTuzB3+HG7RaSyyvCO9pWwhWQfmTNpb8nFiiSYwcx1WGeDjnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZSZIl0uv9uo95eQuCdJW9A6WHN3RkD0ADm8GY6otQI=;
 b=XQsjz/iQsE+aDamS+C1LuYSQLUAUA95/Nc8M4CVBL5njgUA8LUhEy6aCTqQ+6VlRTjXXPL8Y3tNeUQYJ1Sw/1Ffqx3J249weEUp20dIYIk4MaHRTMUpcoW5jEcQyiBr21/1mHg+XhFs6+fdKbDrNrMa6LWPHOX5fj28R1zBrtGXS8jgyTXT9pgLZFN587oSdzvn9Btyo85DbTs/+OOFmvHBmyhso1w0Y9R+BMfjrmwlM7EftTvsb+3SVOdiMD8k3MU1ODvVGq6jv+oWJzCcODTLX7mC34h8KEuEOqKRtqHMW0tADr6UpDKIMYYopNDp+q2s2ph219PWwEN+M3Rkeww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZSZIl0uv9uo95eQuCdJW9A6WHN3RkD0ADm8GY6otQI=;
 b=aXkueaytsIJ9XPj84DIt/O5FXzLW4nQ0ySgN8/pc4uPYg7VyHR4dbpOokiglw/grfZiXPkzGJ+B2k4yO+0pKYYfCZ8NbJL4ye/1hm5024V69ypPgOZSOrs6dn2SdeeSqRR9CuUj1uU7Et88yZNidSy9CWr0PYfQJa+T32VrPZKg=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR0502MB3742.eurprd05.prod.outlook.com (2603:10a6:803:2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Tue, 10 Aug
 2021 09:33:51 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::7c44:79b3:a21a:9c87]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::7c44:79b3:a21a:9c87%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 09:33:51 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Tue, 10 Aug 2021 16:33:37 +0700
Message-Id: <20210810093337.15926-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR04CA0195.apcprd04.prod.outlook.com
 (2603:1096:4:14::33) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (171.252.154.210) by
 SG2PR04CA0195.apcprd04.prod.outlook.com (2603:1096:4:14::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 09:33:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce74fb00-7855-4949-902c-08d95be1f67b
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3742:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0502MB3742F223258F4AFB6D73E59AF1F79@VI1PR0502MB3742.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:321;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 18eytQzW3irFDpNh7L9fqfbjG+lKxnexYmOMg/dYLUqvN77PHOxxUqK6zfIi8dIiCirCdjvDiDQtwX29+JN4Xm+auGjyeulKSg0N3a/cro/QDOQ4o1QV0hKtMa6eT6RAWuUeCgtSsQSHMi8oBkQH3JLyRQ9X3Hn2o+LEXPQP7yhfrMNSRHwPORNOEWHFkTj4dsdcktitiTFWKu7bQtheTqSUGJqt8tYoMS3FrZcvTotjG0RgUCb5KpAe3oaX3ZTb5NqNK3jgjLyeperLDHS6mBA5SGFpZe8gMFAmV7z+SULl6RbLwn2kwGM3kTx5OjpNsCJohauD5qCNO41l590X2bX7PdtYw4ntB6hOUOSSaNN/YnblArfO+J50FuVg4omeBQDDkIxE//Ng8EbKzXGngXi7PuHoz1O1Imp2L143aTF1z0KY+Cztnl7fMVjBQflyAuBvIb9SlTQCRA2HVysCr1ionZh1rVAcM5DjqtMQ0kJT/+C/nWG+QRupxppDcbQVsl9Iwd5EDPjUb3rSCaNnw2iLJkSEHf5JLja/CLfTSDNzCmj2kotBi3yuqvgOGaQcVbnjQHTZwHcbJJr1GVlw53JiyN8SnAV0QwYZD99Tk5yYxcFQmv1MaKD15ComPpM3TiaqCebqDRMXanmFmUO1iZ3j7CZmAxj3aXAnRsctt9mOJIA9ZTT00nFrNTL+7nGSDUQcUXzapT5Bzi17U9jMpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(376002)(346002)(39840400004)(2906002)(6636002)(38100700002)(66476007)(6666004)(66556008)(8676002)(316002)(186003)(36756003)(38350700002)(7696005)(55016002)(103116003)(83380400001)(66946007)(26005)(52116002)(2616005)(55236004)(478600001)(86362001)(956004)(1076003)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vndD+3ZTh3HbCXAhQaeptgCwjisvgMuUJclJm0+gBbgw8u7iowBGfyJJ17ZE?=
 =?us-ascii?Q?ucIxJQeyRokGjHoD8hMamWi3hlRV4m2nCaOgUXixyJJ1G4sotLOfpEMTJxX7?=
 =?us-ascii?Q?Zr5WQ/cmdxCpipC65nY3Cwsj0Hu8fAOyWgnGfAnFmwdw3xR+h/+JcCVIDUUC?=
 =?us-ascii?Q?IWef3QUdTcpUmcEM5FB2WGn2kphn5rtLaqY3EcZg0dWJxC/EPempScx2QPtW?=
 =?us-ascii?Q?tSueRACnkuFXyDwP4WiU89XI6HiRqvMAB82VFdNVl9RHJkFpZX9hGFpiND3A?=
 =?us-ascii?Q?2FrnBh5hOBsD/4R4Mj0kILkc8vqIo2ixWRurBiwgVuRr6WzTN6xM1yUDtsVR?=
 =?us-ascii?Q?vF53gVrKVQGj2i0BP9d5w1l7We7lH1udAj0HcDdnFgNuX14IacIYIveRfMIP?=
 =?us-ascii?Q?SYoHEg/bFmEcaex7EjuIL0uCUBuVlHjlVDqVVyvE+WIWOAUMfsqSjg307p1W?=
 =?us-ascii?Q?ffc1IqqWcKQDaXWRUUdKH4QH5fN7KlabuBRlNt2MUyfIrct5st4TqiE+D2vd?=
 =?us-ascii?Q?GB0QcFvu0FRq1S3li0SDyTzYX6pVM58/xdXGsrU+FJEH1onvhjHct+bnKV4i?=
 =?us-ascii?Q?4UMFWyyJ00RhhI8xOT4eQpU8C8FwGr/CQQWYbot5Xu7B/D0RldrndZGkOEXY?=
 =?us-ascii?Q?2UB9ms6qOw0de65okpRuqDMGchxh15eunl4OQkjElQXGsB5yvoivfH3WW4EY?=
 =?us-ascii?Q?d5rAEasTOrst+3sMuOvl2rbIuoDLutmb7ClflckVoCUgq7EIY+vdTB8gFAzS?=
 =?us-ascii?Q?TPp6dP3x08oO2n+csWhaGwuQcrE9O8jzGaOotZDIcDd417s/4m0Q1u0SNJAz?=
 =?us-ascii?Q?OakGM4+Sw7EQtgIdGE+AUxyrCxhscc0IU+mBidt5G7l3jz+Tl9oukyqH+/ou?=
 =?us-ascii?Q?OFqicyjRtEBxNdcmc9pDZSKcSDpMvrkxo4ePRIrOkcCmgIl4xhvx/JUziFX5?=
 =?us-ascii?Q?D4bynQgj4PPEgwBG+D8OsDU9LrI3Hvwjm1BltZkCfK/rBawrrbvHTcfmvVLm?=
 =?us-ascii?Q?2b2+ugWSsOFmICeeIgx+4NPPwWzMenVs9DejlTZZFeB2Ggfu1mw+P77/6nq/?=
 =?us-ascii?Q?QmZJB106cVsh9LPBZcj2By1E2iwZY5+QtnA4OzgvVwR6rDrxnIfe3oVcMZE4?=
 =?us-ascii?Q?rL9lZH1Ktz+zvmJN8KCHW0PWP0QBDEmjsvq9EVm1qw5b10h8+MrNPgNOYVi1?=
 =?us-ascii?Q?08sMGtuubpWyPWEPKzrScEwVx+uSxi8ojElum2rCS1yaYhstImuSB6n/Wi1X?=
 =?us-ascii?Q?EJ88pXHvPW7wS73GQl0+pBHhMQ0C8731GP/Nr6sTCRG1dG2y5mjrQYX2hYRe?=
 =?us-ascii?Q?RRRMRZqWcZCcdbQlS9Hyzz7m?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ce74fb00-7855-4949-902c-08d95be1f67b
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 09:33:51.1604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vkg7rNvuYaXaHmLnKTqSI/XyJdW7sYRVp2lwE8OaBLRy3GuutGv5mnhnNf2bV++bTb8Z6O3mW2RFwCIhuhlTr1jy1X/fU9qqDimmhyNk0fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3742
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [171.252.154.210 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.108 listed in list.dnswl.org]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [171.252.154.210 listed in psbl.surriel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.108 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mDONy-001heB-CT
Subject: [tipc-discussion] [net] Revert "tipc: Return the correct errno code"
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

This reverts commit 0efea3c649f0 because of:
- The returning -ENOBUF error is fine on socket buffer allocation.
- There is side effect in the calling path
tipc_node_xmit()->tipc_link_xmit() when checking error code returning.

Fixes: 0efea3c649f0 ("tipc: Return the correct errno code")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/link.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index cf586840caeb..1b7a487c8841 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -913,7 +913,7 @@ static int link_schedule_user(struct tipc_link *l, struct tipc_msg *hdr)
 	skb = tipc_msg_create(SOCK_WAKEUP, 0, INT_H_SIZE, 0,
 			      dnode, l->addr, dport, 0, 0);
 	if (!skb)
-		return -ENOMEM;
+		return -ENOBUFS;
 	msg_set_dest_droppable(buf_msg(skb), true);
 	TIPC_SKB_CB(skb)->chain_imp = msg_importance(hdr);
 	skb_queue_tail(&l->wakeupq, skb);
@@ -1031,7 +1031,7 @@ void tipc_link_reset(struct tipc_link *l)
  *
  * Consumes the buffer chain.
  * Messages at TIPC_SYSTEM_IMPORTANCE are always accepted
- * Return: 0 if success, or errno: -ELINKCONG, -EMSGSIZE or -ENOBUFS or -ENOMEM
+ * Return: 0 if success, or errno: -ELINKCONG, -EMSGSIZE or -ENOBUFS
  */
 int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		   struct sk_buff_head *xmitq)
@@ -1089,7 +1089,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 			if (!_skb) {
 				kfree_skb(skb);
 				__skb_queue_purge(list);
-				return -ENOMEM;
+				return -ENOBUFS;
 			}
 			__skb_queue_tail(transmq, skb);
 			tipc_link_set_skb_retransmit_time(skb, l);
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
