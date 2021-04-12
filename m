Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBCF35C48B
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Apr 2021 12:59:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lVuID-0003zH-Vc; Mon, 12 Apr 2021 10:59:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1lVuIC-0003z4-1e
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 10:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DW37I2LZ4pp15j82f60xNv3+EJFc+eDBkMYD7dFB+2s=; b=Nq2KPCs72qkc1l99O6TQ1qeZwe
 h/hZJhpJf2VRb/SkPU0QGmPsHwg3K5FxWoGz0UDV8aldMhrFTdN3voLZ3pFgABaDu9KeRnbddewFz
 hZhRqL6VsxUwijOscnp8Lt2STZctYYHlsCmUaWGeMxo4p45pfjMwbzAiDXAMHnJsR/dk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DW37I2LZ4pp15j82f60xNv3+EJFc+eDBkMYD7dFB+2s=; b=OunpwAKfmlxN5S0F7MSgJ0BVaU
 trESY6qTRZFI8flTLUZscNu+6Guk1OQ5f2yctW24ORztEKgH5y/qkWGRWpIEEvHCD8LYQj+y7vFYf
 v2vx4XEVYErq6ceH+AeKn2TjCTykoh/1TH93NcLVBR0goBiVhY9RNlClqHuxrdUMVPpw=;
Received: from mail-eopbgr40118.outbound.protection.outlook.com
 ([40.107.4.118] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lVuI2-00029L-Fi
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 10:59:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmkeQ1vzrbJXXSEVrNcBBMZbzf7fyaVDWZ7o8erXYHKsYXZdjFbAFHeAI4pCiHTaT9Nq605s1ZZPwphhBCUQ3TelkrEnuvs3McoWfBT9B+rHRedgomCiPboSu9ke8tHmaNKZv6pvK19hUTKm+8qGfl4uX3JolzlReldMivNhzUcVLnzZKbigKGMMAU+vbkBdwYxq2gQ20ThBB0ibizHcIBxiAz7Tw7ChVeQXvux0WEQhRB0zkn0yk/+SSQuNK9aE/St4z3bj0R3X0Ci3IjWmLQVNvi1GdsR4Eoyg4Q71KLPnHz6zjPljHK0XP4xJ0BPI9nEhgsXXkq7zg/QkH9D2Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DW37I2LZ4pp15j82f60xNv3+EJFc+eDBkMYD7dFB+2s=;
 b=b4Kh/MR4Qbvliz59cBe3XQnatZXf2WCnVw2Moq9m4hOopdIWDSNzfi2Q/wef/g0TbS6k/JwYVCO6RSWqdM1bVMDUHeS1jjHeSMcehERpxyqDonC5wrlxWvDhRtes3Tod442FWl4nEJONaoYSM1r4LHKstDqPvFh2DwH1fuYoeya5Y/7nJGpVGyxnUI9/TrfzHiclQEOjk3EREMFiapw0acC4LOP++cOxoGI7lNuChIp1foaWpzAzK1y0esb/qH88crrw4juMIZiZjyUQPlO157CWz9kxxRLcgzBg3tFFhZVH+U8PdlwR2wCGAmgIwayursAFWAzw27rL3O1xXrwrBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DW37I2LZ4pp15j82f60xNv3+EJFc+eDBkMYD7dFB+2s=;
 b=g149cM+5laKglb5MUsOg0IruG+sJI1KLEfvlSGM1mYMpSYH9rS2lKUYonsgpKHoPbWlnJH5nN5/8bdUD4NOGTdSHho5J0pgdlZ7heQdi+QSWbkgMoLAc2s6r4yCnpExtNXMWWu7s6CsiIqr79ObpOAi4GNJltqMrt5mVkeevs0E=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB9PR05MB8621.eurprd05.prod.outlook.com (2603:10a6:10:2bc::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17; Mon, 12 Apr 2021 09:24:49 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2%3]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 09:24:48 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "lyl2019@mail.ustc.edu.cn"
 <lyl2019@mail.ustc.edu.cn>, "davem@davemloft.net" <davem@davemloft.net>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] Revert "net:tipc: Fix a double free in tipc_sk_mcast_rcv"
