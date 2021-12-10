Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE9946FB2E
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Dec 2021 08:16:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mva92-0000TT-MD; Fri, 10 Dec 2021 07:16:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mva90-0000TI-QX
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Dec 2021 07:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0P2XeG6ZeL9Rr873HgdM01koc1agsb/Pq+gm/4/SM4o=; b=HX3zjqL8nmK7r49P2ZiK0xI9G/
 DttiCJEVfMoZvbiIWAkASYKL/8qO1RESYRwlvOJUc1yp+WHc073WxE+g3SF+LFmojdtGHHBDVNWAl
 GeimDL/oqDzuJAPffC93AcHfolfxFgw1xPUN5z2+enz/bPf2Cn6CH5c8locTu52WM/hg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0P2XeG6ZeL9Rr873HgdM01koc1agsb/Pq+gm/4/SM4o=; b=J
 kjoiXPm/HexnlbCqAWtuEGRCK2veDTgo1allJASMPUER0P88CWLt5T+EddTndaCDpEL69qZA//FHt
 7GnFY7w2KqL+aRA0P6Z2qE8Lqnaf0SnaQ4pspEhEd40aN8CCp8pnfgs9oUAqevV+ixxsM3lFPZrfk
 fopCQJpaNqFxsQdU=;
Received: from mail-db8eur05on2111.outbound.protection.outlook.com
 ([40.107.20.111] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mva8w-0001VY-05
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Dec 2021 07:16:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObT0ioFfu107le+aop+bceIP1bEfNC2+TSsxIjYUXql3e9kDM1JpNldYkB6dvhMf1eDpOOcLhU9pNm/ESs5A+/E67uC0Aqg8UQJhsnxwddQKNXlv00NmaIe+ksQhtqI9zDFOZZP7iz7wl0R9Ks5+3UOz3D9CyP4sg3DdRYthc00I5E0OKWknLNnwtcaUDRNIurcKPHu1y4DZpLxQF/svdF+fAA/f7ex/dCmQvPp4OgX6fFvjpu3VEnwDHppoEdlMyEnHHZyWt6CA9wZIMQZ+lyjExxGNzojxq10xeYsOVuUtT6TlKL9LJ0sbHQL7XDGuBwj4PwHmCDg+4XuSHM5b/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0P2XeG6ZeL9Rr873HgdM01koc1agsb/Pq+gm/4/SM4o=;
 b=jf9MWhtvtThhxmDxj+A4J6qe2cGNG0vJfncya9lvqK1sUIJGXIq+M3A6YGxyQOJfHIcmchHG2FpHnHS2/xMHQbpS0r5aj0bU8ScmwOXBocZ+nWAlYfCI9M/jcHn0RDkEJq70kPk1Yy2HulTiecLlb+4mZzHSkj2MhC63Z+5mzF64200Mv2RXeSkh4TZ2FnZlZ1HI1irJ59F2Y3uD4LTzifhzuRQefISfZvw6IGxO7ZNhGVMYUE9Yik+7DIphVIHu0+rSIgGDEKvuu7iJkJEXmG2QlQNdFM5lQU0bmKPDNWydf0J/idiYyKjTDLao9PLCaHjA5WXMOMeW7jzMY2O+qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0P2XeG6ZeL9Rr873HgdM01koc1agsb/Pq+gm/4/SM4o=;
 b=qSG3iV1BAD3cyEwPZmafbZyuLOi7UehDSoGroiut/+OD2hrOcvmGSxiUO6fw4Lj96caJjtoc68+gNChjcyYSQtPJNl95TX9GDeNU57mpHPrYb9ksgyXSCJws7I0T4ZxfWfX66RGWZzpyf3pzGvPtzCIvAwn/AMArwK2JaBaUjIc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB6173.eurprd05.prod.outlook.com (2603:10a6:803:cc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Fri, 10 Dec
 2021 06:59:59 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::ddd6:43ae:be54:f697]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::ddd6:43ae:be54:f697%5]) with mapi id 15.20.4755.025; Fri, 10 Dec 2021
 06:59:59 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Fri, 10 Dec 2021 13:59:46 +0700
Message-Id: <20211210065946.7720-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR06CA0226.apcprd06.prod.outlook.com
 (2603:1096:4:68::34) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
