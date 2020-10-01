Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A21827F9CB
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Oct 2020 08:52:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kNsS4-0007bx-Fm; Thu, 01 Oct 2020 06:52:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kNsS2-0007bq-Qp
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 06:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQP3+QefGMFJBFuFzwHObu4PhVAuhtFx0BhMjtB5rAs=; b=PVo8iysHipIZYPm/wGO7+kDAjt
 mRHKBGoBs+lw2GG1ZK9hH3hP/5jDqFvaCWXckW4hNT6AjVKYbFiqZtxSOldGelBedMqZraR/UpqmE
 30PUZCH8MNfyWQ/CAv4e2f7KaFUKRLtvzFWXVyFJV2iGBwOuPUULYUZlwDLiqOVGdB4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eQP3+QefGMFJBFuFzwHObu4PhVAuhtFx0BhMjtB5rAs=; b=D
 6CR+4DETc2e6D70Nkr+UaMzIutvaK3N0RFj08ePCn7O0dXr0YuGqPIezomX9T/3IIyilHh6qGK3Y9
 6GXfrZ1xdPmN/I0wfU8LxyY7vdf9RihAyisbrksLtYxMqMaySQALwh9AjCBo4StYAdXKOE7SmZd/Y
 bDD7vHMqG1mpISBc=;
