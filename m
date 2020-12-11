Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 965FF2D74E2
	for <lists+tipc-discussion@lfdr.de>; Fri, 11 Dec 2020 12:48:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kngu4-0001AM-Lx; Fri, 11 Dec 2020 11:48:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kngu2-0001AC-Vb
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Dec 2020 11:48:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WOaI+RzR+7UqQRIg5cyg/Uiml5k2z38m5NFDUF6awUM=; b=E3WO+q4RDs93BgWj8qry/o6Qut
 wQ0W/iAfkKYP8ge/5XtCUi2kJw8SIovZ4Q1cmEYsgNdIzwViFgMqpeG3IGr0769zChp2JeTDsJurz
 cJGxCkVxFz4vfE9qzFI83JmstHDVzp6J5Mi0DrzfOEjYSV0gTWiC8VdHfci0QerJamkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WOaI+RzR+7UqQRIg5cyg/Uiml5k2z38m5NFDUF6awUM=; b=B
 RDfTxq9Z4LS8EJVFU9Whq/Ztkz346nIt3H+zlEzn0KjIA4J7I8nrL8oZukk3ZJE579rdiQo65EnUG
 M8t6V5ch8JD57f52+U/RM5zgodUDavYA7lyACFmHcr3W97eo2Ss6u+izkTe0siu/owQzV902c9MxC
 EyyGuFL0giVUFEOw=;
