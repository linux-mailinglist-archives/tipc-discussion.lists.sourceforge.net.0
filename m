Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4404E28A693
	for <lists+tipc-discussion@lfdr.de>; Sun, 11 Oct 2020 11:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRXRT-0005In-0H; Sun, 11 Oct 2020 09:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kRXRR-0005If-HO
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UOFoi+HzoQWkuBO8rnYZbXTuQUcE8D5Q2B1mdbUpOgw=; b=dW7Jm1Nzrse2/HjWXJWprgdg74
 Ez4+pvKwP/eQsRMwNeSyd7hXu7ZRWkiROfsPLmPc7iScAqz9JkfJkNiB3yj85BYwv32LNx+dKlM9m
 9Igl4NfS5Js5keUsK+cjq0qyRad3Sua2mm8ZIsvzCql0XlzSOGH8l60voCX7dnMlg9sE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UOFoi+HzoQWkuBO8rnYZbXTuQUcE8D5Q2B1mdbUpOgw=; b=N87Jjlf09/JXl+R4y+8lDkHEsp
 EFIkKLMdpir9uUlbhWJKZqh/wOkcbOSGMIuXhU0vI+jZcrtuLmhWMlOkUZtMxmqoulhjap6fDmJt9
 nb+U5Oh5k2Mxw5Nj+ZxEzp130NByFIZcVRdqMMm7HIcZPTYY6S/C858WM9qwj3F/f3wU=;
