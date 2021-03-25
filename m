Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A567C3486BD
	for <lists+tipc-discussion@lfdr.de>; Thu, 25 Mar 2021 02:57:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPFFm-0006ba-AV; Thu, 25 Mar 2021 01:57:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lPFFk-0006bC-G4
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 01:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lr5sr1wzpBmFyb310tBfNtHprMJ2S74iCd/I1qZ5GbI=; b=SYq+hmVbm3sVgEmR6jNCURsQqZ
 KK+23MGoq2JtsoX48Z3MPV3T6+jtO7sIDEj6yt6QY6EJTc9gQp6D1954T2afaNXFWVQ+wI4wrhkQ6
 p9V3FY+TLdPHoU8VlsvLixZJ53bttNIdF5cYytZY7tMOsTCtxijSP2FAzE11CnvUZ3Mo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Lr5sr1wzpBmFyb310tBfNtHprMJ2S74iCd/I1qZ5GbI=; b=i
 rmkESaNvUB6QCA1Kk4MZPB8YmmVN7Q8Tpa/Ogz8y2I5Jwn17kfjjccywotYJ5tTY6xAU/w/dld9k/
 +elngaEkFLwbsWjy5NwiG3wTLMzElCZricqZlHoN7Wdrv4es6wv+LPn+9F9YKhXgGumxQKBxblAyO
 zNAZL2tRCkOLLy1A=;