Received: from dektech.com.au (171.252.153.133) by
 SG2PR06CA0226.apcprd06.prod.outlook.com (2603:1096:4:68::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Fri, 10 Dec 2021 06:59:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6ef07ca-b3c5-4228-796d-08d9bbaaae6b
X-MS-TrafficTypeDiagnostic: VI1PR05MB6173:EE_
X-Microsoft-Antispam-PRVS: <VI1PR05MB6173537C27BD2DA9597DF207F1719@VI1PR05MB6173.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:454;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yCxHnBjaRmqL1sMCR6MJ6Ynenh0i+aoSWXAyTRWkXV2M1V9hkyfA/ABnh5fkLnUgw69dCg2x2GRnZCUx0CrV0Ss3y0p6VbxmV4S++5sZtPz75NXtTEpgfeVpCU4bJLYdSQ6OyzukPLGd9qFwZw2qYlO1VzgHf3XcV0v3UCUA6JQPSl3ItO7ggT/3stPTiqOwPFqdNwGbzKnTh78Enp1RmRgtDTPcJNC0MZVKpBphfguTSXbbu+nwMtmzLZ4cpaNQ77Cc9DJkaiL7Ika+yFoS1v07wjQ+Tf3h0o4lDb0R4lduYG5z4A4QLvU2quKvuhOQaE6YNnGhQfgR0+wijM9CKJDAI6sE45fPMkUdf19qQ2OiwnHTHOhqgeoDMXciRF/TOoTofKP+utXgQtERCClovo3sqRfAS8/ovEDLtarY6L94bs4djSbnKBLkrZy5T6hz8J23RpaqLwLSanSSXZaoCsnk6i1R54OauR16TdHs0wdGWpeA3D8zS3AuvfmNFWl7ih4LicVX6b+5fwOaQJ2pHSMs7fbWUwscCQvjBtNozsqDzNPnJVuPyMaciaN2snaeQ+5qlMaL789G9x1ko64nUngxktLxcDHqDwCjsq9nL5AXHzRt4x17whV4aKXyKtelSIB9wR+i+CWSyFd5CEuCPgSA0c8prCmp9HTnI+4HgN7B/FyLF9rChV/L4TGsuOPcORPYW05VM+PwglYVZpuDLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39840400004)(346002)(366004)(396003)(136003)(55016003)(36756003)(2906002)(83380400001)(8676002)(508600001)(55236004)(1076003)(86362001)(26005)(7696005)(52116002)(103116003)(38100700002)(956004)(2616005)(38350700002)(6666004)(66946007)(66476007)(66556008)(5660300002)(186003)(6636002)(8936002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zV/y9c4ieDD7Hz/gU/DTIsUheA/hCfSknIoP6YaXroSFOTtR6OoALAsImMjI?=
 =?us-ascii?Q?RszeMpRWbUfBhmBJFwcUuQNbBz9GZkC0sl2hrdTnjF5euRV3N3NkUOhQjoJL?=
 =?us-ascii?Q?e3DLJSsL+CQm58ibc7GRvN/3WGiQ8KaEhHiSbA//0M4p34bAp1xlguawttJi?=
 =?us-ascii?Q?56l3KSBLyh5LQ0SDDZYOqX60iajXxM+DROe0pF2ol/PAGEbYJlxFMrhMX6vQ?=
 =?us-ascii?Q?rkYJJ7MvFo4rJsHzWySn9fxl7V65IBexAmwIWCpTNrRHRZvFHWPkUtEEpwom?=
 =?us-ascii?Q?/MnOWya5wzL6gjQaYbYs81d0lFT2z29sGLa4Ln+FCjhTfEezBbBmqHeBq0Kh?=
 =?us-ascii?Q?HrFpkZ+c5XqTYj4v8fiTS5bpcj0Otn1SL4+6dXYBkeARwQux0G3u4YII9vsR?=
 =?us-ascii?Q?p5E84yHFO0SHPhbwIH+IbkenkccuSNtDaIjjNCjxZLd28OKef7aigfE3macH?=
 =?us-ascii?Q?/xEx/VuYZJP01xhzqm8NGCIRJsjSsIIQCWueaQk8VwWYeu24TReW9nlYm2cR?=
 =?us-ascii?Q?+gZPO+dKJ/FZdO9EHdvA7vq38pC0nuVqhLhoIQhXovkfWRUqj8qItyFMLAnl?=
 =?us-ascii?Q?GuJrCatcUKFdWRE4PILloeHz/yWq8o518mPHlPgt6pjHgaQ09vNfVX9TSjCf?=
 =?us-ascii?Q?CiO/OJvMC8t0xChBRX9zhCs7MapOFl3xv8yiy+leQOaEsNWayid/vKNDhg7H?=
 =?us-ascii?Q?Iz+ot5Mr0YRkskBP0WKPNfgsfK0LcFL+AvaXBCUrUd/bsOdXpFzlkJO0pVyW?=
 =?us-ascii?Q?lh7cNWQAdxPOfrIipxG22JJZgmSyKpabNZ8oFVC8ypWt9I0n1D5GsfOfHBIt?=
 =?us-ascii?Q?jamcdKTNcJYmj709HEFu56DMwVF11zuIQtVtbH/JmtB9SILo0GH7Y/ICa0hi?=
 =?us-ascii?Q?895vs//SmoMWvs9zDxuk/e8SKXDQoW8V3+FXOsdSo6ShNJpIgcvOaCpJhvva?=
 =?us-ascii?Q?2qTztkyW74Hjy4moOKOhmL3kgrrt+NR+IftxwwgBGq+3fUq/t5rVAOZdpBdP?=
 =?us-ascii?Q?6SYZ0jbhrtTKK6k7zJOyD+rEpiGn5yP94gcyNzYlq714Jzmr1Z1dgtaUXAe3?=
 =?us-ascii?Q?4n5PmIvGl8J+fTPDvQ4kEuPMXOWiNSvQQsVIMM0D4UDM1ZrSPTBiSXHagsuy?=
 =?us-ascii?Q?rqPj/K5wT5C9BbfKxVEuvEFXmksHz7EdG+30bRAKen9Jj/PdYc66keuRS6JP?=
 =?us-ascii?Q?h9IGTSNbxn8qhpvT+Tm/Q/kIYugmef+8a97SnrccByMNVmo8aiG/nOpt9a9B?=
 =?us-ascii?Q?mMp2864K4As1ilgEe91bGpb8YHbxzT5qjweOUBr+RY1APztmAKfc5yX/l9Mn?=
 =?us-ascii?Q?cPVkWq9tNOE/WPEZ2inEZEszUuZ/slgb/ufBulx0gYv8SACJ8vcnhWOSxnKL?=
 =?us-ascii?Q?GLv7EH2/0eC3XdLP2ikHCe1o4vVT5fQEtEsDe7iNuDO0q4Tcgz2e9DwwN/Pk?=
 =?us-ascii?Q?/GjBChQal2At1okD7scLKIQBlNi8btKpEjYy3Wvdn7qIri2MMR0sU+hmxLuS?=
 =?us-ascii?Q?hdeDZCtvcPeoogOI53HhKMJtzO37KTdYrtO1McV+V2DKkizrNGSW809KzB6R?=
 =?us-ascii?Q?6+rz8hKX0SVYnec0J+RjY7yA42MStWbR6Tf6wJNvw7kB+jCyksogyvcv6g88?=
 =?us-ascii?Q?pMh8pUL7IYxouoR/Jzsi6+I9RDdpKwfwcRmfMDr73Y4Eg+d8Gg4+GvFE5zFa?=
 =?us-ascii?Q?bDEhyPiF1EHWldfJmq9sFq5Mrek=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: e6ef07ca-b3c5-4228-796d-08d9bbaaae6b
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 06:59:59.7985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SX4KkROMNVjIawsgqc/vrVcqVaTxSea9IyxiRKwVN1DaiGPL8FgDHJxt/0AgQs0SqGnHu6N0K8Qu4AGomq2QKeFThgDG2ZB6kke6/22tWW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6173
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit 86c3a3e964d910a62eeb277d60b2a60ebefa9feb.
 The tipc_aead_init() function can be calling from an interrupt routine. This
 allocation might sleep with GFP_KERNEL flag,
 hence the following BUG is reported.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.111 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mva8w-0001VY-05
Subject: [tipc-discussion] [net-next] Revert "tipc: use consistent GFP flags"
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

This reverts commit 86c3a3e964d910a62eeb277d60b2a60ebefa9feb.

The tipc_aead_init() function can be calling from an interrupt routine.
This allocation might sleep with GFP_KERNEL flag, hence the following BUG
is reported.

[   17.657509] BUG: sleeping function called from invalid context at include/linux/sched/mm.h:230
[   17.660916] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 0, name: swapper/3
[   17.664093] preempt_count: 302, expected: 0
[   17.665619] RCU nest depth: 2, expected: 0
[   17.667163] Preemption disabled at:
[   17.667165] [<0000000000000000>] 0x0
[   17.669753] CPU: 3 PID: 0 Comm: swapper/3 Kdump: loaded Tainted: G        W         5.16.0-rc4+ #1
[   17.673006] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
[   17.675540] Call Trace:
[   17.676285]  <IRQ>
[   17.676913]  dump_stack_lvl+0x34/0x44
[   17.678033]  __might_resched.cold+0xd6/0x10f
[   17.679311]  kmem_cache_alloc_trace+0x14d/0x220
[   17.680663]  tipc_crypto_start+0x4a/0x2b0 [tipc]
[   17.682146]  ? kmem_cache_alloc_trace+0xd3/0x220
[   17.683545]  tipc_node_create+0x2f0/0x790 [tipc]
[   17.684956]  tipc_node_check_dest+0x72/0x680 [tipc]
[   17.686706]  ? ___cache_free+0x31/0x350
[   17.688008]  ? skb_release_data+0x128/0x140
[   17.689431]  tipc_disc_rcv+0x479/0x510 [tipc]
[   17.690904]  tipc_rcv+0x71c/0x730 [tipc]
[   17.692219]  ? __netif_receive_skb_core+0xb7/0xf60
[   17.693856]  tipc_l2_rcv_msg+0x5e/0x90 [tipc]
[   17.695333]  __netif_receive_skb_list_core+0x20b/0x260
[   17.697072]  netif_receive_skb_list_internal+0x1bf/0x2e0
[   17.698870]  ? dev_gro_receive+0x4c2/0x680
[   17.700255]  napi_complete_done+0x6f/0x180
[   17.701657]  virtnet_poll+0x29c/0x42e [virtio_net]
[   17.703262]  __napi_poll+0x2c/0x170
[   17.704429]  net_rx_action+0x22f/0x280
[   17.705706]  __do_softirq+0xfd/0x30a
[   17.706921]  common_interrupt+0xa4/0xc0
[   17.708206]  </IRQ>
[   17.708922]  <TASK>
[   17.709651]  asm_common_interrupt+0x1e/0x40
[   17.711078] RIP: 0010:default_idle+0x18/0x20

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/crypto.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 81116312b753..9325479295b8 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -524,7 +524,7 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
 		return -EEXIST;
 
 	/* Allocate a new AEAD */
-	tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
+	tmp = kzalloc(sizeof(*tmp), GFP_ATOMIC);
 	if (unlikely(!tmp))
 		return -ENOMEM;
 
@@ -1463,7 +1463,7 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
 		return -EEXIST;
 
 	/* Allocate crypto */
-	c = kzalloc(sizeof(*c), GFP_KERNEL);
+	c = kzalloc(sizeof(*c), GFP_ATOMIC);
 	if (!c)
 		return -ENOMEM;
 
@@ -1477,7 +1477,7 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
 	}
 
 	/* Allocate statistic structure */
-	c->stats = alloc_percpu(struct tipc_crypto_stats);
+	c->stats = alloc_percpu_gfp(struct tipc_crypto_stats, GFP_ATOMIC);
 	if (!c->stats) {
 		if (c->wq)
 			destroy_workqueue(c->wq);
@@ -2450,7 +2450,7 @@ static void tipc_crypto_work_tx(struct work_struct *work)
 	}
 
 	/* Lets duplicate it first */
-	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_KERNEL);
+	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_ATOMIC);
 	rcu_read_unlock();
 
 	/* Now, generate new key, initiate & distribute it */
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