Thread-Index: AQHXL3qE/QYAFSJDBUKW0PQ+2k+KwqqwnCGw
Date: Mon, 12 Apr 2021 09:24:48 +0000
Message-ID: <DB7PR05MB4315716DF8EBFE61DEEA78A088709@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20210412090149.57171-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20210412090149.57171-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a871a66-36a6-42ca-ccd1-08d8fd94d1c7
x-ms-traffictypediagnostic: DB9PR05MB8621:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB9PR05MB862171C157349575972159D188709@DB9PR05MB8621.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:196;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n7H8Izy9/VO/Wy5rNnV6ScRaKdxHEuE7pnV+Z7tOji3xYGrrx47iv+4KzMM2TMWlmY6xDDtLwi/e5ElTnnk46WYmfiEt3DoGdKLQ7yxmBjUFKueGujDlyfpFVMmr+A9bbjmfgXzfdCh1AyZDvhgmjNyY45XabvfxzUi9uOF6185r59rIsGPrEKm+v1EBvxIi5kECb59j+wB+SLBlD9WC8PbFFoxbur+ychfDGXB8GrQ8trrtfTh3sWSpEmln1GkR43tivHnmzfC+C4tbd0WNSejJvXo/ydLwNaeWXbt3uTe8bxUl0fyCw7iSKoX/V6vJ9IL3OequXDgjpCVuRv4HKvXMMfsCI4T9IY6dYunEjpqjJO3V91KGj16mhITnVtZ16neF8LAc3PG/mHxN4ygKgxjQWQK6p2lCBi1sCbP1EKDTsPEexdOZUbNdxJqfE6jaS0dIzCUdHNunV2fpGXxTCxqUprzshEOALI8kgevnSYYmqEVxqUEaBOkj/5bVK3Nu18V3ONh12On9rzcGVpKHnUGpGx137RvmKwffBU8MURWdGyPlZT+3aWDBp7bNEM34kUD4TDy9x8uzCcgwL7zgrT+d0KCJUA/sNX8r5ElFEQc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(346002)(39840400004)(376002)(186003)(66446008)(8936002)(86362001)(2906002)(66556008)(66476007)(66946007)(76116006)(53546011)(55016002)(64756008)(6506007)(33656002)(52536014)(5660300002)(316002)(110136005)(7696005)(8676002)(83380400001)(71200400001)(38100700002)(9686003)(26005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?0y/pyBVs+8x5xH2mjh6bTIlbk89qnkvhovnFZ/HoOOEXsLuev4U2F189mKL4?=
 =?us-ascii?Q?fMnq8J0LZL/SydqCC+s8YZ5PocIaIMPNOVfrskbhfqdNorKNilseN6IsPP6h?=
 =?us-ascii?Q?8RhS13Xcuc4ecEoQGO5y2J+HxOmuabx8P38O/pioAQrMIb1UCxsgomkmoGSc?=
 =?us-ascii?Q?Rza1XmuhUl6TkG1ZthyUmB+6AdbMa2aMj3V2rvrzvtSjuHG9oHhCf5NZOZ2K?=
 =?us-ascii?Q?zMBySy2BdA6IKfvyzJngbTcvwAkP0UmgJACWbRCkI8WiqW6EJvC4nLZOfx52?=
 =?us-ascii?Q?YaueljyXE+a4aMl+2lkZOdrio3WKK4h7Cd4qb7jEEGS8XvAdiTcjeQl16nTt?=
 =?us-ascii?Q?lttdtfRkXr8swKc2MOSc0oypNTrkhdPizrKm9yOegupASgD4YDsfBSIxEHBN?=
 =?us-ascii?Q?OHlrrMqabCh3prL9pZNIoG+CEibJv91AsvQJTjFApB1Ibol5l4/Fqq2ii3mM?=
 =?us-ascii?Q?uD667iVuU56vEKqxW6AxGUlTSq4soOXeKNxxb5PZq9r2QbiuuBExITVBQGCV?=
 =?us-ascii?Q?YOG0CR99hz9GH78QyecMTDazXiiKOZUGIUiU2tyTHpD6xVOuvxZSBlkp/6pX?=
 =?us-ascii?Q?g3yWi13CkUbeDxxZQIwmQAYP1TTUSnW1BN+7/RASZraXh1DWfRa0PNZ/STsv?=
 =?us-ascii?Q?ETOCNfwzdICv1DRvujnPdW6zdBSr3DcZMVxD1bTTl9V94wrcJ67R3VcjJIpP?=
 =?us-ascii?Q?FvCv8fywmj9eMjfmaUtvMAozbfIcT9RTsNePI2ewbM88F0q+C0Dx9xTBdZwx?=
 =?us-ascii?Q?FIR/aFD/tgOoEL4WqczABj34zNCMyn7VaLBxOwRjB8xNNv9PIx79b+TUQGig?=
 =?us-ascii?Q?p5XTk1CXlVRzG2TtSRAHhlKPzjdwwUJxGmuVXaHQaIH7zkl16LffZzs4fAxj?=
 =?us-ascii?Q?pCjRU4mw8DiXWb+m6YHXimVMMe6189oj01wHfTEAjwOL/OuMxD4CJOGRit4a?=
 =?us-ascii?Q?xr54g3geJTfaELsLreYzY51P+V+REOi1MP1F7I/K4Wl3yQLcnu+kd2ytOaNu?=
 =?us-ascii?Q?LdyfmrJoY1uJmOwRx1r5vyyIu9jCLkiDDirpMaMFgui8TqCl7dPvb7Zpj7gm?=
 =?us-ascii?Q?P2MF7h6bQBE6JS3cppsFGPe1HYTDkxUbiyvEOmF/9BqvUG/jZk5tVLUsFZpa?=
 =?us-ascii?Q?5W1IciHEojWtF9OAKsJwgMPk8ypbRM0H4ba+nG6Ks+tbrZ99Mf6zf8wyfkBb?=
 =?us-ascii?Q?3Ui24QxTyYZ3lMFq1MN31ptLqMJWDkXLu1wNVmcRIgfQXpgaVgHFP6TXUcUF?=
 =?us-ascii?Q?+mgKyoWqrmskbeonaxLwGGAmcYHyF7NngS+4Jpg+EBNCPbTjJCd0+wi5z5ZH?=
 =?us-ascii?Q?7NSr4x/JgCMnjEefK+JDuIQq?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a871a66-36a6-42ca-ccd1-08d8fd94d1c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2021 09:24:48.8764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FgBSRxOnuH9vbYFC6FiPNqFbxyrKuNjZhPhLe988zfdLGHrUHlZDFcGSX+9IZsKns9nsPJHBxLZajFsl9YujcdmpragmZPbCagDHhOio924=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB8621
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.4.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.118 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lVuI2-00029L-Fi
Subject: Re: [tipc-discussion] [net] Revert "net:tipc: Fix a double free in
 tipc_sk_mcast_rcv"
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

Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

-----Original Message-----
From: Hoang Huu Le <hoang.h.le@dektech.com.au> 
Sent: Monday, April 12, 2021 4:02 PM
To: lyl2019@mail.ustc.edu.cn; davem@davemloft.net; tipc-discussion@lists.sourceforge.net; jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Subject: [net] Revert "net:tipc: Fix a double free in tipc_sk_mcast_rcv"

This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.

Above fix is not correct and caused memory leak issue:
In the function tipc_skb_peek, skb's refcnt increasing. Then
we have to call kfree_skb twice to decrease skb's refcnt and
free a skb.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 58935cd0d068..f21162aa0cf7 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1262,7 +1262,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		spin_lock_bh(&inputq->lock);
 		if (skb_peek(arrvq) == skb) {
 			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
+			kfree_skb(__skb_dequeue(arrvq));
 		}
 		spin_unlock_bh(&inputq->lock);
 		__skb_queue_purge(&tmpq);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
