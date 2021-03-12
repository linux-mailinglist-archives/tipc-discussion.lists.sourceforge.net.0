Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A05338380
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Mar 2021 03:20:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lKXPy-0002B9-JO; Fri, 12 Mar 2021 02:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lKXPw-0002B2-R5
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Mar 2021 02:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=DAVZACfGR7b4cWq+sYzLrgsHIy
 yT8ebDfF/DHYzHsBH6LXbxrLaBEfR6a66vkYaRjvKZfl9kd18VtCZZAu2AEeRVf9Xdml7heNNBifj
 1eB4mjxC2PjRq+U2XWLkvk5pe/jh/uLHWlkz4sZhxUQEJ7KEdJuEOD68BXQazIvRTgfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=N
 iyRJDv50J3TDGZj4Mmz0FxP1YUHNgXcMIxNz6xx8KKme8UK5R7JuSZKfPAFEFGUxQ+zTTvtGkExSy
 HGczPdr8R59kMLV/HknRhrLfh2O6wiRXN8L8jes0L4cfr5nhsJrGbArBvS8A+s2nlAoIQ/n+/8CiA
 QxTmEn16IPbLC7b4=;
Received: from mail-am6eur05on2116.outbound.protection.outlook.com
 ([40.107.22.116] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lKXPp-003BEC-Ev
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Mar 2021 02:20:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5WR+cBBuOLN1Lk23hi3f8j3TjHnLMixhBxD6dBlYVtPR++llMTiXFkeu3eko3Sv60wYM3MkuEDP850DbcDSUsmWodhfoJTVWz7owJLEVHkvvBGGVwxGyM9NmigCN448BtmDWhD9GV0LudOHWvVwN1fiActr91NOogv7aPF6xbuWr0VDKQTCz7BNl1MW/eCoxXeJtL8XJlCw7/fACUFO/nIwo/X2jDUtTbPswMxg95hB4kMMx6sYb2lOIoq5RaItSXQcRywUT3w8dOHL0CuYAv40Wl85baVlzgpWINNsIKYAFo/F+7OlcYE7+TEpU02bKnS6QpEB40tsPRc15ItXAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=S+YiAL+WfHlsjpWqfM9m/QQtwu5nHxtISisjKjD5DhfCtu+nx5MRcyg5KRlIkePy4LzuKR1NPyybQJgOEclhgZdGQbeIyaHJZjuNTkZIDJUyuSnt2o4lRQCIyL1IfzsbRSGbUPQXhusYi6upUR8BJi9zSTHHCmDzjNPMtcVWNsZ1J+PszAWplp2BYLnSicu5LXp/RZXZDp9SZj1sL5OsASvIrcfJdWZAP1nm05/xvHKPYXN2JJPg2gJ/JJxVHbsXD8LcrGAFxAWvKlzMAWX2nO204UqfZD0QJigqQyi42w6ZuOnT0OLFWiGPbLVTtcw6YhPVxvruqm2QeCeVPTRGHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=i0sdDNbAYhYJt+LwreAtZosCmDA5O5JVl6HfmclyABL79Ahb7MCXKoOsfjKuqWruFby4gWFDzNSMH9GIb4/bPSHTkkfKRoybHbM8oNF7RFbPgLUtWUrMa2PAcyki9y5wmGyi0ci+Es3ONoMZYu3cz/rjLe42vkNoWNY//u4Rx1Y=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4782.eurprd05.prod.outlook.com (2603:10a6:802:5f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.30; Fri, 12 Mar
 2021 02:20:22 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%7]) with mapi id 15.20.3868.041; Fri, 12 Mar 2021
 02:20:22 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 12 Mar 2021 09:20:07 +0700
