Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA9928A692
	for <lists+tipc-discussion@lfdr.de>; Sun, 11 Oct 2020 11:15:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRXRK-0004nK-CK; Sun, 11 Oct 2020 09:14:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kRXRD-0004n2-Rt
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dLBazMpD+KPmt612sVHXKPeJj+FCRrd5QPQnmWepgOU=; b=D0dAjdQNWDwWhiGi7nIv4+1S3u
 JQaWXXJvKFcRMPScNL8MhGZCDeBUF84mKio8fILFKwbF6tbArzV6YFcSmzHKpxpLH3IvjiJ48WF3S
 hcWbotPLRK+GcBdVy8K4D+6bcw7R+3vEKNFYIVzYGAMjNKQDh4iOmJnxdkzO9aPMLiYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dLBazMpD+KPmt612sVHXKPeJj+FCRrd5QPQnmWepgOU=; b=eyCDrjoJdhz1ttLBx0smA7zzH4
 j46bQLIN1wKJ6jBoQXc+cqV+QV06b2sD2TOQmRblmGefNND8aHiis+5BlfvsYXLXqCPDU0gGzNMYi
 UEIsdJ2Riig4dywDnSHUiMvYU+ONbh3SJuRe4WiUOa4BhdsmA+lXkctfw/4W5d09Kh6k=;