Received: from mail-db8eur05on2109.outbound.protection.outlook.com
 ([40.107.20.109] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNsRk-00FZZf-Sr
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 06:52:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SX1FdORnEMPgpgl+EqCtqehPRD1x6dn8N6noZattG6zOmsBl3xq6GDAthPQQrfstJV4vRYQ+W5xyuUvbU54CWptCqjkK3qKeQHtSl2U/pyLDa1apKnvZr9xiPkqNCMAyE+mxaz1bWdb8ihtk9U/4rABXLQQFaU29xuDRBangEds22CCUO6E5X3smDZ60+6NoCJEnek8gHxi6eGHWcRAGPjKryqENbNgRJh7nkFAMdRX5ro0DsmD39T8xUd4TB6xe06JJvd+V8fEruygN7L59vXN0Ca+jZm4TarjC/FZL0jqgjvCKfpEFWm6e9TNiq8KtWDJ7B55/9bmAlEJefup12w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQP3+QefGMFJBFuFzwHObu4PhVAuhtFx0BhMjtB5rAs=;
 b=bxmTmk5sbXgEflQPi1c0b6k8IwwxFfJ/4993mHxfM5YEjV+vEq7zLCOTcqslGV+wjMSb7i0Ag2lcDAy8lPHrvVxgeRzkQChxRwkx3kcwERZTaWsYEheJ0PEogDO73+TDXYGkYJfuAUanLYHpSRuEqfae2ObNXKndJwC/+79WuHqK/SURUTzp3ixeEE6mLtw9XmOkwJaWD8wKs3qJ5YtV3TQcec7sOoBDp50C24KygH6lnvLp3DVo4cNDIn/Urjn/DuDxyxgEWnHj0X4E+PKHzl6Ij2ivRhYuMLdE8/KLswfnS8aO3FSngUrM+YWdI1AE3lyrn/DV6NvN/Hav/xsj2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQP3+QefGMFJBFuFzwHObu4PhVAuhtFx0BhMjtB5rAs=;
 b=sdBhR5eOWOerQz7XaXpw4a9PZIDpbXkAIpxEyCl3pkylyl7BOaCVZglUSY4uS4Px1hihWuFiScWI74qzED0/2OOOZVDhckDIErO8WbnrgZ0QsDGdUMJXnbejt6elS/4TjgJSOQtF8C0SD8Zye9uYrv/nTZaAdJ1sg9ZsjEZZHoI=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4269.eurprd05.prod.outlook.com (2603:10a6:803:43::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.24; Thu, 1 Oct
 2020 06:52:01 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3412.029; Thu, 1 Oct 2020
 06:52:00 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu,  1 Oct 2020 13:51:46 +0700
Message-Id: <20201001065146.70056-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR04CA0188.apcprd04.prod.outlook.com
 (2603:1096:4:14::26) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR04CA0188.apcprd04.prod.outlook.com (2603:1096:4:14::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.34 via Frontend Transport; Thu, 1 Oct 2020 06:51:59 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b05d19ed-fa46-4be5-d105-08d865d67f4b
X-MS-TrafficTypeDiagnostic: VI1PR05MB4269:
X-Microsoft-Antispam-PRVS: <VI1PR05MB42696785274EDD9E0440F4C0F1300@VI1PR05MB4269.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HH9pyc0Ok4zI4OpuvwSCnYwzJJboGcz6CtB8cVgonk/3FAMIgdVd0CA+XdDUEkaaio3ezh4At3u2U5d6Na/H5seKl8FzB4TG2XGsyOobTLwWjKeHzh8Hmhj3gz4VnIqj5Zt5bWwcrrAQEF6pGdSyvqpqFysn1q5paooF38V3ZNI7XmReg3WRvjfuTj7ak5WGEVNYSWBXn8rSoBghwD9GT61N1E0fl61sCjWgAIsVGQwV9uiOwKllwkmMNt1oAXg2ElA9XhfJKzCV5qbg51j7lPUa2tVXVSUXwFXLsd3nPxD5zQf2e2LdH0av4JU6Ev59v0vp1oyF/2sv5R24uBZFRU0iFwPN6eAco03ugrUuSUVMow5SHU92klMXNpC8mzXB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(39850400004)(346002)(376002)(136003)(26005)(55016002)(5660300002)(83380400001)(86362001)(186003)(1076003)(6666004)(16526019)(103116003)(478600001)(2906002)(52116002)(7696005)(66556008)(36756003)(66476007)(8676002)(956004)(316002)(66946007)(2616005)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: LuOv4UhWLsYmOsAqwIYS7GQX6Re7pocP/aZiRtJah5Xs+7Td6GN7h3Iox2eITlU2ap8+9oNgNnnQKQRlDtfPHCjbLJsIuzPeNGZaIy8cdRdvHSK7OUPr7ta9BNFT9TFrRtRqzkC/PywvovbVQeLJyOcNpdQQ8eaM/oDpaOjNREAHCPgoPCUM8bTcGb30YCjicXLt4uCWE0rwakwATnrdI942ngJO3DauTwbawN4tmr2STFgtxv3TtHsg6cPLlbP+ffasfd7/ttq5ZDGyQTz7WxrX/VIM8lOfGHMCoCB14UCO3q9SctCgSlVLQdQ0FTbk1jPEClXdXU8geqLq4eylrpZItEu1I8UwX8+cvPd/SIoTTvWWvecGKYSaAxEItU/uqSV6PF/XeoKVYD/wIXsiXishp2VFy4KHHGjE1jbYPGICk9UmuxStXQ2vfU74NPRbutOEg6MOE0FdX/q9yB2rHkb1Nh9UCWQ1Ao8Z0Mqn9IPTa+8C68JI4aJ0jTiw06x27PuVjOcp7v/EOyGcsQAp1RsVe8oD5lXTKCXF5sMqrF79aLv5NCFTrsViEG1vPsOIz5eu59HXRVhlJ5JesX4XeA83I/kmSmcut1Yf+5mTIz0VASoykZg5Zf/11BX3PZrO/brzBiSjuLC2dyMsbxdx2Q==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: b05d19ed-fa46-4be5-d105-08d865d67f4b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2020 06:52:00.8165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqUCxRSZjdx9uOD8gMqDmWGh7CDIN3bOmCV2OESnodFvwMV14N/LuDS6+bPvyfWy/ejgJMhgn74pnWBl1jbtZyEN5c/zxM7D12zB8ur2X7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4269
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.109 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.109 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kNsRk-00FZZf-Sr
Subject: [tipc-discussion] [net-next] tipc: re-configure queue limit for
 broadcast link
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

The queue limit of the broadcast link is being calculated base on initial
MTU. However, when MTU value changed (e.g manual changing MTU on NIC device,
MTU negotiation etc.,) we do not re-calculate queue limit. This gives
throughput does not reflect with the change.

So fix it by calling the function to re-calculate queue limit of the
broadcast link.

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index abac9443b4d9..bc566b304571 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -108,6 +108,7 @@ static void tipc_bcbase_select_primary(struct net *net)
 {
 	struct tipc_bc_base *bb = tipc_bc_base(net);
 	int all_dests =  tipc_link_bc_peers(bb->link);
+	int max_win = tipc_link_max_win(bb->link);
 	int i, mtu, prim;
 
 	bb->primary_bearer = INVALID_BEARER_ID;
@@ -121,8 +122,11 @@ static void tipc_bcbase_select_primary(struct net *net)
 			continue;
 
 		mtu = tipc_bearer_mtu(net, i);
-		if (mtu < tipc_link_mtu(bb->link))
+		if (mtu < tipc_link_mtu(bb->link)) {
 			tipc_link_set_mtu(bb->link, mtu);
+			tipc_link_set_queue_limits(bb->link, max_win,
+						   max_win);
+		}
 		bb->bcast_support &= tipc_bearer_bcast_support(net, i);
 		if (bb->dests[i] < all_dests)
 			continue;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
