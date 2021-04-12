Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0044C35B90F
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Apr 2021 05:46:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lVnWI-0002Xj-9g; Mon, 12 Apr 2021 03:45:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lVnWG-0002XU-D5
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 03:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AtPd2xVVNrdhtwAXnBShkczAPlRw8axQQS3cAH0cxnk=; b=KHJf5DL7xYcl3NAwCKAye4Eyh6
 bDZKlzbEPMLvwbqEjzC3Yib1C8vxaNhxMTFJFLEuDsHcg+GYhcK2I8eXrAghyRHEzjyxzQJW6fZ5i
 ByAlWWVo3fzl4q0voPERavzEXDj2R01+X2OUje0WN1NIjNK3G/uIXlbAtw7Pvg1+W+zc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AtPd2xVVNrdhtwAXnBShkczAPlRw8axQQS3cAH0cxnk=; b=j
 GaUeYzZjTes6su/txOc4irgrFIIsvDxF4gngisTwiC+ezX27T5IuI89CKhUPgGMOrJKAZtcknLPsr
 0Y2pXWoBOuoWNtI75i+PAmnJWsFLZFEk9kjlUquUiQi6tMfbX7YnVtyfqSD31PonA2qoB5xxgu+j7
 MKqTCqUH3ye774z0=;
Received: from mail-db8eur05on2093.outbound.protection.outlook.com
 ([40.107.20.93] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lVnW2-007d49-Mg
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 03:45:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9OiroPGM0jzxgHtCl5VHvOFzAtVVNZslj0vA/uppqDeQw3S75Uwt93+M4MeNhhQE27xdZSTkle6iw0+lrTb495+a/GYCVR1AYUIKN8+0g9mUBfzxAv0lrfozmKnE8G7v/ZZgLl7gTzlLWHbSj3h+ZmTpRVT4lEyWPIvwEMIUs8xrpkbbFo6Dx97jARUyd78pBRDMfsDaxcVYGED/VJFV2+EyT6ShtLq9AudK11776AJcXNAvlJRT6jgNLsX6yudKwMNiZ8xeL5B+Lb+BgnRff1t9pKNFdkctVo04qezXkeeg1VLs9jLNiDnDyEo9MbMsp+yOu1vZ+/H3ZD2El8kvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtPd2xVVNrdhtwAXnBShkczAPlRw8axQQS3cAH0cxnk=;
 b=aizKMVNBOcZx9miVNRhCMr6Ys0zKowAGYYnABwJ7o0beCoA/EoiaJX+TxCNbDgFr5DBpJOdHeoOPLvwO3XPNFjG2hEunoh0SwLvlvs++bovEbYPI6DYE8b5dr0qQ/gmLhCfUxqDQeEafrwcBbXedTTWpg69UfPVZDc8cPUE0GZfaUdNRfGgr12oyQI6w+lvQI6yj3wT0EWN9khBn3ZgZYivtrroPtJDS58NvLLZebNgHnDlLsNHyYWIR3TjKcpkCakB7iw0mgHkNLxU9Cb82cp/E5lWjXxEumYTKCnqT10lMdh5Fp3Ose1R33U5zLLrrUlzIhs4D+wvAM3gGcBThLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtPd2xVVNrdhtwAXnBShkczAPlRw8axQQS3cAH0cxnk=;
 b=UxY7a2agsUiRmIhv9aFF96tYA38OT8DrXpF0lOMGfKXSUXj2t2UK9Uo4rH8lsVoaFuYiWePUBojC+AUGSvp3CjpbHE3DCqkVPPVAMFcU3Ks0JNVHtArtlBHT4f29I9JIJBMzFHL3E3/0jwLc8qLhKCwuVXTqw5ViSQQ9U6H3sUk=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4608.eurprd05.prod.outlook.com (2603:10a6:802:5f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Mon, 12 Apr
 2021 03:45:26 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 03:45:25 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Mon, 12 Apr 2021 10:45:12 +0700
Message-Id: <20210412034512.5596-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Mon, 12 Apr 2021 03:45:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 770bb1b4-d691-4d3c-0285-08d8fd65682a
X-MS-TrafficTypeDiagnostic: VI1PR05MB4608:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB46087CCEE36AC1920DE8D982F1709@VI1PR05MB4608.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: POGMexwXSj7UFo57/B0wY3G8herNWbXBZq2jo/BKbVGpNNd4KMT7QpV+IiXWhgVOK/UkfQg3YxODUziilYZuGixzW4Ff7lefTiYoIh0elCqvuE4KUblFOvVRd4iUZcq2KDZP7e3v0K0GAZ41ukKJb/+sSI8hOLcsyceaZDTh+aV0SRzNPqhREMf7aVyFU/Shj4qxtq3/usqojHEP+4gl6F89kzOA8vKUV4b+sNc2OPGf8193c0LEakVrbm6TjgYMkj7PsDvW3VQqKIUaxxpcbMuKNu3NJCZySfzif29SbJbX0m3/UFkl2W/Uue4qe8fCq1Zr02kseQR2d6YrtEu3rzvmRSzT9r+2dKFwjUWB6xvUQuOfHeNgtxgUkJ+b0gV61D+fVIgwjJbP6QZ8wqvPR52TC6zvkNDooum+d9AAWnxY3FIqfgVvskHPQp63GrrJBvNEl+0b9V3Gv0XeaXl3nJNtjiOXXIabEjPabs8YLcam/kgPM5QLhHRavooI+gBzFYsnvpHj+Nl3zKRrW63Ls2sJcoYOvARg0MqS7rCGYYgnvJi751UY8oNzzETKHGL4KainDO4rfEMbZnaYA4d1BNTvV23k7iuFcSRQRgEpthBLHsAXDKj/vZIyWQWHxKmwPPOqqErhrrRXxkDdAXJ3VyTx1Ao8vJHndx+T2yJ3UzU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(366004)(136003)(39840400004)(186003)(103116003)(26005)(6636002)(66946007)(16526019)(66476007)(6666004)(36756003)(8936002)(66556008)(5660300002)(8676002)(2906002)(55016002)(7696005)(52116002)(38350700002)(478600001)(2616005)(1076003)(956004)(316002)(38100700002)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?eOhQdaQKaqTKCY3p4Rj23VfoBTezUOW+kI8ppRO9/3WyNiid7q6xL7aV6eyI?=
 =?us-ascii?Q?Ex9BxTD6/0uU56OS2l3EG1YE2r0R0pdawy1bUc/1SSlC9Rj9Xc6pN3gVE+7T?=
 =?us-ascii?Q?qSkgPkEvByKAUrWM8FWYk7FPEk2DXUIJdhhrTEzQsY3DmVyxp4ym/iXtOZh2?=
 =?us-ascii?Q?gItqGNpZCRulUkalO9it+puw+4u3BtoYs7YeKPMK/l3IbyIilj5LJ9FAAet1?=
 =?us-ascii?Q?G5cP3NOxZ6OXcf6xIlZrGZg0IDRKpOS4TxHTe6ogF4fB8U+W4w7zwEqOh0K1?=
 =?us-ascii?Q?qiCRBnoIEv63j7hCZ119VXdyu36lh9Hx3MVAsL3AoHZPRLBuOClc1RYAkMnA?=
 =?us-ascii?Q?l5NOwl8SKtSKsXyMBrAYTp8m3BwsDUl698ba5H3WPmbzk0KboYHb3AaLI6to?=
 =?us-ascii?Q?j2Hem4zOdi8DmbIrSsYMxeAopZklxwZN0Cc2bLjQe+W1Ilnd+t/Ycnq9kSfH?=
 =?us-ascii?Q?YbbVnB5qAbPEaXLx1T1Fa7sDiILmwGslJb3uAz88ypFpClInZKkl3pF5LlFm?=
 =?us-ascii?Q?3bG/s6lUh+A8lzgvJKiienOYZA7L23SKEliYQSRsE+5oHbImpVxB14/ZkBAF?=
 =?us-ascii?Q?CQvP59PcTeNcuTcQgJwt6TNswnh8VV97f/0pG8dAtwkUNUUaQYaMdlwB7+uF?=
 =?us-ascii?Q?7CTxnbU5kicjFEnmkCvFgm364e+zMoa1T8V8IykiKZEKI5WhDEICmVSLk9gE?=
 =?us-ascii?Q?KgUwbN0tIU9ug8fBHn9il0al8XJXcCpoB5vRUZuEilTnBZ867GpvlIpWCQgK?=
 =?us-ascii?Q?Va8JC8xUsg8WZ10M4RsuEAIlDO9VBmyEdEgNreW/r2nX+R7IHlwZSZW3uOBh?=
 =?us-ascii?Q?zc32kySxyHSjJcBPCa9FyEjlwkYIh9vmGE1AFCPx03goJnfRkWhIIl/38xr0?=
 =?us-ascii?Q?78ko9v3av67bGd1dYmr1Z1sicFelWM4lmmIvB0hfGiunBcJhcQ59ssnWTOYD?=
 =?us-ascii?Q?wsyl1KzlIOM+7gHQ4blNatHKtmpt8ygRtvBToG6TAPOjvthcsgfcZzJLkb8R?=
 =?us-ascii?Q?ixtPqI7pAfrPi/hH5lmXY/mr0CeTPCDHCy/sjEuhsmHRkBaIJyctEckTfbsY?=
 =?us-ascii?Q?MLjoau3aTllGwtOJedZrd4u9ahmSiwl1ETwVo2mun38St4DRPOros5T11YEa?=
 =?us-ascii?Q?ZvvLdsnqVAGG4GkCXGL9Alqg0nkkvQngxTx0q0bvxRB9Yw+sLC6Sv2tDPwAT?=
 =?us-ascii?Q?Sx4g0AXpLrpvIXDzlDoe09AXwAe0P+zfD16307qxjn8HxpxJxsGej5WSgFjM?=
 =?us-ascii?Q?H+Hd8JMwZncscsFss8vdktanw+5MUOh7Mnkksk1ff5pOIoG6rIWcvR5qZI09?=
 =?us-ascii?Q?Is0SMT3sGxPmd+UiFcx/UYW1?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 770bb1b4-d691-4d3c-0285-08d8fd65682a
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 03:45:25.8020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +agU860jAm55o2QZAxBs83d0vyGuvfzzYRQm+kcdufa4qD/bdurtmrshGgqySYaHVt9I4mkvdJo5NFBqBYTZBZd55S4CdbixHtlIAY5Bg+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4608
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.93 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lVnW2-007d49-Mg
Subject: [tipc-discussion] [iproute2-next] tipc: call a sub-routine in
 separate socket
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

When receiving a result from first query to netlink, we may exec
a another query inside the callback. If calling this sub-routine
in the same socket, it will be discarded the result from previous
exection.
To avoid this we perform a nested query in separate socket.

Fixes: 202102830663 ("tipc: use the libmnl functions in lib/mnl_utils.c")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 tipc/link.c   | 15 +++++++++++++--
 tipc/socket.c | 17 +++++++++++++++--
 2 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/tipc/link.c b/tipc/link.c
index 2123f109c694..9994ada2a367 100644
--- a/tipc/link.c
+++ b/tipc/link.c
@@ -17,7 +17,9 @@
 #include <linux/tipc_netlink.h>
 #include <linux/tipc.h>
 #include <linux/genetlink.h>
+#include <libmnl/libmnl.h>
 
+#include "mnl_utils.h"
 #include "cmdl.h"
 #include "msg.h"
 #include "link.h"
@@ -993,13 +995,20 @@ exit:
 
 static int link_mon_peer_list(uint32_t mon_ref)
 {
+	struct mnlu_gen_socket link_nlg;
 	struct nlmsghdr *nlh;
 	struct nlattr *nest;
 	int err = 0;
 
-	nlh = msg_init(TIPC_NL_MON_PEER_GET);
+	err = mnlu_gen_socket_open(&link_nlg, TIPC_GENL_V2_NAME,
+				   TIPC_GENL_V2_VERSION);
+	if (err)
+		return -1;
+	nlh = mnlu_gen_socket_cmd_prepare(&link_nlg, TIPC_NL_MON_PEER_GET,
+					  NLM_F_REQUEST | NLM_F_DUMP);
 	if (!nlh) {
 		fprintf(stderr, "error, message initialisation failed\n");
+		mnlu_gen_socket_close(&link_nlg);
 		return -1;
 	}
 
@@ -1007,7 +1016,9 @@ static int link_mon_peer_list(uint32_t mon_ref)
 	mnl_attr_put_u32(nlh, TIPC_NLA_MON_REF, mon_ref);
 	mnl_attr_nest_end(nlh, nest);
 
-	err = msg_dumpit(nlh, link_mon_peer_list_cb, NULL);
+	err = mnlu_gen_socket_sndrcv(&link_nlg, nlh, link_mon_peer_list_cb,
+				     NULL);
+	mnlu_gen_socket_close(&link_nlg);
 	return err;
 }
 
diff --git a/tipc/socket.c b/tipc/socket.c
index deae12af4409..597ffd91af52 100644
--- a/tipc/socket.c
+++ b/tipc/socket.c
@@ -15,7 +15,9 @@
 #include <linux/tipc.h>
 #include <linux/tipc_netlink.h>
 #include <linux/genetlink.h>
+#include <libmnl/libmnl.h>
 
+#include "mnl_utils.h"
 #include "cmdl.h"
 #include "msg.h"
 #include "socket.h"
@@ -44,12 +46,21 @@ static int publ_list_cb(const struct nlmsghdr *nlh, void *data)
 
 static int publ_list(uint32_t sock)
 {
+	struct mnlu_gen_socket sock_nlg;
 	struct nlmsghdr *nlh;
 	struct nlattr *nest;
+	int err;
 
-	nlh = msg_init(TIPC_NL_PUBL_GET);
+	err = mnlu_gen_socket_open(&sock_nlg, TIPC_GENL_V2_NAME,
+				   TIPC_GENL_V2_VERSION);
+	if (err)
+		return -1;
+
+	nlh = mnlu_gen_socket_cmd_prepare(&sock_nlg, TIPC_NL_PUBL_GET,
+					  NLM_F_REQUEST | NLM_F_DUMP);
 	if (!nlh) {
 		fprintf(stderr, "error, message initialisation failed\n");
+		mnlu_gen_socket_close(&sock_nlg);
 		return -1;
 	}
 
@@ -57,7 +68,9 @@ static int publ_list(uint32_t sock)
 	mnl_attr_put_u32(nlh, TIPC_NLA_SOCK_REF, sock);
 	mnl_attr_nest_end(nlh, nest);
 
-	return msg_dumpit(nlh, publ_list_cb, NULL);
+	err = mnlu_gen_socket_sndrcv(&sock_nlg, nlh, publ_list_cb, NULL);
+	mnlu_gen_socket_close(&sock_nlg);
+	return err;
 }
 
 static int sock_list_cb(const struct nlmsghdr *nlh, void *data)
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
