Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 755EE53B2E0
	for <lists+tipc-discussion@lfdr.de>; Thu,  2 Jun 2022 07:13:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nwd8z-0006Ze-Ah; Thu, 02 Jun 2022 05:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nwd8x-0006ZR-1f
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jun 2022 05:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fmej1GbGMURoy/JjCZLGNeoZpATdgjpPLkN112735g0=; b=mKBLH1vxd/Pph6nUkPYl4Xclgf
 HFWH+LH+jEC37rc0USWHecc9WLKfPxc++yMKznBmSqi3bBqSg77FR+SCS+hbsxzWqQqLagS81g0+f
 knFU7QTJQyri5luuuayw+uRbAAkJHm1rrbht0S1m0rcUiXsuAUIlEtLmREnWHIs5Mbns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fmej1GbGMURoy/JjCZLGNeoZpATdgjpPLkN112735g0=; b=b
 34kVTQy5COQpqfxCkBssBX2ov2bej07EdwOcqZLTmXvP9MnOR8CMIeCFpBbwkuyb/Hzz5IPOJJbS7
 UwapPesmbE+Elj/fLHzaJ5f01vfaKz9Yd5eH4ncwko0tFe7BeBB1Tr4xcUjocwGfHjHo+1QftyBEF
 /hh1p88kzWiwfnLI=;
Received: from mail-vi1eur05on2095.outbound.protection.outlook.com
 ([40.107.21.95] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwd8n-000552-Gi
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jun 2022 05:13:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hoh/VaylkJsYWhTbWFepoB55g9+2Ohyyo5nUbaOS1pkVH3CBdRpQhOX9ias/T//rf/st+rI2uOta2nJqXB6P2ujnLyPuBWC1tR7Ec8UmphFQ0HkR+N+2yki4ELF2MaVc8+8oDSQIypLbwLf6tUjxa9ezkGtkXxPwtxgwTJjirVpXN0Kfh5ySv6hVHaMOgYDkpUygeVgdGTXnI5NYuAxeu6OBNueeTh7gQerQWYEhLmYpL8yq9p8WB5zKvk6y//BrY7MS5TUODXmyEUC/zQaaMe4OjO1DoXdgBrECi6J9WVhx7KneLj4Fe9baCzPvX8Ho7Vt7zF3I0O+W5qMnwDsgfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmej1GbGMURoy/JjCZLGNeoZpATdgjpPLkN112735g0=;
 b=eAfgwFP3ZBteLYtSWF9VrKsyodvs/tg/fj2bkSDtFxfSUfNgVI5bIXDDANmLL9HpOMMyzWF9kIUI0U5PsqiofaScOR+Y/RSmvIZUTxGpGvgCtWf0PXzyf8j04KShmTjmJeFJ26Oc3NaZfYaBnz7N39e074OSaoivTz6LG2CJMa745VwNgt43pV6pcpe91etVajrzK3cGZP9Wd+u0yAviAWWUc3MZICu2LbWUktvOyJC1yWzxovJ/GHNQ6Iyw5UQk69/YDh9ZiBkwoJWv4hfHCHwV+sOLDGb2DZA95wGWN94yXnBLGvUJl9a6wZv6kkNRN0ZEbfIrCFE8Z+ecIW7XMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmej1GbGMURoy/JjCZLGNeoZpATdgjpPLkN112735g0=;
 b=toW6NS/Ve6sWZBwHLtAB+Ql6Rm8csyIPWsX+UYmddRDK1kA25cb8qBpuWtQj0dn7Ky0JFD9BMT6mhKoEeiptkH2pYr9WkEMJDqnRB0Q4FMK3fFqXI0HjhQLDt/SO5Mk9ql9FXzN8d3+7aM6G0KLdp6iaqooLaSQjx0yKdjutaGc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by VI1PR05MB7039.eurprd05.prod.outlook.com (2603:10a6:800:186::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Thu, 2 Jun
 2022 04:58:12 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8%2]) with mapi id 15.20.5314.013; Thu, 2 Jun 2022
 04:58:12 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  2 Jun 2022 11:57:57 +0700
Message-Id: <20220602045757.3943-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: HK2PR06CA0017.apcprd06.prod.outlook.com
 (2603:1096:202:2e::29) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5ac16d9-d083-48ab-72a5-08da44547e85
