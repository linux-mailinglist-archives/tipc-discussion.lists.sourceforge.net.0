Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F294F65CBF7
	for <lists+tipc-discussion@lfdr.de>; Wed,  4 Jan 2023 03:43:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pCtjz-0002j3-KS;
	Wed, 04 Jan 2023 02:42:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1pCtjx-0002iw-Pl
 for tipc-discussion@lists.sourceforge.net;
 Wed, 04 Jan 2023 02:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LmwaZ3J+kWSy7rbWh9VNhVBz7wpLO+hSkMB7hWLaQxs=; b=fgTGo6vrSyqJtg8jLOV389gtvn
 NjDjk0Z/24R9j5Gw02R0c0m8pcKVzDNyHzFmoyWlNTKJuVuuelFY0q3gRgH7NYInxwWEUrENqxQXw
 dt9FjMDdaLDqnA4SUtNwsynYuB+FYVrhP46ueQ177c3W6HiAvsUfANCVIS3alGIahwEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LmwaZ3J+kWSy7rbWh9VNhVBz7wpLO+hSkMB7hWLaQxs=; b=E
 qIinryhKT3WmPytZjSAs/ff6td4RYIatNN/sTeCxZQnGax7Q37y0ODoqDLqAhlwNdIiRuDNn5N+nL
 GsuIWkNkPdRgMl3lAbKzLdBoMYbNe53vOIwSAkpsvii5Lti/shofTrNFHq/ARodRjhuKg/eGUqKXZ
 7rAlWfs7oqzGwX3c=;
