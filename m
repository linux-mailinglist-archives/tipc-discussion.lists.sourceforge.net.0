Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3724CCC71
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Mar 2022 04:58:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nPz5U-0005rh-TY; Fri, 04 Mar 2022 03:58:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1nPz5T-0005rb-81
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Mar 2022 03:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c2E1uIKgpy8TBwZt2q+jcg+7iM79ypN/7IefPD4LDgw=; b=bwIFy+noUO6LMq7GU5lkNfvX23
 iXepywL6sv22Ra+rQUJrF42wFmU8yVb907b62GRFshp+zBRCiwfX+Dn4eejEGBSkvRiyx667jmabu
 a01/jv3hcqXwjdeKA+97pBoMeENyDvbm8dlDHega5o4fqCkKIYSxXW9CyIyVtZWWp6gI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=c2E1uIKgpy8TBwZt2q+jcg+7iM79ypN/7IefPD4LDgw=; b=l
 VgaG2DaAQz4h6kAe+WI54dDH+cLJQcsJ6TxpucmzFtQM2WvkG9YnVx8hJu4MS18dvz4IO7RH4+Hhi
 nlu+EZCoB1AzyxsnW86qxi8J6aOuwTjwPABJntLajP2OvBMpNx51kOg0PaOQyfPvMzfPm+C33D+8i
 F/t5ONzrlx9N5H94=;
Received: from mail-vi1eur05on2098.outbound.protection.outlook.com
 ([40.107.21.98] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPz5N-004MZl-1Z
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Mar 2022 03:58:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gd68365cK+WFUmgbWz15E3UIz1+SzHpscJdQQNy85Scy6z0jmpUkDEEWGDXz4g7KSCl1afKOte/zHIVsz0iHPcpgA+yaq7oq0gQY+wHMyZm+AmgQIQjJ8IA609dt+zv8mkIn8qpin/3UI4xl0guAF8ry9nqpMqhHbBHhwxBEuiXLUlx5zCwm9hSnUrzK0SFBDIE3FLPfGdHIBzurTCWYlGLD58m64+RHIC3BWIioMi7E2sggKhk+bUWqgUZ6bfep9ordqIElhR6Fi/kv/ArRTJ9WcyEModpaHdtgeTywURcSQMQQwWcwkYxGXpm6V9h+NUC+TB33IIgDaPeK+J3qrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c2E1uIKgpy8TBwZt2q+jcg+7iM79ypN/7IefPD4LDgw=;
 b=ig7y+VNbUh8v/fxvHSYteHsN7XlRHnuSa4jjdgqBxTGdJxG4gQZMTzqMKt8ADOOZcZ+yvey41fKK+tdDsNJI6uoQK+YuUTQdgqvXHL7UmOobR5Gu5gOOHSHdsg5RErs+CI9tvYGgx9juC4f9foN34ATLHnyx5+XGjKVDFZs41oMBLSw2pUmNVXYCF+xNitlCMTn5vzBcR9CyjAhs0Zd/unjdJNMG+yg0Xj6IsLonb01GVVaWS25KfK8uwJiyZ6dKt/XuaooAviOtrSz/pDbX93EJQ3KCn3Lm6HykZlL3F/xxhD80nC4HT7rER4EHLo41rNu5Kt2BWMWr1OlPxHHCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2E1uIKgpy8TBwZt2q+jcg+7iM79ypN/7IefPD4LDgw=;
 b=u3+Z/lpqHtrasYWBMbeJKOoLFql3wZygpgTywM/W/iTlftZkidbjawaThceuc510HBzbzin9D1J6siC6GCHcmLWcgb0wSVtpwZV8K9I1fy4ArIGp0shjAcWYW7xypJQW2vzEVf5UrMqkQkXACwzlBy09SE09yGIAGk6mytl1aDQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM8PR05MB7441.eurprd05.prod.outlook.com (2603:10a6:20b:1d1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Fri, 4 Mar
 2022 03:25:33 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::f19e:3be:670d:9d13]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::f19e:3be:670d:9d13%7]) with mapi id 15.20.5038.015; Fri, 4 Mar 2022
 03:25:33 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: netdev@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net
