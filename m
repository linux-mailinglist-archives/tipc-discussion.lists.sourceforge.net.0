Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 080CC4D0E00
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Mar 2022 03:28:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nRPaX-0006SK-HK; Tue, 08 Mar 2022 02:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1nRPaW-0006SE-0r
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Mar 2022 02:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gu3PdqjqwBQc+041xcgy+r2KgnXgy1EtRAQc9y9ZKNU=; b=Dwgi6Lp3VkEiX+lwG0E+E58weN
 bFCExwGIhlPT3Z+NbF1qFgq8u0kP7i+rw0useX1k6ualurB1YnyvGqGVh6MCxVhKO+x2I/mhuZ/ss
 pAPZ5gddbIONB8WK36AhlxLJa0R69JsnzAQFSyi/POD7+kQdq9DpwD0pTJG1ze+mzevc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Gu3PdqjqwBQc+041xcgy+r2KgnXgy1EtRAQc9y9ZKNU=; b=h
 +12Z4uY9TuhZrw67DstSbVcJHbGIm0QVFhbGlubArFAHj8XteLm4ZS4JwzpPAK4ZInkKwy8s67alt
 Gwd31wwZl+sMMEzjQQwcSVP4MMVUDyrBZpGom77z1q0mYMf2bZD3z39C2cInKbLPjy5oxfTCuayST
 04WfF2kRnV0etYhE=;
Received: from mail-vi1eur05on2136.outbound.protection.outlook.com
 ([40.107.21.136] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRPaL-0082pv-JT
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Mar 2022 02:28:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Knt8smWoMPnbl0ggmqWxbWUOViKVeaF3siXoJio4Cjh8z4h7mTPOrek9NnUoU9HG3zhT5C411tV1QvcTN6GKNw/XJ9RaGfQ97cXEQUalej1wURSgL8FD05ipJmGOsb9dfbtaTjh5h6k5NlvYV1LsSXdJ0sxKcPkU1bwW+56LQ96AScJInRo4TD/r1DIqVa8tjB4SV4i8xkNsNfm0eIEu0HzxIHJMzofjBcJ3GXc2mqipTl3UWuL+YedhXDeRuGySztjYwMLESd7rMp3kBxkjst+ceNCDDp++bqP3MiEFz0YLgBGgDf6Jp+HDor8I6M/DMbvGsoep0JdNy3CGRxZn6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gu3PdqjqwBQc+041xcgy+r2KgnXgy1EtRAQc9y9ZKNU=;
 b=k0jpr0vsaK3I5hDLhEuXcbMCMq4d1RXH15GKvgDE9IKB5916l5VZHNtIq7Ks+JIU8T+GnjkrFMAhQVLISSATYfPZnODdztVPqlh8KHlsUs0tUArejbSF20en0iv1ZQF93XTYdiyzKwpAFMnNX647nStCxZ/TwAQbud62A47GrjayRLLzeZ/SYD2IF3Esrw3HsDd/XDcbPN269SzAOx8QWty4TwHm5uwBKJCd+fJV11YJ50YJ6kCNobxore26LjtHVCc121A/iteOrbPmBWaBtqNnlsFzGxF852QRoYcY5p/MN+70/1+LKAeWRddWmvBtBCav7rwkFRCExa/5+t3SRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gu3PdqjqwBQc+041xcgy+r2KgnXgy1EtRAQc9y9ZKNU=;
 b=mpi1FQ2ruGk04o9iZKs3GOmwbS+kGNhyjwv1kl1ym4pDKLY1f/gMD1veBs/2ya8cvxpHvbgaie5HCHgk3mvnlkHl4d1z5Hz1LccfCtcSu24fLLgc0Idy3ii08V7h+ivm/WAymZZ/uCwA9EpZv63u6wbY/Bo2Nm8De5svVFnSFPY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM6PR05MB4455.eurprd05.prod.outlook.com (2603:10a6:209:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.16; Tue, 8 Mar
 2022 02:12:16 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::f19e:3be:670d:9d13]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::f19e:3be:670d:9d13%7]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 02:12:16 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: netdev@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Mar 2022 02:11:59 +0000
