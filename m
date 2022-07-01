Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658B9562BD7
	for <lists+tipc-discussion@lfdr.de>; Fri,  1 Jul 2022 08:32:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o7ACa-00083m-4p; Fri, 01 Jul 2022 06:32:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o7ACY-00083g-Ox
 for tipc-discussion@lists.sourceforge.net; Fri, 01 Jul 2022 06:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=URCj3r6jQs73pqaxg3304gClLiCKs1mazK9RPLkm5tM=; b=PhOmvl2WKxqBb/xE+x+Zw9T670
 ueNxLcm0zcy2z7AzjD63BOnt8sq+SxjiAPjQS0hsldmbugIvrwikB2D88RrVqGCB/42hVcDbNPinK
 z4RXTTEyUOvgkyJx7o0RBla9HnF9xw2/EiA+IozxJvo8Bw72KeB3tfaQyjY3Wdl3sQYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=URCj3r6jQs73pqaxg3304gClLiCKs1mazK9RPLkm5tM=; b=K
 JMw++dUnMz63JVJ3howX+teo9MVhBxZB7bPF93hWl4wZsK+0g35guLkLRBLmYO0LvL10x0ESI9iU0
 zFpYd/y7seHkeosIh7vUws9pjDJmb6vzTd5/Zu/zyH7q4RyNs/WVWbM8tOLfgLIkqsO/cbH2+HQuU
 Ml1PX/McJJSZn5dQ=;
Received: from mail-eopbgr80090.outbound.protection.outlook.com ([40.107.8.90]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o7ACT-003660-Ek
 for tipc-discussion@lists.sourceforge.net; Fri, 01 Jul 2022 06:32:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UhQeiXLDq4ZVKv0HSaFDLFTS9+zYB0yVZ0vlApjnAb7s2Qt7QDtdGLcBfA6zDmQchfg0lR/s7BE/N3YQMQUp0iGHp6b8YoJH48qRrh34XqgyQbuDWIHGWgbkb1h2BME/stIrL9QB5rozCdAz3Bmvm5WY9uaxKxzbVyhRRQSius8zAu3tmMGZqciroBDRnAyS+tPV4NfsoCcQUxoUk9ZIaEEMX/X217S51U7+1eNkIhYFioPeLxMk2aZwveaANTKly+Goag+wh2sWDVTlV3kibsaPnQP4YPaqA4/q3CxySH5+ncNJirHy+1pYXbGKO6UZIV1ekr/q3JqTuQs/YpLNuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=URCj3r6jQs73pqaxg3304gClLiCKs1mazK9RPLkm5tM=;
 b=hKf/B7+y0yzzucp0j7oSkGi3qT7RSVYzuYKS7HXwgbLza/E1eRTn1otZ3YGBDU5zkVjBJfAes3Ysm2BSWq7FbkXhhTYk4KVcsqdk3knOW9t1sfymPL/JpPtcJHIwM+XiGQLd9RUVEwt8/vnIylldpJUfpZqDZ58FKYWbyY5Hpgt0KkZLob3G0JYmKjTD/sg8ej5qQ8swc41h2kjRhnbRA8uxK7QvjCEFGDqyWeHvAGmspsf6iG5SfFs75cnNl3qyt6oJixZc4rrpKYIwHUfDJX/694nO0YuYZgX3uegmp43CUvCSG1+3FQuXKrXxxEuKC9BxT1GVQ2iUkH7NIBDIWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URCj3r6jQs73pqaxg3304gClLiCKs1mazK9RPLkm5tM=;
 b=QVwNXf56FGHeavNKvKPU5tIue6HwEohZOvWOQ8+Dr+dMEu/TEYW5JYeHO/qFSpQArfLqOams1/04huRiPqeJCZ8znrgrnLkgOC7M6TsmIF18LPJ4gEPUwMUp4+ptBUkPESQQlYWDxc/FT/q4i0Jez8XCGRa63w0k+CWHWamjphg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by AS8PR05MB7672.eurprd05.prod.outlook.com (2603:10a6:20b:256::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 06:17:07 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%6]) with mapi id 15.20.5395.015; Fri, 1 Jul 2022
 06:17:07 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tipc-discussion@lists.sourceforge.net