X-MS-TrafficTypeDiagnostic: VI1PR05MB7039:EE_
X-Microsoft-Antispam-PRVS: <VI1PR05MB7039A657CAF403BA23BA6158F1DE9@VI1PR05MB7039.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BvDDmoqnhoU3v3CIvuGgwb2Eq54BlLr4MFhoblyG826qnKqGUCOIh41h/YdqGRwHbqZLjNzOnJ+bw7BXWjl+ZChkiO+y/rwkFg3PKJPJIAmUpvnOdfPqf+ceb8N963USEbSCL35WoLqUw2qFQQsNRdA+3JLwdNflLkEHN9r6vLW2M7zXhcgfazJtfRYSNZSXpJwm/wCGvgLkzw0oytGdSDEn3iwJGQ+pd/+jWB61Ur8K0bA/Ea86sRk1be3llU72YlI63uJRf1PXOCMv7fjd8qC1OQmjKgKc+Y7uFRI8wKB1QPJzlPlKY6yutBgo3+IDH89gZiQHQ+o4Y04Ujx0WHgMAd3c6fIntGdJMDUKZ/1bHHcRGcVSCkoLpuMQuqx0N/GEDjKQsrf8D8vhuhU1suSQkQ6VGM9Yrc/dBZ9MamDT20eOpj7HKCY6rgk3d2OOY/ZQt5KEIi+Af5Oqz88XgZmfRjng2v36f5XQubVm201Rm1Xmo2dvOCZ/7GDaFr5ccLUGH2Vz91Bfw6/VQThkcL+VSkUOYEghOlif3sjcm8c33zmx3Q4HgRuQq0rfKUja0sY7/XO0op28KhQIscaB3p79i1mCakOiC1aOe8F6YgYb7TBzxgr6Hd4GTW0XcJ0dZ9JvPct0xwZ5Q86ZUAYpbHJj9piKQqBBki7k8VeMuGpK9qbn59iG4N41pbdaIYiNf4Wq5OzWLgoBA7fZj6OyL8Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(396003)(346002)(376002)(39840400004)(366004)(136003)(41300700001)(1076003)(508600001)(86362001)(2616005)(316002)(186003)(66476007)(66556008)(66946007)(38100700002)(5660300002)(4326008)(83380400001)(8676002)(2906002)(8936002)(38350700002)(6666004)(6486002)(36756003)(26005)(6506007)(55236004)(6512007)(103116003)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RN11UWxfAcr30g2eRvcY4xfKbRzD1AR+jWerJMOHE6qr8zv9n0jRhnUawy4T?=
 =?us-ascii?Q?g6kfj1BfLd1gpJQG/xNg2cCZGA5wYsmHCPa186Zeb3uzJGJLTqQIs9+tfrm/?=
 =?us-ascii?Q?kOyqE6G/sFTioPnOzZuCFrthS36bIp1Gsniv6ksCoZWq1dkhoymoNb+RKJaS?=
 =?us-ascii?Q?Qkc2wQrAm39lu8WWKbpXfYl163Gsmg3IGXqG6Os/r/avFH8O0aOnZAaKRbLY?=
 =?us-ascii?Q?gW0PQKpTqwKVDXboTks9Aqozj6Nlm64FtV+uOkrNz05Ba8jU05nSpVr2cKih?=
 =?us-ascii?Q?a1Ljz2jtwJmjqv8cELeljqB3XBY20PLcqEq6P+ymP2UaC1MQ/69I0wIhbpwj?=
 =?us-ascii?Q?vzPs8xMJ57vU4v6wtBOPoVYyFsU+rBQ7/zWb00ccrG17TbL2xsZqI1+3gtkc?=
 =?us-ascii?Q?vYrN8eRUj6RKobK5R9rL9MohrExUq2VAt6AqKlu5o5xJqoQfTo13oaZj99kJ?=
 =?us-ascii?Q?w/xJ+DrTPkESf61dsuRTo29C+S/ajBi/AeeR7hJGYiB/NVlldcYV74kDcib0?=
 =?us-ascii?Q?VEWY756oP37M+4nvO/k2yoHUlcy+Ytv9QjPVQ1R2clbTpJFVJlhc0K5yzCJh?=
 =?us-ascii?Q?+fLiXXufCx9hCZwbnXVyyBrutIS1zIzAQEmtM5qmKv8WrxHQjqYJNzegXfK5?=
 =?us-ascii?Q?AKhZhUUWdp9zldaDXcu6x1uZaVGv07AHQS77L17tVJJS/0XIi5ZZqJYUnsPN?=
 =?us-ascii?Q?mFwc1xJpzebYAzIQ0/+FdG2cQis8VEtl7YQlzqXzi1TCd+ezOOMRq1OF3bWw?=
 =?us-ascii?Q?zLoAmZ669s0CqgmrAegR5M7pSLuUAv6KWSXbG/+FDnGW83M2vYOgcV1qrJZk?=
 =?us-ascii?Q?oEuVa49Q4ei4BJiU/bkymg339/qi9NYs3d+4CDi2yHo3xSPcwo1YdswsgNit?=
 =?us-ascii?Q?0fSJbhaB13+PEAtv+jR1auFToa/vE2d5e/NImlXjBINIEWnjMqYPwD5+Dl18?=
 =?us-ascii?Q?mZxxuyVfSB5F7rs4gN+yIABo8Q7Q9txQLnRMKd3Vt2XO6cO02p7Mj4nD9jBu?=
 =?us-ascii?Q?M5/N+7x0U40+jKev6sSNuNFlNzxZENWJzwm60uWFOLJECp4BiY0zOJvpeYGV?=
 =?us-ascii?Q?hbBA9WhAqgnBRW0+pePueQydSsm1geUaeA5RwrpGdEqxdXeODuF2NCjYU6OY?=
 =?us-ascii?Q?XOQgfVRaho/wGzg+wI1NJMNm3B482ZjP8E4qSNsnMA1XXVYee0lOnf73hD7c?=
 =?us-ascii?Q?g+55O3gqtJcCalReqd0Hg2bUGc0V7jKvUeVjuAJZOdWXlLWH4iWg4mBnlYcY?=
 =?us-ascii?Q?NoNjnAXO2DWXiwrAVwfPoTb6LF7avUnc20RB6orOX2xCPksmckGgjCv9YncD?=
 =?us-ascii?Q?msdRVwuZaoZjazaJthgvFWuQVFp2LewoR2Xbt3ngTP+FROJjCFb1ezIM0QdX?=
 =?us-ascii?Q?hIamg0orxgdbkYbhawH5xBMj7MiU1icHeJDm0hbxDjGY+iZpLYmAbYfN51Pn?=
 =?us-ascii?Q?9I7ARljbCX/CFNT96hQlTriTWZA/sLiEoQc/xRQwJb8ROIT9FPHbxXyUZlSM?=
 =?us-ascii?Q?Fp6oyLUyXhlK/wt0IMxvolkY0U3XXtYKrX6/r5+DbJqZiAB5mG/7Emjpdf6a?=
 =?us-ascii?Q?8xmcJUO//4FcAF6OQBGTGjQ/d21xbzRMgxC9MC3toS1kbEpcA0ndqp7jr8+m?=
 =?us-ascii?Q?7KOyjre1Wi0/Q6/Wg8/RTVxdIb5oDTaSAuJmiQk2FtHf3EYNjraufGZhKbh9?=
 =?us-ascii?Q?uGWf5dZwSpOPzhkw1g2Vfo1t5hQoQRz/CXmifskThJXUVypzrGTIqaAdT7HL?=
 =?us-ascii?Q?xUws2LPUggVmtZUaJekJq6zWIFU/uIE=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ac16d9-d083-48ab-72a5-08da44547e85
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 04:58:12.0399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4SVy+AhIdeWXqJei7UVPbf08SrnqRRewfRxvFjh/mWdoEX99S9Pk3Cb4INV34ouCQ5YEQdJUIS8o3S45ZUY4vsb/xenCpok/YbRmtq9V5dg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7039
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported uninit-value:
 =====================================================
 BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline] BUG:
 KMSAN: uninit-value in string+0x4f9/0x6f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.95 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nwd8n-000552-Gi