Message-Id: <20210312022008.6495-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HKAPR03CA0004.apcprd03.prod.outlook.com
 (2603:1096:203:c8::9) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HKAPR03CA0004.apcprd03.prod.outlook.com (2603:1096:203:c8::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.9 via Frontend Transport; Fri, 12 Mar 2021 02:20:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7043eab-7cfc-41ba-d450-08d8e4fd6399
X-MS-TrafficTypeDiagnostic: VI1PR05MB4782:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB478221AF7819F4E89BCEEB91F16F9@VI1PR05MB4782.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tMpmbSXzWSkcVWGVNGQZTfWZzQ4klrXVxU2ElufplbEn6DEJGf7ZeKRktXq9wuInWuVOVCwzvTEfHtEOnyURu2alZ/JhLpcwwrNmXkpYkC09zF1TbSIGDioEr+9v9zteRhrF2vVfUtopEQgUhhfK48DMruBdkLHWcXijJxD8lLDpPfhBtZPhFB4R5cnbwC59upVpfpRf3CaPMeJIh3x8/xFeH9VUdn1JuHsVYNVUUXt4qxKm8ZebRZDFJhli4F0848r7zBtPN8i5f4n8Li3jQvIpN64Z6CJW8Pj02Jky18xiTj303luoaj96c6+EffnE0uJFgg7Mwahd+Z48vMtrLIrUwyrdG0zICTnAUrXYJdiPuZ0+v2KFomPyoOhCke9Xi5L5bD+dsdY3LPJc+ls/AeVe2WG1RYcdFkvKG4lWsoO3YF3lI2wM5OCOWuWr1mctfaJRdGHTseKUlZPpxR/ehszvLmg4TdilA92bGrYcyORAhMp1QlarnMv0waDyw7GoLo3beLjExHqE7nqFRomR1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(396003)(39840400004)(136003)(4326008)(52116002)(55016002)(66476007)(186003)(7696005)(83380400001)(5660300002)(36756003)(103116003)(478600001)(66946007)(2906002)(107886003)(66556008)(8676002)(1076003)(6666004)(2616005)(16526019)(956004)(8936002)(316002)(26005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?T9S0g0xkZ2vYaM2ggMW02ATxIz2EDsLUrf/htwujRkQYA/bA2eeCY7sKZ1Xk?=
 =?us-ascii?Q?ZWu58frIplEHlzRsIUDhtfo7XgIluHKjclr9y6waO7Brvgkj/dIw90BGWEma?=
 =?us-ascii?Q?c9EU+ebu7bkHbTtJVPjZd+d/bHuD7hzENdYuolEQVtXRSeoTjAGUHGkTKXmO?=
 =?us-ascii?Q?oOYCh3IyFEfFTjEleR9TF3VNTtHU8k6swZ44oFvpJqE8PbhRVp6msuHvr+9y?=
 =?us-ascii?Q?HPOzRUH6gvTrTuA6vTd1PK9JOsROTlZe/FgMXND/gfhq94w8YazBqRkW/DEn?=
 =?us-ascii?Q?ASUJkSr8JAIA9X/jHPfu0FTLNcUwyt2iiZoiHvDnDxGFGpAdOQT8TQ5HReY2?=
 =?us-ascii?Q?F4+mIZG8ytOCuQ2gTq3z/BO/V3z/yjO0WaLjruaVcVy6q+f+Z5nr7oQpJWFS?=
 =?us-ascii?Q?18UGL7Uvs99Zuq8PKc/3eG7p2ac7Xw9HzaxXU1mdWaz80hDry23F8/hN7fx9?=
 =?us-ascii?Q?VavceH2ae/oEUTT2TG7vRGFj+Ua9nPVodt3lJTsFYRvvP8pNLbVaL0h/KYQd?=
 =?us-ascii?Q?nbBCq73F2MYM6tBUZXb6Cco09Bk+UEl/5PF1F16AplsIkkA16cvR+B/ZUnPi?=
 =?us-ascii?Q?2CJ4O62dM+3OsA0aWUn4yA4pQNY3PzZzzP2Le51iog0wfnZcrryuQM4WPZhv?=
 =?us-ascii?Q?oMqAuOjlP8tYLZGDEZZUM/K9iykcgUIKx9nzG/ilSpPSpHGrx+3OzJeIBDpN?=
 =?us-ascii?Q?GPMUl9yfn7iso8GWcEFKuGzGk/7cVvVmdfweFAOI54UjuvFVD2wY3RZBZBjt?=
 =?us-ascii?Q?OFifKeH9ZxSWYoZ5Km+Db4ZKWs6lKZ0i2kAMza125Z5FIRx2ZHyVR6+MB1P5?=
 =?us-ascii?Q?Y4ikqrgSWjtvF3twhtquNV7U2KJpEo3wb1H6loZOgT7qyzFmfM8O2EwV9Ymb?=
 =?us-ascii?Q?ljhGtiM8j7Q/pHIRRx/PDOOz7L+0RDwj5Nd6y9HZhHnTn+eW78Y4TM4rszlY?=
 =?us-ascii?Q?49jGQh1xjp3MJ+hGVypm46HRLYEAU4xhW08e9c3qA6GK5wXh9o61Q6C3reoJ?=
 =?us-ascii?Q?lbCo02LUdc/Y3mIsrlAgWd2fFJSOYl/XRuJjKpvwA1suKNo/saYITvwHxaH8?=
 =?us-ascii?Q?Ygz9dafC4ozbFo1J5KxHX8rzeBZ04UVB0ecnYxZ3HrPt9L9FE7+bbN3SKVbg?=
 =?us-ascii?Q?S2ueP+SO0uWkOy9wR6l+hMdmtNI5dC66eh8A7vo3xYCe1p8vVjraENn7TCL9?=
 =?us-ascii?Q?CZwRJvOvR2KlE3re33cre2g6pjRYCXrzA/uOVooShRbBq5ED8ruAX/K6Aq07?=
 =?us-ascii?Q?GKPs0kZkj7et3BYk17ebI9EjlncI+Wy3Zok1/jY1NV/ebpMcb1s0dl88Cexn?=
 =?us-ascii?Q?GKzX/nv4HYB8tt8htPzVjK7X?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d7043eab-7cfc-41ba-d450-08d8e4fd6399
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2021 02:20:22.5547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eyDtQulRF/gYydo2MafB4CZjSgJJVM7tAZKQZAxgNokinDkUDZ3fGWgddXxy06LqymBihkDiL3X4RfLtTnELICogBDfkSmuJ3B95BbT5MJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4782
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.116 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.116 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lKXPp-003BEC-Ev
Subject: [tipc-discussion] [net-next v2 1/2] tipc: convert dest node's
 address to network order
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

From: Hoang Le <hoang.h.le@dektech.com.au>

(struct tipc_link_info)->dest is in network order (__be32), so we must
convert the value to network order before assigning. The problem detected
by sparse:

net/tipc/netlink_compat.c:699:24: warning: incorrect type in assignment (different base types)
net/tipc/netlink_compat.c:699:24:    expected restricted __be32 [usertype] dest
net/tipc/netlink_compat.c:699:24:    got int

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/netlink_compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index 5a1ce64039f7..0749df80454d 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -696,7 +696,7 @@ static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
 	if (err)
 		return err;
 
-	link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
+	link_info.dest = htonl(nla_get_flag(link[TIPC_NLA_LINK_DEST]));
 	link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
 	nla_strscpy(link_info.str, link[TIPC_NLA_LINK_NAME],
 		    TIPC_MAX_LINK_NAME);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
