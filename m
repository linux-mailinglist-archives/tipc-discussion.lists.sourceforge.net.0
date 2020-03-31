Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C21198EE2
	for <lists+tipc-discussion@lfdr.de>; Tue, 31 Mar 2020 10:55:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jJCfw-0006ye-Cq; Tue, 31 Mar 2020 08:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jJCfu-0006yT-Sf
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 08:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AM9dwgg101VOksEeLbBx/cNXBsIZps+n70PZurgQgSo=; b=kMbNU1eSnDd/t9E8/dhhMWx1f+
 CqoaDravNQbfh0fCrVzPBxbX3y3+F7ffGlVt2wrw6h0eB6UAlzwU/xuN5yywJI3WPpmAXJj3hfjjL
 NPSgxK7/2jZDag9PpJZ3T4J9AL5gMVamblr6tBVc6Mo3brvSLTpPOVc1xIxrG1bSX7kA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AM9dwgg101VOksEeLbBx/cNXBsIZps+n70PZurgQgSo=; b=D
 u9OP165x7EUDv4V0XSWuP3KyM9o+qwbZvUoawBSV6D3szHoMI5KbOdl34YFIL8jBPmCIWm2Cm2nd0
 Mw9mxKDM3yH/BXGVg5AnOLzqapRxwtRYYRE3M7K3Dr0FueKiDtdFf2lwZXOH0jxzi/J55TVxUlMdk
 MO8Uv2xvceEw22BE=;