Date: Fri,  1 Jul 2022 13:16:54 +0700
Message-Id: <20220701061654.127547-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SI2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:196::18) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bd29d88-5e55-4c76-439b-08da5b2952c8
X-MS-TrafficTypeDiagnostic: AS8PR05MB7672:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sw+RzM2ubP+iNjb+kEXjl8r84uwsLyLLMU7SLB0uXgd9UrygUKSjpZIieKP2Q1tpdukPG/HCN5wv+0AWR2b1ZTI94Uig4Hnx8khcvQdu6dIhpF2zXqDtxwQiTqDmi18tjJ4xqvth7tEx4NShjBxhwg9rM5FqJGVhU6sPh9O/m2+tRN+AwIWTeKv+q2oqHe3A8CIjXq/h+ZqX954lD69RkXAfKdGW58/1J30c2OlnNjbYftla1VyTTg3vwtm9G3phBpsoU5Aq/I8AChuTkV4rafI+3Ie4DbkChkAm8MQg7Ye1n5fSdWDDZuLmJWnMm0sBglvZwIspWDJpFAYAjeyhDBPvzedDZab6kLQA/pbTvuYgdrStqSd/MFZnUBxRZPzVYYSJsW3jNBRshrjrkBavAYF57mQFsiQNaLaoVTr1oEp00wpShZtahKCptamCdBysIt49f+lMMRdKen1Ily2zl0zRT9Y4wwjrv65X5TxSb23AmLreQepGlkKoIX55QupLwvrIe9W8GduwkoQCcBuOwL1wjDFAwOE2mQvZAZE0LfJ3KPyVGflcJHCuseXdB8zEe/fyZJIEa87BW1Ouuv7PVE2Rg5RPvG7dFLB9+IkIFBl11xR6R0Q3IrHboVfdy3ShMFBIzGtNeJzz8X/+kprwnBXdju+zTwaGkHPEnX662rrqDVmjcJDzQKTXqk5gZFjl1nEqE3K5N7G+hMdHP32+gorgmnv7A39zjpSS+OHqDyC1cSekpO4pFz+yEVB5EsftD/4gyHveNKYC3M3vtwnFT/zrbsxrPaMpKbWL/ssQoD1GHRzJlRNbcREAhpp+6Phw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(136003)(346002)(39840400004)(8936002)(186003)(86362001)(478600001)(83380400001)(52116002)(5660300002)(55236004)(2906002)(6512007)(26005)(103116003)(6666004)(6486002)(1076003)(6506007)(2616005)(41300700001)(316002)(66556008)(66946007)(66476007)(38100700002)(38350700002)(8676002)(4326008)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7szrps7flCQpnr+MhrjLUd1le7I3GbnhyZ1a+dJJKGs1PbVOv+f8eBXDHyEu?=
 =?us-ascii?Q?aa3JzEe6BlfBWNsqaWTLSMqhIuoljTrx84w5/wziv0pOVeQIPt24AJCUhNKI?=
 =?us-ascii?Q?f4pl8RK1rcr7cN9RhYKXPLV2dOi2g4oGj0jkGRqWmeR9fuavhjIMkSUWizp0?=
 =?us-ascii?Q?wiG7VbX6oKq7kpsEfrwJ14Z1alWT/zPlIfDd/E/E5NMpqEUUTHnZrUhzr6Cg?=
 =?us-ascii?Q?ZL6a4jcYwUYRkBelaubW/eZM/vRHBN/FmX+owX4tr6NMdsr0HJMj5Wb3MR0M?=
 =?us-ascii?Q?6eDHgGhG6J0aJF4wKAjn9FsubdPPG0OJjyYI7HM6izvWt/N2vIx7j1HNR4FS?=
 =?us-ascii?Q?wALy2IWhYJ0SIJoM0ke/GInHPn/zo6R9ll/a13D9JsDAU4oHg1h9Ju1B2Gue?=
 =?us-ascii?Q?tH+7YnNOP1kHgr01CEjUImhMU8SU6fQ8oweaqgBgL1eZImKSym+mNpJiHivB?=
 =?us-ascii?Q?x9y85D+iImOP+Ffp3k9BsNwJsGg8JZ14xUamYGu7r71GPZt+MUCjMv4uZeF7?=
 =?us-ascii?Q?Ny8cfRh+pFTjwzzwRwf/Q8rpBr85tvWHfUC0VMFb4UjHP+pRkMMR2kfMAFpb?=
 =?us-ascii?Q?I4YAHKIUTNmYKJnnt6wJ7xVMidUr7lY5GC3in+NxsGpmkClRgE70BSuXuOb7?=
 =?us-ascii?Q?bRuSM/03id4lXQEecRXsu9l0c+ZbG4npQk/boKnD2qFi5ilyoXc3VYZo+9+b?=
 =?us-ascii?Q?0ISHsGPB9BtphxVw3+xGKlBEVvmWXnMk1ME/uydrCUhhrd04bV+ANX+8SIUU?=
 =?us-ascii?Q?5ait5XmSrt4zAMIIW69wFPVhssmJEuQyqe/Tx3eH2YrB7xMRGuUNkQQ7Jyrh?=
 =?us-ascii?Q?WIlqGKkUOKAcyF45vsc6BxIwqkeJuNRGPSBqLjD9/gQqT1CJPD1ERHo62Fnk?=
 =?us-ascii?Q?a9cj80fxtXr8AtqMQTtWdaVZCAonSIFJCgQ2WzA/cJoKoee6X4om4lqO4FuJ?=
 =?us-ascii?Q?mMZ0P8jHzHkfjG3kHAPj91DAsKnVkOvX9uf+ezbJ5St1iblgpY+jNqMy8P6n?=
 =?us-ascii?Q?soD4PPteuN2lCZ+46E/2CYt+NIs1cL2XeAHKCtD/o2rQGKigSFL++Tm3yEmo?=
 =?us-ascii?Q?orMneX93cSBnlG0dSKMkrumyWX8uV0jtszotluzwmOCNai+2kWzrbPA3sj3c?=
 =?us-ascii?Q?8nEEIMXKE+/XfNPB3g0C/QH0Dku575ZcAkhTdaSYWMorEbkf/6iMCuj5Z44k?=
 =?us-ascii?Q?BoAqpAC30tkf+7/EhvWAvMQ2898zCaH0m4qdkelJYxv7e5TE3Ap/ZIzVK0au?=
 =?us-ascii?Q?TEohPqwzTBOepkp5ljusDvcZygteAVQKtdaw+fq0cb+juh8ttvPk+zNkPRRs?=
 =?us-ascii?Q?jcgIa7+L7gWreAS9pKFtwU7ttUCjjEc5p6Y7j7qULt4O/rWiH86UWwY3mG2k?=
 =?us-ascii?Q?hidxw7NW5OZHbehCXlO1EoS7anLvFOhIeJRr3SLNnTiOLJG/ohlFCh1iAtgH?=
 =?us-ascii?Q?hzAF2yb/3m/HTFieAN/CHvDKeaogDPNB8kz5CLBxTopYD9tcvJSwoAUxKCvC?=
 =?us-ascii?Q?gB1CXUaKkDm8wquefvxyToUeacM35J7FdzgW5ARmMWWq3Jp/US4oT4w1p/wl?=
 =?us-ascii?Q?0SW2sO2nA8bOO39aMsLN97GMEX70LYsR4dBZuWWiZOOnkjHY3ejUZ9uEKh/J?=
 =?us-ascii?Q?cQ=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd29d88-5e55-4c76-439b-08da5b2952c8
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 06:17:07.0283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e8GoyH6hJ7D+/G3O0afdPnZx2M6mQsFNGizJfBPUWjNeVc5nyGYWc79p79sh5OfPEPBXp2Mm0jot9dXPSJ+C3RjKeMFVENd5OvMXCKBiW1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR05MB7672
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot found the following issue on:
 ==================================================================
 BUG: KMSAN: uninit-value in strlen lib/string.c:495 [inline] BUG: KMSAN:
 uninit-value in strstr+ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.90 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o7ACT-003660-Ek