Received: from mail-vi1eur05on2126.outbound.protection.outlook.com
 ([40.107.21.126] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pCtjq-0003T6-QM for tipc-discussion@lists.sourceforge.net;
 Wed, 04 Jan 2023 02:42:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJhQTHamdELrI7e1VHaRKxHC0LVRQeA3n9HdQceNnSn6qt+EloJBlbeCeL4QJwOgKaynP9EyVWTPzBjKi21D8w/3QXLOdN3ms2Su4Jb6VBqiXXh+f6Tqv0AZ9iEquzhmHw+Mt8eluYWbP6rNLMiO8Uqs5gFzQPGH6NB/rGhDoes7ibSkl4qXei/WoEgat6/AFBBYvp5BVzjVf1Nu3kCoMhZad1YRsxjg29HLay1xdlFsm54DjpfwdhCt9INoOc5j1VqRlxUH6wZPxx0DYW5WBQG1au2bbeG2fRFAsyIfQ7J2Y11dt8EP0gVKHea2AONGGNh5eHNcDXN+0gqMfF1ODA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LmwaZ3J+kWSy7rbWh9VNhVBz7wpLO+hSkMB7hWLaQxs=;
 b=dYc8Pcac/xy9BNLu+O2MU7dLN4IyVVEHPnYfLR68DSJxVbrydtvmMrH87ZDDcrGtRl+9C/gDlHjDkZ3e86fqqlNzpk+dqPuwp1sQF67KG9RtkNYZoOcrB0N0Ti+nEBbTqpGlaXK8Zj65wD2/NOvh2nBFOrQLZ/e176eUPNZWWzf5vk0xgRSviJULbGLdeUhJqGjDAyfwc4pILGXS/a0mw4zTMwVD0JbNekpxZFOhDP6yxynGU4cQ0vfsqlh3wSZblXPNG4diNa9zbxutwsajq76DnxS6BFNeMfNzdQXEwP+WJ+fJIpvpvublHY/ZzGdnmgZfpnpyXGSmhQCRShNdMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmwaZ3J+kWSy7rbWh9VNhVBz7wpLO+hSkMB7hWLaQxs=;
 b=Ga1FLsHgWVNwyRgshD6GRZABM+OVDxHSArvtyavDfUEyzT5JTXVaANPnQAXQuIKhSlDLCwaCJmlt7RMhqV2z9j50NYM+pL4PKpmlrjcleN/tZ8Cgiy4F5l9LCOYtjtnj+ddyzuBSL71Z3MRGh8xQaoXBbJm2UdFR3V9L5YK/bao=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by DU0PR05MB9431.eurprd05.prod.outlook.com (2603:10a6:10:32e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 02:42:36 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4%6]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 02:42:35 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed,  4 Jan 2023 02:42:22 +0000
Message-Id: <20230104024222.13690-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2P153CA0046.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::15)
 To DB9PR05MB9078.eurprd05.prod.outlook.com
 (2603:10a6:10:36a::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR05MB9078:EE_|DU0PR05MB9431:EE_
X-MS-Office365-Filtering-Correlation-Id: d8c4fc8d-ea4b-4847-831e-08daedfd5634
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iPkTAjJak7iMzD/vavRCA7J0jkq6hrjHLAx32jcNDeANzW+iynvyViafcWfWUaR+D9aX6FKihw0DdOogrvA9Lw29ILLX94wXzZ+5UGzisa4Ut/3a6nzrpisn1ciEBmhMeFkWMg/Vi45H75hlnhYWinjp7DPmeApajnZWR3VZeR8B0+CegXEQf2Gp8rGxPwillOdjjb4WgE4ak32Ogncu4YZYBfvnz2Hk9PQ2/4cdTs172/0IyHAFbuMtTNYth2tvlnTd2xsmXuMvGXxVnt9QjwY8CUmPhqz13rDlNjrJViTNl5je7A7vt564MlIOF74nOvEYhLpV2xLlX/Chso8V2+Mw/SoQp0JDePG6vLKqEz062JaPQxDEmTr+t9XJCp+bXpFAZFet1bw6qyM4g/vMtWtkhEQiyU9pM153EEYLzJ2k8Z/dX/+TjElm+v5QIwBxdk+Drj7XqB0u7TPBpuAePH2ZFoPnxnLpTv2rndoyCkboSeT7R12gEJVh3vOojXZwx6ZNbhGsNdPJlrWtKu0Ni0/dMRH1GDuZognIWcGC8bBu8U+QtbnJV9kkm9VlYpnUJE1ny2ZkbozyXwS9ru12RfCIjHQ65ncC57eb9Kbwp57ZzJAJoBbhiW5haWveFNfMrZlAgVasiVw+8LfQizms5skny5MS3eDDjVE0keUuBnMrf7r9xDtX8gNCRLZyp7FgUOlQdOyr5f3tMHQxqb0YdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(39850400004)(346002)(366004)(451199015)(52116002)(6506007)(6666004)(36756003)(478600001)(86362001)(38350700002)(38100700002)(83380400001)(6512007)(1076003)(26005)(186003)(6486002)(2616005)(103116003)(5660300002)(8676002)(66556008)(66476007)(66946007)(8936002)(15650500001)(316002)(41300700001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U2L/hyRNPCvLIsKk9IVE1NjVspOa+coG1i1UFPvfm3dL6+kKJ90I8ffo0S70?=
 =?us-ascii?Q?8h0OBt04M44XROay22jhEqUwFxOBZ7Pxa+QhSpxMFx+TW1yO0Kn+Hoj0a8nZ?=
 =?us-ascii?Q?Mf4w+DFff8CFKlEh83RqqNrID/ZbSTiVdmmofealY1Kw0qLIvzmHNga9gK7I?=
 =?us-ascii?Q?+WxxTPMkWSQS6z1fF/hr6WCTQIc4YoKNte3zA+FLtRJ53lieX03v4x9xT9ti?=
 =?us-ascii?Q?thF64C8ATk5nbWP8mlE8YsGnFE2VjDkwDl7nlyeP9bHaX8AdGJy+nqVSthoC?=
 =?us-ascii?Q?iJnm0vfgwegR0fVVMS0+zejI2Vw4zw4dNPFui400w8dFlgJkbxnK8ZQ/Y0PA?=
 =?us-ascii?Q?FMMUzie8/uzM9R1Qud8N3dWEa2nIe2dk7brZBsx0VN8QvvPZ96cb3RrdbzUp?=
 =?us-ascii?Q?UwcVxDW3fU141IMbBhvMXufYZpvQwwFmSqFSJTkS15JLPzrGCKt7Rj6PZuIq?=
 =?us-ascii?Q?yqQ1mW01kfXrBthbjqLglkzla6Q+obLv9AJAoKEi5K6FTgAEXJLg8l0Joror?=
 =?us-ascii?Q?CyRKG2lNX/y8BU7Cc/o2SZG7gT5J1pQcfVjdeiJreerBdW2Y9RGhoga74dlu?=
 =?us-ascii?Q?lLST5uCLb1v93JHO5DWLxpoZ+UKNhnf3UEJ2hfrho9ZxgWFL8tBVwYWI3mcb?=
 =?us-ascii?Q?IRKgBuXQVG7L5lZOGt4WUQb8dLeG7W7jRLRNXFWACYqaj/UvT+0m26T5e+Ln?=
 =?us-ascii?Q?Ol8r5WVsPOUnODtOjLhAuHiESW99oqGe0VEDWNVym97lqMPXANrhpTipe3+E?=
 =?us-ascii?Q?7yH2pW1KQ4lU6p1r8XxhLgQZHPw1oSV3fEanJHzVrAbB9XsK9qsWZMkvsbSk?=
 =?us-ascii?Q?R6dn8EzLelFMx33EJ9vAL2CUkMj9b1QgurUeIfFKrHFl81GGhiPWkOEMV8Fb?=
 =?us-ascii?Q?/G9kErqTJz/RA4TKDeK9tyzw25yDsdBdN6LLJf/LxstyuPq3kZybPdqNrrp2?=
 =?us-ascii?Q?EvRfH/u+ZTxvo8D93aM88QoS0Q1F8Y+sfPVyL5vrIhlahJMqKKg/+Ja/lY+d?=
 =?us-ascii?Q?3xNqBeSdu7j1yQS50nlrK9MnsLAfvF2atDhlsn1/0EaJXnQ4+zUVKZrvoSSn?=
 =?us-ascii?Q?7EncLcp8RzOWO3umy/OTkBac1Oqo/HHxO2XYtm2IDiLyHrntiFT2lMPbB28j?=
 =?us-ascii?Q?SdXlqW1Z2UU1BjQnPNPGIFOrsn8jFs+44gAE4YpUsS1EcQF2+pOQss5pQzCa?=
 =?us-ascii?Q?uvU2MSzlWck4OKCbGGtYnsE1UwQNL3T+63pimEmVmr6aNBOSYcOw1RTmQ2tc?=
 =?us-ascii?Q?0BvVISJcNHjGfEyXoRnqkB14cnnvEmdRW32o1ROxqLo287VgcBYnALFC4mXh?=
 =?us-ascii?Q?T83C252UCPxrnqg2kbYn2mi2GxyLmjRNWOGx0HKCO6QWHx4k4BXdF1dawpKz?=
 =?us-ascii?Q?XGoXpgbjXlkgnSwPf2wrmSBhBBqlpG6ta56slDqCPV18hbQHzfhKnjeiM+nE?=
 =?us-ascii?Q?b4e4vSI8PkVnU4KlKHeGhtSukBcYY3vUBshVVgGqZfEbOQ/S160DoPQuCSdB?=
 =?us-ascii?Q?wLY91Dk5tLjcQieP9N/tObKL3TwTBNu7FsgNamkpTW2QFD7KjsSkyE5PeiHW?=
 =?us-ascii?Q?4Q4HXS1QK6+tjJUyjB9ltb3XEZs09sVKhs7zyz5cGh2T6J+ceRxwvLF5GRue?=
 =?us-ascii?Q?9w=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d8c4fc8d-ea4b-4847-831e-08daedfd5634
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 02:42:35.7793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nl/Ojq5QIdr8ICDwxP2jaF6xdHBTrMwA3anMyBU+xxChbnHefJT5idY1gLrTec3qwuoFrNhVJc8NHuTEBEDmlfO+Ah4k3Q/dVXQfBi/JOWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR05MB9431
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This unexpected behavior is observed: node 1 | node 2 ------
 | ------ link is established | link is established reboot | link is reset
 up | send discovery message receive discovery message | link is established
 | link is established send [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.126 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pCtjq-0003T6-QM
Subject: [tipc-discussion] [PATCH v1 1/1] tipc: fix unexpected link reset
 due to discovery messages
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

This unexpected behavior is observed:

node 1                    | node 2
------                    | ------
link is established       | link is established
reboot                    | link is reset
up                        | send discovery message
receive discovery message |
link is established       | link is established
send discovery message    |
                          | receive discovery message
                          | link is reset (unexpected)
                          | send reset message
link is reset             |

It is due to delayed re-discovery as described in function
tipc_node_check_dest(): "this link endpoint has already reset
and re-established contact with the peer, before receiving a
discovery message from that node."

However, commit 598411d70f85 has changed the condition for calling
tipc_node_link_down() which was the acceptance of new media address.

This commit fixes this by restoring the old and correct behavior.

Fixes: 598411d70f85 ("tipc: make link implementation independent from struct tipc_bearer")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/node.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 49ddc484c4fe..5e000fde8067 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1179,8 +1179,9 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	bool addr_match = false;
 	bool sign_match = false;
 	bool link_up = false;
+	bool link_is_reset = false;
 	bool accept_addr = false;
-	bool reset = true;
+	bool reset = false;
 	char *if_name;
 	unsigned long intv;
 	u16 session;
@@ -1200,14 +1201,14 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	/* Prepare to validate requesting node's signature and media address */
 	l = le->link;
 	link_up = l && tipc_link_is_up(l);
+	link_is_reset = l && tipc_link_is_reset(l);
 	addr_match = l && !memcmp(&le->maddr, maddr, sizeof(*maddr));
 	sign_match = (signature == n->signature);
 
 	/* These three flags give us eight permutations: */
 
 	if (sign_match && addr_match && link_up) {
-		/* All is fine. Do nothing. */
-		reset = false;
+		/* All is fine. Ignore requests. */
 		/* Peer node is not a container/local namespace */
 		if (!n->peer_hash_mix)
 			n->peer_hash_mix = hash_mixes;
@@ -1232,6 +1233,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		 */
 		accept_addr = true;
 		*respond = true;
+		reset = true;
 	} else if (!sign_match && addr_match && link_up) {
 		/* Peer node rebooted. Two possibilities:
 		 *  - Delayed re-discovery; this link endpoint has already
@@ -1263,6 +1265,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		n->signature = signature;
 		accept_addr = true;
 		*respond = true;
+		reset = true;
 	}
 
 	if (!accept_addr)
@@ -1291,6 +1294,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		tipc_link_fsm_evt(l, LINK_RESET_EVT);
 		if (n->state == NODE_FAILINGOVER)
 			tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT);
+		link_is_reset = tipc_link_is_reset(l);
 		le->link = l;
 		n->link_cnt++;
 		tipc_node_calculate_timer(n, l);
@@ -1303,7 +1307,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	memcpy(&le->maddr, maddr, sizeof(*maddr));
 exit:
 	tipc_node_write_unlock(n);
-	if (reset && l && !tipc_link_is_reset(l))
+	if (reset && !link_is_reset)
 		tipc_node_link_down(n, b->identity, false);
 	tipc_node_put(n);
 }
-- 
2.34.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
