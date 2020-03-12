Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D1D182938
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Mar 2020 07:38:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jCHUZ-0005Kt-Ts; Thu, 12 Mar 2020 06:38:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jCHUX-0005Kk-Vq
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Mar 2020 06:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2D3gsbA9x0IDDU7H4Y3yjOc0fsKVfiQg2WfE5Cr8XAk=; b=KbPvNUIPr121gfh60ISTdHOgF1
 NwmnU0KdO7jx/baAgV94HlIvpdkgn//fBYVwzIHUFSRjvj9PxcPvsrpVundSg2rNd4fYYNhD03EAj
 FtYe42yQG9k34yb5SzLK8+2OAyKma3COQfn712mXZhmh0g3eLGLcjBwex8Fp0Va2odzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2D3gsbA9x0IDDU7H4Y3yjOc0fsKVfiQg2WfE5Cr8XAk=; b=i
 pHJYFOhTEbnZy09h8wHrsNyScfFS29LzVNiV85vf5hT+KhrOT7shT4lXLVDpSqN7lz9MEfVJwIVzv
 zdZxOjYDGH957bBzK8HRLeRSGI6gqG5TZrSD6g0OR5n39kr2fYlC+AcbxQvoCzMZCER3CEKpoeWXu
 842VUniUICeUu/PI=;
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jCHUS-005M43-8J
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Mar 2020 06:38:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBXTwyIvLFh3fVCrArNkDO5nMPmgC/GLARcIN5aumnX123FAryo4SnbMm1TU/wtwGsCzEolPGD7v1mcTkkP8i7JGvmxSEVzeXmvwse6y89dHRkjoS7yvExxKEbWnIjPbr+mzht8QJ+39tkFOcw/7QchoWzdo9m0oH4mccAkqO2oXCO+j1HkKEqa8MD6KEu581wWOgl72wDtTwJ65k+1UQv1q9RW1Z8E8MfULH5okzTn7ecJvirGTSsy792Xh9O1FSx8XPxjgwJuMJSF5oC9VcWSpirPPQt+bB5CBSelHD5qJXqQ7vQNOfMktrQzQXkJtea08FIGHnHNvRhE4L/+PEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2D3gsbA9x0IDDU7H4Y3yjOc0fsKVfiQg2WfE5Cr8XAk=;
 b=l8CXubN1qdNLA5UZR2TzjKxyo52uBjKG3JqYCMW7F9cWKodVkhOJtSC/fFgq9AYUHSSY2JT95b/sgnADZhHOHDpci2Ymgygc1paLuUISYVWCEu83wPch67iNAd63kJnM3AH030/SKCzp84gcS2+NrKW4XXrLlGlAFIBTetYtRzHkvrQw+WiucEnkznCG/CnRe/h5jJNKdbmFCZ502gUUcV7s3OodC49XXdDJDvbDuUZsLD4C3z7Aa+DEp3KCzt1AxWD+ar779nGRuqVydEZZjHRgXy/fhq2Al4rJ/azKmENgLc1GebFitV//UnnbmpbHDDAgwfbA+r4lDmwLBjXFGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2D3gsbA9x0IDDU7H4Y3yjOc0fsKVfiQg2WfE5Cr8XAk=;
 b=xy3yct0aK/jUsSt6UIBy0TCvNu9/pNv1zY7kwCAPKY4geqUyYLIe+PLpESrs6FJwfqx3YA+2E2A/EWXpn3ZP/86RxsVXeUddH+sQ3BzYFSYqqZ5F2DfT3DrfqdSDRZYOsZpNYAlWgAceYMHbYk4Lc5F5oAH7gNxWM9UcYn7n9cQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoang.h.le@dektech.com.au; 
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (20.176.4.149) by
 VI1PR05MB6847.eurprd05.prod.outlook.com (10.186.161.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 06:38:35 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec%5]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 06:38:35 +0000
From: hoang.h.le@dektech.com.au
To: tipc-discussion@lists.sourceforge.net,
	ying.xue@windriver.com