Received: from mail-eopbgr80118.outbound.protection.outlook.com
 ([40.107.8.118] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRXRB-0066xk-3L
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUBpPU+nozbpcU4alzkpL7mM9gz//5IXrakc5oU3Lah51vj89J2UPV6x4+e1BztudI5132BjqI9e8KmxvsQXgYAYJMDKHTfo/QN+xOMw2xxmdt1SnA62OaauFPOyoBv2GdARciKHCxctkp1161gnx1rB7B1NRzRvHDyucyCxRBEzvV6TSkOMHQE2BFr6qBLF13ZfeUN3fmeKNxLFk+jDhtRWsahYG3FZiLAVZuGwNR3tNZcodOXEIUC1Jdul0aVZkgI9onDgZsTDYW5Qbn4TZvBwPnLlkfpxqfGZi3VmpfetduUxjmTWVP3TeQ1b+C1/yKGRE0z+z1JYcFD//a65Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dLBazMpD+KPmt612sVHXKPeJj+FCRrd5QPQnmWepgOU=;
 b=JC+AIJ9F9nNDCD5GZWOgpsMG76TvSj+frRhZcnJ+JPy+E7pI+J5rHr7hsey/bSmJLLPWzeURn45Aiw1fuu8YvIS+O5XBWS6uiwfcUJH0b4KuFvW+OGBWGgMlkdiwYzpK1KRN0oQ1FSripilrbJOyEF0l92LnouAUAojDZn4xvEI2B3VKBlkjJGAZqUNlbXj+cSIn61zN7mDdAvdTtysh1dh3R1SqevWSMS9W9B91qUU6FedtD+jCZkcIGQ04kr6xNrlLvkbZkrfExk/mcnmzDLsjTTSXUanYa47MW0N4bvkbZiod+KFArc/JF9VWotk1lZ4UqKy+0VqzogBSnW+EUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dLBazMpD+KPmt612sVHXKPeJj+FCRrd5QPQnmWepgOU=;
 b=d9Ge1TwWPwAO+Ki50GmW6c2AcVsTkzONi6VNYPpN06qlXdzlGfdEs0IAY13TZyRgZMB5DCgotBpg270D2lTANdDS3XAeRoGKZ8l8qzftQ0hHi8Rgl0xWjgBzPmbtak3A4lpqieA6/6IE3NHSeiJkxBhkXy7iR/3QHyqyS9W3QoM=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB5987.eurprd05.prod.outlook.com (2603:10a6:208:130::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Sun, 11 Oct
 2020 09:14:20 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3455.028; Sun, 11 Oct 2020
 09:14:20 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Sun, 11 Oct 2020 16:14:00 +0700
Message-Id: <20201011091401.10418-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201011091401.10418-1-tuong.t.lien@dektech.com.au>
References: <20201011091401.10418-1-tuong.t.lien@dektech.com.au>
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR02CA0073.apcprd02.prod.outlook.com
 (2603:1096:4:90::13) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR02CA0073.apcprd02.prod.outlook.com (2603:1096:4:90::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21 via Frontend Transport; Sun, 11 Oct 2020 09:14:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7bb70018-8620-403c-b6f5-08d86dc60976
X-MS-TrafficTypeDiagnostic: AM0PR05MB5987:
X-Microsoft-Antispam-PRVS: <AM0PR05MB5987673BD5BA7F0F9144B4E1E2060@AM0PR05MB5987.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:514;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xmCK1iCW7rlxmF4WcN3bpkSr0o/Wz1biG+EYcdlMVEgSsch0t6ity0uHVqwJlIhMzoYMohqEDz7SNtDpCnQvsjEtAX2K8IJdd+3wFeiA0kBqu/cr3NY8ViAALG9At742NBcxVnrTmy48/4OVCo1ThVQctund3mrVxlQd7Stmo1hCR6slQrogReTIAAvdUwOoeMnT+WXG+NUMroJy3RhVjxn7LOoC338G/Jy2bPjB0IwFXOtEeZkmKkbDbQnUBd/EVi+xYPyJ2oFLtx2EQBuWPDxMtORUsJKedWOmdxDtVWpBBvklBahlU/e/lcLUvDB3EX7tpn1RnmdbYhy/2yZPnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(136003)(103116003)(66946007)(186003)(66476007)(6666004)(8936002)(55016002)(7696005)(66556008)(2616005)(2906002)(16526019)(52116002)(1076003)(956004)(5660300002)(8676002)(26005)(36756003)(83380400001)(508600001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: TJND92q7rHimS9ygQbNzkHJRqBZhQv1HfDCTNGBOoRnENAm4kzwuQaN0SSt5FnHL09YrMmkf+s9WXLiwrmRCwNOeG5ENSCwd6dExB56FpdIPXCiP4P/OyZ0ZExMsnkt/NGpNAtbFXT7W57ImeVLYn+5+SLWosW4K6wuPg2+sBe19SGtgB82E7w/KFufAzAxeJtJ4Eq/0hM2UZRRThOwWRmmu0PIF1Qhl8zWboVsjzx52Xsj0+SAbfofxvDCZkkCp8kdTMs4dSDPGAaVraJwVvtQwalvgHDUwhZC3/Mr0QTP0zYU6+5vpc5lkF1SpwWGW2x2/DDvx56sJxTd81tyKVlrmxjdGTyx+DS4qODaBfI/JsyonJKtzHccdFVrZJ4obEX2yHKBmkFOf+FFIli32xMMXmr+n6YMMWwuiWv6rW/jTRBOktyQAKaXz7iuMIU+FjxaPL3EbiZZGjUbSBBh/12UnxE7TANLCPc9LnhL8kM+wTcj+yjdEIeoCz254CYU70RTCOUmcHqXUhGXITs8POnsrqjgb5+lVOA3rNVCtvWrXZaFqxUa/fpm8e0g2YHUn8HNDk5K7Q2krPfCrzz61VdrxTnfFt6qIE7pb9rvTb+IjOO6rhCiOjJVgGaI9qMQq/ftvs+Giry155T2ilofj+A==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb70018-8620-403c-b6f5-08d86dc60976
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2020 09:14:20.6346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ynRI9Z2nW+iBJSnNj2v4soQqkWpphMwK/kI6qlodQpsQanTicA7Cpjr1qcd7c3kTWWb0Wk8Qm5HrBY4hDdOin+t2SO1cmJF6NLN6JixfPeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5987
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.118 listed in wl.mailspike.net]
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
X-Headers-End: 1kRXRB-0066xk-3L
Subject: [tipc-discussion] [iproute2-next 1/2] tipc: add option to set
 master key for encryption
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

In addition to the support of master key in kernel, we add the 'master'
option to the 'tipc node set key' command for user to be able to
specify a key as master key during the key setting. This is carried out
by turning on the new netlink flag - 'TIPC_NLA_NODE_KEY_MASTER'.
For example:

$ tipc node set key "this_is_a_master_key" master

The command's help menu is also updated to give a better description of
all the available options.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 tipc/node.c | 46 +++++++++++++++++++++++++++++-----------------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/tipc/node.c b/tipc/node.c
index ffdaeaea..1ff0baa4 100644
--- a/tipc/node.c
+++ b/tipc/node.c
@@ -160,19 +160,21 @@ static int cmd_node_set_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
 static void cmd_node_set_key_help(struct cmdl *cmdl)
 {
 	fprintf(stderr,
-		"Usage: %s node set key KEY [algname ALGNAME] [nodeid NODEID]\n\n"
+		"Usage: %s node set key KEY [algname ALGNAME] [PROPERTIES]\n\n"
+		"KEY\n"
+		"  Symmetric KEY & SALT as a composite ASCII or hex string (0x...) in form:\n"
+		"  [KEY: 16, 24 or 32 octets][SALT: 4 octets]\n\n"
+		"ALGNAME\n"
+		"  Cipher algorithm [default: \"gcm(aes)\"]\n\n"
 		"PROPERTIES\n"
-		" KEY                   - Symmetric KEY & SALT as a normal or hex string\n"
-		"                         that consists of two parts:\n"
-		"                         [KEY: 16, 24 or 32 octets][SALT: 4 octets]\n\n"
-		" algname ALGNAME       - Default: \"gcm(aes)\"\n\n"
-		" nodeid NODEID         - Own or peer node identity to which the key will\n"
-		"                         be attached. If not present, the key is a cluster\n"
-		"                         key!\n\n"
+		"  master                - Set KEY as a cluster master key\n"
+		"  <empty>               - Set KEY as a cluster key\n"
+		"  nodeid NODEID         - Set KEY as a per-node key for own or peer\n\n"
 		"EXAMPLES\n"
-		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\" nodeid node1\n"
-		"  %s node set key 0x746869735F69735F615F6B657931365F73616C74 nodeid node2\n\n",
-		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0]);
+		"  %s node set key this_is_a_master_key master\n"
+		"  %s node set key 0x746869735F69735F615F6B657931365F73616C74\n"
+		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\" nodeid 1001002\n\n",
+		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0], cmdl->argv[0]);
 }
 
 static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