Date: Fri,  4 Mar 2022 03:25:18 +0000
Message-Id: <20220304032518.9305-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0122.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::26) To DB9PR05MB9078.eurprd05.prod.outlook.com
 (2603:10a6:10:36a::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c852049-2ac7-46e2-1711-08d9fd8ea3e6
X-MS-TrafficTypeDiagnostic: AM8PR05MB7441:EE_
X-Microsoft-Antispam-PRVS: <AM8PR05MB74416A92BF12D69BB7F7B45988059@AM8PR05MB7441.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z38Lfi0tiql7KHUb2TbbL07srr1MTM1n4vIhTQNLQwrCOtDaLAJ5pdSLmTB/xGYNeie0ipGKlC/hKYNyKcBRapKrhfDsRs3WIboFYFqXCzKvgltWXdWt/t4nRWm9zBnVF4inHDliOt4HAgurKYAL59NugkIEMRPof0B3u+kllcAmkGS+q10PhfyOzwqX5gzd0t6HK4mUiot5XZ/LRTErBraCCQ0uN4/dPswsicjYyJP80sk8P6C07Ki9mhmmXVmDMEtZ0oFfRBhPQtIhFTQvI/R5anvip00bc9UR+lJbjFOa2QgthYhvkdCpnYSHMlbs8ObjQxJQsG6BKuV1upk5XuxV3XSCEvEmjnJ5nijeiO5DpU0zolrrYkBpViol/H16e6L0tDBpj6U+14zhH0VGuxRsukU14vGOm89+3KJ3ApkcXHNrAhmJvJEDAHX1bNVHFBrTrupfo609Szod+nzGSNaYgmrINBR5SBld5c0aQbgnTMqoafDMMnwuCTWp8N971k6i2/C1x6YpO7smnCbziUFFGcwkbpSeV/aAlG1H35MCK9B6Sh6JMV+ceWi7R+VvBIniyl5Oc32fVPlMr2iamT+tkX3F82SKd1XOj2JxGgFih9YRo7FVz63pN9ED9eJhUShgCybBijVwumzUgaCp+BEXIh9rKdDJwzetK04O+xtT2bVAeWe+4QyMA6I1mWzDnbVQfen55DGjfT/yNKAJTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(346002)(52116002)(86362001)(5660300002)(103116003)(83380400001)(6506007)(66946007)(8936002)(66556008)(8676002)(4326008)(66476007)(6666004)(508600001)(6486002)(54906003)(2616005)(38100700002)(1076003)(38350700002)(2906002)(36756003)(6512007)(26005)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p7g6H1El0ziBga9D7iJvy3zsobCLL4l4p3+0SQEgJ5tiOk3hWKB2uGJ5F53i?=
 =?us-ascii?Q?8o+6EFWWsstBz2dkosWyAQucxXlN8n0I+qp1D0/3oB270U5dyv+O8F6vTmdT?=
 =?us-ascii?Q?9BPo0bQW41tFtxAhGa/Ei9MiZYUA7F4uAqrCthx8KMq4im203isj/AsDorYH?=
 =?us-ascii?Q?mgvv8i6IBrWBKcWIhV8drqWh5gXwCloiKz5Fx677BniE4Htg7ztw+lEQez32?=
 =?us-ascii?Q?98o8MAV207XHpUMEj8qxtbjBD3nS8ne0Q0ehjuYXZaMiD3aG7WsovGzTwiyW?=
 =?us-ascii?Q?DfSxZ44mTNDwloDpcrQH0/dMZexjXlum4aeoql4DtiK50eBHzg3tmRSapVin?=
 =?us-ascii?Q?k6UQyvbrZx/qpoV3RbhRnhsew625I5QVkwxHhbmii1qWIZzkhJ/qtLE5D3jA?=
 =?us-ascii?Q?cWYywiq+dcrcStb03OyhyUQQSWihMufGXSJUNSS4wigP1FBXyPtXReU4U2m7?=
 =?us-ascii?Q?fMemm31Q4LIWrw1vJliY0mm+/qIExC7Pti/89P9zHmTXRp8hrO5yKnLmntYw?=
 =?us-ascii?Q?wNShEV2+ONQSnT8dIqjXDeRJLkXyrsTCB9VaF8G4Bg9gBSaVYC+vIzREKkbd?=
 =?us-ascii?Q?lfucYyVJj8WnsWRkM3nLmFc1JtUHZLI8UsUWzpln0o2AK2XWLW0iUzXHC0Tu?=
 =?us-ascii?Q?Du8wCAoa1szC5Sodwdk21B/9Z9ZICjjN+pLV343TLqCRL7NxkHjfI7sggKyC?=
 =?us-ascii?Q?NZPWJWEPMD7muegk1JlOBc9yy4ov567NA8byY5fOeP655vNXPGSQi4JPhAN7?=
 =?us-ascii?Q?hKGBBbMkTkt4zHOx8349TdQgqNKDU8rRyKY1lQvsM+wfbpS/GXIdGCKbtoZU?=
 =?us-ascii?Q?zHccrf5TKCqNhSF1hr76yRd3qEMDlZaY33RRkSzTmcscexrRvq3HXHmEwhya?=
 =?us-ascii?Q?zALjd+PhGGPiCjeZdIB10PMuCthD5Z4g1Yo5XxcXyki+dTeCwRju3xv2Scje?=
 =?us-ascii?Q?vLj0BvSRMMhIAXHAsj2pTZxMtZCSQ/gWgOlY90Qv6W8vXmSOvGciPbjrAS2T?=
 =?us-ascii?Q?k+o7a8iYzunuDedPB75V6GTpZ2kw9I0kdyEurh/yYJjQS4V1N7SWllXvM6Aj?=
 =?us-ascii?Q?3tm80VRudrEewRY/il6BIljdBbaEC+TiyRhjpJUVx5aKRfsNYkDKVGEbyDE8?=
 =?us-ascii?Q?+NEejL91YvrjX4/knvvCsPu0/XrKirXgQoUoYARG5S6drF2fWd8W85YF8uBx?=
 =?us-ascii?Q?FseEnMLi4YTfD+kqA3RQwxbEjVTxN6zpRv0auUUb65sS1cRP5S0ZkYsgGCRy?=
 =?us-ascii?Q?CKEQhuS+R4ooIrEBdAjTWrGAUD6BfBZ8SO8BVZRj5jmapMpKBoWZCUAoeDGE?=
 =?us-ascii?Q?XI8zBimFLTMjxyXsjwjC6XHi1jwWxxz7l4o1LXK7716WMaqc8KQn34p7t335?=
 =?us-ascii?Q?SFTySEQx25OqZZFrxnPKLVqI1fTzj4xByL4OkXRqSYj70pIHbeBvUzyTfXOW?=
 =?us-ascii?Q?4RWeq3AYH1S3uaD1LSvh9hXWdbZ0BOXiy64GWpXttXMmEPH3UTZW/Zd3idZN?=
 =?us-ascii?Q?LuPuI/keXMfeWfhvYDLnk73s4107UoVszE5Run/PTdQxq5rgRnFk9Rd1Ovh4?=
 =?us-ascii?Q?RxS70vA3vuaaMEDk6dxhlfRDLgdrkNARWe18X9lrQh28polDGeo/Ybk3iclb?=
 =?us-ascii?Q?yGL7egDyyqsjnCo+GQ5eSIRbrJh2Qya7haM51sJndgseFUv5iDYcR58d2LKY?=
 =?us-ascii?Q?fvgkLQ=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c852049-2ac7-46e2-1711-08d9fd8ea3e6
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2022 03:25:32.9240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /sIuP7N/5D3Mku3vpKPXAFG5/8WDX1IlVvWvYn2+6D3nET8MCsCdlwhJnMlQyP9CIq0XZ9qAgUwRiEDCMWh2vbZglkcfBMaMeb0a4eg9j6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR05MB7441
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When enabling a bearer on a node, a kernel panic is observed:
 [ 4.498085] RIP: 0010:tipc_mon_prep+0x4e/0x130 [tipc] ... [ 4.520030] Call
 Trace: [ 4.520689] <IRQ> [ 4.521236] tipc_link_build_proto_msg+0x375/0x750
 [tipc] [ 4.522654] tipc_link_build_state_msg+0x48/ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.98 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.98 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nPz5N-004MZl-1Z
Subject: [tipc-discussion] [PATCH net v2 1/1] tipc: fix kernel panic when
 enabling bearer
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

When enabling a bearer on a node, a kernel panic is observed:

[    4.498085] RIP: 0010:tipc_mon_prep+0x4e/0x130 [tipc]
...
[    4.520030] Call Trace:
[    4.520689]  <IRQ>
[    4.521236]  tipc_link_build_proto_msg+0x375/0x750 [tipc]
[    4.522654]  tipc_link_build_state_msg+0x48/0xc0 [tipc]
[    4.524034]  __tipc_node_link_up+0xd7/0x290 [tipc]
[    4.525292]  tipc_rcv+0x5da/0x730 [tipc]
[    4.526346]  ? __netif_receive_skb_core+0xb7/0xfc0
[    4.527601]  tipc_l2_rcv_msg+0x5e/0x90 [tipc]
[    4.528737]  __netif_receive_skb_list_core+0x20b/0x260
[    4.530068]  netif_receive_skb_list_internal+0x1bf/0x2e0
[    4.531450]  ? dev_gro_receive+0x4c2/0x680
[    4.532512]  napi_complete_done+0x6f/0x180
[    4.533570]  virtnet_poll+0x29c/0x42e [virtio_net]
...

The node in question is receiving activate messages in another
thread after changing bearer status to allow message sending/
receiving in current thread:

         thread 1           |              thread 2
         --------           |              --------
                            |
tipc_enable_bearer()        |
  test_and_set_bit_lock()   |
    tipc_bearer_xmit_skb()  |
                            | tipc_l2_rcv_msg()
                            |   tipc_rcv()
                            |     __tipc_node_link_up()
                            |       tipc_link_build_state_msg()
                            |         tipc_link_build_proto_msg()
                            |           tipc_mon_prep()
                            |           {
                            |             ...
                            |             // null-pointer dereference
                            |             u16 gen = mon->dom_gen;
                            |             ...
                            |           }
  // Not being executed yet |
  tipc_mon_create()         |
  {                         |
    ...                     |
    // allocate             |
    mon = kzalloc();        |
    ...                     |
  }                         |

Monitoring pointer in thread 2 is dereferenced before monitoring data
is allocated in thread 1. This causes kernel panic.

This commit fixes it by allocating the monitoring data before enabling
the bearer to receive messages.

Fixes: 35c55c9877f8 ("tipc: add neighbor monitoring framework")
Reported-by: Shuang Li <shuali@redhat.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/bearer.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 473a790f5894..a2f9c9640716 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -352,16 +352,18 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 		goto rejected;
 	}
 
-	test_and_set_bit_lock(0, &b->up);
-	rcu_assign_pointer(tn->bearer_list[bearer_id], b);
-	if (skb)
-		tipc_bearer_xmit_skb(net, bearer_id, skb, &b->bcast_addr);
-
+	/* Create monitoring data before accepting activate messages */
 	if (tipc_mon_create(net, bearer_id)) {
 		bearer_disable(net, b);
+		kfree_skb(skb);
 		return -ENOMEM;
 	}
 
+	test_and_set_bit_lock(0, &b->up);
+	rcu_assign_pointer(tn->bearer_list[bearer_id], b);
+	if (skb)
+		tipc_bearer_xmit_skb(net, bearer_id, skb, &b->bcast_addr);
+
 	pr_info("Enabled bearer <%s>, priority %u\n", name, prio);
 
 	return res;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