Subject: [tipc-discussion] [PATCH] tipc: fix uninit-value in
 tipc_nl_node_reset_link_stats
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
Cc: syzbot+a73d24a22eeeebe5f244@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following issue on:
==================================================================
BUG: KMSAN: uninit-value in strlen lib/string.c:495 [inline]
BUG: KMSAN: uninit-value in strstr+0xb4/0x2e0 lib/string.c:840
 strlen lib/string.c:495 [inline]
 strstr+0xb4/0x2e0 lib/string.c:840
 tipc_nl_node_reset_link_stats+0x41e/0xba0 net/tipc/node.c:2582
 genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]
 genl_family_rcv_msg net/netlink/genetlink.c:775 [inline]
 genl_rcv_msg+0x103f/0x1260 net/netlink/genetlink.c:792
 netlink_rcv_skb+0x3a5/0x6c0 net/netlink/af_netlink.c:2501
 genl_rcv+0x3c/0x50 net/netlink/genetlink.c:803
 netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
 netlink_unicast+0xf3b/0x1270 net/netlink/af_netlink.c:1345
 netlink_sendmsg+0x1288/0x1440 net/netlink/af_netlink.c:1921
 sock_sendmsg_nosec net/socket.c:714 [inline]
 sock_sendmsg net/socket.c:734 [inline]
 ____sys_sendmsg+0xabc/0xe90 net/socket.c:2492
 ___sys_sendmsg+0x2a5/0x350 net/socket.c:2546
 __sys_sendmsg net/socket.c:2575 [inline]
 __do_sys_sendmsg net/socket.c:2584 [inline]
 __se_sys_sendmsg net/socket.c:2582 [inline]
 __x64_sys_sendmsg+0x367/0x540 net/socket.c:2582
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
==================================================================

This is because link name string is not validated before it's used
in calling strstr() and strlen().

Reported-by: syzbot+a73d24a22eeeebe5f244@syzkaller.appspotmail.com
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index b48d97cbbe29..23419a599471 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2561,6 +2561,7 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 	struct net *net = sock_net(skb->sk);
 	struct tipc_net *tn = tipc_net(net);
 	struct tipc_link_entry *le;
+	int len;
 
 	if (!info->attrs[TIPC_NLA_LINK])
 		return -EINVAL;
@@ -2574,7 +2575,14 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 	if (!attrs[TIPC_NLA_LINK_NAME])
 		return -EINVAL;
 
+	len = nla_len(attrs[TIPC_NLA_LINK_NAME]);
+	if (len <= 0)
+		return -EINVAL;
+
 	link_name = nla_data(attrs[TIPC_NLA_LINK_NAME]);
+	len = min_t(int, len, TIPC_MAX_LINK_NAME);
+	if (!memchr(link_name, '\0', len))
+		return -EINVAL;
 
 	err = -EINVAL;
 	if (!strcmp(link_name, tipc_bclink_name)) {
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