Date: Thu, 12 Mar 2020 13:38:22 +0700
Message-Id: <20200312063822.8030-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: AM3PR05CA0150.eurprd05.prod.outlook.com
 (2603:10a6:207:3::28) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 AM3PR05CA0150.eurprd05.prod.outlook.com (2603:10a6:207:3::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15 via Frontend Transport; Thu, 12 Mar 2020 06:38:33 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98f65e4b-ff89-428a-ae49-08d7c64ffd54
X-MS-TrafficTypeDiagnostic: VI1PR05MB6847:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB684735CE92748A9F8640D622F1FD0@VI1PR05MB6847.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:389;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(39840400004)(366004)(376002)(396003)(136003)(346002)(199004)(2616005)(4326008)(316002)(107886003)(52116002)(6666004)(956004)(36756003)(5660300002)(7696005)(86362001)(2906002)(8936002)(81166006)(81156014)(8676002)(26005)(186003)(508600001)(9686003)(16526019)(55016002)(66556008)(66476007)(66946007)(103116003)(1076003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6847;
 H:VI1PR05MB4605.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xGpxgyrEEv6KtfFme09fUJa5JbmcqaBP8pAC28TObT9cPaQuwp7Vl5ps4Rtr/5q+5LfRcIkEGh9k3DqCC1FkdNkGT0VzBFsoQTbHm0b1RDEQLPc2CeZ3LCH3HNx961c0OKFMBQpC8M9HXHt1ARQJkhSF+YwhS5JYm8v+xASsxvrH+uqLAVolluCjBL5ZR3/WhxvNn8e+2MMGJJhvWRHkU5cKZwfVq5rr9/HpWX7SJogOHB5a7bIVjkWa49bVa7R7hENkAoT/Xu5+q/xEI8LPwD5ro1AEYyIcIECtrDsdDG1qX3UTwvkgMPftwCrnieDX0kK3YA3nZa8xADWFkO/e5poA7hQzqgIvSpyb/VLkkTD+vVLfAUxQc/MJBJDUtYA0qfVgmFJaq9wj87EhfB4KdwYi7vQ6fLFSjsXc70EjCMb22IW9A5LEf94HLWdISYvZ
X-MS-Exchange-AntiSpam-MessageData: ImaUaBJxdHR4FH0/sYEBmQIP4zTnx+gSH/07WRTG3Ix0YNi8Pj2rNLhfjDh46oxW9lrZvhZ2vWOq38sQSm9q7gveZSGl4ihAFp6rcqt8k79il3hTuWqtA3CeRhSMpu3oM4tNFtsnXLMgvysjSC1geg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f65e4b-ff89-428a-ae49-08d7c64ffd54
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 06:38:35.4294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dX4iH47AtkJpOatVeMZwaHUjLBAJSnpJYYl17Hx6HWCwKRt1qibfCxxGRDlX3eqdy7WWtSumMjs1Qf7goN5VEySy9mKhmZ0ZlOOM/RRmDUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6847
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.114 listed in list.dnswl.org]
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
X-Headers-End: 1jCHUS-005M43-8J
Subject: [tipc-discussion] [net-next] tipc: add NULL pointer check to
 prevent kernel oops
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

Calling:
tipc_node_link_down()->
   - tipc_node_write_unlock()->tipc_mon_peer_down()
   - tipc_mon_peer_down()
  just after disabling bearer could be caused kernel oops.

Fix this by adding a sanity check to make sure valid memory
access.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/monitor.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
index 58708b4c7719..6dce2abf436e 100644
--- a/net/tipc/monitor.c
+++ b/net/tipc/monitor.c
@@ -322,9 +322,13 @@ static void mon_assign_roles(struct tipc_monitor *mon, struct tipc_peer *head)
 void tipc_mon_remove_peer(struct net *net, u32 addr, int bearer_id)
 {
 	struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
-	struct tipc_peer *self = get_self(net, bearer_id);
+	struct tipc_peer *self;
 	struct tipc_peer *peer, *prev, *head;
 
+	if (!mon)
+		return;
+
+	self = get_self(net, bearer_id);
 	write_lock_bh(&mon->lock);
 	peer = get_peer(mon, addr);
 	if (!peer)
@@ -407,11 +411,15 @@ void tipc_mon_peer_up(struct net *net, u32 addr, int bearer_id)
 void tipc_mon_peer_down(struct net *net, u32 addr, int bearer_id)
 {
 	struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
-	struct tipc_peer *self = get_self(net, bearer_id);
+	struct tipc_peer *self;
 	struct tipc_peer *peer, *head;
 	struct tipc_mon_domain *dom;
 	int applied;
 
+	if (!mon)
+		return;
+
+	self = get_self(net, bearer_id);
 	write_lock_bh(&mon->lock);
 	peer = get_peer(mon, addr);
 	if (!peer) {
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
