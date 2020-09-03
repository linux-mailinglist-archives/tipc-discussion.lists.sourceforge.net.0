Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CDD25B8D8
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Sep 2020 04:44:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDfEy-0007dB-Sr; Thu, 03 Sep 2020 02:44:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kDfEw-0007co-Jd
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 02:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9jh6HXMKVNuLSRB1nyEkTUidS3tnQ3NX0FMaTuc7yew=; b=RVK8DleXLFkohozZl6tUBFFlwF
 rY8ekqnG2mHFfSddipy7+tmED+HQlpdYQTHBQtDe2LVggdUYWCMtleUmVzMQOptKtyxa2ETpsUP7T
 nUlUufdN48+I4xlqJt+zqfm6DIIOD+7qe936Z3qMgkUHjSV+FQesM99d8dXb07+8wfc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9jh6HXMKVNuLSRB1nyEkTUidS3tnQ3NX0FMaTuc7yew=; b=e8LNm4v7xZtCpJ6FwSs0Pxp75x
 HIxXQjQAs9Aav2ifcBV0+WVfA0kyMpO7kqBXrQrWJ9IU37CzlaaC2fENuAAfe+JZp4KZVXUpr0qZ1
 r5kYtlMzQ1FAUN/8W5iHI3qOjBtOHleewCKr7YezloAL4rV8lZMxuknyS1O3NdC14tJA=;
