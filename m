Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD34E35977F
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Apr 2021 10:17:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lUmKb-0004LL-Lm; Fri, 09 Apr 2021 08:17:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lUmKZ-0004LD-Pq
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Apr 2021 08:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=maseX1NZQ6eueah1lKOGSuUH5sLwafOJlgZvVEDun7w=; b=KvOtr3X+mWRYu4jlr7mZo1Vk5H
 gtU07B+5pZKn4Scniha0gJAMvqxI6ZpUJsr81ly0kZ6AidZBY8kw+xAkKcv7oFv+k23BRuVb824m8
 r6iXZyISXF/+lMQkgoOGWgKnST7tHCctavrBhbCkF0ru8E0C1X/9Vv3/ePbu3buWNN74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=maseX1NZQ6eueah1lKOGSuUH5sLwafOJlgZvVEDun7w=; b=a
 au5eiB7zhFFGuit61wMqMVN0XGwNllVNPdXB+BWLIkBXWvF9pQyb2698uXPHxzVXMK2z8oj7GnWH5
 L8RAegrA8j5nQY77LhYRS+7lbZ8VtMsmVdM6g8nAavRzZxpL7BfKciWkNiuaArmzYDtU/vKir4uTk
 tSvFufpiWU+ZPSgg=;
Received: from mail-vi1eur05on2101.outbound.protection.outlook.com
 ([40.107.21.101] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUmKD-0001Rm-0g
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Apr 2021 08:17:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jagu9vxmbQP0uySQCAoXdmmeVklrHGmHvPqECNSrkuATxJkYxuwuD5n2KqZ67+NwGiXioxT0gq1fib1HQfFbp1NSuG9PW54Xmymep0h/zW+ASgP6QbV9d5XXODftf3w0ri18vA4q1clIvkUuvopMPOgIxdLWBTxwKuGTWUILdGvtyPGP7buGg1Ecq70Xo3OYDVPKLsyRB1B00PC1WmYYlo/N6+C8+Hq090qJCb2+gte8RoksORmdEhCzJCJEINplBr93pNlhmTeFswDNNYJmjZ4q3roNpa1xa/kiP8Nmn7i4D9PgcVh7NCaZ/Tkp1Y1Hni/AtBKlYbD2ArUUpqHZpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=maseX1NZQ6eueah1lKOGSuUH5sLwafOJlgZvVEDun7w=;
 b=MV3GLgV7GjYxULYIkNrbzonf1wPbd2bAMdlM3UbWdkDb8r702nirjd2J9I8VFPW9DxmQe3BmBhHIylVtC2502QQ3T/HsHXfdinqoZ1fLqej3fia5OAkE9S/Eubp+TCUihoBVPu1mQKoDPqX5g0RFx0wo8MwHW1USNR9xCCgVTXmOhKLehUWzHavRlMSb+hOzvUMCs9yu0dmwDJC53/3ZV1FzZFAwi5BwS9fE2giwXoJ6zvdz/P1bAEPgc/50pqGeij7MJw2WoCBFMBsf1E75UeUs1MoXQLlEhDAxx9LUiyDfJaB3snKMxFUIg3kU+8RDwoPxR0efhjxACwojX79b1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=maseX1NZQ6eueah1lKOGSuUH5sLwafOJlgZvVEDun7w=;
 b=q3fvrYvpsTkGhx53j5m2vt72Bz/bwXJS/JBoWifd6D7gS12TUtLjpOTJJ6vj2mG9wVVEoTsYddPd+CzRbedV6xuctdJmRWjJHDEicl88WjvfCF/bLbjmHKWydY9TkEkwfO94JHkX5aXxoVGCeXHk0E2wDXur81Qq5ANgOXo9d2Y=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4607.eurprd05.prod.outlook.com (2603:10a6:802:5e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.32; Fri, 9 Apr
 2021 08:16:53 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3999.032; Fri, 9 Apr 2021
 08:16:53 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Fri,  9 Apr 2021 15:16:37 +0700
Message-Id: <20210409081637.3500-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HKAPR03CA0007.apcprd03.prod.outlook.com
 (2603:1096:203:c8::12) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HKAPR03CA0007.apcprd03.prod.outlook.com (2603:1096:203:c8::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.6 via Frontend Transport; Fri, 9 Apr 2021 08:16:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ecedff0-0fa8-49c2-d26e-08d8fb2fd556
X-MS-TrafficTypeDiagnostic: VI1PR05MB4607:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB4607F923F185C0A2CEBEA500F1739@VI1PR05MB4607.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jg1WA7QiKrgkIL/AEblVmxQ1OH3Ro3BIabUL7PywAjdL5nwShcgpqigW25Ua7Ckh/8YiDX8iPq5FARU8VIskmPYNqYJUSga6kfLr2gvKCdoDNYLZDxw6OlfX/tsdgvciGqhkcG+f5bPWTkR+u+VTnz2M7oSlRfDObxsYYoEb5LIsJVHgycjdwPKZB5aAvplo22AAS4Qf9oIWQVr2A3Am3aQQze7STq1/+h8wvjDDg01KmoomNvDS/CJ2ngp3QsOf58NLeUlBs/V4+P49RgkSgtheSxFc66XinotURHvMb3LjzjrFQBkOqp7XYDT/tfWH3Qj9SnFsTYaR1JcHutG2RJjKM0PuxJxYd9WB+Bguhcg5aZq/+wHq6/04v9yvd77FxTAd+8FKNJhcwdk8r9rW/V7C7IWzsTb0tf/Is+BRKx5FbhIs7bUm6PyoE+9Rcp3iSz6BOHXnSsPCFTbVZ+BrAFu86QXhxiJZiqrLcQxqtUH8selC0OfEDHRnJFcsKuoFe59yIYxC82GbDQbc9+8fBfdwf0EleohJRUXW2yjug/X+2WMgtkHeU9ZAPdd8a0ugpqKKIcD0g46QLoeCCz0hoFGUT36Tt+l3DZ4mygQsd4KMisNdBBdOl2tjEaflrrBEnhhMA+/jVTgNxEATFhyNu7xACf2g/Xmisd9lh/+QLAhNsJikP87XZDNEtudblYGY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(39850400004)(376002)(136003)(55016002)(86362001)(52116002)(1076003)(6636002)(7696005)(103116003)(38350700001)(38100700001)(16526019)(6666004)(186003)(2906002)(316002)(5660300002)(8676002)(956004)(66556008)(2616005)(478600001)(8936002)(36756003)(26005)(66946007)(83380400001)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?XmeLtg9Rvc5LAUTJ4ZNuIx2tIxSfsdtQMZMvLcoUytzHX4QPhBFwd2cPjwa8?=
 =?us-ascii?Q?N0fIp9FcNxwuEq5AX1QW2p4hD6qR3L6Ni2JatAyoLU2WgDhDJN2tE+tcp6gR?=
 =?us-ascii?Q?BAswYn3dbq0XbS4eKG0BPLMSgp6ruFCNXvY+D7na9KWtsGv4ZIYQtPYH/hg1?=
 =?us-ascii?Q?djrrUjfMUlA1Rm0yr56ZJy6r2zN4gRjCXHD1j7cAfL5IaJDkHh5ZDoKKTi7Z?=
 =?us-ascii?Q?W8Ej6wjMakYDYlz+8+GhYB2jFS2m1SnHkTkea6auMLuBLwybTwTcwAf/GFLz?=
 =?us-ascii?Q?5PZmJ38dCB2SJTKTbnKVbMlj6JNkc9ZQ/cCbuQk8Lkffrx5wcS0su/6zxTXb?=
 =?us-ascii?Q?3NgyWqSR68JEh+/pZUi020UD4IY3IYCNkA7f289+bJUl8blqe/wOffCmrc8b?=
 =?us-ascii?Q?xUnz+uJV+97y5MA0ORMexeO+dmBD96zDPYuYeuiQD6XdtXzjF65rzw1urXOd?=
 =?us-ascii?Q?SSMnQHu5t7sC4jveTJp9YPVzPI0lDIktywOLYVFoYUXa4rt4dW7ovRZsBnYC?=
 =?us-ascii?Q?OCDlV7R+vBBs+ESR+bNXNwb4m1TgNDSM490amQTfBMSxQznNLxOZ92GTPAc6?=
 =?us-ascii?Q?ZvlEMhqctD0r6gsUme97Hr2NwpRAvlVojzM78hxcvtNDsMaFZhMaEzTXMfn/?=
 =?us-ascii?Q?S0fbD8BHweCgQxH0kMAqf/xQpDvr5NPAJ9QVeoot8h/k12xgBdS93XoMl7Mz?=
 =?us-ascii?Q?Gpts3HdV6FT/yaYKUqpKP9j9COQ5yxiSxz6c6vQTX4ZGGqO4BaBjd734HHz/?=
 =?us-ascii?Q?J980YFyQc234aWze2peTjqIOsR+mAc0S+j07C4Eoj0M2hhgrZqQQxmdkJxRy?=
 =?us-ascii?Q?FDNrpUnsseLJEvrJv/lw5rzAQyP5/kNYzjDbL/VBi0sD76Bsi66IrfVTvTnj?=
 =?us-ascii?Q?rNmUNbyt8GyJO4v9X/Z4uM9/qxFGzQ+tDNJH8vdbnEiE5xGxvH+Ixz+9BPIh?=
 =?us-ascii?Q?YM2iT2yRb8N1RbAzzI+n7KeDR0flWDI/Ua37YbquyKIhnZO/a3/cNnh3aBJ6?=
 =?us-ascii?Q?eVPmR6pVYHv/yC9lQmUs4zkng/3zIB/EaNFKoiqmFtvx4Tx8VnNDZ6HDc5Rv?=
 =?us-ascii?Q?buqXu5vJOvz6oAsaPU5s6/MB49GrcbjBbuRgQGxvY/IYXfCda7Gyfb3e96eJ?=
 =?us-ascii?Q?Lxf6wq5RUOUmmipjC4Lu1ghEAbwXfCaW/3mq1yFJ13XDWmKdBiaJkGiNk0jv?=
 =?us-ascii?Q?FDTK1chV7KAc0Lye3v1ZskSyQZhzownEbb/Rqdc9QZRQ4FZcFd/ZiozgYACf?=
 =?us-ascii?Q?58RrNqKlbPis6MhbHOdJtKtuaLSeidfftAL81R1BfWWuCisll5rZ8zwdAgiF?=
 =?us-ascii?Q?mFcJ+NC99wj8A3IfyR2NC1L6?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ecedff0-0fa8-49c2-d26e-08d8fb2fd556
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2021 08:16:53.6585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dkCOtHZq2sw8xIuJT8K3FgNt84rh9S0uuSG7Z38RmbtgTVOorA3aDlqIIN3XRZF0nWnLYlifT5e1SWyYDnVnaF3u2rv689BdhKAQWZnK34Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4607
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.101 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.101 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUmKD-0001Rm-0g
Subject: [tipc-discussion] [net] tipc: make node link identity publish
 thread safe
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

The using of the node address and node link identity are not thread safe,
meaning that two publications may be published the same values, as result
one of them will get failure because of already existing in the name table.
To avoid this we have to use the node address and node link identity values
from inside the node item's write lock protection.

Fixes: 50a3499ab853 ("tipc: simplify signature of tipc_namtbl_publish()")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 707d0dc71fad..b8cf298a3413 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -423,18 +423,18 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	write_unlock_bh(&n->lock);
 
 	if (flags & TIPC_NOTIFY_NODE_DOWN)
-		tipc_publ_notify(net, publ_list, n->addr, n->capabilities);
+		tipc_publ_notify(net, publ_list, sk.node, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_NODE_UP)
-		tipc_named_node_up(net, n->addr, n->capabilities);
+		tipc_named_node_up(net, sk.node, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_LINK_UP) {
-		tipc_mon_peer_up(net, n->addr, bearer_id);
-		tipc_nametbl_publish(net, &ua, &sk, n->link_id);
+		tipc_mon_peer_up(net, sk.node, bearer_id);
+		tipc_nametbl_publish(net, &ua, &sk, sk.ref);
 	}
 	if (flags & TIPC_NOTIFY_LINK_DOWN) {
-		tipc_mon_peer_down(net, n->addr, bearer_id);
-		tipc_nametbl_withdraw(net, &ua, &sk, n->link_id);
+		tipc_mon_peer_down(net, sk.node, bearer_id);
+		tipc_nametbl_withdraw(net, &ua, &sk, sk.ref);
 	}
 }
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
