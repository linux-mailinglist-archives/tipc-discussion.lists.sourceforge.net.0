Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684B2F9B2E
	for <lists+tipc-discussion@lfdr.de>; Mon, 18 Jan 2021 09:25:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l1Pqh-0005JT-I0; Mon, 18 Jan 2021 08:25:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1l1Pqe-0005JJ-Ip
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Jan 2021 08:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=PwKnq6LzN4tJHj33ZjiDIStXu4
 vlRAfuBj/65+6xd4fjZVA2O8AtGMZZQOnCxJf91tGn1ZzASVlsQP8rdno0aMwRPkk4VnhgkblTELQ
 hHgeh8vsKb4BF8MgoLwoI4zP5oQyzPNqi27B3TeZN7fmUIGQQ8MMk9qIUj0j2y/nfjgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=; b=M
 QYBQQNq7ouOgSKHVODRLmJ9YG+mcZKAlUw0kxMIPqBBCJWHqEYYRBqheXxuXytfRFwUR+1lzD8vcz
 8aze434yIRQb3lDLZcwHeoBHbfJmK64K/MAzepXbfuFXR3C5Y552PlbXM3vCEdVLsvqwRNwR5aEtA
 WbGnXvNqWRArgm8U=;
Received: from mail-db8eur05on2117.outbound.protection.outlook.com
 ([40.107.20.117] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1PqU-00C7Cl-Rd
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Jan 2021 08:25:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zv1/ucm5jbnfuMvNrV3IOX3pnz7FKWJ1TLjoI7q2AFxkn3CmCliSUgCxz9nVGkziqfNrk+VcxTHcSaeUxVjvj0dNSPRlFl40CO1PlMv5WQcBU1y1JqWflXn28pwFIT8emlCyUwH2H9nIiN9I9TNFaFIXTAod/HonA1Q7WxNHZ4nkcsGPwjvMQapDNGZYEyoO7Et17LIOttIHaCV2I47RzpLF/vgp2eyMh1pmHyuS0/d3FnV5mPzEd+sF1pZvniYIgAsvNYyRjebhmalp89Pa0h2JK22x1PFlOd3lMa+jUignsFBIxRP6sI1YnwdBvg0W/Mf/Dw5y66QOYVY+GnRNkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=E3Dhd+A2dNxmxztUnEOH/HpiFB2rsGy2eacDWssHOVG0Od92nruUce6SDA6VFylndpkjiPWg1+HZAApTdQ6RuXwkkol729y70XDbeb8V5B6wqkGgPz5eApjxTyaKxE4D4WUMZ0PwCKLSM69K4V0PmLwvs0ZqFFIgYc8rq8w4Foaf8h+oxo1AfWkyYvjl706b0G42jPM5dnyEtC5rVap0eMNJVQFksC9OEUKXa/s4SKRGtPCw0Kslbo69d023Gu3Hzg6c0dUGWMjUu/2KE4ZW3mu+6FirJYodj6q+q10nP6UhALPSKNYvqWXW/Gc8j7TsyZDFV2nem9KFfUurh45g0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mf2IMQ5oQssSJiD/7gbnrV+fH2OU6xJAHR1DqReUfFs=;
 b=xsl6RGxq2Wd64jyQ/ZN9mppgi34MMdS4PUJ5sdbE0VY1lILY/WfLZzWG1E+PdV9NvDeTkJdVYpFV4UF2hV40W++TPZyeHFIB+G3eSbg6O+8+bDR1+2OloKReDPsa+O3W08q4/GwuZZirBgBMjoOR/wqL7fe7g/2SzmmVcEy84Mc=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB2943.eurprd05.prod.outlook.com (2603:10a6:800:b8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 08:09:02 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 08:09:02 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 18 Jan 2021 15:08:44 +0700
Message-Id: <20210118080845.3771-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR01CA0112.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::16) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR01CA0112.apcprd01.prod.exchangelabs.com (2603:1096:4:40::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend
 Transport; Mon, 18 Jan 2021 08:09:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce7c2dae-5b6a-4527-7e3d-08d8bb8850f2
X-MS-TrafficTypeDiagnostic: VI1PR0502MB2943:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0502MB294325FD324719E9ED6F5A14F1A40@VI1PR0502MB2943.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: An6pyP8isxBr62w/6osiBurMYl9jqekFgxPdz3EHXTlwqyWpQ2rinfBPN3V3Q9Fh4oMtJm4rtiNJ6MXkO9mPiJ45Jto1BjJ/VUbYRqPO9FZdch59gmWszz/XQ5yIic3MwYX1zrcNWmTU5Qoj4fHxxz7I+tveR1Td0OwARxm+T7qve8wsN7vHP9X8Wshto75dm+yFmbDv/OJebl1OsCibCVYtzE23dKhlLvWgS2yEIHCRUQm5NJ931orCfk4n1ZEmC30AaMM61PLuUyNKLa+TpE1UobNKvbkAAsqgqfGPxnvOWwAdWf3yWhxayCYODSvObR9V+gnk0PEc74LMIMPh04a+K8oNOiXa5aJdFlYIyylcXgCrsa80uS4Hc14/pdQok1bbwn5awtaipNc82ZwWhA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(396003)(136003)(366004)(346002)(376002)(8676002)(2906002)(55016002)(8936002)(86362001)(2616005)(956004)(103116003)(36756003)(6666004)(26005)(1076003)(66946007)(7696005)(186003)(316002)(52116002)(83380400001)(66476007)(66556008)(16526019)(107886003)(5660300002)(478600001)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?l+6ZHnDgwgzktRMD7j3hPnEMwQlUAmBhpFdRf3gbxbDJcCezpt1me1a7xQo2?=
 =?us-ascii?Q?oOTbd9O29AAQjOL03vUO5G1WULySfDWpPX5qKwUyiLIkLTYe8vXxcl8ANixB?=
 =?us-ascii?Q?f/cQTLuh42NS0BgzoAcN3oqHWkqCYtorrryNGXxSPL2wSvZmgghvJMRl8jq2?=
 =?us-ascii?Q?6+rVnoBCFDz7lDz90q2tgD7+G4OhTLSYzLZ4zWWD/f+W0d+HyRW6ihSX1wq6?=
 =?us-ascii?Q?3V4dq479zdeuVwlZR+7iSLOeRArn3inklsuaw8reja+ZY7AncLIfbnJxtRO2?=
 =?us-ascii?Q?MB6Nuv/ruw+xMd83lzcQ+3Q0DJ7BgNs0AtZaeBErPye21TrPdBHL1Iar088p?=
 =?us-ascii?Q?3Y0Xh6Xe0mF0GtfoBlxhXpZ7mRZtZbM4xggS3lSQTW9OevL1tx+SHh/Vp33G?=
 =?us-ascii?Q?jhsZ3wNZYzTwG0Ynv3EpdqjXz3CdnK4c3xtngixHHuwJwmvns/NlkIHW4DRF?=
 =?us-ascii?Q?rNKY3bV/EVvHS2goiD36tcFNBqNH90J93gHpEmiqBohcrkQZsoHlVQ+5RLIz?=
 =?us-ascii?Q?OBdroysURHYDrb59qE53DuZU769TdX3i67rqxa41OcPeJFk499B5vkF1GpkF?=
 =?us-ascii?Q?Wm+6EsMnOHQ7Y6RY9Ojlw/bhOZQU6hN4OhHn0BctSumTLlSUGwAexdGd4v7r?=
 =?us-ascii?Q?nAjvTZaQAFT9COiZmt3GKYeWJ8ZYpZ68nIVbt9gdyZ/hIGbuuNVCe7kacmz7?=
 =?us-ascii?Q?oeAaRL9q4LwfQd/9RAIqAnKwvikEMI4HMq0l6fYLx+MfoyiKp/tLIMaDfc1g?=
 =?us-ascii?Q?h+OHCA3b9HBNjWCFxnx7GgLwL/vJc0kZcdTdh+gl99U+VNwqQam/9kb2d1mt?=
 =?us-ascii?Q?MU+O6Ui+MFCj4RoaLUNwlz4WHvV7i+5xP+ZnS8we/dlwDV6iwwhZHUN0Nhx0?=
 =?us-ascii?Q?IS+JwZZ7WsqEHi5P2EaJ7vZfdCTfoH4FrYEhIRcnh2XVbuKh558UyP5ADoi+?=
 =?us-ascii?Q?frR6C8vAwkHo9IZgXzwKnQGx2U4CYy/ka6JNCPndBLTEZcrhe+pip+GFMcBq?=
 =?us-ascii?Q?4H1U?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7c2dae-5b6a-4527-7e3d-08d8bb8850f2
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 08:09:02.3979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: avp/sRV8CBcnj6bxNiUXG4zWJQuZxhet1x+wLZCuDfp6ogK4swOYm/CylCIejfHnXH9KJ3H8ce6dULBEXJECgqDjXmIgFrm33V/5I2P5eEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2943
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.117 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.117 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1l1PqU-00C7Cl-Rd
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