@@ -187,24 +189,21 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 	struct opt opts[] = {
 		{ "algname",	OPT_KEYVAL,	NULL },
 		{ "nodeid",	OPT_KEYVAL,	NULL },
+		{ "master",	OPT_KEY,	NULL },
 		{ NULL }
 	};
 	struct nlattr *nest;
-	struct opt *opt_algname, *opt_nodeid;
+	struct opt *opt_algname, *opt_nodeid, *opt_master;
 	char buf[MNL_SOCKET_BUFFER_SIZE];
 	uint8_t id[TIPC_NODEID_LEN] = {0,};
 	int keysize;
 	char *str;
 
-	if (help_flag) {
+	if (help_flag || cmdl->optind >= cmdl->argc) {
 		(cmd->help)(cmdl);
 		return -EINVAL;
 	}
 
-	if (cmdl->optind >= cmdl->argc) {
-		fprintf(stderr, "error, missing key\n");
-		return -EINVAL;
-	}
 
 	/* Get user key */
 	str = shift_cmdl(cmdl);
@@ -230,17 +229,30 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 		return -EINVAL;
 	}
 
+	/* Get master key indication */
+	opt_master = get_opt(opts, "master");
+
+	/* Sanity check if wrong option */
+	if (opt_nodeid && opt_master) {
+		fprintf(stderr, "error, per-node key cannot be master\n");
+		return -EINVAL;
+	}
+
 	/* Init & do the command */
 	nlh = msg_init(buf, TIPC_NL_KEY_SET);
 	if (!nlh) {
 		fprintf(stderr, "error, message initialisation failed\n");
 		return -1;
 	}
+
 	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NODE);
 	keysize = tipc_aead_key_size(&input.key);
 	mnl_attr_put(nlh, TIPC_NLA_NODE_KEY, keysize, &input.key);
 	if (opt_nodeid)
 		mnl_attr_put(nlh, TIPC_NLA_NODE_ID, TIPC_NODEID_LEN, id);
+	if (opt_master)
+		mnl_attr_put(nlh, TIPC_NLA_NODE_KEY_MASTER, 0, NULL);
+
 	mnl_attr_nest_end(nlh, nest);
 	return msg_doit(nlh, NULL, NULL);
 }
-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