Subject: [tipc-discussion] [net v3] tipc: check attribute length for bearer
 name
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
Cc: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot reported uninit-value:
=====================================================
BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline]
BUG: KMSAN: uninit-value in string+0x4f9/0x6f0 lib/vsprintf.c:725
 string_nocheck lib/vsprintf.c:644 [inline]
 string+0x4f9/0x6f0 lib/vsprintf.c:725
 vsnprintf+0x2222/0x3650 lib/vsprintf.c:2806
 vprintk_store+0x537/0x2150 kernel/printk/printk.c:2158
 vprintk_emit+0x28b/0xab0 kernel/printk/printk.c:2256
 vprintk_default+0x86/0xa0 kernel/printk/printk.c:2283
 vprintk+0x15f/0x180 kernel/printk/printk_safe.c:50
 _printk+0x18d/0x1cf kernel/printk/printk.c:2293
 tipc_enable_bearer net/tipc/bearer.c:371 [inline]
 __tipc_nl_bearer_enable+0x2022/0x22a0 net/tipc/bearer.c:1033
 tipc_nl_bearer_enable+0x6c/0xb0 net/tipc/bearer.c:1042
 genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]

- Do sanity check the attribute length for TIPC_NLA_BEARER_NAME.
- Do not use 'illegal name' in printing message.

v3: add Fixes tag in commit message.
v2: remove unnecessary sanity check as Jakub's comment.

Reported-by: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Fixes: cb30a63384bc ("tipc: refactor function tipc_enable_bearer()")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 6d39ca05f249..932c87b98eca 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -259,9 +259,8 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	u32 i;
 
 	if (!bearer_name_validate(name, &b_names)) {
-		errstr = "illegal name";
 		NL_SET_ERR_MSG(extack, "Illegal name");
-		goto rejected;
+		return res;
 	}
 
 	if (prio > TIPC_MAX_LINK_PRI && prio != TIPC_MEDIA_LINK_PRI) {
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