Received: from mail-db8eur05on2125.outbound.protection.outlook.com
 ([40.107.20.125] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDfEo-00AsfA-P3
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 02:44:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dwk/kUSa7T1zusMOJDizmioc1g63jYiaHyJLdwHdY2fGJDsu6xtmOGeh6IWvixtlElVnuFj6Pak4+QSGAzCXbH26XyaC/jcpJuClMmi0jA3+WZmyQXTO3x+A+0vg5cWUHZERf5veqqp9xyj9Nb/lFi9pmgsJN9NBcucfsUnlwAJcPscbjDAXFbEP7uG8zQyiICime+3RLR9OZEPyfPIndpmvH52TNvHcn2S91o5uB0s5V2yuumwzPR8MbOoj2jugPxEw6un76kPqg3lWNMN2e45TLEC9XqHRPbkuFoa805zXMfRRvXT8FFUdWnshdJhwjIKjnib9Ns6Piz7NCKVCrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9jh6HXMKVNuLSRB1nyEkTUidS3tnQ3NX0FMaTuc7yew=;
 b=fX6x8BOaZIlBVXvoO2RgwQ607JXdXxK4LJxiuXlh/kFmB3DuwbhdowAIHUyZbJMyS1hU9cv1UijBDP2nmPO2khswz8kCy1HBi1s+SG4Nv/QmaLibfSRmn84Mz3aw+UaPTl2qL2EBhTVjwS5SH+35f0D0XxpgU2FyYn15gpPe219VewHN0E6uSP4DVKI1pCSJkEzOsDNDCIhBMRY8SBhoF5oYTxT877IO9pBUbfO2CagKmxkvG77mSz6mLy9vNT9XwZALD/w2y5v53YYBS/wUs30reh9DyGsOEpcY4ztNb37+9Mpf0QnUj/gj7XsxD/+WHFcV7xgpAdN0FCrLkhS0Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9jh6HXMKVNuLSRB1nyEkTUidS3tnQ3NX0FMaTuc7yew=;
 b=GNrnknqGf/GukR5nwP1jSbrGxQ1tJMjbgq0Z/bDJisFMBq1/mBvmN2gksgGiz4NRlrhHnMuwEOwEc2YFxA8LqaoyjzUXAF7Ssb1uCGdtccnP3sQaZUHhyyF/LrjPS1S5juXmos4uZmXR724YnbepeAcYE4ule/1TdOnLr+P/GCg=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6717.eurprd05.prod.outlook.com (2603:10a6:800:141::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.25; Thu, 3 Sep
 2020 02:44:25 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3326.025; Thu, 3 Sep 2020
 02:44:25 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH] tipc: fix use-after-free in tipc_bcast_get_mode
Thread-Index: AQHWgGdEwGLyveZAkkGdMe3zRlbBD6lWNfHw
Date: Thu, 3 Sep 2020 02:44:25 +0000
Message-ID: <VI1PR05MB460580E3ACE01037FDEC4A78F12C0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200826035249.33849-1-hoang.h.le@dektech.com.au>
 <20200826035249.33849-2-hoang.h.le@dektech.com.au>
 <8803c4c7-8bd5-bc20-56dc-7ad58fa3adbc@redhat.com>
In-Reply-To: <8803c4c7-8bd5-bc20-56dc-7ad58fa3adbc@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85873508-fcde-4144-8a5b-08d84fb34590
x-ms-traffictypediagnostic: VI1PR05MB6717:
x-microsoft-antispam-prvs: <VI1PR05MB671763B34F618187EA9F76CEF12C0@VI1PR05MB6717.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NB6Voq+2qYgbMirmuKHusq0nQbjSPFk3fN78B/L4QcVNnQGyidYxrXJ+m66Tbt+xGKl1SG/wFAsED+X4yYvZgr5JQCNS9/2IVZ6u5CQLFEkRGttVWJqve+QJ2yLuJwXqRpqx0c+Y6ABR30rpXZLfu097HGyLA3LkezowkOSAtZ5VfxrudkMt9w3QOKb5OXN8QbOxCnq1v38dZ5FU4dkf8N+lpqiwzLmRfq484+A3FlWwdwgTqiik5OBtcuFLrc/yo/Gvh6r46/hYPwUKdZ8hiM4JBeouUHMvu8Z/ed8NdhQzOeqzIzElJP2xKhOqHECxnR4tsOriELg6nTD9eVBJPA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(396003)(376002)(136003)(346002)(366004)(66446008)(110136005)(6506007)(316002)(2906002)(26005)(53546011)(86362001)(478600001)(186003)(9686003)(5660300002)(7696005)(33656002)(54906003)(83380400001)(66556008)(76116006)(55016002)(64756008)(66476007)(8936002)(52536014)(4326008)(66946007)(8676002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VCDKU19NcI3TAA0pATRj96VykFYo75GXVC7C8N/KkKjyEwYlcYxVxwOgg9VRL2WLoLbN2GRPfNNK/xdQjjwHv33/IOGAEl3gzLWRNCv+oi9j2y3QMCQ0rNsn3QDgRIfoPJ8apAvCLSeMA+rSUPMt8tEib96CVlSAZpcyd20sgW6TAh1xvkUQ6VGaInuNJI/1xwJE5m2XzEzV2RBxrUF3IY5apa/BqQ55nDsYRfT71rYEi4Lpl5KuqKEzkdTSSxfylT7PenS8QINB03N106k08TsIWAg+armltDPGr782h/67xEKDNR0n7c7Yp5iu/YQOM1jr4v2iGDvKGbYMkyfRglss69XeE5qVVgtALs7nBEijuIO8YWOBUuhxGWEcgI4pP3kxk7es1d7p/jJrTpBIEjdOHKKi/HxK2Kyccd/K/DNYJ+tbO72l+0OIU6zxqkQK2UC7Ivf5+6nPxsZFQyHvcrUmZNpPgIdsSuwG1tnjU9KGsiolMREsxfQur4lNyfCg5Vlo7S+lDY+4EBiPCgqqc4pkH4e4sQThML3uo4l1DZpzwELJjEzxJa5gFruRSPkFSD45LlqxyyG4/NhvADFm3RCg5RVACO8bWyMFjlfVgsDKqkF9M6kLuAQcpb0pL0tmb2YoLccZus27Darj0KzfHA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85873508-fcde-4144-8a5b-08d84fb34590
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2020 02:44:25.5297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cY9xkujUzzYNO7Istg7kSDRxrzceioREL/oslTyYQ1w5M3mpAU0qz0tq9rHx4w4As+uunpygS76mL6UmXBUqDgYlbceEo1jytdvuIDXaREo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6717
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.125 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kDfEo-00AsfA-P3
Subject: Re: [tipc-discussion] [PATCH] tipc: fix use-after-free in
 tipc_bcast_get_mode
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
Cc: "syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com"
 <syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com>,
 "syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com"
 <syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Below solution does not fully resolve the issue. I'm finding out another solution.

Regards,
Hoang
-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Tuesday, September 1, 2020 8:53 PM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com; syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
Subject: Re: [PATCH] tipc: fix use-after-free in tipc_bcast_get_mode



On 8/25/20 11:52 PM, Hoang Huu Le wrote:
> Syzbot has reported those issues as:
>
> ==================================================================
> BUG: KASAN: use-after-free in tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759
> Read of size 1 at addr ffff88805e6b3571 by task kworker/0:6/3850
>
> CPU: 0 PID: 3850 Comm: kworker/0:6 Not tainted 5.8.0-rc7-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
>
> Thread 1's call trace:
> [...]
>    kfree+0x103/0x2c0 mm/slab.c:3757 <- bcbase releasing
>    tipc_bcast_stop+0x1b0/0x2f0 net/tipc/bcast.c:721
>    tipc_exit_net+0x24/0x270 net/tipc/core.c:112
> [...]
>
> Thread 2's call trace:
> [...]
>    tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759 <- bcbase
> has already been freed by Thread 1
>
>    tipc_node_broadcast+0x9e/0xcc0 net/tipc/node.c:1744
>    tipc_nametbl_publish+0x60b/0x970 net/tipc/name_table.c:752
>    tipc_net_finalize net/tipc/net.c:141 [inline]
>    tipc_net_finalize+0x1fa/0x310 net/tipc/net.c:131
>    tipc_net_finalize_work+0x55/0x80 net/tipc/net.c:150
> [...]
>
> ==================================================================
> BUG: KASAN: use-after-free in tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
> Read of size 8 at addr ffff888052ab2000 by task kworker/0:13/30628
> CPU: 0 PID: 30628 Comm: kworker/0:13 Not tainted 5.8.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x1f0/0x31e lib/dump_stack.c:118
>   print_address_description+0x66/0x5a0 mm/kasan/report.c:383
>   __kasan_report mm/kasan/report.c:513 [inline]
>   kasan_report+0x132/0x1d0 mm/kasan/report.c:530
>   tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
>   tipc_net_finalize+0x85/0xe0 net/tipc/net.c:138
>   tipc_net_finalize_work+0x50/0x70 net/tipc/net.c:150
>   process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>   worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>   kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
> [...]
> Freed by task 14058:
>   save_stack mm/kasan/common.c:48 [inline]
>   set_track mm/kasan/common.c:56 [inline]
>   kasan_set_free_info mm/kasan/common.c:316 [inline]
>   __kasan_slab_free+0x114/0x170 mm/kasan/common.c:455
>   __cache_free mm/slab.c:3426 [inline]
>   kfree+0x10a/0x220 mm/slab.c:3757
>   tipc_exit_net+0x29/0x50 net/tipc/core.c:113
>   ops_exit_list net/core/net_namespace.c:186 [inline]
>   cleanup_net+0x708/0xba0 net/core/net_namespace.c:603
>   process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>   worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>   kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
>
> Solution 1 (preferer):
> Fix it by calling flush_scheduled_work() to make sure the
> tipc_net_finalize_work() stopped before releasing bcbase object.
>
> Solution 2:
> Fix it by introducing a bit flag and returning if flag is zero
> (object had already been freed)
>
> Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
> Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 1 +
>   net/tipc/core.c  | 1 +
>   net/tipc/core.h  | 1 +
>   net/tipc/net.c   | 3 +++
>   4 files changed, 6 insertions(+)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 940d176e0e87..56b624c8b6d4 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -718,6 +718,7 @@ void tipc_bcast_stop(struct net *net)
>   	struct tipc_net *tn = net_generic(net, tipc_net_id);
>   
>   	synchronize_net();
> +	clear_bit_unlock(0, &tn->net_exit_flag);
>   	kfree(tn->bcbase);
>   	kfree(tn->bcl);
>   }
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 4f6dc74adf45..93ea7dc05bf2 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -60,6 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
>   	tn->trial_addr = 0;
>   	tn->addr_trial_end = 0;
>   	tn->capabilities = TIPC_NODE_CAPABILITIES;
> +	test_and_set_bit_lock(0, &tn->net_exit_flag);
>   	memset(tn->node_id, 0, sizeof(tn->node_id));
>   	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
>   	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 631d83c9705f..aa75882dd932 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -143,6 +143,7 @@ struct tipc_net {
>   	/* TX crypto handler */
>   	struct tipc_crypto *crypto_tx;
>   #endif
> +	unsigned long net_exit_flag;
>   };
>   
>   static inline struct tipc_net *tipc_net(struct net *net)
> diff --git a/net/tipc/net.c b/net/tipc/net.c
> index 85400e4242de..0dcbfcff5ad3 100644
> --- a/net/tipc/net.c
> +++ b/net/tipc/net.c
> @@ -132,6 +132,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
>   {
>   	struct tipc_net *tn = tipc_net(net);
>   
> +	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
> +		return;
> +
>   	if (cmpxchg(&tn->node_addr, 0, addr))
>   		return;
>   	tipc_set_node_addr(net, addr);
This solution should not cause any deadlocks, I hope.
Acked-by: Jon Maloy <jmaloy@redhat.com>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