Received: from mail-db8eur05on2130.outbound.protection.outlook.com
 ([40.107.20.130] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lPFFX-007mZ1-0C
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 01:57:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjmvO+yYBWnluV1I9ed3Xg06HjwCKu4xAbsinq457X0vrQ9Ql6MYsTzoBD9t9oGKeACx9yku+meKrLgCeOIPAcVOl+gwQ2aZBOCnQxS5YF3lrbTi/mTT6/MS3s83eiJq8c1KaZ2ACCc+6s/C/FG0mtDp2KEf113wEpUsUA1mDtgskFW0KU745X1CmwcHEckxBMTCaQ0HlxDU9hp6tzn6mjWkbNaoYGrIflV2nQoB5Vh4pCshLmi9T9XZ3Rxsyl03ko6dqI12mYmr9em1F6hJIi5mfcwQj65I6Bk269Mug2BhULOgrOp3BLIXmdmWukWq+6KdkI5ALNnzOsTKusj1uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lr5sr1wzpBmFyb310tBfNtHprMJ2S74iCd/I1qZ5GbI=;
 b=MGzBE8br1YNdh0aJmQLbfqrUeUZ1LHvgeIS0EMZ/7qqfi4A5GQUCJLpNMdekdZVLprlT+mPHu2UwFkIEz5oXca5wiSM66DqZqlVuab4kc+M9H+AkURv9H8do1v6pDqhwb32WIF4/yWX+UpDKp/jYH/oUgQO3MWFZd1oJozn2FQ+3ylkfJCXGf33RR48isP8y2JX4jJtI5NmM0mxPguFC/BG37meCvB/soQLteeWqHuW0nXtpLkrg9Ph3RDGk0UloPN+a6qGMOMwKQkMVLLSIimjrlVGFjfU1iD8BLiJkArCu36nL3DX2yeuFVx0V55avF19S0OLXKY26GxpaoIOalw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lr5sr1wzpBmFyb310tBfNtHprMJ2S74iCd/I1qZ5GbI=;
 b=Pajba2NcWBBNRg9olCHqfJGoo7jFA4zZpvOa+s4V3oaBW1ba+cN65O5qNkLhBe+6Rw2cpqfROEaauYiIw2QV0Q1ZJRjxacZvvjKjx7JObPCUxTGF5P4yNAx1aco9V7M49iXzRWJP5MJl0p8Q4Z4YmfUHiZUHnypkwGSjb5fuJvc=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6719.eurprd05.prod.outlook.com (2603:10a6:800:133::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Thu, 25 Mar
 2021 01:57:17 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Thu, 25 Mar 2021
 01:57:17 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: netdev@vger.kernel.org, dsahern@gmail.com,
 tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Thu, 25 Mar 2021 08:56:53 +0700
Message-Id: <20210325015653.7112-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SGAP274CA0016.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::28)
 To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SGAP274CA0016.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.24 via Frontend Transport; Thu, 25 Mar 2021 01:57:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 816a0f53-382d-4483-b5cf-08d8ef315170
X-MS-TrafficTypeDiagnostic: VI1PR05MB6719:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB67197C221A069BF7C3F61E9EF1629@VI1PR05MB6719.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pmwMHHo7x12lYdxmwJMqpmSOkb4exDShVDADxoEhah9M4gFYa3bspc4Fph/mBVZ7JQb+cYHA8/6EpGPTp10a7GhNXpu2YzCXUtVgetPMkqn0aZ8HPYGk7EYfyZ7dQEBh4xA5TbXIhefIOpvhK9wP6XWL/jSLrfOh0m/jzdCJG2VJNG047eYUsNNm0GN01FG+VVLOV+ZnysRaK0II75EROWWGqrYsaGvYOV9Xq/ycFJkwsC/Lm4+rveReWDJpOfqoCtta6rhALad2lKmH1J0bPXNQNeQqMtkhSZRR81Is0tNlRQ3hwCKkLACYArYsKy7zKUtYvl4cqeFyx+Dilq41bKiExhP2oCx2K7obg1GGPyFXwhmj0k2xvIBmYowbTZE68QYCPpwWPAQffHZhKedqnTOY5g67JSxNcvd2ieMK004VBcL5zDAym5muaoYvjNEJ2RVUCe9E+/RC8bcgShJWJggUeGIcfAnuUShARPL4c3yGNn83WHehYE5ljqrQCnBJf79diR82oU46JL8cQ/Vme0cuyhpbm1qReYYdLRk/HaxR1ddtpI5ODI58puxtzfubj5GUshgYMEUccV0HdR9SFuHAHtrVNhBlKQiULxewLc7TjtumH8i798iHbEeszcJPKkesSy2nUsaH4U6NHx6peg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(39840400004)(376002)(346002)(2906002)(103116003)(55016002)(66556008)(66476007)(66946007)(83380400001)(86362001)(8676002)(8936002)(316002)(38100700001)(36756003)(186003)(16526019)(478600001)(52116002)(26005)(6636002)(7696005)(956004)(1076003)(2616005)(6666004)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?w9b7Xqf1dbrgZ1nFez7nuhaXKX2vHQDkG5giD8pqz7ITpd0BMsfbt6T/yAHK?=
 =?us-ascii?Q?BDfEOSANOwz40pU86skDFlVmRugtj5bxwau/eKCl0+N2rFbBjP1TeWrfwPhH?=
 =?us-ascii?Q?Kpex+oRIC4ys5giMTy2IcVCxCwsCmFlILs8RfxXUBKjcHF/v4XfdlVrCDaGa?=
 =?us-ascii?Q?l8+k/nB79lrAJS8u/pDTW0v7ei+l/eifLwsO7MemfsBPyD9JwSEE4HOkeXyP?=
 =?us-ascii?Q?GsYzN40T/ogc7LIguhtBdJOzZIeGJ1ZUPs3ftD8zEQWZFEmtbFsNj3Ncbsvd?=
 =?us-ascii?Q?SKjYIUzcUfc73pWkQtTGdNooyUo47/j9tIWPcyLNdUrvXQfXGhgZ2WNWuDjO?=
 =?us-ascii?Q?WEmqiBDGorgUS50koyeoVXmeq/LI3dK4ajWPY4PVb701wrAtrTrz5UxUSNr6?=
 =?us-ascii?Q?wOKntsbS9QZp8l9shBvRvwi8XFIvYY6SaMkJPzIQdyng2vufuzz3yA9E8gAn?=
 =?us-ascii?Q?TFXVUVLszcKcpPd5djC9Xu8YSP51Oqx2fSPEOuY+WFjA75MfBAhMxXTfeCiP?=
 =?us-ascii?Q?t2q+8Vn9Z3/iucG6rW7S3iEANFzcvTqzkvM7E09z+8SE/cnbF4Ha610hdOeq?=
 =?us-ascii?Q?OnAouaCywnoj9cHZn7OUzmwXhdgU/Dj2CLK627uuNwVMf0CJo4ldbX/wuKUx?=
 =?us-ascii?Q?O9vrowhEr4ZjtQYv59rnG41uPrsQVzfWaEcejxnJws05AbuaTdpCzJnkEf7e?=
 =?us-ascii?Q?yYqCfeuXZmypWUm6CsL7oGqrVOFQ/+W332syoSGl4gL18mUUSGOi0TIh3x4t?=
 =?us-ascii?Q?uYyr17mV/0W4qKdCa/vLrMbovBSxzUXMtdozDE8rmksfT8Wwk8p5lm4UwJpY?=
 =?us-ascii?Q?Y3ADzVwJ5q37T5miyfEW5l/jpBzkICCLBPVJFS/AuZvSF204KAYPlCPhY4Y7?=
 =?us-ascii?Q?tTxhS8WntReBzqxyNxh0np88FXRJ5Nfxoy+yYwI9WQXeQhKv8C7k5HROhv1V?=
 =?us-ascii?Q?uou5OklKUdETXWMPYhC/2BR0EMWgR62PnN7MTT8f8ymPQLNiMweahdgvHl2v?=
 =?us-ascii?Q?cIqb/6tpBlUYF3IqJhLvMCDOohicoAmx8FKAfp496y6XDUsEELfNYN1wQF7s?=
 =?us-ascii?Q?kRv5K0G3INnjM2be6qOxXkyX/tfcLH8IlF0pKornvdLwP/wfHlAVim3Aqa5V?=
 =?us-ascii?Q?AARzG8y805MGkXv9lUmpmCgKYnACPFDpcfLuae8mPhDCNkrpZsN5SkjSHuB2?=
 =?us-ascii?Q?FpoRQRUqosdU6IX82AFwTFYggxLOTCLXc1YnrKhktF33J5B5x3vigtxZm3yg?=
 =?us-ascii?Q?+FGPqkGo3YeV8jou2cemusJsljGmEU3h0QhSQSan7Xw+ZQCyPqwAEINLYWjU?=
 =?us-ascii?Q?YWLdRAaurVomGWcamE+A8KSv?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 816a0f53-382d-4483-b5cf-08d8ef315170
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2021 01:57:17.4520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: quTEvGKXWiHJCK01QHXnsSsfVuRMhMitmdrwTJO5DNzhw+jjXRv+9yQi4ge4hdsvZQLfkZI6xzgeU6zLmSCa+B4HyM25Ckh4krymnrv0zF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6719
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lPFFX-007mZ1-0C
Subject: [tipc-discussion] [iproute2-next] tipc: add support for the netlink
 extack
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

Acked-by: Jon Maloy <jmaloy@redhat.com>
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
