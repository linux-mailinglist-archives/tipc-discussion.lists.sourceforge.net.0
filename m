Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D3C283403
	for <lists+tipc-discussion@lfdr.de>; Mon,  5 Oct 2020 12:35:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kPNps-00086U-7m; Mon, 05 Oct 2020 10:35:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kPNpq-000862-43
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 10:35:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5aiLv/kQRrRqyyZK6x+SHPe0Rzd4FdCEnATSRc7MvkE=; b=U5PVatyZ6RE143pnFUPY4ktahm
 F+Crru4AD7obfcEKME0Q2+/W94cO1HGUsNe9R7f4vyNzbA/mUKb+j2IItuS2jJzpS2vG45B+1bzZb
 MAPFl/HCoyncgQOgeQWGTqKcpLbBwk0FSgqhVvxS+lNzCyxFhjXdXsqQ92YFXZInCmIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5aiLv/kQRrRqyyZK6x+SHPe0Rzd4FdCEnATSRc7MvkE=; b=J
 TyVVnMtZTcbcPxDjWIonr5rwLHv8Iwy6w8/Ha3+htoonRQHLkIsXsxZn0GMNLe4Z3fl/MYij2/eLi
 3mgVrVMZYyjLxPGfmBJdeU9Wh8H3y3Vdx/7soogH/xkn+PWlAsmL84OIZ9GMdx9kc8Cas6kvxthMZ
 kzjoq/J27WVvZ3rg=;
