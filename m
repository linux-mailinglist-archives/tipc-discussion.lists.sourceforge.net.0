Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4614291633
	for <lists+tipc-discussion@lfdr.de>; Sun, 18 Oct 2020 07:55:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kU1ez-0007O6-GW; Sun, 18 Oct 2020 05:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kU1ev-0007N9-E0
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Oct 2020 05:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hk9VZ+zqnFTUmDbjJ8PCCOqPKB4h1m//bx9xccAQcwk=; b=ZPj3fFlaj3JsFsr7wddb8Ztgbs
 Ir9bBZNJ4n1crFz2A8UWiYyvDKTMKoS4BbkS7SuIZyZcLUIQPvBx3fiaknynHjRmZMDz1xDj4n2vK
 O0cJEQEP2luhQC7SGDOSdlccrHbDkgnnGFYZyzb/K3L++Yl492wuvEJTNQxWvoNXsdZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hk9VZ+zqnFTUmDbjJ8PCCOqPKB4h1m//bx9xccAQcwk=; b=hO9vLR4ea7JeiruTGg74M7C0NU
 7/VSvlfRE+721vwQS5S4GO79wdDW+hoOKLFToNTWtAJFY2mYPyVnmRSRFJK2tCfS9nfNCKZZDjfmH
 mDzCw+iFbmIryI/nag4HNeYXjwuP/F12otA5QBae7J5IdahbqEKFk4/uSjhoDTE9igr0=;
Received: from mail-eopbgr80120.outbound.protection.outlook.com
 ([40.107.8.120] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kU1eh-0029fi-Js
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Oct 2020 05:55:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ab6DHbE3Gr/rmXu+MW/jiy9PHdhUXuXcCglIVjCUs1qhtRFzFdMFPYJ5jppDyZctCU8NGVvOjJ6RVbvenptO0UOQ04PQLgEre4XbM1LuB5b8P76Iarj4xHYEddo0booPaZZsK3PPTcB/bGcOVxgTN0WRJEzRyK/PZVfIE6px7oPgRJfX0EdmFppRWPQmGagbgjCp56v1V+SKH7YQFOE2ZSeP2QOXAmlSgnWvDEUxbsV4A6LE2auSmli1yCHx1RUekA5UT94eukyCxWXV+C3NJsc35zyEbmMNH7i/hf2iGJqFCqNS+nj2VqrfoLcepzBsex3OKohRkixfb1ulUcTjDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hk9VZ+zqnFTUmDbjJ8PCCOqPKB4h1m//bx9xccAQcwk=;
 b=OZa9ZgbGfHAd84SE/CnXJnfXkZT8jmOjlxd1e1v9h60GDkmdIpQ9ndwMAEuZyrcaoNw7wBNRog7+ODhHQQoV0Grnd7j2vqDa8pJYcGCe8zuN1gG1lYibWvww2OQQS+OqJtnWAHfQhW21U4Q8/OYyQJ0ajFA2f9K3NXiDwMgKU1Z0dUWbctTG5LBWC+TiDM96vj3ice3WNKWtpXoQUbh2mZjQBLwXPPIaZ/GuWgdPjRGYVt/+uEKW7orlv2oVNxJLjzfjFhwxHT7jt+JSqWzfVPwW3Cm8PsFCSK7XIa/xpm2GOLTSnopDSZe/B/MPsMQUhgXMqHKguNH/S3CPugg5iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hk9VZ+zqnFTUmDbjJ8PCCOqPKB4h1m//bx9xccAQcwk=;
 b=YAv9+1rktPVwubytzb8fCmX1L5SFlOKPVVU4hgGVhFlWcgtTHb2jGUha2h0hXulAnSLc7TWpFrDVHsYTgNL6t316srYLxH/CymJrU8zr2k5aDwBAgN1UAzS9Ybwmw5z+o6kdtHz41iXR0H/leoUUOePwR0bomgTPe4E4Xzc96a8=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB4131.eurprd05.prod.outlook.com (2603:10a6:208:5c::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Sun, 18 Oct
 2020 05:21:14 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::e846:1ad7:c6f1:ab9f]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::e846:1ad7:c6f1:ab9f%3]) with mapi id 15.20.3477.027; Sun, 18 Oct 2020
 05:21:14 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: dsahern@gmail.com, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri, 16 Oct 2020 23:02:00 +0700