Message-Id: <20220308021200.9245-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SI2PR02CA0013.apcprd02.prod.outlook.com
 (2603:1096:4:194::21) To DB9PR05MB9078.eurprd05.prod.outlook.com
 (2603:10a6:10:36a::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20c39ce9-cc45-4a3b-a0ad-08da00a91097
X-MS-TrafficTypeDiagnostic: AM6PR05MB4455:EE_
X-Microsoft-Antispam-PRVS: <AM6PR05MB44556F8FE0539D303A273ACE88099@AM6PR05MB4455.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KWbtz6oE4M15b4XHHUxe3+AWSFsF9tvdMVqQ/OlfGd5YeqG7obmVQXWjsSiFVpdc1RcAY2s7xphKGWONQNSE8PpPlA1djLXsB4FlQuuX1Ik5lY1sKDR5J9VX8isoW/IiVejo4Dm2PrvcB0lwd/jm35CG+5qH4MRHUMiII4lbxYRVcmE0YQ0DLBrgmWjUsKFY2kFfJJM0oH55mwnNzc+5We7ES7IKrC+ynUnSSYBIZo9BuplLn0cpOsPbEWRJYdJHtnnMTAxCcB4DgUTsPEy7brb88mx71GHo/PET8iKojDoDlw57DGbCfJoUwOQ7/jyojUZ4+2JuZ3xEyCCT3w7+AI/Cif9QcXv59N57Csox2xyuRY3oR24fBYLp4iKnc59KxDxq5w2QPYVA35N01yFqRy5bi4rmIJgbue2ZsLsJi1jxHuRvk3xF1iLkUD2P5zvjvjMh286quyOAzxM7up1zJFZGyz4lUuLgBGY/LZKS06Vhz0wupgG42TJ1mmIovUUBwq0BAS3Tvj5h6Ra7GzH1Cg+lG+arizUkYTqGu3+osRbATVTkiGHkrcW3TQn6TYmS4Ziexx9uAFDhwwNEnXRNg1s0eXNdUNNF3ZaQap0R8gwZhd59YMcWqXe72eEywW46sEHkX8X8uw3WlfnsgZPq5KbUYndpld1QXyvWjes3IgGjAf1/zfmm1WXKXxsKPOxHBgNk3eg+m1+mpqThKMogtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(136003)(376002)(39850400004)(346002)(396003)(52116002)(36756003)(5660300002)(6486002)(186003)(26005)(2616005)(83380400001)(1076003)(6506007)(6512007)(6666004)(103116003)(508600001)(2906002)(86362001)(4326008)(15650500001)(66476007)(66946007)(66556008)(8936002)(38100700002)(38350700002)(8676002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9XCRG2DRzL4Gr5K/aTC1OD4NSpl+G0g5Ct9ZV9a5/aronYRP+c5EJw1ADrr6?=
 =?us-ascii?Q?L3kpLvobyMaINiaatn6H5RfdKnhM7sIDvCXV8yokTvAv1WS3UcZeILaVPiVX?=
 =?us-ascii?Q?XflatkycAeN6nWNxVEiHiOIJGmyR97nxbgbEYReiZwHLWnM6a7oGW3v6aUM1?=
 =?us-ascii?Q?UeseIb0jqYqdcCaMZsNSJOTdwvQ031kox6lkXxWwlt9n9r2wzPwxiDh7qRT2?=
 =?us-ascii?Q?sbaHtOn2MUfLNr9CBj74gn6qWzRZ3CYrgzvJ9dYJXU5eFzHz2xfQWHd/S+fG?=
 =?us-ascii?Q?FcMcibneRrhzcDL281/QJvJFgx5A+rT0pMbBhGqrv0wPmzcYD/77d5M3KvXq?=
 =?us-ascii?Q?6s72IHOXjkjkHkS/wwxKuz7kEDKPOyBBktI5zuBPnmyLko6YT1+EgbX/RgBv?=
 =?us-ascii?Q?c6VLjuPovrOMsoTmXuwljsIMudcA2C5/cr3FDrCCxhEgaFOqAwR/3StHerUK?=
 =?us-ascii?Q?cnvBDkduReb1V4nRJAbGrUVo0k1SiQLQMxD20g+9QcAbuXHpdBBwv4EF0k+u?=
 =?us-ascii?Q?suUB+ia+PKMWovm3O02kZxgNR3qQZdLvyt6BtMXvmt0VmRBZTnTO6QsfbWoZ?=
 =?us-ascii?Q?dj9AdcdTtATs0jA4XCdOhe2cqVJ9mkOG4drTgtODF+lcR84WeI7d75G8Y3h1?=
 =?us-ascii?Q?RoT35ZRhxnQbqlJwDK9vm1mL4xGJNZqzO4BHyA4TSIA+cjYRtTS2G7XwOVZX?=
 =?us-ascii?Q?9zrkX08RKBwoc9/ONt71gmKz9AfjLch3CQEfN7F+RD791hiPradaXKCneqhD?=
 =?us-ascii?Q?AsYc6yysncsFntNoWqcTZg86IyolglNtj9k3QlOwUAt3bG0LtBXwYOb8XxZH?=
 =?us-ascii?Q?7q4qKNF2dbtFm8KRi0RFSV7IDSF/uqWI2cJ6eJirLq19AVyDnMw+m/dRL4+Z?=
 =?us-ascii?Q?JuLCfb1E3AznIMqA9XSSa7SnDJeLaHGcLHCjoMFwjzbC2CHgWDqWKXmrQbMn?=
 =?us-ascii?Q?CRlYYLzYKqaJTv1oP9xE0lCikkUK/GO4tOU11r2O94Xsx2OuWJF783ZyK5X6?=
 =?us-ascii?Q?hVln3hA8g0KYbF2FEcK20LK+hbrWDpDsH1C8Eaju6FnvqO1grzxTxAs9nV1q?=
 =?us-ascii?Q?ayb3w4VwbDgjlqanymgP7McFy5nR0zefhnrRh1bjSJ7EexHi0wRUWqBhoXd+?=
 =?us-ascii?Q?dWSoYdzrFsinJ9OaIUPIP19MTv2bvRGwhuWCxrhExJyzC6bcmdjXV1lWcWhA?=
 =?us-ascii?Q?IhUD/ycr0jAWMEvLWOpzqY3NvilnOvTvhVCINjn3jdnHtr5h2U00FkNVpp74?=
 =?us-ascii?Q?8loBbmNEDMLvDtQZuf51e4CbztT1Dw7Uqrs61wffibUvOCKe7r3iG0ltbD6J?=
 =?us-ascii?Q?wMOA9btMKQVHxxN8IBqqcx/se5OtbbvyvlXHQzSAL1zigQ6Bwly1Qu9Dd9uw?=
 =?us-ascii?Q?y8AkEHyMpb1S2AvjBTnPgm+01f6jexv7ZEmoLYKTLK4J+Kkbp3PypmH65dS2?=
 =?us-ascii?Q?ftMEbcz7H67AJMKg5LSHYPoBW0AZgOcWGrnoGFhvCMI8zS+C4Ai8d0bMmHBH?=
 =?us-ascii?Q?Eu4xy0eh8UqkHLMWHfkPDGu3nLMMMy6+tjhZSd3zAIakMrSB496VTL7cOPYX?=
 =?us-ascii?Q?iz8MKvA90oEf4W9cZQUFe8cdstRBc0ncrIWBc7XvWpdMf0zM9OYIOuo4Sr5b?=
 =?us-ascii?Q?NKejrQ3KxVgqikojv0atHrHM1VFeEm/UATtc2HPRIcgqctUo/wSo3JVljd8f?=
 =?us-ascii?Q?4L1MzA=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c39ce9-cc45-4a3b-a0ad-08da00a91097
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 02:12:15.7941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dFOKiSECpMlp7ht8I7BWVotuitr3rSUtS55GLxiXBOEnkk5Bm2BnNHI004DccmkzyRwPf/I7oHaxaO7HpzXVbw64c5tUALamZ+QS998nTxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4455
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When receiving a state message,
 function tipc_link_validate_msg()
 is called to validate its header portion. Then, its data portion is validated
 before it can be accessed correctly. However, current da [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.136 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nRPaL-0082pv-JT
Subject: [tipc-discussion] [PATCH net 1/1] tipc: fix incorrect order of
 state message data sanity check
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
Cc: kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When receiving a state message, function tipc_link_validate_msg()
is called to validate its header portion. Then, its data portion
is validated before it can be accessed correctly. However, current
data sanity  check is done after the message header is accessed to
update some link variables.

This commit fixes this issue by moving the data sanity check to
the beginning of state message handling and right after the header
sanity check.

Fixes: 9aa422ad3266 ("tipc: improve size validations for received domain records")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/link.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1e14d7f8f28f..e260c0d557f5 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -2286,6 +2286,11 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 		break;
 
 	case STATE_MSG:
+		/* Validate Gap ACK blocks, drop if invalid */
+		glen = tipc_get_gap_ack_blks(&ga, l, hdr, true);
+		if (glen > dlen)
+			break;
+
 		l->rcv_nxt_state = msg_seqno(hdr) + 1;
 
 		/* Update own tolerance if peer indicates a non-zero value */
@@ -2311,10 +2316,6 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 			break;
 		}
 
-		/* Receive Gap ACK blocks from peer if any */
-		glen = tipc_get_gap_ack_blks(&ga, l, hdr, true);
-		if(glen > dlen)
-			break;
 		tipc_mon_rcv(l->net, data + glen, dlen - glen, l->addr,
 			     &l->mon_state, l->bearer_id);
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
