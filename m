Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB0B3651A1
	for <lists+tipc-discussion@lfdr.de>; Tue, 20 Apr 2021 06:53:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lYiNg-0006CS-Hx; Tue, 20 Apr 2021 04:53:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lYiNe-0006CB-PF
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Apr 2021 04:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lv84Kus8GJuK5hbQCE7MG6DyYZ8f/IrSWwh6eP7iR+o=; b=Txm656rKOQ6dOG/lnNCBhVIgT6
 t8q2gzhpPoQoHwL0IIHrmC5sFCh3BnrlQ+Z/llQ6V+Y7mumGNFDt2I3o7oKTWbgQvKBxdvr8S8igL
 iFfhGVbQhUbCQYqgEtUVsL2Ooz8MWaxB/GyG0Mb7oetaIFar3/ead+WzDr1FkadT7kGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Lv84Kus8GJuK5hbQCE7MG6DyYZ8f/IrSWwh6eP7iR+o=; b=G
 asPVTjIB5rgHopUE1MeFuS09nEapoxolV3M0UvRhtA/3RazCj0ROAODheHgv4OjrHszN7scvJOkJr
 vVw4CNkaHZK+BOhJedAv0ehqxcKOBGiUJcZ/m1HJe+aOTDMUakwDf2H/jrlY5es6eGVUuVqhdNDeF
 VTypzuIO6JLOnghw=;