Received: from mail-eopbgr80107.outbound.protection.outlook.com
 ([40.107.8.107] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJCfk-00DrJJ-Uj
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 08:55:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RH7togq4hZ6MsPhuqwNEpq3OjwKKzUaMrhuKR02FgIclqnGJeDILSMVkwfRMImZgJHRuL7QG7EYBsTj494EMeGdUA1ObLgZFos+Pef/i3cJkIx5IJjXVHMdJi4EaeFdeb0YfOMcguKjiS9zg/mHf92qaPv9L49DSLNEmrydbB+PZNIbd7Ov75D+YRtIbFt8IWfbLWNnKSK5b62ELp0JnO/s/W4fR1RndhpGT5/Eg7HiSx+vJ2UZ6KD2wBnQSaKJrZtY+IvpDbVCoaH5jIh6PKUgpR6jzKd74Wb/Z79zc1StoKWnjwC7SsWNEybU+kYVwqnsMZpb1wnE7sA1r755+XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AM9dwgg101VOksEeLbBx/cNXBsIZps+n70PZurgQgSo=;
 b=QLolAYRSKXAvGWiyLWlro/v2ceuWCX17w+OwcH/Gsps23mq7SdvHxXVeZ3t1STHxEU9GdWoayp8ETeLWJxP7i/rnYpt/gPJJLyI20BtfzTvabjBcIr4bjuo+vYy/NkxCTKsWuAlrcmmnMUaVt1jcwa03ThsR4bqhTAd8KrPnMhIkFrelOsMubVyN4GU3pfVSDxV2JrWbG6k+cmrmNgrfAEJBOAgGiwLuJXSlkofBrm7y6Jeqr+MrJ0WDHLUmUM5+YTcU2zPyksucsOoPSUoPdc5pdtJfkiH1XfASHMwWmd63vPNj/Ge86aU/QRRaE4CEXS/ZsM2uJyOYz0vyUit5Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AM9dwgg101VOksEeLbBx/cNXBsIZps+n70PZurgQgSo=;
 b=hFql/cCySl5lrerwwjfwL5f9O365Bg9CY7JckTd3wEEnFYVOLPpZBj5soFdjqMh6G7coJUgWGXHTsZ4jiA0AgCiU5qMzj+ktnHOjZ/STKtkXE2bTHundnnKKzf7DCA0CXxNQpljMcx93Q+/4hraxJnJdat0z6SfcnIAP6ac6q6g=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (52.133.18.156) by
 AM6PR0502MB4072.eurprd05.prod.outlook.com (52.133.31.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 08:54:52 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 08:54:52 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 31 Mar 2020 15:54:43 +0700
Message-Id: <20200331085443.20761-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: HKAPR04CA0009.apcprd04.prod.outlook.com
 (2603:1096:203:d0::19) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (42.117.52.206) by
 HKAPR04CA0009.apcprd04.prod.outlook.com (2603:1096:203:d0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2878.15 via Frontend Transport; Tue, 31 Mar 2020 08:54:50 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [42.117.52.206]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cdf1abbc-6cc7-43d5-eb0c-08d7d5512d05
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4072:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB4072A88D0D2750BF0AD0EAD6E2C80@AM6PR0502MB4072.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:127;
X-Forefront-PRVS: 0359162B6D
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(136003)(346002)(366004)(39850400004)(396003)(376002)(8676002)(55016002)(81166006)(81156014)(478600001)(316002)(66556008)(107886003)(66476007)(86362001)(186003)(2616005)(66946007)(956004)(6666004)(52116002)(7696005)(4326008)(36756003)(2906002)(8936002)(1076003)(16526019)(5660300002)(103116003)(26005);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4xRdPw3f9bPSQLj6K5z9zEfxG5XTaPKh0FbdVGv7LKbiODLWNgDe9CCCeAc0pJeN7NP+Pv+LmxT+/WzYo9wUQ1DPaXxEvXDBUoSqtOYPS82SKv52vYfy/SVCa5Ls+e1+OJRE/GarLTMXcbIcoBPbaXyunAG1+X+dQhZZ1vnD/hPTvOOVxNgX9XTpPfgYhXuL04oM8xynEqJiJuCq4lebkNMjDVw3x5GC2En0UsmwxtoPcAny7x0xzubN/NwxHXSgiAi2ffK8XpTM5zHWe0g/sj3GYTqUk0iZFiOj3jcd1Lw6Nd/+TVm9SCHl4iJeYfFrnimYcM2P6lDrv2Sd8wvWtjHZ22cgyqClPBPTzTkcsZuO//KCAyRWfif3zc8fIDVZks5CcJxMZK0DwmEJTWR/xt3gWmdSfz3t0mauMVVxSYdMPk2rgfL3lbKXtRlwPT+J
X-MS-Exchange-AntiSpam-MessageData: g+Aek/5cpzsxLOJ84mHPdkKn0ToeoK3pDU6dazRm7zr5J813dstGo1UZgylzYNKFLc4FJBaVUIXJIjv4zlKOv2u7zLQC7QLj42JxttFRAmSPwBZQMOimj7QD1yojdmRv7pKCyDsLdGRoQ8xwfj/9cw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf1abbc-6cc7-43d5-eb0c-08d7d5512d05
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2020 08:54:52.5741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qUmDUyulgjM8Z8IrVrsaTlrgLqGlW0tLc+6XI+9sb0vOe3cHiZbn261pA4UM5uPRiCeJWozhiYyVqkS3Olleg4y9oHUvmmFGg/a05Q5Q3ZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4072
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jJCfk-00DrJJ-Uj
Subject: [tipc-discussion] [iproute2-next] tipc: enable printing of
 broadcast rcv link stats
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This commit allows printing the statistics of a broadcast-receiver link
using the same tipc command, but with additional 'link' options:

$ tipc link stat show --help
Usage: tipc link stat show [ link { LINK | SUBSTRING | all } ]

With:
+ 'LINK'      : print the stats of the specific link 'LINK';
+ 'SUBSTRING' : print the stats of all the links having the 'SUBSTRING'
                in name;
+ 'all'       : print all the links' stats incl. the broadcast-receiver
                ones;

Also, a link stats can be reset in the usual way by specifying the link
name in command.

For example:

$ tipc l st sh l br
Link <broadcast-link>
  Window:50 packets
  RX packets:0 fragments:0/0 bundles:0/0
  TX packets:5011125 fragments:4968774/149643 bundles:38402/307061
  RX naks:781484 defs:0 dups:0
  TX naks:0 acks:0 retrans:330259
  Congestion link:50657  Send queue max:0 avg:0

Link <broadcast-link:1001001>
  Window:50 packets
  RX packets:95146 fragments:95040/1980 bundles:1/2
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:380938 defs:83962 dups:403
  TX naks:8362 acks:0 retrans:170662
  Congestion link:0  Send queue max:0 avg:0

Link <broadcast-link:1001002>
  Window:50 packets
  RX packets:0 fragments:0/0 bundles:0/0
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:400546 defs:0 dups:0
  TX naks:0 acks:0 retrans:159597
  Congestion link:0  Send queue max:0 avg:0

$ tipc l st sh l 1001002
Link <1001003:data0-1001002:data0>
  ACTIVE  MTU:1500  Priority:10  Tolerance:1500 ms  Window:50 packets
  RX packets:99546 fragments:0/0 bundles:33/877
  TX packets:629 fragments:0/0 bundles:35/828
  TX profile sample:8 packets average:390 octets
  0-64:75% -256:0% -1024:0% -4096:25% -16384:0% -32768:0% -66000:0%
  RX states:488714 probes:7397 naks:0 defs:4 dups:5
  TX states:27734 probes:18016 naks:5 acks:2305 retrans:0
  Congestion link:0  Send queue max:0 avg:0

Link <broadcast-link:1001002>
  Window:50 packets
  RX packets:0 fragments:0/0 bundles:0/0
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:400546 defs:0 dups:0
  TX naks:0 acks:0 retrans:159597
  Congestion link:0  Send queue max:0 avg:0

$ tipc l st re l broadcast-link:1001002

$ tipc l st sh l broadcast-link:1001002
Link <broadcast-link:1001002>
  Window:50 packets
  RX packets:0 fragments:0/0 bundles:0/0
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:0 defs:0 dups:0
  TX naks:0 acks:0 retrans:0
  Congestion link:0  Send queue max:0 avg:0

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 tipc/link.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/tipc/link.c b/tipc/link.c
index e123c186..ba77a201 100644
--- a/tipc/link.c
+++ b/tipc/link.c
@@ -334,7 +334,7 @@ static int _show_link_stat(const char *name, struct nlattr *attrs[],
 
 	open_json_object(NULL);
 
-	print_string(PRINT_ANY, "link", "\nLink <%s>\n", name);
+	print_string(PRINT_ANY, "link", "Link <%s>\n", name);
 	print_string(PRINT_JSON, "state", "", NULL);
 	open_json_array(PRINT_JSON, NULL);
 	if (attrs[TIPC_NLA_LINK_ACTIVE])
@@ -433,7 +433,7 @@ static int _show_link_stat(const char *name, struct nlattr *attrs[],
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_LINK_CONGS]));
 	print_uint(PRINT_ANY, "send queue max", "  Send queue max:%u",
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_MAX_QUEUE]));
-	print_uint(PRINT_ANY, "avg", " avg:%u\n",
+	print_uint(PRINT_ANY, "avg", " avg:%u\n\n",
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_AVG_QUEUE]));
 
 	close_json_object();
