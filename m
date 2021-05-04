Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 628DF37254A
	for <lists+tipc-discussion@lfdr.de>; Tue,  4 May 2021 07:05:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ldnEy-0004U6-LW; Tue, 04 May 2021 05:05:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1ldnEw-0004Tn-Kn
 for tipc-discussion@lists.sourceforge.net; Tue, 04 May 2021 05:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KL38vOHf8SRzoyl9z5wfI88wT0UfUCTdRu5/7Nkk0F8=; b=N9tRNQ5zcWm7h2VHkwjGBgsAGw
 D7Pvcv+XhfvlbJX1ZD19RrfZ3qNYR8lStcOv5PRefvL8Axl5Cun1L/iaJ0njl2tQVxsNtylpoo85f
 PiT1DYdSgUvqiE6ewURPIfLnHBXFYk3Xpu339EOlL86vH8QYBC3pJRQvOrgT36JMd43A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KL38vOHf8SRzoyl9z5wfI88wT0UfUCTdRu5/7Nkk0F8=; b=K
 SaxHY0l33CtxkNRgBQWWPVgERlEv7a3ycYcw9uLCUWUYgJCCGQ6zXbTSiOOIEIbkSIgT5qnQlMCHW
 vEUoYge9vWj9HkLrVsc0JiXxXGISLEClwAlb+oR5Yfo/sYeqUMgiEZXtM8Mw6y9XQ4GcL1k2c5IDG
 zVSCChsrru14Ok5U=;