Received: from mail-eopbgr80118.outbound.protection.outlook.com
 ([40.107.8.118] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRXRE-0066xk-5a
 for tipc-discussion@lists.sourceforge.net; Sun, 11 Oct 2020 09:14:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuOwZAEpg9zV8eQEmCaBqc2HtA8KLkXMUfqYpRE40rgDmMTG1J/tISYEv+dVesS7b8N7q51AahW5OdUCmE5dz5LsSSwSxmC23UjtWLcwHRNOaH/RGirrNlVH0XTsflq3oPD/9NfQtxZf3dcZC8cvU7zIPrvVph8H/CgkU+14SCCfIxi90pYc4riiJHox90HE8OGMweSMnP9sntaqFiGd82zlYojqG6GAEms60hO3UC88dCd7tD4UTBmF+fU3lXlp+aKsaSQVfpti+skU5zXwoTcQ9z4tBhaTb7NWVCHnvi0kWQT44URniJHeJ/r6Ys9+TEBLs+E/3Gesp4DU9xD9/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UOFoi+HzoQWkuBO8rnYZbXTuQUcE8D5Q2B1mdbUpOgw=;
 b=KfPBJMnD1Jk8W4NgQKZSitfHT84Vts5Ing/ngGco3lzWxlUCizinucqKYJSMZvys+TOuKXWielJYS0Z8B5tf4arxMUBPg9rfI1doeD6M4D/kO+ltT0nBxV6TTL/4Z9gp07vaKroAAtxs3p6M9gBVthhG6aGjfSqFCY0CzSdyClnWrx/QBlu0P75iZhr4Sx3Oz8G8Ovo/kNpF7DzWw/v7EzOsrWGcE6pN6aUb298dnbYmRMSlXgPfvsB1VuTuXnvPo2QSzv0GjnJ3S5U6zT2j2I/n1DVsEOQACJ4rNxU9cFK7WXfhuZzUbhr914/WdgGLRJIktAaA1zcVmT997GpnUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UOFoi+HzoQWkuBO8rnYZbXTuQUcE8D5Q2B1mdbUpOgw=;
 b=LY84Os3rzfgNiQiogot+IpNmxxopt8UxdA1YclYDV3BG0ohC7XgWi6WGFR52uYZ8V11rTRzFxTsCkuoJct99sdnZ63oUHUAKAa0DAKYYhaYWF9igsGb9UDazXlErWWHZVwDqtFLRYUti04RLO1TkaKlxNbHAgyAHUhvQ1mlFjFs=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB5987.eurprd05.prod.outlook.com (2603:10a6:208:130::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Sun, 11 Oct
 2020 09:14:24 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3455.028; Sun, 11 Oct 2020
 09:14:24 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Sun, 11 Oct 2020 16:14:01 +0700
Message-Id: <20201011091401.10418-3-tuong.t.lien@dektech.com.au>
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
 15.20.3455.21 via Frontend Transport; Sun, 11 Oct 2020 09:14:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5941d12-7f54-43bb-1f2d-08d86dc60b85
X-MS-TrafficTypeDiagnostic: AM0PR05MB5987:
X-Microsoft-Antispam-PRVS: <AM0PR05MB598751B71A20A275DC1A14E5E2060@AM0PR05MB5987.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:415;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: osRD7Ft7BQNx01HhguxGAkcLlhJ1dZPGJiiv/8nFBdYRBfq4FDjlY8pGmvCftDidSjnIA9CHN1sGt4u4nwpRZKAzpk7EHGF9udIfiF8IuzKJW44bYAYN6BmNOIr6jNyejLu+g3syEihbSnrXjpWQQWlwJJ8tx3ADfzOy1UBW7aOruBk1k8/FCoF6DMCaNtEXs8hxiEkMZ5mdenjTwPHFvp6COzvEU9WuiSL7onI+IP9wHvT7i0Wbybl36PXEWl1SigXwnVo5sCl1UE97uxodBQ5OF/P/U5W0mUxxnsbqb1PWswZDRmuR/HFbFFQ5FC64MHTgCOBlFRr6GASQL64fiQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(136003)(103116003)(66946007)(186003)(66476007)(6666004)(8936002)(55016002)(7696005)(66556008)(2616005)(2906002)(16526019)(52116002)(1076003)(956004)(5660300002)(8676002)(26005)(36756003)(83380400001)(508600001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: gSlQx2Dp/l1UKprOgthL0eOndZ3Tca7ymL7F+43cP0vgtbfTuUVzT0Ri/7PMnKG7mNzUmrPKzSMrPN+MLFYigSyz1ymF/XbBk46/DVvv+967QTiSjeuZ+txLM3TTYThjdFYEBLLzT0mBmT/3LB8L4RHsCOwHABnkS8uMIu/HQWl6rALahPrjbxz6KMKuRjpJiplIQJKmE4dIqFmUZiQMIshZrZqi/952oSlQu0JiVe8kGBMq9QLuxiTFcWpbXkzfzrWAoXmWhGJO+UYtPTttZRLzpED3tqoUXyR8O0d+/nWmWiH9JAz+95N+XZKK3b12u321k37U0pV1YlpVqluNnnp9R1QKFBGlSU/cnhHOziGb5Fybw1kiK1OKa7dqmMHySqeCKiWtA134sWKyFNX10/o7R3HYEWcHTQpQdBBBwuiEjdjHMfoGzKUmqolzBW6Kxhnk4uovXFdrRTWBfe5CebFsx5+UfoRvMxgWcGyfxyAoIxtJNBNUmCsWs5TVL8MFA11CMnLwQrVBPNs2YlkoeIXx42u0nw51kCj37VRDAmNp2sjc+zywrkT5nZ/bj5OlScgSwDbnAmHjFtMiOeNDF/RDywVLdpXAb3qOLarZurQEfSO5v4E1uNHaWLdk4YsaxsLBgG6GQqcD4wcH1T9GZw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c5941d12-7f54-43bb-1f2d-08d86dc60b85
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2020 09:14:24.2816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xAK0BK84YUUIgMjSnAy8ikJqW+ONbQAl9ba/Rp76LUm5LkZ+wKsC+4cupUaZMqnTXaOX3ksNDIWMSoX8GRRiG1zxbitPsIMA6wlNE6awkns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5987
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.118 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kRXRE-0066xk-5a
Subject: [tipc-discussion] [iproute2-next 2/2] tipc: add option to set
 rekeying for encryption
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

As supported in kernel, the TIPC encryption rekeying can be tuned using
the netlink attribute - 'TIPC_NLA_NODE_REKEYING'. Now we add the
'rekeying' option correspondingly to the 'tipc node set key' command so
that user will be able to perform that tuning:

tipc node set key rekeying REKEYING

where the 'REKEYING' value can be:

INTERVAL              - Set rekeying interval (in minutes) [0: disable]
now                   - Trigger one (first) rekeying immediately

For example:
$ tipc node set key rekeying 60
$ tipc node set key rekeying now

The command's help menu is also updated with these descriptions for the
new command option.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 tipc/cmdl.c |  2 +-
 tipc/cmdl.h |  1 +
 tipc/node.c | 47 +++++++++++++++++++++++++++++++++++++----------
 3 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/tipc/cmdl.c b/tipc/cmdl.c
index f2f259cc..981e268e 100644
--- a/tipc/cmdl.c
+++ b/tipc/cmdl.c
@@ -33,7 +33,7 @@ static const struct cmd *find_cmd(const struct cmd *cmds, char *str)
 	return match;
 }
 
-static struct opt *find_opt(struct opt *opts, char *str)
+struct opt *find_opt(struct opt *opts, char *str)
 {
 	struct opt *o;
 	struct opt *match = NULL;
diff --git a/tipc/cmdl.h b/tipc/cmdl.h
index 03db3599..dcade362 100644
--- a/tipc/cmdl.h
+++ b/tipc/cmdl.h
@@ -46,6 +46,7 @@ struct opt {
 	char *val;
 };
 
+struct opt *find_opt(struct opt *opts, char *str);
 struct opt *get_opt(struct opt *opts, char *key);
 bool has_opt(struct opt *opts, char *key);
 int parse_opts(struct opt *opts, struct cmdl *cmdl);
diff --git a/tipc/node.c b/tipc/node.c
index 1ff0baa4..05246013 100644
--- a/tipc/node.c
+++ b/tipc/node.c
@@ -160,7 +160,8 @@ static int cmd_node_set_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
 static void cmd_node_set_key_help(struct cmdl *cmdl)
 {
 	fprintf(stderr,
-		"Usage: %s node set key KEY [algname ALGNAME] [PROPERTIES]\n\n"
+		"Usage: %s node set key KEY [algname ALGNAME] [PROPERTIES]\n"
+		"       %s node set key rekeying REKEYING\n\n"
 		"KEY\n"
 		"  Symmetric KEY & SALT as a composite ASCII or hex string (0x...) in form:\n"
 		"  [KEY: 16, 24 or 32 octets][SALT: 4 octets]\n\n"
@@ -170,11 +171,16 @@ static void cmd_node_set_key_help(struct cmdl *cmdl)
 		"  master                - Set KEY as a cluster master key\n"
 		"  <empty>               - Set KEY as a cluster key\n"
 		"  nodeid NODEID         - Set KEY as a per-node key for own or peer\n\n"
+		"REKEYING\n"
+		"  INTERVAL              - Set rekeying interval (in minutes) [0: disable]\n"
+		"  now                   - Trigger one (first) rekeying immediately\n\n"
 		"EXAMPLES\n"
 		"  %s node set key this_is_a_master_key master\n"
 		"  %s node set key 0x746869735F69735F615F6B657931365F73616C74\n"
-		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\" nodeid 1001002\n\n",
-		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0], cmdl->argv[0]);
+		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\" nodeid 1001002\n"
+		"  %s node set key rekeying 600\n\n",
+		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0], cmdl->argv[0],
+		cmdl->argv[0], cmdl->argv[0]);
 }
 
 static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
