Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 765DC345A59
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Mar 2021 10:07:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lOd0M-0001EC-Nk; Tue, 23 Mar 2021 09:07:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lOd0K-0001E5-Ro
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 09:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=; b=JBSELQoo3JMcCotYEPyyOcPKxJ
 GSs25+XN6Uc+cB9bKsBMpcieqesJWj6qKabv3SP0l53FLVZg1mH5w9RGWLDC6XMvyElynl4OV8wzh
 51Ltdsl4os0VGA+uek3xvLxcCZMwtJVQ7XN/esmQU1EcVfEqhUQNGk5g7kBol9Tg6i6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=; b=O
 FjIINxp3/U1mO80hJmlX/e34sxbCSsXQyjFBOwcJRO9+TaVFmIWEEP/XOp+1KI9R6QTOHiZvVwkTi
 4oQTburZI9AI0A6ndQg1Ojg3NTcFT+qTy5bsgv8NrDHsofnslN6NeXzHhdp1HswKqLG4sEdv/OcLd
 88Qa9ZBdaRRj2c5k=;
Received: from mail-eopbgr60130.outbound.protection.outlook.com
 ([40.107.6.130] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOd0G-000K0e-3r
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 09:07:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3sLB4uh7Jnro42WQotJhYREldFQxcMF8bzAcgzn47nVCs8J1wtB7EDhDlUdbS7F9IcO5ZkjHM9RG+Xp0ILVu71SWwaD5mcIYvBIodqFmmoqdv7CNeq40gzP5+MUHj8B3yI7D6Kt63zW/GkbZiH6waOSzWzrdiRFZ1jySeOUDRkKpqrTfgaS7KUZ3HLBfdhWIBGJjWftM0qzrs9B1YAdZe90BS0W1GiFnDT0iHOIbKP6X57b1CoH64NCM9OCa4ij64dBDu5ri0LoJMZqzDbS4mvb2DqOueuAI53OfhMPZoPHgyWDYDB3ZSGCo2JvoSdk/Ev4dPbfG5YCfO8QBLKMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=;
 b=TPxZSoaLHTjrW5DDVt4/tE/hGiipgpKRsGeLmOlIuJ/lR5vhFzkE0B3YPaTNXiAaMnd1UHNmyFWCmd3s+EmZ1AuTCJHog+ItrKy1HdziQBbRo+hbF0HF9UtbBZBjVYWMOGYDwIAq9Gi92QyP4P4FwsE4AYVBH1NX69hHAsRlxm5NzK7XlL8vA7aKro8Q97jbrgS4lw2LpqxVqdt2v/Y9Rh2Ff/Cujt01fJbqKZD1itBGjZSUvWzCrmoRPRa8fy4supKbh1gkQHvqKUNyBNBh+O8A5e/Gso+8pBECsNZUVYI1wavww0dDeUg2Z8cD9ivE7goMKhZdQYs111VkWv46GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=;
 b=F7X8iotnw2Insmnpb+tqzj7V9Cleif0z9wvTge/P50ClxcsrwNVIWRkTDJgSPUPk6rVvx17LrV02fsyShF/5/C3LPBvhRdQSVxy3E59XL5Qf9GB0velgTFzD82t6RvZTURz8Qlbw6KJ6XNg+DoO9bN2oMLP0R95V3jqxxjwyvrQ=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5982.eurprd05.prod.outlook.com (2603:10a6:803:e4::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 09:07:00 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Tue, 23 Mar 2021
 09:07:00 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Tue, 23 Mar 2021 16:06:46 +0700
Message-Id: <20210323090646.8066-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:3:18::32) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR02CA0044.apcprd02.prod.outlook.com (2603:1096:3:18::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18 via Frontend Transport; Tue, 23 Mar 2021 09:06:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d33cd47a-951c-4c2c-f0cc-08d8eddb044b
X-MS-TrafficTypeDiagnostic: VI1PR05MB5982:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB598287FF94E9A42C9524016EF1649@VI1PR05MB5982.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UL8ydRVwYOt4W5iEuAj3SGwH19xSfzyqHDSwVe0i6/kBl+LAHsjgRId5qEaQp/odg4l+Wl2ZX/pBm1REhbJ+DtphrFHqo/5WTc3vdXDCgrVsmjJmhh/HOi9C3nMJRfL+d+9duE5PJ/jU6ujEPyqzPDdi5jMiMJ5NJx3otzIcapXK1qjTZlNAI7KRiThS4QjEP2fbULt68sC8nqvGGi3NevXt57S84EkaWxo0Jlz/piCfaSQZCV49sZI7cgrZgacXq8GxgFkvY/6BMWkZUo06nsyal+/3+RSXJWians9aVeMDEGzZdODYsMY7JbJumxWaHW7ClTOTl6yVZPCwm0NSiSG/4waO0asrvaCb7MikB9jKlE1jLWv+QD1in0rY5fdaytlrIpbEY5e3UMWtIWHxnb5Qecyre6eMiyZh4R/hnTGp8+bL7IPQPG8T/KFkKJmcvKz+9Ou6ewZ+s6KfrTP3h1YUdZ+8cAhhLvWfQfFniE/MkmfuSOEUVyHUjNS2E4YBYvdXdWThTYNDJylPbI3tieG4pGgxxzHk0q6x9HUPxKN8bsyU75LtgNZUXh2ZaEjNDtL3rUqAj6RBnUbWB3GF48UCtiQLNYAm/V4DODj8HzqxoMhlQGfllyXEJVofxk3FEI0AUOigWNgPNR4yr7x5A3DTrb8iEEcxyfKdn7xNfSg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39850400004)(396003)(136003)(366004)(7696005)(478600001)(38100700001)(1076003)(36756003)(2906002)(103116003)(52116002)(8676002)(6666004)(6636002)(26005)(956004)(186003)(66946007)(66556008)(55016002)(16526019)(5660300002)(66476007)(8936002)(86362001)(316002)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?EtrQpp+aPhQ230FYWfjQvegdNDMwDreGg1SPIGLy69UUb45w5kf0FqEwFQiP?=
 =?us-ascii?Q?6FDKGsEW4FxuJvQSlGmv7hvFv/5yHZX5gFoTaIWITIMuBNFRW1r7HyEI2HO5?=
 =?us-ascii?Q?RWyZc22fp9hFXjqxNKnk2qXlXRsXjRbHXQDSEfHoguhbPRCwv1q6LOp1DYd8?=
 =?us-ascii?Q?Jl8VZ/Wu2e/mdPc6wZaLiQ2g0tRNoX5Caz6azU1fs15jLidrs1eZSrXeZCPW?=
 =?us-ascii?Q?YgiDaYq6n/VO9D8GKtQ0KlMDekey+94QGxANWlj74R5gYHBcXMeXQXmWnnsV?=
 =?us-ascii?Q?yHOhkFl0Q/Ic8gTd2gH2/WXN+T6ZtmeNUJSXj72qX/GsrTcVWfHe/cNnOitE?=
 =?us-ascii?Q?PgMOnoFsZp4494yt/cU6lzebnAnkzU4s0DF3OAV/X2hx1KD/AXwg0LjK3bc9?=
 =?us-ascii?Q?3ysbNCfhv9VJegUdiKC7phUmXzOXEBUEB3vjJXaCSXehJs4rPR/RkB7hwuOy?=
 =?us-ascii?Q?zbUylP6O3etp1JcbG+z2ObN6w6hksJysZ+e4NdBqEZZw1n4bsf2KpZUZ1hIu?=
 =?us-ascii?Q?DI2pbNqsQMijNakxgVqCb8asUqjhPWUV8mnO66LBUiCB1IGOAxcj0FVEUwI5?=
 =?us-ascii?Q?RyFpLf0lCPDrN3AOJwhz1UX9FzDijD6qU9qLcZTRs0hi5k43u6lxm9r6UoAY?=
 =?us-ascii?Q?LmNECBWDCx671t9qDIh7n6uHaOe3oVLSX1XRfaYumJe+mu8oYB06uhBtNg1W?=
 =?us-ascii?Q?Y5JC0zIn4opF2+11zq2rGwcI5xPRmehoT+C9cjYsIPf646cuFeYAu0701sDv?=
 =?us-ascii?Q?vqqcv8BRI9H7xMiJmlT1vSCeNM5Ry2ihNfUDDjf8wmAKto/a75PQhO/tpwTj?=
 =?us-ascii?Q?dbYich5Pl1ulG8FOqKjYVq7QPawtPovrn7NngChB1UxGVgTr1iOvWMuXyPdc?=
 =?us-ascii?Q?v9WuRRvji+9bcZuqzgUJtFi1A0CiShFgmXtC9u0mGmnZ5cEktk/qx243437c?=
 =?us-ascii?Q?BjLxFHOQkROHD2FUcL5aeNYAI3bzsMw6lfn35uYZH7GB56zBC3vsJY4SCsZ9?=
 =?us-ascii?Q?8C+TpDvWmxVJ9MuPwCdNQmR6CSeu5+MbLdkDDNl6r6nro7wmM8usRObqmCQl?=
 =?us-ascii?Q?6TcCUDx4IFHuQvpv3nWR7P8f3mbwJwcrBWZ9Aj3PAIYXHmCltJHBvgPLOq9Z?=
 =?us-ascii?Q?RrLThsXtyOD93Gpf6owZmes41xZ/pGfWWcHpmThRNp2oIEpvBqMUzHFbF0RK?=
 =?us-ascii?Q?UT/L1ihRUKRaf5unfd//AJ7DgNjqshBKqJ5vZRjA02wHaAPzzg23UEANIVsN?=
 =?us-ascii?Q?eh51QjHgVmIZYXVxpmiYLazg1DXgl+TmLAI6/vUIx+wZMkaTNgR1O1rx37Zm?=
 =?us-ascii?Q?rPfShTytEjjN5nC/DxULF5Dr?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d33cd47a-951c-4c2c-f0cc-08d8eddb044b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 09:07:00.1430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEBPfH+DIalTUH9zBoREWhJ7hJZnacGRQ/N2PdFm6wfsT/Cg8yVlWUCQryqAq+tdwfdFDHGjNh9ni/v02sd8WMDm6iHqfVofAPxtSJiA8S8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5982
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.130 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lOd0G-000K0e-3r
Subject: [tipc-discussion] [iproute2-next v2] tipc: add support for the
 netlink extack
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

Add support extack in tipc to dump the netlink extack error messages
(i.e -EINVAL) sent from kernel.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 tipc/msg.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/tipc/msg.c b/tipc/msg.c
index dc09d05048f3..f29b2f8d35ad 100644
--- a/tipc/msg.c
+++ b/tipc/msg.c
@@ -18,6 +18,7 @@
 #include <linux/genetlink.h>
 #include <libmnl/libmnl.h>
 
+#include "libnetlink.h"
 #include "msg.h"
 
 int parse_attrs(const struct nlattr *attr, void *data)
@@ -49,6 +50,7 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
 {
 	int ret;
 	struct mnl_socket *nl;
+	int one = 1;
 
 	nl = mnl_socket_open(NETLINK_GENERIC);
 	if (nl == NULL) {
@@ -56,6 +58,8 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
 		return NULL;
 	}
 
+	/* support to get extended ACK */
+	mnl_socket_setsockopt(nl, NETLINK_EXT_ACK, &one, sizeof(one));
 	ret = mnl_socket_bind(nl, 0, MNL_SOCKET_AUTOPID);
 	if (ret < 0) {
 		perror("mnl_socket_bind");
@@ -73,21 +77,32 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
 
 static int msg_recv(struct mnl_socket *nl, mnl_cb_t callback, void *data, int seq)
 {
-	int ret;
 	unsigned int portid;
 	char buf[MNL_SOCKET_BUFFER_SIZE];
+	struct nlmsghdr *h;
+	size_t num_bytes;
+	int is_err = 0;
+	int ret = 0;
 
 	portid = mnl_socket_get_portid(nl);
 
-	ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
-	while (ret > 0) {
-		ret = mnl_cb_run(buf, ret, seq, portid, callback, data);
+	num_bytes = mnl_socket_recvfrom(nl, buf, sizeof(buf));
+	while (num_bytes > 0) {
+		ret = mnl_cb_run(buf, num_bytes, seq, portid, callback, data);
 		if (ret <= 0)
 			break;
-		ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
+		num_bytes = mnl_socket_recvfrom(nl, buf, sizeof(buf));
+	}
+
+	if (ret == -1) {
+		if (num_bytes > 0) {
+			h = (struct nlmsghdr *)buf;
+			is_err = nl_dump_ext_ack(h, NULL);
+		}
+
+		if (!is_err)
+			perror("error");
 	}
-	if (ret == -1)
-		perror("error");
 
 	mnl_socket_close(nl);
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
