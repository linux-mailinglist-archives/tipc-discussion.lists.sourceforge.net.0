Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BEA345C11
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Mar 2021 11:41:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lOeTs-0007ro-Il; Tue, 23 Mar 2021 10:41:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lOeTp-0007rV-En
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 10:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=; b=g/fkLsLSNRARs+9WrrtCzwOVnf
 XuBfVe3j0qqVbUO3WaShHmCSFcSFp6wb5w4SApZH+oJH06upKZdpvefijaKWPmokA3ZF1FCpqSDnV
 m9XlrKCpgHDrRYrSnz/Ssyaz8ipX7Rn5CC96f/ni2iq2ieXfAzo3hS6T40ieItLjWU2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=; b=X
 IEWoANwIAmlQmT/Xudwms4ZgMUbODJyzgbnLmM/4cj9zUR7vrhU97FmACqk5NMrO5878Y/nPfurc9
 v3ofifCq0XPwCWS3BVxCCBQfLQTnp9HKNDTXspTTs3yAJFbbq+1iQ+xT4LEUI12y6ic2Kq500L2Ni
 mSOmnB/OUV8Qy3vw=;
Received: from mail-db8eur05on2114.outbound.protection.outlook.com
 ([40.107.20.114] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOeTh-00047l-0D
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 10:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kw33aIz1iqBjsGscpZFa8JVHTK4L7wofmrwh+3xB7n5GgTqlbBj8o/2u1LIlhws967typ05fAC80cvsw2BI/2b4oVkYljRWxV+abfPtjReaU4MmdigEmi1NmKTc0YqhT80wMBGF4kFs2IZafZpwFhtpB0mKDk74HnWQrrpovInQDuHKg2tRGjfKLBgj7nHbY7W5/EUR8FcUmtnfOJhypSRRRfv18jhlVedsnsoFzM/7sMl/j7hjgRSoAXx83WUXb4wimO97u0gFURbhewo0mCvsJZQyBAL7hEm4ifXk76dS4XPdCwjw8UHNRIDC20YHN5ugZkb5a1ak9HmyKve8fJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=;
 b=cWzV5rN8hy2GYm/gMxmMSzf0OCNNyRrDwyQX2CJfjp+n9Hxd+wq1n5zfVDIX/BKQiurRtYQ4400s0Vk4hU2HpOLuA5pBHxlMR4L9ciSeDW8VLBTxTRoVmtALzDdKm1WoRBsKtm5ikvMsYWTpznLfo6JSriwI1/hc6C2GvZA4fxXl5Rgw33/GfKyK9y4ky6Z9fo/Lt2TAzDYWUheoZetQa7bP4WDmOfI8nyVzqbuhOfNGFUcqXB3PKb1r6YjBPXmMCRQkC0YqFzbMd8dCWK7TX3IY0agqTC6Wwf9mhGenn1TVU6fgMH8w3hZaFXWHNKMMY0HQS2OoBbo8twUqkvMhCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StdjjiD4pV7IoStxQdoPHBmnvcX9D1tCuA8VhCx7VQg=;
 b=vkT/M/mPgCwjDI45gap1uwku570y84b8yHc7E1XvpoElsci9/OwB6RCuHWOiCvr56zsYYRg2rOiOnSBv3S2ruCf81H9E5ZyP9Uj40YQa0Lfx8+IUrybQ3R4G4xHgdurCcB+47WoAbW1T2GLSi6ecc4Sd/kpaIF8cBIeeb52AUrg=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6718.eurprd05.prod.outlook.com (2603:10a6:800:13b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 09:06:12 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Tue, 23 Mar 2021
 09:06:12 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Tue, 23 Mar 2021 16:06:00 +0700
Message-Id: <20210323090600.7996-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR03CA0152.apcprd03.prod.outlook.com (2603:1096:4:c9::7)
 To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR03CA0152.apcprd03.prod.outlook.com (2603:1096:4:c9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.9 via Frontend Transport; Tue, 23 Mar 2021 09:06:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6464095c-5c91-47f4-e502-08d8eddae800
X-MS-TrafficTypeDiagnostic: VI1PR05MB6718:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB67185A6F5EA7DFD299391264F1649@VI1PR05MB6718.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SzP5z1tGwunM4K9CUq9UC7BLxFvB+nSDrV28ZLLsSP47U5zpdv8+Gw1zKIlCUOqE5vXMMF7zGYcylaVybKE+Eo1Jb468KcHOf3kRkZgviK0rBozQtAJtbsCs85fPpnO1h1745WvKvzrm2HpwVTuZRtlJH3/cYJdEBrNQBxnK79fAlCSCcjO+qwmb47RBEqiD4DmRzoGGgsfbbkqKoE8uuXDD1DUaylQx8IhBrNKRVnmQoosRet7kGW9iufD8MaY9EJ/oNVr1pR7Tk4r7dylG8y+ltybixBUSY6ZWQ1XCA3H7lKYnxHIUTQdCcqkeOaH19N5fbwbMy9O1GrIbP/DhPHeP9G9Dj/IKWa8H7wWhi1oyQrIoxO+5aK8avVv5K41pHseJiaI45MzzH+c/BSOHvRRNX+pu70qy0Fal9AdiviZzMDnXPHQF/g0AxjCg4HjhFJ9L3164m6Q4PNrgO+SFbj0w+y09aLxTPqjm9glS9nus28PADOnGJm6ErC2hUFsjQ62lFyLJaodSSIr74o9KkONnfPnYaK56mx9hkIEqdTYNEsUnYKZQf4BcpVI3d8KyTF8PSpmip+oVMhz1K1ZkAp7NcAWe7r/vMO7rjC6c9pCSTywDjUZaJ+VhSckhF46oS7By4nNovmg657ZynFhAr/QtUSH5suYIZ7yJAzsPDpQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39850400004)(346002)(366004)(396003)(136003)(16526019)(86362001)(66476007)(66556008)(186003)(26005)(2906002)(66946007)(956004)(316002)(478600001)(2616005)(5660300002)(6666004)(1076003)(55016002)(7696005)(8936002)(83380400001)(103116003)(38100700001)(6636002)(36756003)(52116002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?BpVqxlAJgTNp+5HHhXq0GUWX8FTAWJ66zB6Ux43xgp48jdI5wcSrZehMSIfL?=
 =?us-ascii?Q?oZbJmo7ogQw6VStxz6QVWBdnBhnNVbXdvdRVg96hkAFDcwzVkTg0byjQqj7V?=
 =?us-ascii?Q?7yPP5SsADA8wQ3EMxPQWvRNG+GRYJuzGTLbroh/T27anVmGy1bCdf2LoKitm?=
 =?us-ascii?Q?9GYKwIiM3GyO+XnYpC2tIbK8FrrsCINahkzU62UwgtVpcnYGSqUg/tjoX6ou?=
 =?us-ascii?Q?rCyhW3C96EzLWZmeh5uEIsNzqZFW4eRO/bKi6MPNOeDC+YxnBUSFfwzpgM/L?=
 =?us-ascii?Q?71wzHnHpuZ8dmsq+Tjpwh/vJBk/TZlnaCriNkcYS/+huIeh8hRkoaopYb/+g?=
 =?us-ascii?Q?8nmhL4xlIoGioOSEevLaLcVeSxqt5FnMmwQJgyhWecMSYPvnkd8H45QFwLdQ?=
 =?us-ascii?Q?plRCGeFI4xWvmzR2ER0tOAa/iBjNFKItdyP5JyYY/W+CK6Pir+DMaVeun0uU?=
 =?us-ascii?Q?JKvMcuXKUulie1nxIskJxqrAehwikiWxb7+hEhYusJ8w3T1kYT//AF4RFbox?=
 =?us-ascii?Q?7wE+7Nxacm0JJcSeJnTJZzBYYgot5s65P42bE8YhQiBCQscuEro0J9XgLfgD?=
 =?us-ascii?Q?hPDlL3/DZaNBxtl+MGFB62mkiWYILOobGGaFaOj91h903kgKuFWrRsu+mfcx?=
 =?us-ascii?Q?2eY2CaTFc+b3RiDiKO1k/7Jc1yLc/8ypqK5+94MfTgUx6BRIwvzTs/wISX5P?=
 =?us-ascii?Q?JQdZ5PCDwXpdhayHZldj9cqkNhNq90CYv6yrjXSH/MasY634NIps7YPtNtXe?=
 =?us-ascii?Q?ntsXjHYktSkao4Pbevi+FPy0Qs6DH9SLgFDEim60VSs+1gIf/3f0vie50glF?=
 =?us-ascii?Q?JaG6+dgPxxl0T2tPhFa1R/n42KT4dcuath6dt8DWBbEyW9eQ/rPwfsA6l96C?=
 =?us-ascii?Q?km5M8tIN98buB2iIL8/sxzbZi4SmoVB3rZ47i7ojGonoll1v58nvyCE/uFEj?=
 =?us-ascii?Q?mFiP5ybgGuFxeBSX3xQYRoEh38L3pQSALi+t8Fa6Gy1UwXsrDJ67RxglgMxQ?=
 =?us-ascii?Q?5FtRGTCFr6EbDVsb2MlX+hw05uLiXQ00Splw1Xc2VPy337M4RR9VrShN7IpP?=
 =?us-ascii?Q?Z/8QNpLQGELO8SLdUMftP9jXAsAhFEmwlfGZ+3Htct/4qVdTvzDe2Su0CPax?=
 =?us-ascii?Q?usgySQ2tNindwlPQlQjHeQZiBCraRUF1U5LJ2bGRviqD/6ewFD2/PUvNgOFu?=
 =?us-ascii?Q?hZJo88O8y7x7VyPSeT9B/hLubHXkmg5wqz3F5cbmFk3aaD0UoIHgIluDk4vI?=
 =?us-ascii?Q?BMPWkbikj1j5Hu1ljZ8ryfpok5AsfqkLQowU/WH1H8PIcUo2oqyfFzw3Q2/u?=
 =?us-ascii?Q?D80OJ8JASMzLhTAwhsLSXZBD?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 6464095c-5c91-47f4-e502-08d8eddae800
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 09:06:12.7549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pIMLt2PPP7RC9UlgkVToZVbmkGISbKcL5mD0R4YdLLtbapDRmOMprPUK3xPwt8qPI963L9W5JzxZdq7cHpglmkIOERCszZgx5HyS2zyMrQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6718
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lOeTh-00047l-0D
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