@@ -190,12 +196,15 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 		{ "algname",	OPT_KEYVAL,	NULL },
 		{ "nodeid",	OPT_KEYVAL,	NULL },
 		{ "master",	OPT_KEY,	NULL },
+		{ "rekeying",	OPT_KEYVAL,	NULL },
 		{ NULL }
 	};
 	struct nlattr *nest;
-	struct opt *opt_algname, *opt_nodeid, *opt_master;
+	struct opt *opt_algname, *opt_nodeid, *opt_master, *opt_rekeying;
 	char buf[MNL_SOCKET_BUFFER_SIZE];
 	uint8_t id[TIPC_NODEID_LEN] = {0,};
+	uint32_t rekeying = 0;
+	bool has_key = false;
 	int keysize;
 	char *str;
 
@@ -204,17 +213,31 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 		return -EINVAL;
 	}
 
+	/* Check if command starts with opts i.e. "rekeying" opt without key */
+	if (find_opt(opts, cmdl->argv[cmdl->optind]))
+		goto get_ops;
 
 	/* Get user key */
+	has_key = true;
 	str = shift_cmdl(cmdl);
 	if (str2key(str, &input.key)) {
 		fprintf(stderr, "error, invalid key input\n");
 		return -EINVAL;
 	}
 
+get_ops:
 	if (parse_opts(opts, cmdl) < 0)
 		return -EINVAL;
 
+	/* Get rekeying time */
+	opt_rekeying = get_opt(opts, "rekeying");
+	if (opt_rekeying) {
+		if (!strcmp(opt_rekeying->val, "now"))
+			rekeying = TIPC_REKEYING_NOW;
+		else
+			rekeying = atoi(opt_rekeying->val);
+	}
+
 	/* Get algorithm name, default: "gcm(aes)" */
 	opt_algname = get_opt(opts, "algname");
 	if (!opt_algname)
@@ -246,12 +269,16 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 	}
 
 	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NODE);
-	keysize = tipc_aead_key_size(&input.key);
-	mnl_attr_put(nlh, TIPC_NLA_NODE_KEY, keysize, &input.key);
-	if (opt_nodeid)
-		mnl_attr_put(nlh, TIPC_NLA_NODE_ID, TIPC_NODEID_LEN, id);
-	if (opt_master)
-		mnl_attr_put(nlh, TIPC_NLA_NODE_KEY_MASTER, 0, NULL);
+	if (has_key) {
+		keysize = tipc_aead_key_size(&input.key);
+		mnl_attr_put(nlh, TIPC_NLA_NODE_KEY, keysize, &input.key);
+		if (opt_nodeid)
+			mnl_attr_put(nlh, TIPC_NLA_NODE_ID, TIPC_NODEID_LEN, id);
+		if (opt_master)
+			mnl_attr_put(nlh, TIPC_NLA_NODE_KEY_MASTER, 0, NULL);
+	}
+	if (opt_rekeying)
+		mnl_attr_put_u32(nlh, TIPC_NLA_NODE_REKEYING, rekeying);
 
 	mnl_attr_nest_end(nlh, nest);
 	return msg_doit(nlh, NULL, NULL);
-- 
2.26.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
