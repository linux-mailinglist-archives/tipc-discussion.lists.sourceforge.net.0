Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAD634559D
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Mar 2021 03:42:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lOWzr-0001mq-RM; Tue, 23 Mar 2021 02:42:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lOWzq-0001mZ-Hz
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 02:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qe5E83rB8zmMsPSA+0PeYYQF9qo819Eq/QxAj7S5WrU=; b=gUT8OxoIK2xkdyFSZXoQ1cYPGM
 ry3w59nFULSfcmPUwDMxi+TkHn41UC69Nw7xUgvzSPzrmeUlLncC2his7sxas/JvugEjA7sExBXym
 jTz5eEHFz4Xsd2mLB9VWNixpYiliz9+RbdFTJbflOXy9NYfE8Hu7+AbOoOPt3ya/JaUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Qe5E83rB8zmMsPSA+0PeYYQF9qo819Eq/QxAj7S5WrU=; b=K
 gZSwSLNLqOFtzb6rwpn7ereEStqRgwvHVXvLEA2YnjclGenIngtK2+NUpPas+PaHe/hMt4Mz/Jbas
 CqI4X3m7MQJrXHzDdXL3VrBlvhiWP/Cgyk4pIvz50EzL/7gSMzN2zAWl35cZM0Y0TfXz74pf8ZA4c
 gjgQ1ENCOIKtoKk4=;