Received: from mail-db8eur05on2130.outbound.protection.outlook.com
 ([40.107.20.130] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPNpb-003ETz-CE
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 10:35:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CzF/L/yBAIpB7P0aWr94bjNEGAJ1IdP+V0XHD6EUjcbsSYCWNZ1eJumwrN2RM1g6H69FF1FttexA9E+QBaqZpXqYjZfOwZ18yFRvSlkqME6tb2aUj/rqvgg8uW2xDfxwHqjwFYSsuoRyyUPkajOOPuUTR+XLtfl1/dnwjRCgK3Bukg3r+F9JNbYDX6oORTbUDEqyYWKcZDojt0GM0wiSNsvWyhhxuCBmm0Aj0vmZkqUi74zjXZ5C86DLfLLCctYelXxjZ5eIEE+w2Cq6WC5L67SpupQHtCYOduzi//tfciWBMn78YrZA6yIgWs+k9jrjPZXlwAgrxlQ4dDbvpEBMVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5aiLv/kQRrRqyyZK6x+SHPe0Rzd4FdCEnATSRc7MvkE=;
 b=J3P1OJsQUHT481jyDeHv4IG1M5R/7ODnvP4aKRdXLTivQLLH5O8AlHsOJX9rF4i0rPRQFWWvWkejDfzkhLXyLFcqCtgoPq9zT7j7PNo9C355G+WocxONRr9oa1oPkviIkvHd9X1Z4pY/ZvhXRCEM6JXJG0DG1ZW5uH+clLL8r18CTiNcYlQ0JKeU5r9X355t8VLePvdU6seiPU+SpnQSqFlerxyEPpU/kfWrj4T6ixIN2spPczQ3o4mY8iSKs61S7K9HB1ph08ZzYO0QD/HrGWhAv7BsgZf/o8dqgOJpka0rgoJ6S5cAwZ+3KIraBI30GrGKGsx0Zzs0uhO/NbfCuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5aiLv/kQRrRqyyZK6x+SHPe0Rzd4FdCEnATSRc7MvkE=;
 b=Jp7FEja+oSD4KWV26R0dZFkSufv24opb0iB2q2Ew0j+n2XqYpX44OPi4GnAK6H79fXDU5TQ/fPg3I0SIZwspdres3aEEf771Mybd8Znr5U0KIQbj9hE8Okt50tj15U3s6H27SgUIcBNtngmSdeJ6kIqINyXqMteJzToCADSDc/Q=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DBAPR05MB7031.eurprd05.prod.outlook.com (2603:10a6:10:189::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.35; Mon, 5 Oct 2020 10:34:44 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3433.043; Mon, 5 Oct 2020
 10:34:44 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon,  5 Oct 2020 17:34:32 +0700
Message-Id: <20201005103432.14732-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR06CA0106.apcprd06.prod.outlook.com
 (2603:1096:3:14::32) To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (14.161.14.188) by
 SG2PR06CA0106.apcprd06.prod.outlook.com (2603:1096:3:14::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.32 via Frontend Transport; Mon, 5 Oct 2020 10:34:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85fdaaed-e7ab-4355-376e-08d8691a4679
X-MS-TrafficTypeDiagnostic: DBAPR05MB7031:
X-Microsoft-Antispam-PRVS: <DBAPR05MB7031478D45FEB607A45430F9880C0@DBAPR05MB7031.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:91;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SgyiaLz7HXlZN4E2ch1wDkEdCyfSeM8itb66Fm6B1eaD5QGLKU1NlqQLnllHqlB5UV/QIr3ZBYyPDRvBhyel4ioVc+FvY2P4C7MOef8P2GbsLPgX7CGZDc/ZowAspwWlK5+uGG0ca1UBWR+CfElUAVTL27yrPSTV4MWPJ52vTtJo/uEe56P/TEFOsnpA8iyYzfAD7CJJN/vqXHzBDGYVZDNN8nkZNq4AcsCXBn7wBTjyspuO+lxy2XGtnjMzifPOt9KNXh6rYQomXo65mc7K15gSL+5ge+JBgHD6/TbiDHrgoTvf9bGmBZccrMUmIMKy0ipztz2qLvFwLFnXfSPUAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(39840400004)(396003)(376002)(346002)(16526019)(2616005)(6486002)(36756003)(2906002)(86362001)(956004)(186003)(478600001)(6666004)(6512007)(8936002)(83380400001)(8676002)(6506007)(1076003)(4744005)(66556008)(66946007)(66476007)(52116002)(5660300002)(26005)(103116003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: p7AXdvEfWnjTXc4Wb33xZSiV6dKZe6s9wWSH6RAvNjy9h+dXYW37GWRrt4Ip5Jl7n1PvraOiLb9LgZnj/XOh/XYYCIitDv/xXQWS3vdQjiqpBWFJaesb44s5Rm0i043zOeM7KmM/VpaiX+4MbGRVX5O1kvwNVmYtrTTZUsl/NqmdlVCL4Sy6oZ8Bck54RwU5+9EE7nMSnmDRl2h5KUrcM8BQxgufhTsM0lAjYTvIf/kwG5RZ8uhaGRM76S8B6erDC+W5W+sMhtERASvldAu90H/1Tt58DOmga11Sd+9Q1bczFUmjKMsWjzkUyj53kK6RoiNfYq2owqQFuJi3JlUtJRMKXAYXAmFIv+hDCipJnS4/BZY7CTJwJTlXTxV4/betVo/dgVUC0D7Gs5jugJHKV0d8yXwooJqDWZ62MwbjsMBdHSa28tQrfhCL4sJ6UQVuh1PpXUQgQOvZM+EBFRPG8RdpvEDggcNYAo/AyphmLZ4v9EwzLyhraPgXbSdMgd5BvG7k3bHIy7X671v0LoUP2+rkaHU69QZFLdZ6HJ9+1wTuvz5pWaes9VRLGQAZbnJ3IHkTjT+LwPrJZbl1S4DMryFhBjUhXCxvymOhW2hEYol2BU1A7IPrvljDpSST21pQ1LHTAIpbDQ/SBM4uxoYggg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 85fdaaed-e7ab-4355-376e-08d8691a4679
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2020 10:34:44.8268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V86rVziNoZaEuF1AxY1SWDyVKJtPG+1H2OZ1Ec1qPsmRNax17t9T48/+gntPUlYktXAarN1qR8o9VY9iGpcUqGdA5/DT8+K40KzHHylChVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB7031
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kPNpb-003ETz-CE
Subject: [tipc-discussion] [net v1 1/1] tipc: Fix memory leak in
 tipc_link_xmit
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

In case the backlog transmit queue for system-importance messages is
overloaded, tipc_link_xmit() returns -ENOBUFS but the skb list is not
purged. This leads to memory leak and failure when a skb is allocated.

This commit fixes this issue by purging the skb list before
tipc_link_xmit() returns.

Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/link.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index cef38a910107..ca0bb09482d0 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1028,6 +1028,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
 		if (imp == TIPC_SYSTEM_IMPORTANCE) {
 			pr_warn("%s<%s>, link overflow", link_rst_msg, l->name);
+			__skb_queue_purge(list);
 			return -ENOBUFS;
 		}
 		rc = link_schedule_user(l, hdr);
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
