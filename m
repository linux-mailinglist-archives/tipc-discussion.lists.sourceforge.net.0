Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E23D934A3EA
	for <lists+tipc-discussion@lfdr.de>; Fri, 26 Mar 2021 10:15:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPiYN-0000l6-GX; Fri, 26 Mar 2021 09:14:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lPiYM-0000kz-Q4
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Mar 2021 09:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MKOr4k+msWoqA4syo9OfOuzX62zRE9LgiDC3BY3whCk=; b=eMSHEUQDh+vml72SDFvRNyhOhk
 MPQhJASutS5h0UdVScA8k7i4DJ77hEOU/cRUjFoCh+LbXmJWtP40OQXX1jR5YGzVR0Qd1AChaSmlu
 bFjsbVpzkYOaWbJ0NHSFIrIKQY/nhTv1agNmNisspG2huoFseCYrLy10HLEa13z1krws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MKOr4k+msWoqA4syo9OfOuzX62zRE9LgiDC3BY3whCk=; b=f
 KCWcD0V/blV7gsqKguIRP0qpdG7ogTOPlrPWAttJzP6XdIBchnWaIQA+yqRgyQkpaCw89NCHbHZBl
 Ne9l/7QNzqwUGY4m37gopxEeeHuO0tSPV8kz0VZnc/PYzl0T6ukv3fv8RbUZsqE5+3eSg96TsDZk6
 TsVqUjW4wCyezoBo=;
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lPiYC-0006VV-Ck
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Mar 2021 09:14:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQroqbmDjc5tVEvyK9EyW6nJKOAPb5q22MRTTTVyu2wrXxHB+SCBMk8ZNiqH7xRAyhfIX0wrBXw95NajsTorcQzQBZTC01cJUl/d7IY0cOiwjXl8r4w5O9H2R3c+ZAFtS8lWfSUj8iMorhZSDgJh+FgTV9UPMGFa5YSaRzky9ud/O8ItfMNX6bMa7c0oCDBzLCJMxgp4dVljDo1xNchvYya4+8wdSu1Lg6T2r7o7lggek0iLIIzpcjhWWotK9xiuHKIAwNatpyiKPycS/wo4EfkmBfgDCKbrFZmwfsvTc7a7/yYjJPBmJgzX7LPTscWv6RAXzjNaQyQlkT/n7OW0IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKOr4k+msWoqA4syo9OfOuzX62zRE9LgiDC3BY3whCk=;
 b=ZoE5ZaEDp7IZlY71XbX/uOrnktcXRGgT02tRgWvF8f59GlWZG0yxMD1ZEYXnU3FUSRbyMjVSDExPvtIOWGxT8m5EZ0j6VZCJNZYFRC+Isw4OW6LwdH1ENWzdvxrXX1Ekpz614clWFiKThBZG9RgjIDN6f5GUEl6f7oygSSIrFlItWd2khmmoPDvoLD1acHXysK1MYfbdOJOiBP2UsqxJwJb+1yki5PdiZVGjez7TJPmzzE1+aUJAUA7w0eUBm44IO3jRnqb5cAKvVflbFtlQlbutA5Qh1BrK+gIxarS+8sV0WOTmtWoWLmyvskjYIoUay42N7tWjm4yBEt/hjC7zVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKOr4k+msWoqA4syo9OfOuzX62zRE9LgiDC3BY3whCk=;
 b=uaN37hBo3EGULQIqM+UU5z5kFwYt/0j1r06oB/9HT619eeNErFgzmxtM5XmPRbafqG2iA5Gv3fTZRwqTVgVqZMzVyCOnylyShN5jZU4yZ6KVkPG0hcCYxjvUWfiVTfoP6GDFrIkM6fffRoXTX+iYd2E97fEhDpOc8gJimzbQ7vs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB2942.eurprd05.prod.outlook.com (2603:10a6:800:bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Fri, 26 Mar
 2021 09:14:32 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Fri, 26 Mar 2021
 09:14:30 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tuan.a.vo@dektech.com.au, tung.q.nguyen@dektech.com.au
Date: Fri, 26 Mar 2021 16:14:14 +0700
Message-Id: <20210326091414.6705-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR04CA0173.apcprd04.prod.outlook.com (2603:1096:4::35)
 To VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR04CA0173.apcprd04.prod.outlook.com (2603:1096:4::35) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.26 via Frontend Transport; Fri, 26 Mar 2021 09:14:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd28a95e-813c-432f-9f25-08d8f0378f18
X-MS-TrafficTypeDiagnostic: VI1PR0502MB2942:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0502MB2942A5D7A707ABB6AAA2F6A9F1619@VI1PR0502MB2942.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:260;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lx7O++U7yw6Ns/MsOtIGzQJUEIfCBG4HVO/Vi8YoXll0ZX7ZA6pntpIrl7wJ5/ZAY/j5Jo/g96ciwSX3Hon+j4bFJi9REWWHFZcKI+KoUG3kZ7PG79PxT4b/0PdIgtOdUKUrKupsYuNdpLjHUkAMIMakf+VluVbAO2D6S287lZr+8oW2DHSb9ajMo4sQjxZwjLw9lwRnywrvO38g82Y3d56N5Uj7odRnR0xBKsL9jLd7z8kfhNN3vbuqoXh2PYEZCgkgEWf1mddzBuxpjT6RpcCRuhbeevGnp0Yihix+corgUT/xD9GzBhoPKj0xhDGHMahbVhduJaXPIIr9T7alOUuNSeXLk7XjRBKINoqBLN03YBQpMLIwWfsiwd4yH/jOxdktoITLeNVoVZ130rt86wymFQjgufzrmWN1e3pKRUoyjVTZsudkm45zeDxnEeU9XD9pSOrrOjU3VkTjAhqQjPymAQz+1OTWvjW6OqtbABQmd04RUrfcNUybKV2DrS7+j43VIFZ8Uy7ad7VFjvwLII17gHYl5jvlIRlVRLvuDLdNT6ZX4Ym5BKUOnHPOzuGUx0j6NEKwWJNRod1L4jo5blUArMU3BsenEahx47OmqIkso82qPgdxrQ8aVbW69a1h6zgkH6CfLma9m9Xgkyu+LQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(366004)(396003)(376002)(39850400004)(103116003)(316002)(478600001)(186003)(6666004)(83380400001)(8936002)(2616005)(26005)(956004)(36756003)(16526019)(86362001)(8676002)(1076003)(66946007)(2906002)(6636002)(4744005)(5660300002)(55016002)(38100700001)(66556008)(66476007)(7696005)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?AihcDiUrvRozHxfGdQRbTXv//dQDFT1Sbk+9JfG9PFeSHAnZxGmy3O5UH5Gf?=
 =?us-ascii?Q?czkiiszi1wt9PmW0Jc5+c1Mc+cNOzLD4lm9ZCg7h3NODiCOpjasRDWxNhbwD?=
 =?us-ascii?Q?tM9HDM8RxEOrceVesTHxuGcOgn0LO8V7ds6GX1flKVdP2I7N5EBb9Wt9GXPm?=
 =?us-ascii?Q?9QCyS6S01R2E2kwqI7+psgKasZZEb6fS6mZPjC+cLjRc4d5au7zSniV5eZiB?=
 =?us-ascii?Q?X2AKRocj5s+RuNypRmyMjSNjM2+e0K9oeJyQCMVGI3JW1xNo9xDHv6uiwrCe?=
 =?us-ascii?Q?QFAIKxjKnyKNISCTMCrc4QWI6qcUqx1EI51VEsU2SDZ5vIu37lkgqgkHVBq+?=
 =?us-ascii?Q?cStW4fjWHkMslKCE0Tm7LAR+9nJZn7ruTylO53Pbt3akceONtl1L1Oiw5VQW?=
 =?us-ascii?Q?ySk1FxN+sfWoVdfdLX+jxbAO1HEQ7Lhu30xhUE3VaZSOIZFkeaTu+5iGIMIZ?=
 =?us-ascii?Q?6GnKxHL4uCLQe3u2mCI64TAyRctFAWeGvf+bRtTcnHaGfH2Nd3O1upQ5H0hh?=
 =?us-ascii?Q?rJMPWe/W4zQn+FsMaBdUb0P++b+PhLfe7Ah95o9cZO1bdV5VpPy+C2BTfnJ1?=
 =?us-ascii?Q?28Yruq8eQb8DSYSeqKOXoj877xoJTsscgEF3l9W6RFcZspECz3IhMhX6DsRn?=
 =?us-ascii?Q?EWX1lifaHWOp6/+2A9lpTI6wzTQt3sFC0Jaf86CXN8uQGf+VqMxceoij6oJL?=
 =?us-ascii?Q?A0jVZOq8paU4CsCillht8nicswlhWeRQ0xcWM0cquPLHpyW5cy3Kk/sNJyKg?=
 =?us-ascii?Q?jGSnbRixsDf1HCKPaz59PslFuwfsUAf3RPHyOfQSjYECV3jFABmCv3LuCDUU?=
 =?us-ascii?Q?vxy2eYpm78/vOYrxFUUqyynOmLFpS+6iOUaDUE1lcmuPW244nXc13qqf/3LI?=
 =?us-ascii?Q?3u3ao5xJJnJW9+wKB3IEpW89/0GFRyBW0o3AGiiYAYS7sdnHq6b0HMOSdWm4?=
 =?us-ascii?Q?+v3RfDbjZFWSOX//3MKZXl+ZPXIRY1pWKqrGhHioha2UJZSukITD9krnd/HF?=
 =?us-ascii?Q?I/dVuxL2CQVjgWQsU/CP+FU5Z8aeg2FFCYFovm0GnxTPAo19wIshtuiJrgfP?=
 =?us-ascii?Q?vHkC+Yu554njBnY/EcXiGsaAtPNO3H57rp5kfQE/3j87G84XlQi2jxG9sYnM?=
 =?us-ascii?Q?Qv0HxH3UHcW69NaTglFzaKNSiO9kyz9ABq5bmIWdP0MBJefNHnKr0/W1wpcR?=
 =?us-ascii?Q?3dHpuQPr/4Cq3ApE+NFHTfzmJ/C1GK3e4LhQI1HhmbukA7Tgva2ezD3EkxVI?=
 =?us-ascii?Q?yYl/hBg3saiKin+FfTT55E8eZ4Qyoq6QE/vGyqqkQdy18dra5Xg7xiVnGf/m?=
 =?us-ascii?Q?DMa7MoXlPyUV6ftUuYz249o7?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: bd28a95e-813c-432f-9f25-08d8f0378f18
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2021 09:14:29.9421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: krCF4ujaDyC2KMUJzJnt8lTnCjkkExSHjYGtos3V9cBy0g2dy6KaX9ahMWuQoLVpRmeBx5tQ3m6yfI5fMq1P/9z287Wt2TEnDjEasD0woXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.133 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lPiYC-0006VV-Ck
Subject: [tipc-discussion] [net-next] tipc: fix kernel-doc warnings
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

Fix kernel-doc warning introduced in
commit b83e214b2e04 ("tipc: add extack messages for bearer/media failure"):

net/tipc/bearer.c:248: warning: Function parameter or member 'extack' not described in 'tipc_enable_bearer'

Fixes: b83e214b2e04 ("tipc: add extack messages for bearer/media failure")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 1090f21fcfac..d47e0b940ac9 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -240,6 +240,7 @@ void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
  * @disc_domain: bearer domain
  * @prio: bearer priority
  * @attr: nlattr array
+ * @extack: netlink extended ack
  */
 static int tipc_enable_bearer(struct net *net, const char *name,
 			      u32 disc_domain, u32 prio,
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
