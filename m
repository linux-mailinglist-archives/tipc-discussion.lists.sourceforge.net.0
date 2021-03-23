Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2544434559C
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Mar 2021 03:41:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lOWzG-0001kO-LA; Tue, 23 Mar 2021 02:41:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lOWzE-0001kH-Te
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 02:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5QXTb7IagUdhSLu//zlxKXsNukLszts54DU725fq/D8=; b=fVIU/QmiSJTq9eWM8y/SwM2rFT
 2Rfx16Em5ZIcilXHkLUKo0g5Yz3PxAdPZeIRE48iLDROGSBSRRkGV/HAUjFCLbq/5+0VRe0vffM3O
 b8iPQ7d416Y8rYLlIl5yHqYHuOXHOjMCu5DlhVnLxASK25Jy/u23egAd597tYGsxEShs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5QXTb7IagUdhSLu//zlxKXsNukLszts54DU725fq/D8=; b=R
 DtqEXs3DIPNfYm+8WmGBotucL9p2CZ01rOwR4XqOX4WR6s90Vt3Xu078ZTus2dvgyU1QYUizG5hpP
 uKlXIr2vQgr9luhyiJ/s71uSeaASg/20Q0N9EVLWme0pMVKifpyXCZRhw8pdGzJL5wl173Oy+l2Qq
 U/juy4RAqLXAqpm0=;