Message-Id: <20201016160201.7290-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201016160201.7290-1-tuong.t.lien@dektech.com.au>
References: <20201016160201.7290-1-tuong.t.lien@dektech.com.au>
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: AM4PR07CA0009.eurprd07.prod.outlook.com
 (2603:10a6:205:1::22) To AM8PR05MB7332.eurprd05.prod.outlook.com
 (2603:10a6:20b:1db::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 AM4PR07CA0009.eurprd07.prod.outlook.com (2603:10a6:205:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.11 via Frontend Transport; Sun, 18 Oct 2020 05:21:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9933b084-0e1c-4ae0-8da1-08d87325a247
X-MS-TrafficTypeDiagnostic: AM0PR05MB4131:
X-Microsoft-Antispam-PRVS: <AM0PR05MB4131C179AEF22BDADAAD51E2E2010@AM0PR05MB4131.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:514;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vkdvL+PI33PUdzqn4HGajnqQdKuForBR63wjI51ocqtTV9eeSWkJYsI7wSgevzR1Qnt6u3b7MOuSkVFo9tQUjeZPPqcHFY/S3jHw3OxOg3HjkC4FhLCRDj4ki1H+0HGvvx3CxMFOGk4uQI7JGSTugzuSapxDrzycVCUWEPkAE04A8Bu4tVljL17dV0dFaoa0+/80L7esTcnew5VGYbkKrv4VmySSVrXdUmI1BhRfyY7T7QRkxwAQXLhxk6KhRvpfmyZT8mLkhv1tzbTF3wx6asZcUTTOlb3AbsbNJTUi3AgsiMG5sGo7WvMla4UY+ZAVsuEuJMMUDAGsFQQzUlArtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(136003)(39830400003)(376002)(26005)(5660300002)(8676002)(16526019)(8936002)(66946007)(1076003)(6666004)(52116002)(66476007)(7696005)(66556008)(83380400001)(86362001)(36756003)(478600001)(4326008)(186003)(55016002)(2616005)(2906002)(956004)(316002)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: FWgV1etJUufR3TErB+47Pob+iVbMqsUtZAtWtvhLPpA8z/GT1SxEZ3FJ6+MovJRuqyb2CikTNAded30zuNpx/JFlrJuHf/vuTlpkhUrR8STxB/SIoHGyQ7F5TcjXBMdn+fO6DuwKy8saRilcsytbxnzh53VWvpsDqZFjOf+LjzCLjM6F6SouvkEf2XUtnds8r6uJUM4Ml+oWN0HcloJ+ldUH8NGr8+LOLtnk37O+2tuBsMIiG+Ss9qGQu9yjFwj8XfVJQuRyeYZf/mymSE5v8XZmv4hWs2BBrpKj+lStdL7wnXte4U5mB+b+1wQS8Q4467vesgbzlbAnlwG2w+wXoq7AfuSokK2pg3MLAJrqUYazxZvZWLEIOX8a0hr87HbE5hzxv9O00yc+tF5qfzaUCqzPGIgULwVrA3ReIXowRYB5dOSU3EenyzRfTelFmxs7Js1w3juCNS/I0bbFfI1LuZEr+qfGFpfr72q68guQvzmq343U8x9KDxo/cL88CMQ732NnXzm/9RROgylrOZ3hUQ8er46A/te1Mlx9JKpzHO4sQftEW/tISG246GLDXqQxINQJte5vl2j0p5lZKjkienH53L8c821wMYLjdRhR1Ka8firQwBKrxJsxyqXnN4jVtwH8Ar4ebWvHT5/d45/35g==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 9933b084-0e1c-4ae0-8da1-08d87325a247
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2020 05:21:14.8498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PGc/eYNU/si9PY9K7SgwSKOrNGyZJo/N5m33zU+BrBMcNs2KPUB54VYZ0gnojLG7WiKx8yQ6RNDb+RPrMeK0Zo+eBxihpmKuuc6wPAKk6b8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4131
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.120 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kU1eh-0029fi-Js
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
Cc: tipc-discussion@lists.sourceforge.net
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

Acked-by: Jon Maloy <jmaloy@redhat.com>
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