@@ -496,7 +496,7 @@ static int _show_bc_link_stat(const char *name, struct nlattr *prop[],
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_LINK_CONGS]));
 	print_uint(PRINT_ANY, "send queue max", "  Send queue max:%u",
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_MAX_QUEUE]));
-	print_uint(PRINT_ANY, "avg", " avg:%u\n",
+	print_uint(PRINT_ANY, "avg", " avg:%u\n\n",
 			   mnl_attr_get_u32(stats[TIPC_NLA_STATS_AVG_QUEUE]));
 	close_json_object();
 
@@ -527,8 +527,10 @@ static int link_stat_show_cb(const struct nlmsghdr *nlh, void *data)
 
 	name = mnl_attr_get_str(attrs[TIPC_NLA_LINK_NAME]);
 
-	/* If a link is passed, skip all but that link */
-	if (link && (strcmp(name, link) != 0))
+	/* If a link is passed, skip all but that link.
+	 * Support a substring matching as well.
+	 */
+	if (link && !strstr(name, link))
 		return MNL_CB_OK;
 
 	if (attrs[TIPC_NLA_LINK_BROADCAST]) {
@@ -540,7 +542,7 @@ static int link_stat_show_cb(const struct nlmsghdr *nlh, void *data)
 
 static void cmd_link_stat_show_help(struct cmdl *cmdl)
 {
-	fprintf(stderr, "Usage: %s link stat show [ link LINK ]\n",
+	fprintf(stderr, "Usage: %s link stat show [ link { LINK | SUBSTRING | all } ]\n",
 		cmdl->argv[0]);
 }
 
@@ -554,6 +556,7 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
 		{ "link",		OPT_KEYVAL,	NULL },
 		{ NULL }
 	};
+	struct nlattr *attrs;
 	int err = 0;
 
 	if (help_flag) {
@@ -571,8 +574,14 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
 		return -EINVAL;
 
 	opt = get_opt(opts, "link");
-	if (opt)
-		link = opt->val;
+	if (opt) {
+		if (strcmp(opt->val, "all"))
+			link = opt->val;
+		/* Set the flag to dump all bc links */
+		attrs = mnl_attr_nest_start(nlh, TIPC_NLA_LINK);
+		mnl_attr_put(nlh, TIPC_NLA_LINK_BROADCAST, 0, NULL);
+		mnl_attr_nest_end(nlh, attrs);
+	}
 
 	new_json_obj(json);
 	err = msg_dumpit(nlh, link_stat_show_cb, link);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