Received: from mail-eopbgr140105.outbound.protection.outlook.com
 ([40.107.14.105] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kngtj-007qg8-G1
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Dec 2020 11:48:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgvS9wFJ4cBGFXBu0zL8vqg40sp1T9WAixrfZiw8ZQE+dcQqC1CJtik9Btp85QC3f6hEhp6douj2tYiRCaHk/v4ZPRQ2M6Mj6TmO4QX/Mse+KTXZ0roQExHsm2pidfXhTPXSKvUtLACzQ/y+FwdNrrxsCSR5+8Zm/x7Z+QbOs2JWWXIi1MgMHyYT+c6IziBkVEU5Qq85Pkvh3e3ffltfwQMk4xxT/IOOtcWscCmeRId6jS1rRJbj5Tgrgi0BBReV6O0sz+QK6ZxlmBvWiuPHRdontMm7E+A+qY08YFkzTMc2ak6XbLgepToe9uNr2Nn12f0Ne8Rf3BsuMBgXQx6PPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOaI+RzR+7UqQRIg5cyg/Uiml5k2z38m5NFDUF6awUM=;
 b=AbYY8vO4DSvEVaflDDOU4yclosORlZ9qmOqd8oonRdwOq+wpQchd6nDYjFvCzU8wmMdR78bHU7N8ruocXBVjOt6HRYooZ/GVU2GbF0RP42pYlqWROLFVyjgbYmIJRoxwkTyaRs+FP2UF27I4lN6nXn6YBYEhpKJvj8ehYWWmed0WSJSW4gU64WNxuPJAWB+SlR9YBOJwE4ghv/4vz8FZUuc54OChVvweHpC/ijn5gN2S5IqcBktApaDBxQuXLaPL8l0OrloGlbxIamdYmI6yu7DRfuEVlejTP5nQRqRsSunWkNhylv4oQBbbVCLZJBpKJKW2SFTKUspsVToLZeHihg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOaI+RzR+7UqQRIg5cyg/Uiml5k2z38m5NFDUF6awUM=;
 b=SYIKgD+497nXNJ6P/hfq7DdJjsq3onYIxxk4lV/NIUzBoyiVhYSDDtf0Tx0xr+kBHRL5HTg1+JYEOpl94fO4k7oElO4NCmcBXMX29zJEBxaZzOlmyrZyLP0q0/3bWTwJ9dCvjP0mrW0CCflpHrIgViYgKayjU4veU8I1dgjQx9U=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3229.eurprd05.prod.outlook.com (2603:10a6:802:23::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Fri, 11 Dec
 2020 11:32:56 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3632.023; Fri, 11 Dec 2020
 11:32:56 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Date: Fri, 11 Dec 2020 18:32:39 +0700
Message-Id: <20201211113239.4482-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HKAPR04CA0008.apcprd04.prod.outlook.com
 (2603:1096:203:d0::18) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HKAPR04CA0008.apcprd04.prod.outlook.com (2603:1096:203:d0::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 11:32:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e934b6b2-d3ed-4b9b-50ff-08d89dc881cb
X-MS-TrafficTypeDiagnostic: VI1PR05MB3229:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB32294EECC4638BCA747C1E44F1CA0@VI1PR05MB3229.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T81kJD09r/i2Z4SuUPVNet3hB0STQNSASaSZ1/3uVMqCshJpUX4LOi+mUqyZT59jU96z7QUT6S+X+t/6JZlurJNZUu2uT1zSWLScLutiZsOHsbs6ec4RrAptR92aS2Jdzn6/LqI76j4vRNHGnabrftKBQ3JgWqHXozZDf9rFX74Uxpu48E5XZUTUec1BCFQ4MX8AI0dnTdgu09jaN/KKhpDeW3yxreb4dsEhRU1LlTqic/1BZwVO8Cw6jaSlXJ2sOVFH279NAt2/gMUV6/4TfoGEBddiA8d6hbLBk3BtwAtKGHa2TR/cS8A/7dMCiyQvZqfaox7ucBmaoSsB2Aa1yg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39840400004)(396003)(346002)(136003)(376002)(7696005)(66476007)(8936002)(2616005)(16526019)(55016002)(956004)(26005)(478600001)(186003)(1076003)(36756003)(316002)(103116003)(5660300002)(107886003)(86362001)(2906002)(4326008)(8676002)(66556008)(66946007)(15650500001)(83380400001)(52116002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?P1ZvJBrt6ITwqjC1Lr1rjM71f+BL6LAQ8exvLgBAWAOcVcq4K5FMnsX+jr8f?=
 =?us-ascii?Q?Ah+N+LnkMfz2eLao2RO0YOe0QI2O16m9CUngFhTVh2Rxny1bwwVZlF2pI0tH?=
 =?us-ascii?Q?ngRnJKEduGz9ekWDJGeCEKmmQNC1PnsalHvJH1yXNoel1j3DBCWwMxVRWTjL?=
 =?us-ascii?Q?Nv6c72eBR2N/7prcUaaD4c+GVoADDfdgwcJTBj7SuWDYzT3chbXhloLlwnRs?=
 =?us-ascii?Q?o69LhGGT7YwB8yW0xkkgGwbQ9XXWwOuJUm2504h+4k5hEZMbALcCLpAW/9LN?=
 =?us-ascii?Q?YVCQ+8dTpvcPxBU5KY3ileTmW1vjTB8cyUIQtFMVqh1rtDRQa9fdTJiiqfzS?=
 =?us-ascii?Q?kNIBsTDkktm+Zbs41mHHfMSXFYV34thBIc+PokeKvtG0OaXAtTkxBoD7sNx7?=
 =?us-ascii?Q?Kj5Yu918rUE3iy6Qz+Gg/Zc462mOTbx0gQHgnWDOkIrcbIKiMk8mO/i4qzUZ?=
 =?us-ascii?Q?r0d5zYxLLCtzP0KIKPlJ7JRiIYU/BzYVAocHdCcZNOfz+UkVjH1Jptic3i5X?=
 =?us-ascii?Q?6IF2cpBLizXEtIp9X5V7riMD/y4oogWpn5bzcR4WzbGyZvktL/CilNwtv4eZ?=
 =?us-ascii?Q?CVIoR+6zgc/2vPpjhcfQqdUSvBcHW7txwwWvue25JtpwnxS5wUiDG8Bz2MpC?=
 =?us-ascii?Q?m8HxjntplwSgILevT8ES8Otc2TYm+kQ5jtmwHRistd8bLSk6NK+S1kaOcanT?=
 =?us-ascii?Q?pygELO2mkfC0tjgPb1dKHMSzfVp7tC8pRkPOmi0ED1l1zBl0VoTeSO0NqiZa?=
 =?us-ascii?Q?0He5SUUGdqCxfBzdaiJx1LYiaBatQQi0WXHgNRNjt5U7iBRTlL5G7xZsCTTU?=
 =?us-ascii?Q?EPdBv/x+JDKeqAZyqesHHzqwryCGNVtkttH18i4TmsnmcYu+GCg8uW0slRmM?=
 =?us-ascii?Q?lkjYzBYUTY2Z25jiOMHEhEgmKEH8KrbDWE3XSmW//E0HXzWPb0DYotsrFqjv?=
 =?us-ascii?Q?KghRRjI4tPM28Z8t/EPWB1cCY8KbhGYSezuXOAFg/rx0XNnIYmtAVYIDMfin?=
 =?us-ascii?Q?w/B2?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 11:32:56.8311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-Network-Message-Id: e934b6b2-d3ed-4b9b-50ff-08d89dc881cb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GSspLTGDw1E4Mmnj9mEgxj3FqUCLOyaUaabp6ZC2VAJJkrJxLGT8x9ClbS3XPbi9xhNd0/GOy2W6hH0M9mLdmqTVaz3EULLAmylkFFrrp/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3229
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kngtj-007qg8-G1
Subject: [tipc-discussion] [net-next] tipc: do sanity check payload of a
 netlink message
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

We initialize nlmsghdr without any payload in tipc_nl_compat_dumpit(),
then, result of calling parse attributes always fails and return with
'-EINVAL' error.

To fix error returning when parsing attributes of a netlink message,
we do a sanity check the length of message payload.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/netlink_compat.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index 82f154989418..5a1ce64039f7 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -213,12 +213,14 @@ static int __tipc_nl_compat_dumpit(struct tipc_nl_compat_cmd_dump *cmd,
 	}
 
 	info.attrs = attrbuf;
-	err = nlmsg_parse_deprecated(cb.nlh, GENL_HDRLEN, attrbuf,
-				     tipc_genl_family.maxattr,
-				     tipc_genl_family.policy, NULL);
-	if (err)
-		goto err_out;
 
+	if (nlmsg_len(cb.nlh) > 0) {
+		err = nlmsg_parse_deprecated(cb.nlh, GENL_HDRLEN, attrbuf,
+					     tipc_genl_family.maxattr,
+					     tipc_genl_family.policy, NULL);
+		if (err)
+			goto err_out;
+	}
 	do {
 		int rem;
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