Received: from mail-eopbgr80112.outbound.protection.outlook.com
 ([40.107.8.112] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOWz9-0006LF-FO
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 02:41:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnZnwHYXMqrVB5qsJ8HCTWrPI3Ozflzk4sGs2oKL4A+SvSrWI1lxpMzqjs68o/OX/RWV/tgLynLHQMx36afL7tO+CEQN5I+uPSKfC6uSkzChqs6l/X5GFlMj4Kx7jVHSuYChKj4YCWH9lq6gFn3ZWSlAzxX2l0dSsZJ2knKFtUNR2BDqb4hNDzSZUoY4/XRNIriE5DSOL5xG7NmCP25Lvgh/rlcTLbPjsWp/peNTVAZS3ICOkZw7UTj9CZ+zVJuF3FveqwP9YYMkVSNT272R7lZpiya76tbZ+RYBzjufw3DTdLw+Ui+NZ+c4W9smfcF71tYZWU1SdGEOz8fTTi8J9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QXTb7IagUdhSLu//zlxKXsNukLszts54DU725fq/D8=;
 b=jYCIuk7rJPqdC1Gmm219CpCkwBbxyR6WwPKEAgugNfiQRIeLj6sMVkXnJmyxXJSacHVsSaI9nrsU4J8eqSFp82FPSjHJnQ0wtpP6g/uJ++4auA5PpQqb+Cyx+5Usj8Q6NMI0Chr5lRYaOoAbsEBYY5aAOzFEIkUKTz/rTX0888jR7INdTmdgluyBufvBuQ/mnO0MYXYK/bKB/n3ChQWHveyKemC/YtxNDv2nF9UyyNu+YZKZCkHH4dhHRNTYe4mIoppLc8PC2t9ytnxuVUFihj7JWor24lWpE8J6ZO60DAqGW850tjMUiOFai2CUZtgHKtpqGhvaT9uhYBHRqzxt0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QXTb7IagUdhSLu//zlxKXsNukLszts54DU725fq/D8=;
 b=Ais4ElcJYyeALbqO9xoC+zato8gRLDAl0rJXTn+CvkujWAHFJU7xVEc3kGVK9aeKozw3OljF7stv1wfp4gMUn5Ihk1rfrnMXslLwTuu2VQVn+upZM+fYfpZLKW1JVQsfsFoS9Q5tdNafZlkUphR2nJoEaCcciA9rxTjQBv4HXtc=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2334.eurprd05.prod.outlook.com (2603:10a6:800:24::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 02:41:26 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Tue, 23 Mar 2021
 02:41:26 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Tue, 23 Mar 2021 09:41:12 +0700
Message-Id: <20210323024112.5122-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SGBP274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::19)
 To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SGBP274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18 via Frontend Transport; Tue, 23 Mar 2021 02:41:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0b94b2c-46b3-4284-24b1-08d8eda52792
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2334:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0501MB2334B53573EC2D1AC112BD85F1649@VI1PR0501MB2334.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z44nw0yEx5Sig3IOqViZ3h/X1v7VHUbk2geucvJJaKRYw7GaOa38ZuYJ9rcWaDCIS4PtFqT6DRi17/is9em9l6GfJVAZI6h542IvAFX1P9fRo52BWKJU19U3959P39KmuKZkwXUol8yJG8Te+/5bAT/5ppET3N0DV/upOnGsdJ/p0TsmDuseHzEIZYFaDB8xD1MCb0FxAP99wtbYxmron8UA1ZW6eFgnanbtaS08WTcTa0gnWtzeg4u8eEk3bcRHEIqA9d3J3hoHS3IS2i5khrY+1/cFuSsBxDvVvcMce/5df4R3Iu0W8VU4c9ErbKf0MJSGqfs4cJZ54q8koD+1dWQ/MNqvWgX5Q12QcAtuaOkQIRfCdAugpsrcWinXHoUvYWajBZFBwdubauV32I3yrd7tfxHaHNF25OVNTW2UC5k4t+vQqzi10Cjn3qpQ6ON6Ul+lpDJnA4h7uh/6C1+zWoyVyYBFJl57Ok/xvGKvFqmgtXLmDaJh/8X9MFHq0RVPT4cC0O+48zvgNLmEKeBlSbNByZt4AsqsoeTu9/3eReM3dTbx1W+ySwzlyw8/L2p/A+jJASXfGK+I2rnjz00Yq4JoVy2yxwTyPs0Gd1WRut358Qya3tmjw84FikOPQqeqrlqQUlvmh3UsdfO8dcQ+vg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39840400004)(346002)(396003)(376002)(366004)(7696005)(478600001)(86362001)(38100700001)(52116002)(83380400001)(36756003)(6666004)(55016002)(8676002)(16526019)(15650500001)(66946007)(186003)(8936002)(5660300002)(1076003)(956004)(103116003)(316002)(66476007)(2906002)(2616005)(26005)(66556008)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?DLscy+FFitO9t/eB7YZKKZwiveMmGEZjz9sBYZ9wWXRJkUnqDfmYpC9hGquz?=
 =?us-ascii?Q?hPimeeqoQKp+6Iz+wrZYcnK1qpvyywEXl4bLpjeWxLRJ509dscm4trdfFdfi?=
 =?us-ascii?Q?0tAxNZLb5syrZYPpBCaRpWGQ3WTi5MbWxdsfiLgvKmFLD/6r+7otxd/rnHWa?=
 =?us-ascii?Q?bndNktpPYARL1uAg/pu9ueOdYJLKnsbAc0SeS8jJZwZ300LYAHXI5hXZBprv?=
 =?us-ascii?Q?j6ESB/xV9O9Cknjq77FiT5jfrydkEUehkiqWjB/JBzI7Wk2ou7x5r1hcN3TR?=
 =?us-ascii?Q?cjC3DeexRrZxZ670NgThPG4AntKfg5xd2PACmVAVZ6XMb1zK6oKUm+aBmGz3?=
 =?us-ascii?Q?huQcSsQMpeed2tyYYgXj24nvysDwYT2z4rma4pTeHuxgSyF2o+36fJb7SwIG?=
 =?us-ascii?Q?GbEJiMInlVLFX0ik8f46ChVeAd6t/uBbb4iPIPl27MwnjAM15vzEWwHSQ8pc?=
 =?us-ascii?Q?Iw+j4BqhjCaiRLtu3y04Foz/AtMRU7SCC5ectzMhP0zXVWB+5bnaQKkhuTeN?=
 =?us-ascii?Q?b9Uw8z8N+pLz37YxhI4X2Z59BAuxkfYunr9z7sTCBAfZ/18gCtohP2+41FV+?=
 =?us-ascii?Q?bUZwCBsZaId6w5AlxpXmR7QJ5HLAQs0zg57qAZAbIqGwWrC6O6S4dX6ZV8/1?=
 =?us-ascii?Q?lIbixIG2udRJj0RaxMwjc9gMTTGAYVHGwpUeWhitBqN8W9iT+fFu67NMsp47?=
 =?us-ascii?Q?vXBlCVOx+Z7dZBH1o4hx+X/Jf5wGcSRNYbCYSiWmHXI7YU0D4LCmCqF8tgud?=
 =?us-ascii?Q?XQQTdEWAxjnHpYSdEzh4ZNlIEByZeJd1AN+kYGjtw7XNqGyYiYBDdX/Yh/1v?=
 =?us-ascii?Q?4bICebtGJp03DQY2BeoZrGAklKL/2oimdXKRv8yR7OlUkDggRvanEDR7v9FB?=
 =?us-ascii?Q?lU7trCWM6C5ZblTPt2Tn0hlTRZgbUZEJOc8tOqmB6qCQIwlJ4ZpqMukDIDXW?=
 =?us-ascii?Q?0rLzXiEJVjXC5+DCDLycNm00OaObpzoyUckXhzjBhQLAzHWcmcvynWGsk7fS?=
 =?us-ascii?Q?OrxkAvg+GsbbTvpv/A3xBGaY3FV3wtNqeGynk6dtBhTbc7uz0D3Sq2zIXlrq?=
 =?us-ascii?Q?/GuVcBU96XPwCw4JXv+Bja6Mk6S3ALOtWdO1B80C5B/rxLMyzXFZkk+QoKL2?=
 =?us-ascii?Q?+HRmvXkSYhjrZx1a+akKL+HqiGVt73SftPfjS+sHNc0R2q9R6pyTsKqAxpPu?=
 =?us-ascii?Q?iyrmQlCw1qg2/axHc4rDPqzevJcQE9HBG7Heb7hcjlSE56coxqrg0n9FbNoA?=
 =?us-ascii?Q?+hD3zHd4/X7MLhTlei/zleOo7i+rWkI8xSNuSc/Z8BNgxR0tcx+LfisK3ppI?=
 =?us-ascii?Q?7J8MEKcTYCUNcPC/zmNMNc5+?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b94b2c-46b3-4284-24b1-08d8eda52792
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 02:41:26.5549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JQ+FUXsFe83UBV9QIYCoBZqeH+jq45Uh4xFOlWbC8SM6ZKXC9g0rHUeZbaAbLots9hBL2iZzr6006LtEkOAsnRsmH1/xORkQ4xuWyIAl6NI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2334
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.112 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1lOWz9-0006LF-FO
Subject: [tipc-discussion] [net-next] tipc: add extack messages for
 bearer/media failure
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