Received: from mail-db8eur05on2134.outbound.protection.outlook.com
 ([40.107.20.134] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lYiNR-000w1H-Dt
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Apr 2021 04:52:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBbEJssT/SXgezapQTFee3A1128hBS6b5+KpdYeXgACD/xmPcULoYU3mlW7Mkc1wAT2PzloUpdjX1+KiYgrmDpwdhz+VO5A336hvd6TmppRbV7uDBqih/2SW2MybdZsgPRMksd0i0Nr8TZXW0Xcutc7hCLjI6OPh1WN4kewGQYB5T3ijq27YcuOkeKkJNd948S2Xv0grF2V45i6BjJ5qmSr2vv9IoZsPIlKFwwp1ahFQzZKkHLyCnV25pTQciastUQv7+5mSB4aE7dAroC9pnuNbHt2vX4T8UfUriHo4DXNUcuvY+Raceiz3hfnFxPv7hgOuGWBkbw8eHXNjGbge1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lv84Kus8GJuK5hbQCE7MG6DyYZ8f/IrSWwh6eP7iR+o=;
 b=oR7f0fV2mInOdNarRkxw3Y7fkjx3Gb3UAytwQe2tjMShYE8lyMmMlJQVQXLMp/JowVUhuUnhOEg9DBfWXWV/NoWOOPGZy/1EAxpZUv79cgodwyagIeSulSqprmxOK1POcZXpfasim5BSPzCvm1gbFD7qIPY721ZQB0PpyIu2R49nGl0OPU1doxhnt2NgdRsH/cUm5rVeMQXaBTcyJN0cC73lPcEuxwD1zjM0zHhLnv5oF7ulvBAvyfgQXZDsDvLx7JlPFWh3FEyBZmfUJSZXh4UiXmehFf3n28QIzWOX4AsxyAJ1yaNj+gqVjcoaX5g4Ns5iVrYENVuNzgRukmoLxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lv84Kus8GJuK5hbQCE7MG6DyYZ8f/IrSWwh6eP7iR+o=;
 b=wsf7Tq58LsAEoHJXSWWG45rDE/oqz4JvCh+o/LKNfFyTuSNV78rmTGFtlp8ySs9PpFzTJp5NlTojty+NwUyykDinOFpegBBxrj6PVkgwYesmwI4hWhaYBlowi4D0cIgiX/4Ww4QxeO1uh6cnVgFUrR5SmdsM4NMXJshciVV57Ok=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4927.eurprd05.prod.outlook.com (2603:10a6:803:56::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.24; Tue, 20 Apr
 2021 04:52:31 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.024; Tue, 20 Apr 2021
 04:52:31 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Tue, 20 Apr 2021 11:52:17 +0700
Message-Id: <20210420045217.8511-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: HK2PR04CA0049.apcprd04.prod.outlook.com
 (2603:1096:202:14::17) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR04CA0049.apcprd04.prod.outlook.com (2603:1096:202:14::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Tue, 20 Apr 2021 04:52:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ea92cae-a3bc-4a19-48a2-08d903b81abe
X-MS-TrafficTypeDiagnostic: VI1PR05MB4927:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB4927B425526B0F6D3A785E27F1489@VI1PR05MB4927.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2CMhmpuEsVBfiLA06/G4CiUXrAcEvVSLrUyR8LUYS2+McH/g5jqPoZEB6LV+2jflavBzkm/0QJ+dVb5XyCUkdl4fbKSSWhCUOutw3UWU4HhDKyxlKycH36RUoiion2tW5FxkinkNIjoKWoU0EeF/4WQoRzK4eD1Yspi6hgT21ZUzGzEEpbrHXi32dmSF3cHp7lxatWqZbC07OARuNC/rYyRxphEGnpDcL86ndtDuiWFbn1uRDldC4DqGvTZzJyLqJJTnfmaDTNwo+sosNkYnJqjgZCO0PdAm8mkwvogV6z9VYhenENhmLLGDZ8ficIeZeRr55MDmz/hTSDIz9Jo8aMHw+DAKFX41CLx3jV505nQfapoEAEd8WjwfV0r4Jd83SCZp9PJuurz4b3bbmojkVNYXi+iMFjyKwSTHMoChsOF+PtYcE8CDVqrmRR+aWf8Tn5/vyMI1fL9sS8bK87EMEgj56/71GP6yhx/QgTrZWmN9+5yCz96c5y2SLD7BAGmKs1G8Da8L5bYDyUFanwW1uY/ZyUxiGr8bGvjQe+ay8ZiYurgdaE44VNgZLLT2G8Pnk3LGt8zVa95MI1mC9hNPZvIsMssGwbKZ5sVzCSHNjfVaExcAn9G/CpyDkgtRMJ8767Pt3stm5tKqbPiKg84p5ZVHgoOQ5mF0afdlvpGawFI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(136003)(396003)(376002)(39830400003)(66476007)(36756003)(83380400001)(103116003)(6666004)(2906002)(26005)(52116002)(1076003)(66556008)(316002)(55016002)(66946007)(86362001)(7696005)(5660300002)(186003)(6636002)(16526019)(478600001)(956004)(8936002)(8676002)(38350700002)(2616005)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?8eIQsEvjsxNACgsxl+Dz709h+Nlb4G1kapaG+mABGsoErSyafFT5au1wm8FN?=
 =?us-ascii?Q?Y0vef+q3FjSFs/PMz0V5DTsfWJwN1KyHYmtrqmluqy4QhIsMNsYzrYuKx4xr?=
 =?us-ascii?Q?gigkcbzKVqw6/rPdFJoJ2BwUncthP0SLQZmcc5B6xveVm11HEtwihYXJn3F8?=
 =?us-ascii?Q?7sv29BaeMV1RjapAheBdWyJUPfXgQvm0saDQPqfV0PR8lEw/R8gv9Kkkx4qw?=
 =?us-ascii?Q?OKHOJe2mFtuCRs8CDMnMhgMOEM3x/M7zcuRKsupl4hbOenJ9iZweGITg1atA?=
 =?us-ascii?Q?8R+9Zp3YKrqg36tXOhgW5U45g3huQvp87EOJVxPWXk/KbSg52dHu4BuelttB?=
 =?us-ascii?Q?sDsO6N68kfob7WKKYsDc+Wz4jJUKuCn4g/q4FJ/yThTr0xPBf/nw9ULRlB0P?=
 =?us-ascii?Q?ybuzbphQoY+a9Ko0rFbO4c8n4svmMaYiwmatDEJSqN6UqYgC9xMoxMga+1NK?=
 =?us-ascii?Q?ELYuTEgLWaigmZFDF/LvyhWad6xBXbkUVoIoP+4NhLJ4tcueK2ELyodWJQE3?=
 =?us-ascii?Q?5MDCzmKzpOjICqOqQaT6ZLTBrzHK5GbvipDo8vvkJtCGkyzryF6tIxp2JTSp?=
 =?us-ascii?Q?Emvm/OgfJYxz4zYnAoHThQf0Q4+EnRyphSCKXYVp9w+ieGw3yR8a/JrUy8Nu?=
 =?us-ascii?Q?CJQ86HZnAnyFQxgNDNQMLDbAX/uF58/8g7SJ2eyrPabYASo/iXzAqbqyBwQ9?=
 =?us-ascii?Q?dpYC6tth65se100yf/vY3J1m833gH8FTlVTQsx2GARcIb9hxurfieakxyK/O?=
 =?us-ascii?Q?wBcuGbYYX8tDXbIJJgwN9cW6opBOslQpBn2TRN4sayp3bG4bH3Nd1mwyb4yD?=
 =?us-ascii?Q?BK3XViiYila7UQc9VwimCdsLSwFjR0kN3GMbgB/ZiZao2XCZJ55AMwossyI6?=
 =?us-ascii?Q?395zx/5slD8G3+2XYTnqfAhQTSugES8trTJgP5E1s1KXoeODbaX6fr0/ZeIR?=
 =?us-ascii?Q?C+lNfIBr5SoX70XsvnzO85yrDuJ+xy6zQ4k48EiMIAIRKCfHfsNH9l+b39MT?=
 =?us-ascii?Q?xUXD6yXAuAZH1jj66thNSGkKDTKMc69qSQt1bGIuy7OIqbEjEYl9g0H6/Qy8?=
 =?us-ascii?Q?RP7u84Y/5UsZXikRbh+l2z5YBgvqYFbhX7M/bdIbQeKk/LQ+8ma86D4I+wVK?=
 =?us-ascii?Q?vLKC4iRqiL4JIY3H8RDdIp2riKeOdkvH7/RLqI3LD9MZ4469u3KwNIJ3mjYG?=
 =?us-ascii?Q?qe8SZennXW0uH9fSEsm2cuIU7hVobc9s4fC0IR++aTmwumOKli2APVyUIhZP?=
 =?us-ascii?Q?Fz1kTWtk0dQ6wJNbEbW+jaVSSR4II8BnA6lWljsNiS3CT3zRVYP+TMrSjH2G?=
 =?us-ascii?Q?2vhR82psUAFu83/LlFDujJkf?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea92cae-a3bc-4a19-48a2-08d903b81abe
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 04:52:31.1537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OxXqYS7f24Eohy5rWynEcfpu7849lGNYWu+il1edC0Hi/3qhDqr6QuLl38dYeANhUm662cuqLyuqKk/grGs1nPJniBmz6QKtDQZgQbuZKHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4927
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.134 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lYiNR-000w1H-Dt
Subject: [tipc-discussion] [[re-send] net] tipc: make node link identity
 publish thread safe
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

The using of the node address and node link identity are not thread safe,
meaning that two publications may be published the same values, as result
one of them will get failure because of already existing in the name table.
To avoid this we have to use the node address and node link identity values
from inside the node item's write lock protection.

Fixes: 50a3499ab853 ("tipc: simplify signature of tipc_namtbl_publish()")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 8217905348f4..81af92954c6c 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -423,18 +423,18 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	write_unlock_bh(&n->lock);
 
 	if (flags & TIPC_NOTIFY_NODE_DOWN)
-		tipc_publ_notify(net, publ_list, n->addr, n->capabilities);
+		tipc_publ_notify(net, publ_list, sk.node, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_NODE_UP)
-		tipc_named_node_up(net, n->addr, n->capabilities);
+		tipc_named_node_up(net, sk.node, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_LINK_UP) {
-		tipc_mon_peer_up(net, n->addr, bearer_id);
-		tipc_nametbl_publish(net, &ua, &sk, n->link_id);
+		tipc_mon_peer_up(net, sk.node, bearer_id);
+		tipc_nametbl_publish(net, &ua, &sk, sk.ref);
 	}
 	if (flags & TIPC_NOTIFY_LINK_DOWN) {
-		tipc_mon_peer_down(net, n->addr, bearer_id);
-		tipc_nametbl_withdraw(net, &ua, &sk, n->link_id);
+		tipc_mon_peer_down(net, sk.node, bearer_id);
+		tipc_nametbl_withdraw(net, &ua, &sk, sk.ref);
 	}
 }
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
