Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A9924FAB3
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Aug 2020 11:59:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kA9Fp-0006QO-Qs; Mon, 24 Aug 2020 09:59:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kA9Fo-0006Py-58
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Aug 2020 09:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y+wcozbsJqEgnVjoMAeoC3hvjC9kYgFrxYvU9r5Q+q0=; b=ACODcBCHUrtocu/Lyf0mQuOofP
 S75k6Dywxg/P9k/zMES2RBWf+uGylhf3lwNtf3DOymxVdyFRHOEoJaqyyMaE7XeYsklGNow9HpF6w
 ANSnEMkj1qIA23zr+dQO4VV5CSdhZNYdDwDyHKLQFJkSINfWzRAUX9vot4y3dU8TB1XM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y+wcozbsJqEgnVjoMAeoC3hvjC9kYgFrxYvU9r5Q+q0=; b=I
 YNmUaDJMcyg5IIL6NT8Lze2a2ZIr+BUR3fecGMU2t/5w1p6axqNhdwMbc19dMu4hYT38ZBYiB420S
 eywa97XzJQAgsJ9OsPgrt8jTAVggScmK6PzH6oMUX7V5g50xS5eKPXHz5b7Dlq6EIG2VCRSjCWcQ3
 zq6vMcHmJblgT4Wo=;
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kA9Fc-002NjJ-S4
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Aug 2020 09:59:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWrScE3iXsiK1RK04NponKC/DF6vWAu/Lbb8Sp4F8k/hHpNn30tDprA/hsbxuF6kJvt/WJcq4ZzxGsW2lKcWS/702Rhu/9gOiZQvNucOw/aDPP62xKQ5cnxWpVdeEnF60zoZoKq4rv4i5bVHIVtKyoczU95bzXqrrkDBeKlw1HNOF2TfAU5twqZ8DTQOvPZcyozlClAQyB1ntfLExzF4tMOACLDGqCch9Agx3OsUefverKL8+D46jHoQyCb/inQJyDOBAcuyMIFFMzqqdJPMDWMrL1DQAZbOjqjOL3GrbfwU5eimv3Uvc6z+xnbc4tGFvfaU33Rf/ebWFom7F/LyNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+wcozbsJqEgnVjoMAeoC3hvjC9kYgFrxYvU9r5Q+q0=;
 b=CFqNXrz8EMsfiKvDOLG7Q5844/i8xWILk4VI6JyLyDTLOCG/R9xvQZlI+SmoM+Py3yhH1+Y1xwRSxblDuH3NOfd22Og3yK9v1dUFld3pbMEfP1hwm7NU6cNJInqZJli/wrCD5v8chMUyynPH1N9F4GH+FRyXBDTB2tw0ClkHnIzhGnM58YbKbjvdgi3WzzIjI2SPnJZ/g2PDXFWOYRgYtA8xEB5gDbh5+P/4afoY5Yr8BQ5ixNH5fO7XGK/5iVMPns/bgmgjuaAXQdyy3mzr44hWx6mA782gm8yd+ssjxk2FKncBXmSRH54P9kdK8r1VdiinzpSN0pN55pDPR2KCNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+wcozbsJqEgnVjoMAeoC3hvjC9kYgFrxYvU9r5Q+q0=;
 b=bS8Ieio4kgJQhD9NpTRZNYcG5uRB0eDMxspOoGuVSO3NBUUO+lhCkLVwKvRZJK0iEHKyKpGQwBSftCsBjo055NmacooUArzEzubPp5IFY6Y1GG2fpd7OMIysXPS/P7gLFoGFEjaECYvRcpmHq40SRDockXl7IlHmMnF/4xBSUWs=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2749.eurprd05.prod.outlook.com (2603:10a6:800:9a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Mon, 24 Aug
 2020 09:58:44 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 09:58:44 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
Date: Mon, 24 Aug 2020 16:58:30 +0700
Message-Id: <20200824095830.14367-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR06CA0171.apcprd06.prod.outlook.com
 (2603:1096:1:1e::25) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0171.apcprd06.prod.outlook.com (2603:1096:1:1e::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25 via Frontend Transport; Mon, 24 Aug 2020 09:58:42 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 586aa4e3-6e05-4181-a61f-08d84814492f
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2749:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0501MB27494EA712799B951DC33791F1560@VI1PR0501MB2749.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KnP5psxRNEWA8UZ2vsgZQJ+7D1AmRxotBJZ5JB44eLl/qHrqoR8NO/SPxWu71Ifvmgc60rS3N/nIaIhwt1pE344UW/sPA0L0c7XkXVN7Z2ZOYvs+PuszEKoYTKb0H9tc6daUVH6LpIFQZTPVg86ZdqmiO0HbuTQOjrCPLcj2ugUUWuMFy6UndF8/u+iaPAOjsivrArYPivhYXSb4oXR1EGh0xrH5KpWAUvqYkb06R2s0EHwuyQxU8HV6Qaod9ZTiWwTYE/+6ITPAS5wLad3q4EPHxrwABtv6PmrmE1OF9MJmOecDMeNnEN5oupL+dTgWC5yTsbaqDcJIjWiFNmE0AQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(396003)(136003)(39840400004)(478600001)(186003)(107886003)(5660300002)(26005)(2616005)(8676002)(4326008)(316002)(7696005)(16526019)(103116003)(956004)(52116002)(8936002)(55016002)(1076003)(86362001)(66476007)(66946007)(36756003)(66556008)(83380400001)(6666004)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: sfXTqxR+ts/u18GAKEDfnUzbo9VoCS3S9SCeTFLIXeW51Y0F14rZSYeWL9F2bgssRGVf6CG+9PP0wegNYbognE/GuYnDOVdb7oYIBGQY5kJWKpZ+Xv+WnvFjO5I9u1yW9enSU8ICS6WfiprNmw5jI1woz8owMluq61Kb8YejIZ8+pzzgyDl6NzhPCaQp5PCjb9QO2iAR5PO11jQwp/X9R5Yldr07jkDiehlJ4UJb0lBLT7XMndE8/DU+0d113cLK6gKuRonqEAeaNEeDidGl0Q2EnSzQNT3i6JnNDhw6UEFXHCge1uRa71N4rsH5EvrIzIZA8nfgyDV02rw+cYjulEX7LT2fumO/yy8xMuemVp1SHpDlP7LtKX7z3RHiyhhtr8HxAAqZHDXv6OIprzwQ9D8NPdLckCLEFfXQuSy4h5rQ1tfsJkMYe7qpt+Gv++7suT2AzF0kBLnF8CQ71gFo0GEYKFXdf8qLUdlGOqNo7cKw+GDlplSIImDiNjAaS5v1HqhbsQpN/lfaQn1J81qC9Tgx1q9UZtwE4xsKosyPMakiGo591FgU2ThJ1tkIVgH2Qzv9qQQjSzbAnpIPmP+wo8DhUa5liakYbiDAGI04agMlh/EklvbwYrSZaJBsgGUwAOkEOBGhSMNmjFJ3f0CbHw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 586aa4e3-6e05-4181-a61f-08d84814492f
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2020 09:58:44.2057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OyuTmDNMDfb6V/+9B8Dp2+HfTtg3yyvJ9gdF9h54vbFyigWajx6jMgfKyL+JbkSR0m5FflBbtOkrl5NZoMsyZL24iRzovkzfdWSRjxElyu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2749
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.95 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.95 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kA9Fc-002NjJ-S4
Subject: [tipc-discussion] [iproute2-next] tipc: support 128bit node
 identity for peer removing
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

From: Hoang Le <hoang.h.le@dektech.com.au>

Problem:
In kernel upstream, we add the support to set node identity with
128bit. However, we are still using legacy format in command tipc
peer removing. Then, we got a problem when trying to remove
offline node i.e:

Node Identity                    Hash     State
d6babc1c1c6d                     1cbcd7ca down

invalid network address, syntax: Z.C.N
error: No such device or address

Solution:
We add the support to remove a specific node down with 128bit
node identifier, as an alternative to legacy 32-bit node address.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 tipc/peer.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/tipc/peer.c b/tipc/peer.c
index f6380777033d..f14ec35e6f71 100644
--- a/tipc/peer.c
+++ b/tipc/peer.c
@@ -59,17 +59,68 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
 	return msg_doit(nlh, NULL, NULL);
 }
 
+static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
+			      struct cmdl *cmdl, void *data)
+{
+	char buf[MNL_SOCKET_BUFFER_SIZE];
+	__u8 id[16] = {0,};
+	__u64 *w0 = (__u64 *)&id[0];
+	__u64 *w1 = (__u64 *)&id[8];
+	struct nlattr *nest;
+	char *str;
+
+	if (cmdl->argc != cmdl->optind + 1) {
+		fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+			cmdl->argv[0]);
+		return -EINVAL;
+	}
+
+	str = shift_cmdl(cmdl);
+	if (str2nodeid(str, id)) {
+		fprintf(stderr, "Invalid node identity\n");
+		return -EINVAL;
+	}
+
+	nlh = msg_init(buf, TIPC_NL_PEER_REMOVE);
+	if (!nlh) {
+		fprintf(stderr, "error, message initialisation failed\n");
+		return -1;
+	}
+
+	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NET);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID, *w0);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID_W1, *w1);
+	mnl_attr_nest_end(nlh, nest);
+
+	return msg_doit(nlh, NULL, NULL);
+}
+
 static void cmd_peer_rm_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove PROPERTY\n\n"
+		"PROPERTIES\n"
+		" identity NODEID         - Remove peer node identity\n",
+		cmdl->argv[0]);
+}
+
+static void cmd_peer_rm_addr_help(struct cmdl *cmdl)
 {
 	fprintf(stderr, "Usage: %s peer remove address ADDRESS\n",
 		cmdl->argv[0]);
 }
 
+static void cmd_peer_rm_nodeid_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+		cmdl->argv[0]);
+}
+
 static int cmd_peer_rm(struct nlmsghdr *nlh, const struct cmd *cmd,
 			struct cmdl *cmdl, void *data)
 {
 	const struct cmd cmds[] = {
-		{ "address",	cmd_peer_rm_addr,	cmd_peer_rm_help },
+		{ "address",  cmd_peer_rm_addr,   cmd_peer_rm_addr_help },
+		{ "identity", cmd_peer_rm_nodeid, cmd_peer_rm_nodeid_help },
 		{ NULL }
 	};
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