Add extack error messages for -EINVAL errors when enabling bearer,
getting/setting properties for a media/bearer

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 50 +++++++++++++++++++++++++++++++++++++----------
 1 file changed, 40 insertions(+), 10 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index a4389ef08a98..1090f21fcfac 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -243,7 +243,8 @@ void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
  */
 static int tipc_enable_bearer(struct net *net, const char *name,
 			      u32 disc_domain, u32 prio,
-			      struct nlattr *attr[])
+			      struct nlattr *attr[],
+			      struct netlink_ext_ack *extack)
 {
 	struct tipc_net *tn = tipc_net(net);
 	struct tipc_bearer_names b_names;
@@ -257,17 +258,20 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 
 	if (!bearer_name_validate(name, &b_names)) {
 		errstr = "illegal name";
+		NL_SET_ERR_MSG(extack, "Illegal name");
 		goto rejected;
 	}
 
 	if (prio > TIPC_MAX_LINK_PRI && prio != TIPC_MEDIA_LINK_PRI) {
 		errstr = "illegal priority";
+		NL_SET_ERR_MSG(extack, "Illegal priority");
 		goto rejected;
 	}
 
 	m = tipc_media_find(b_names.media_name);
 	if (!m) {
 		errstr = "media not registered";
+		NL_SET_ERR_MSG(extack, "Media not registered");
 		goto rejected;
 	}
 
@@ -281,6 +285,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 			break;
 		if (!strcmp(name, b->name)) {
 			errstr = "already enabled";
+			NL_SET_ERR_MSG(extack, "Already enabled");
 			goto rejected;
 		}
 		bearer_id++;
@@ -292,6 +297,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 			name, prio);
 		if (prio == TIPC_MIN_LINK_PRI) {
 			errstr = "cannot adjust to lower";
+			NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
 			goto rejected;
 		}
 		pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
@@ -302,6 +308,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 
 	if (bearer_id >= MAX_BEARERS) {
 		errstr = "max 3 bearers permitted";
+		NL_SET_ERR_MSG(extack, "Max 3 bearers permitted");
 		goto rejected;
 	}
 
@@ -315,6 +322,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	if (res) {
 		kfree(b);
 		errstr = "failed to enable media";
+		NL_SET_ERR_MSG(extack, "Failed to enable media");
 		goto rejected;
 	}
 