Received: from mail-eopbgr80112.outbound.protection.outlook.com
 ([40.107.8.112] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ldnEm-0003Ei-Sa
 for tipc-discussion@lists.sourceforge.net; Tue, 04 May 2021 05:04:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5ilptd19V0m4KIk7O+Vq0eQ3vjeiQShGi87owX5a600ObLvF0FxiiX/12TfX2g0VqljZYP102efLUxhYIFVogProzZOTdiyavS7nEvXrJPYskijrJey6/I+apsEPF6kjEPWcNpNyesucLlgsGNOuDHXPhllAat+kbyWQnExJ3LTZMjbyE0IrU6DiFDV3xXcWWtnNHN2tDNN5P7tpodH3ubllhH4KqDzx5qfAMRsdQyFWvhkIfv0GACQzYOH0otkvzfH/qx11S8+dGzi06TOaykauFMp44SdaLWSgB+W1b0/BPXGFAEDch1Q72xArx3wDkP+HxZ/Km5sI+Nxj9YxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KL38vOHf8SRzoyl9z5wfI88wT0UfUCTdRu5/7Nkk0F8=;
 b=ShkjWYFo3BH3uCaSxfrB21X+nNXjeoOXexey7laZzaxcKgMN0o0/8raqgAAnKPdTVeUs1fJv8YG89XQKoETtBFyTqApMB6zSwj0kMOJgKKi5FtPitVSTHPsCVZjXUjuemAxABmjkL7UTqeMK1lclPY5CQ9b10Hqc54YfBqIWYIDvjs4yXHRUFvBPHAGOSRMNNYEwZ0yEODJHx5MDTD/YHrgXeeeLvhyAwg1HgxhUF0Cy7ae9UHeJlVBPBaIS+Yb2S9pTxlomoe4upK0YzKbaFiyGpxBSyV/HZpGHM6DUsEgpe2AnQduyuQjw81KJkfmj3nt1Yp37NOrOzK2ZXDjaMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KL38vOHf8SRzoyl9z5wfI88wT0UfUCTdRu5/7Nkk0F8=;
 b=tYTAgaYelzR3I7xEJCFhqxRaW5upPh1b0swm7tC+PuyqBUkptjCLa/4y0jgiDm6t7uvUNjaYj7MVTJcoT74iqtYgUpQ59TjEX4YCT6i1dNFmm2JlBlvuPlRtw/nrNl17G2/OQoX/l7fTfwJrX1kZf7Q/olDEaKl+T/8ldi4Xbes=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VE1PR05MB7471.eurprd05.prod.outlook.com (2603:10a6:800:1af::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.25; Tue, 4 May
 2021 05:04:41 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.024; Tue, 4 May 2021
 05:04:41 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Tue,  4 May 2021 11:56:31 +0700
Message-Id: <20210504045631.11304-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:4:91::21) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR03CA0117.apcprd03.prod.outlook.com (2603:1096:4:91::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.8 via Frontend Transport; Tue, 4 May 2021 05:04:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 070f7c87-5ba1-4f72-cbe4-08d90eba1fdd
X-MS-TrafficTypeDiagnostic: VE1PR05MB7471:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR05MB7471C7406030CEB9BCB04882F15A9@VE1PR05MB7471.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: izlpKNKFo1Hcz0wDVsLN0FQsK5YkgpzdTf7/CWIXBmYvFistINLOd1T8Go8W1xErW0x+YrEoWDo1y5QzEhUbuSEozDjfK/0FtUda20nGLiCqpiAnoOyLGq+FcgGVwgjYfZNnuc/kadz9neRhRw2pgbNxSGvzWXhDdBtNNb19HkKP/4YF/6H6si6oRl9a4GXsDbtUD+MjMp/e33vZaBrYZ+tlAnZMHeiWyPfAJAxU92UIsEuZgWzHVdbft+vRzfsAcCiZeo/1OzuRz1hnStimgXzmrpG5PUDU0Wc2mnfQcWDFQ6EMuo9spKFF+ogCVw5dssQ7QgAnUQBTvvwMfp/7rXwU4aeWEsSv1hZXQTjfLz/yzgJEj44xqhiv0sPRsl8vPEYtv6p1iLOfTVVMWX0xEg77ukk2iAwEXN4AYXWZGNQ/sYP0wsnZv/89NhIP7vXF2kdqHQZyI3QlKKa2LIa9OaF1rw3SkTNiUs2XVVUpwbsQ+Bx+wg2MToNZgfKr1PZVve07ZVTMGAHT6z4OdLlApby0HbpwL77joHmCUqSWA6Y5xmahO2FaGv9aXYcZMRopwYgrXESbW4h58yoZ9EnBzIPmYsSFt9b4DjzcWwmDBGXCeus2/Se3Ok4vKsr73hZ8eZnMtvdWZ5+MLtYRKWV/+iGTmDUjvjzsYubLfF7aPh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39840400004)(366004)(346002)(136003)(66946007)(66556008)(66476007)(1076003)(103116003)(316002)(86362001)(83380400001)(36756003)(38350700002)(38100700002)(5660300002)(8936002)(8676002)(52116002)(55016002)(7696005)(2906002)(478600001)(6636002)(186003)(16526019)(2616005)(956004)(26005)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?4RW3qK37Z9wSNLC7FGyNtXNKYlCaFhMs88w34pKJmNFc38qIUMFo940cYOuY?=
 =?us-ascii?Q?Q2uuizIAH7xH2B4QM4IfVOS3fUMnkqAHn9fQp91q27pDX8IjvqIp54Ts2Q0g?=
 =?us-ascii?Q?cK7RqLQSouMukrj4TC4/232gseL9OD3/7IwauBpHXX4716A5dzkn9s6V4OYR?=
 =?us-ascii?Q?BjrMPcbsr4NI9eznmt3MShXJPK03v8aK30t90Vyc55E8lHjGV7j/G3ZubnY1?=
 =?us-ascii?Q?O2XT25maGFZetEgAL4STuli4qxrFiCXS2yXy+L1b+zXs4HVazyBJlYZyng/p?=
 =?us-ascii?Q?/xO/C7h2mYgSmONIRe1Vp8kxx8d7DV3C+KzzVOztPoUni3j44v+dbSWXydXP?=
 =?us-ascii?Q?2YSX3+/ReZQK4gZ2AYf4vwBDmuB8IKrsEtqkqd0KEQzBHsSQXT5cYbQ8+qd1?=
 =?us-ascii?Q?jf+gFhMDyW7QY/a3oDq++oULK2oy56gfVdJAA6flwTnn8dJoRD5RhFWuc5jU?=
 =?us-ascii?Q?0VWFp0tdBb4jzmNI3HGv48Io+nZ46IwE4rdJIh8YByDsIDGboVZSCmA/vwV/?=
 =?us-ascii?Q?QaNs/s9fyTF72c1wlfaWwpE3EKv/Uh4XZtqMRGnyUKWAP3oldNORNIlOaPq3?=
 =?us-ascii?Q?vrXx7QjOeVze0F4oPz3YDhDnTO7CRR64was4e+nhP5v84g9FYKRvHGkYyD1T?=
 =?us-ascii?Q?C6FiLCbSyjC2A6wGp5UpBHq0Y6am5YdEnDIiW2+q971BkEYsbpVhF4SiHSJ9?=
 =?us-ascii?Q?io+KdB9G//mqLGZvElmR5pPs+co9LWY1/UoypaU2qsSpPkMbaL6Sr1U9flN5?=
 =?us-ascii?Q?ea4m8F/CR/tyR70/AIWMTB8OkTC06C1mQbuSSfWNCOmzVJ2I+1qPJF6JxeWK?=
 =?us-ascii?Q?cKLIsVzW2Jj0pXwCj8Z0M9kVUoEIzUFsNrvDo1sAjW7l0vXDKppX2Glqnhez?=
 =?us-ascii?Q?xENSshrLcNEyszEDcTx5xkseQN2XbHm0Ndy2Wn8bEzrGSU9igNjBATZMDPfN?=
 =?us-ascii?Q?CUBvAjujJeKW5jlmhil+iZpTvRNjGGyF1rP8BfTm+z5D97dJypThxT7uD2F6?=
 =?us-ascii?Q?eQniW/lx4oVFPtW/0A2wweHm9VAqRZHmNO+Dp0pJ8/oUN6wPwZbVfoJis930?=
 =?us-ascii?Q?wxWvF2iE16RtcdS+I2R1vdfOvbNuhPHO145ndbYoSzwdpXUHydPDJCNkoQtI?=
 =?us-ascii?Q?a7wmHR5hxRtSg/1dcESR7QhwLIxt1EHsI09kbDjjxte9Bcu050mf++Y1/mLR?=
 =?us-ascii?Q?pen97+35DFRdvxoHOTTg5MGUlQ9rIraftLdkDO4eyGHyCZVkhszEDyCBdgfA?=
 =?us-ascii?Q?qf0xCUrTCjnKdprjIGESyZWKzQfk/OuJh+x1WLh2xpN+YkB5aya6gJW/Xilw?=
 =?us-ascii?Q?9GSbh4+1vZljaUZlcfl7K+Yp?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 070f7c87-5ba1-4f72-cbe4-08d90eba1fdd
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2021 05:04:41.4878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCGdo4LxGr+iK4/qIi2lqGbC5xD0pGKWJKtvl/ltwU1sKNI4HtvjzZjTP9lFYaAv54ahPcn6dRlgxbCmMMka/1whzUiBO21vC7N50uQhEV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7471
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
X-Headers-End: 1ldnEm-0003Ei-Sa
Subject: [tipc-discussion] [iproute2-next v2] tipc: call a sub-routine in
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
 tipc/bearer.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
 tipc/link.c   | 15 +++++++++++++--
 tipc/socket.c | 17 +++++++++++++++--
 3 files changed, 73 insertions(+), 9 deletions(-)

diff --git a/tipc/bearer.c b/tipc/bearer.c
index 2afc48b9b108..968293bc9160 100644
--- a/tipc/bearer.c
+++ b/tipc/bearer.c
@@ -20,7 +20,9 @@
 #include <linux/tipc.h>
 #include <linux/genetlink.h>
 #include <linux/if.h>
+#include <libmnl/libmnl.h>
 
+#include "mnl_utils.h"
 #include "utils.h"
 #include "cmdl.h"
 #include "msg.h"
@@ -98,16 +100,28 @@ static int get_netid_cb(const struct nlmsghdr *nlh, void *data)
 
 static int generate_multicast(short af, char *buf, int bufsize)
 {
+	struct mnlu_gen_socket bearer_nlg;
 	struct nlmsghdr *nlh;
 	int netid;
+	int err = 0;
 
-	nlh = msg_init(TIPC_NL_NET_GET);
+	err = mnlu_gen_socket_open(&bearer_nlg, TIPC_GENL_V2_NAME,
+				   TIPC_GENL_V2_VERSION);
+	if (err)
+		return -1;
+
+	nlh = mnlu_gen_socket_cmd_prepare(&bearer_nlg, TIPC_NL_NET_GET,
+					  NLM_F_REQUEST | NLM_F_DUMP);
 	if (!nlh) {
 		fprintf(stderr, "error, message initialization failed\n");
+		mnlu_gen_socket_close(&bearer_nlg);
 		return -1;
 	}
-	if (msg_dumpit(nlh, get_netid_cb, &netid)) {
+
+	err = mnlu_gen_socket_sndrcv(&bearer_nlg, nlh, get_netid_cb, &netid);
+	if (err) {
 		fprintf(stderr, "error, failed to fetch TIPC network id from kernel\n");
+		mnlu_gen_socket_close(&bearer_nlg);
 		return -EINVAL;
 	}
 	if (af == AF_INET)
@@ -115,6 +129,7 @@ static int generate_multicast(short af, char *buf, int bufsize)
 	else
 		snprintf(buf, bufsize, "ff02::%u", netid);
 
+	mnlu_gen_socket_close(&bearer_nlg);
 	return 0;
 }
 
@@ -794,10 +809,35 @@ static int bearer_get_udp_cb(const struct nlmsghdr *nlh, void *data)
 	if ((cb_data->attr == TIPC_NLA_UDP_REMOTE) &&
 	    (cb_data->prop == UDP_PROP_IP) &&
 	    opts[TIPC_NLA_UDP_MULTI_REMOTEIP]) {
-		struct genlmsghdr *genl = mnl_nlmsg_get_payload(cb_data->nlh);
+		struct mnlu_gen_socket bearer_nlg;
+		struct nlattr *attr;
+		struct nlmsghdr *h;
+		const char *bname;
+		int err = 0;
+
+		err = mnlu_gen_socket_open(&bearer_nlg, TIPC_GENL_V2_NAME,
+					   TIPC_GENL_V2_VERSION);
+		if (err)
+			return -1;
+
+		h = mnlu_gen_socket_cmd_prepare(&bearer_nlg,
+						TIPC_NL_UDP_GET_REMOTEIP,
+						NLM_F_REQUEST | NLM_F_DUMP);
+		if (!h) {
+			fprintf(stderr, "error, message initialization failed\n");
+			mnlu_gen_socket_close(&bearer_nlg);
+			return -1;
+		}
 
-		genl->cmd = TIPC_NL_UDP_GET_REMOTEIP;
-		return msg_dumpit(cb_data->nlh, bearer_dump_udp_cb, NULL);
+		attr = mnl_attr_nest_start(h, TIPC_NLA_BEARER);
+		bname = mnl_attr_get_str(attrs[TIPC_NLA_BEARER_NAME]);
+		mnl_attr_put_strz(h, TIPC_NLA_BEARER_NAME, bname);
+		mnl_attr_nest_end(h, attr);
+
+		err = mnlu_gen_socket_sndrcv(&bearer_nlg, h,
+					     bearer_dump_udp_cb, NULL);
+		mnlu_gen_socket_close(&bearer_nlg);
+		return err;
 	}
 
 	addr = mnl_attr_get_payload(opts[cb_data->attr]);
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