Received: from mail-eopbgr80133.outbound.protection.outlook.com
 ([40.107.8.133] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOWzk-0006MC-KP
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Mar 2021 02:42:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMPNWYtT+wAzZjdqEhD1k1xt1cq2KLDkYoUo2XW/20tNhZssfUXtqaEpI9frmBs/ukB3751bDfrCYQOWMYxlow4SPSO9OM+G4mejWYWRubAwUTnHz35pggseSj7BXCEgetHjjc/Wf4YFbjhVbL/ISGdjUALbD6+yo1BUrRaIZDIbLIVGlzjAY/cZLDAhmbKmhzkQ37m/7tQu4Y70msMkx+vwQ77JzRpNRWfRnbb7tWj3b+wlVPo8i2RdERbvR8n1CwBdPASmY3dIlG/KfhrdRqJ7b8wKoNKIOn4ndkUGmPp7tmGEpIfuF4aei2dkuHj6AckVxZDt7dGcdexFBXb/jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qe5E83rB8zmMsPSA+0PeYYQF9qo819Eq/QxAj7S5WrU=;
 b=JWEaUINuD1+TiTXmNxgmVtgmVzIGYl/n+41YU3o3hwTThh8KgTMtpKLZTjDuS8F7J/ErIp8LwU3/0NhrPVo8TM53+JzY4WQRKwRGYZgIsn3FegMNMuPtSETL5Gw2UTjYp16lpuXUh1xsgqafhPvYjvzGpsVMX2MJ4uSkH1k1I6dRe9Xpp6WiMmH+TFQdFLfr+3WVyGr8sXUqR+EBODOu0rih/gJWPR702TjsZ3hwXYk3gc4SL3lvVwnUgKaH1o6aKzvIj/mx+GoPII+Mg+dvK5vDTJJpX30OzaN1NbFGnZfG36tQZUgb8T698BrzRkLyMZ94a6PFDjWPcCWrteKn5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qe5E83rB8zmMsPSA+0PeYYQF9qo819Eq/QxAj7S5WrU=;
 b=mesCWIoPHDK/X1keqxhlwzXVxvP6VCQaQ1b/yLl+DJc8n1abUNnX/FobOsThS7Q5w1TgvBT0iFwa1Hz6x/IsWcae5rh7X7lz71iRPsV13iRhN05l3SjpcNHL+OmnwOBtX6Sv5l2HyeVK+kk/vxDU4B/iOpgxxSdKp7zFz/C/zG8=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2334.eurprd05.prod.outlook.com (2603:10a6:800:24::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 02:42:05 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Tue, 23 Mar 2021
 02:42:05 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Tue, 23 Mar 2021 09:41:51 +0700
Message-Id: <20210323024151.5181-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2P153CA0041.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::10)
 To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2P153CA0041.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.2 via Frontend Transport; Tue, 23 Mar 2021 02:42:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a222ca02-a615-4355-1346-08d8eda53ed6
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2334:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0501MB23349A2E6A19FBA06F353AA3F1649@VI1PR0501MB2334.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GzPNVU6fYRR0LRgB2dsS5XS3n6PCFjpGm4jdFKLCmgB8EZQyr3ev++LifoXE9OigAYW5a2C80nJZUm40nTaQXFXfHVM9G0M8I3Yk254bzduKXMVgjfg7wJZQiPgNFJX+hWAxvP/Bag74jtaL0dzj4mkjIeCrjTlO4+YtKZ8ys5b6Xj+5Lft+sZ4bRoGtS1w86bYu5V9iMjzSfOHSgNAPuwk7+WKYKEbpESCNmdc9cWw2wzyYHgOeWcnJFuUR9pTCl+dLIlowwIPBuCKtQsy1T2FBZcIbtItcuS9KaZjOVY1z4c19XfesIbUJo9r6VGrkjNPHwKii1G9LRKEOBysxyBZFSJ/xgzf7+eWCagbBGjRwfrx4Zxc9G3yaPZ+Cw5W7TvxaNsjehienlis55pN1L+oz3uxulcEjyUUV77ljE1C5cGisnTujU29/vhiJVvfkqL9nsmLB3qakllieElwRVuVwQTuJ9ue3u5rd99nqTo8Yy//B/eaxieL0QY+0jbjE3iCKhiyNDpMetFSJv8VobUhEHIYX5LRn9m1pmNEOMh7f7ejSS+U+gK4LoNzq+Hs13USge/3gp/8b9E01Ndho+6bI08zV/NguR8SqhOvcVhqrPos/LBWQ9ZyBMuGlCPaV+DzJ5RTYY124nfNUwHdL2Nma4SUqiaYVgiq/suVJhXA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39840400004)(346002)(396003)(376002)(366004)(7696005)(478600001)(86362001)(38100700001)(52116002)(83380400001)(36756003)(6666004)(55016002)(8676002)(16526019)(66946007)(186003)(8936002)(5660300002)(1076003)(956004)(103116003)(316002)(66476007)(2906002)(2616005)(26005)(66556008)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?MD5NJXpW9Da1jwNS4Pyy4+3EAGz5W3hOOtmskOB8wbGr94tOfJA0rVE0K6WM?=
 =?us-ascii?Q?m8dtNY2uX+DKzRP1Wqf6T3DNSw3L3DXVAxcX9aQL5XB17SfrW5EyQmUvpsgE?=
 =?us-ascii?Q?ih36Hs7eLmBez7huuT+PdjoAWwML2O/UbOwBc19hd9JHYa34kcGyUSowA2V+?=
 =?us-ascii?Q?Ry3Qof7EgUcPDtGS1oHDfwrdEcTtMU2ylQURMcn0SAwIPlR5CuPVjDpinTMQ?=
 =?us-ascii?Q?SKGJwMrRgolpX3SU0Bdo1u603OORFBl8+8F2E2QUOogpr8s2J88SPFsvqPSx?=
 =?us-ascii?Q?M4m87Rw6b0UL+2D0G0tbjmO3sugUFZJc3SA0QU10Y4KI1u46a8+dhZQKpuDn?=
 =?us-ascii?Q?8K3Mb5URFPNzDAnvLFgbXH/i2b1ucrMAIq8d9TAuw5VoVjqeU0ebT6MGHGBC?=
 =?us-ascii?Q?5bsUXtIp8LctHQuAA7UkC+B4nEF8Fb1XAsDcLXYEzW7hPs/zOIivTtdhx8kP?=
 =?us-ascii?Q?lgbRVAw+evVllOD0hM6O/6WQ//pL0hzaeBrUqMLW7KwF+gXCjf+EvJFVdPov?=
 =?us-ascii?Q?KUlP07ansxPAcw3ykCxYKBF7ySbWnOPSNnttcGKrxHoIYgSuQqwILB7pWXAl?=
 =?us-ascii?Q?6LkdopxfHCGnt4iPUYL/V8n69uMM8zFLg8k2kcIt7mnF2qP+kigi6d3nH4Pm?=
 =?us-ascii?Q?mcDXY75/Mw85yoyu4vZsBY7b584Ns+mBChlLRfXknWcUqgROO0R9jm/QCbUz?=
 =?us-ascii?Q?jFKG2vYi1yp16lDydRp0ZH05Pu3lEZdPnt88pR/dUIKXtk1BG/3wIQjd3s3v?=
 =?us-ascii?Q?lytcR6wqHFB8gvE1+JWDCpMvoKqMF8aRZz+xpfK5tPj0fMt1pjjUGR1Hbgi5?=
 =?us-ascii?Q?Is8BlbiAgBv4D/U6HklEV3C6bvmjyNJCnnJu6cSl65l5BdI9kbmUL4b/+KUE?=
 =?us-ascii?Q?eBDcBknQfOvZ/7oYRBGZ2xwOKVtQAcQnbAkKc+Zdqn1Z1HALChiynGGuRNj2?=
 =?us-ascii?Q?m2Ug4HuNtSeoPoxuKm16bnigwePQ2fFSkCh+MFwIYnYzwexlAK0as7Q+geDi?=
 =?us-ascii?Q?19b7DUWuhCSab1WTgfsP6DBM/2RI9UxPzRA9h8jNsLpwG0p/7KsIST+SOHz6?=
 =?us-ascii?Q?XXmdjjbsD5BumNkdWUegv//0tQNsnX+dWPwsMjSbis5YEVtKiz2uFJ14EO21?=
 =?us-ascii?Q?uWFqDaBkh6zeSm+q8S5j9GpO94YUXy+3u2bJVQLS+Sq6hGrLvvRBuu8Lw7RM?=
 =?us-ascii?Q?BoUySinJAkAiT0xR02pHlh3mfO5aLXUfBdFVNQj433VkOAzGumH/QhLihQ7h?=
 =?us-ascii?Q?W6n/sfeZamGq6OG8hui9n/QPbISaJslmTKTdyRh/PDTYXZfRd96PExPyvHiR?=
 =?us-ascii?Q?QmVxAZ5m0V3EmOuE94VIGqs9?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: a222ca02-a615-4355-1346-08d8eda53ed6
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 02:42:05.3458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kEenmhY9jogIt90nKw56+VVX/3TsvkWrzaaeGmcdjP9RlgyyxRSZSJHwTX7ke65P45zGCmZG6nLtvd8ieBBqkmTBryNuwi08RGaItCuoQc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2334
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.133 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lOWzk-0006MC-KP
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

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 tipc/msg.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/tipc/msg.c b/tipc/msg.c
index dc09d05048f3..57ece0d13194 100644
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
@@ -73,21 +77,28 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
 
 static int msg_recv(struct mnl_socket *nl, mnl_cb_t callback, void *data, int seq)
 {
-	int ret;
 	unsigned int portid;
 	char buf[MNL_SOCKET_BUFFER_SIZE];
+	struct nlmsghdr *h;
+	size_t num_bytes;
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
 	}
-	if (ret == -1)
+
+	if (num_bytes > 0 && ret <= 0) {
+		h = (struct nlmsghdr *)buf;
+		nl_dump_ext_ack(h, NULL);
+	} else {
 		perror("error");
+	}
 
 	mnl_socket_close(nl);
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