@@ -331,6 +339,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	if (res) {
 		bearer_disable(net, b);
 		errstr = "failed to create discoverer";
+		NL_SET_ERR_MSG(extack, "Failed to create discoverer");
 		goto rejected;
 	}
 
@@ -909,6 +918,7 @@ int tipc_nl_bearer_get(struct sk_buff *skb, struct genl_info *info)
 	bearer = tipc_bearer_find(net, name);
 	if (!bearer) {
 		err = -EINVAL;
+		NL_SET_ERR_MSG(info->extack, "Bearer not found");
 		goto err_out;
 	}
 
@@ -948,8 +958,10 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb, struct genl_info *info)
 	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
 
 	bearer = tipc_bearer_find(net, name);
-	if (!bearer)
+	if (!bearer) {
+		NL_SET_ERR_MSG(info->extack, "Bearer not found");
 		return -EINVAL;
+	}
 
 	bearer_disable(net, bearer);
 
@@ -1007,7 +1019,8 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
 			prio = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
 	}
 
-	return tipc_enable_bearer(net, bearer, domain, prio, attrs);
+	return tipc_enable_bearer(net, bearer, domain, prio, attrs,
+				  info->extack);
 }
 
 int tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
@@ -1046,6 +1059,7 @@ int tipc_nl_bearer_add(struct sk_buff *skb, struct genl_info *info)
 	b = tipc_bearer_find(net, name);
 	if (!b) {
 		rtnl_unlock();
+		NL_SET_ERR_MSG(info->extack, "Bearer not found");
 		return -EINVAL;
 	}
 
@@ -1086,8 +1100,10 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
 	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
 
 	b = tipc_bearer_find(net, name);
-	if (!b)
+	if (!b) {
+		NL_SET_ERR_MSG(info->extack, "Bearer not found");
 		return -EINVAL;
+	}
 
 	if (attrs[TIPC_NLA_BEARER_PROP]) {
 		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];
@@ -1106,12 +1122,18 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
 		if (props[TIPC_NLA_PROP_WIN])
 			b->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
-			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
+			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP) {
+				NL_SET_ERR_MSG(info->extack,
+					       "MTU property is unsupported");
 				return -EINVAL;
+			}
 #ifdef CONFIG_TIPC_MEDIA_UDP
 			if (tipc_udp_mtu_bad(nla_get_u32
-					     (props[TIPC_NLA_PROP_MTU])))
+					     (props[TIPC_NLA_PROP_MTU]))) {
+				NL_SET_ERR_MSG(info->extack,
+					       "MTU value is out-of-range");
 				return -EINVAL;
+			}
 			b->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
 			tipc_node_apply_property(net, b, TIPC_NLA_PROP_MTU);
 #endif
@@ -1239,6 +1261,7 @@ int tipc_nl_media_get(struct sk_buff *skb, struct genl_info *info)
 	rtnl_lock();
 	media = tipc_media_find(name);
 	if (!media) {
+		NL_SET_ERR_MSG(info->extack, "Media not found");
 		err = -EINVAL;
 		goto err_out;
 	}
@@ -1275,9 +1298,10 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
 	name = nla_data(attrs[TIPC_NLA_MEDIA_NAME]);
 
 	m = tipc_media_find(name);
-	if (!m)
+	if (!m) {
+		NL_SET_ERR_MSG(info->extack, "Media not found");
 		return -EINVAL;
-
+	}
 	if (attrs[TIPC_NLA_MEDIA_PROP]) {
 		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];
 
@@ -1293,12 +1317,18 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
 		if (props[TIPC_NLA_PROP_WIN])
 			m->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
-			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
+			if (m->type_id != TIPC_MEDIA_TYPE_UDP) {
+				NL_SET_ERR_MSG(info->extack,
+					       "MTU property is unsupported");
 				return -EINVAL;
+			}
 #ifdef CONFIG_TIPC_MEDIA_UDP
 			if (tipc_udp_mtu_bad(nla_get_u32
-					     (props[TIPC_NLA_PROP_MTU])))
+					     (props[TIPC_NLA_PROP_MTU]))) {
+				NL_SET_ERR_MSG(info->extack,
+					       "MTU value is out-of-range");
 				return -EINVAL;
+			}
 			m->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
 #endif
 		}
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
