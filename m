Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6F62584FB
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Sep 2020 03:03:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kCuhF-0003kp-9R; Tue, 01 Sep 2020 01:02:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kCuhD-0003kZ-I0
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 01:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kL62bORN0WW+D4arSeqKBEgCI+hZka2NZhLJTZoJU64=; b=X/C2fhns8edc5xI7khCCvq4U40
 v1DEZGTZSm5/M9LTb+joeSSacoRdmYsfCvW5aApNmrqkVUtoAoC2afmF+t4dK5nddUGUpkyIIf95G
 kGwG5yyUw8QdLXn4aM7tuImW48IzNd+Sek94o1MA0+zDolknej0QtS9NGr7lCopTGF/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kL62bORN0WW+D4arSeqKBEgCI+hZka2NZhLJTZoJU64=; b=FuGLzy7XT/92Wq43s3sMK/n09Y
 4Tc/AUHZ1is7VGovKO6KnTtD303VWVEXP0nbduEZroG7a/B/OlIMDKev9+n6UxZ+T+wvBjh8K6teS
 e3FN0Evn3qWjpb6686ADmcBwmrDGQdvpjPnU8np6kBu2vjNVS9eIkyKqdRJDl17W3W1c=;
Received: from mail-am6eur05on2104.outbound.protection.outlook.com
 ([40.107.22.104] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCuh8-008Mz4-Ol
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 01:02:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4BvUprdRNppAW4HcV5CZNwgl7tkMJ97s0UGEguAox+qtO63p2mlYPyNYqUZZYPOBFD86yMsb6uYnXWrZXFJ25+F2/PE1uzeC/vcQSwvc8kP2uKQ2DB0yft2nUpWTwg6MYfRqTq6jiDolc2TFhaO7Nvob3+0fbDPy7ujyknnajd1mamQIqajLU8OFBwPBkMYepxsOQGT2mbAglORlbHFb6eNpesBOXDt80+EjHko6tnWFM680JO2F753C5A/5mGdruYYJYojwyhSYdV+7ZOXwIhyOobIubhZ4VOsP2ayHsoIDAZcUkVWsRvCr9UjBPs5KlTcrBWC1hKSuofNcttIuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kL62bORN0WW+D4arSeqKBEgCI+hZka2NZhLJTZoJU64=;
 b=Ygk+jpMM9ElnqHBDD9crnutNWK0DPMNZwahQEW8ffflFWXA8jf0tVFuISUWkIJiMuqNCu7sQzJ26CxOKYL+PiVmmTdHMPol4jC3UxpiPzwVyUDSPDavGcU6TniI89O6dEpFJNV9TKoeTK6AXs8VdFXG7Nc2asxpv5FpdpeNxsHt8+/tshMEBQTb13dMVhMScCCFBu6Dc0N1m1yv4kdKOL62mmK1REv8CqPSm4K2Pirq5FrGwo04jhjVvg35bzwO7L7+z3LrBahgx6WpD8iwicN6U87t1XvK6oPB79crc6tcxF4hZCh6krz5SS5hY8XjR/oc0N90Lpzvp0oOSto+8FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kL62bORN0WW+D4arSeqKBEgCI+hZka2NZhLJTZoJU64=;
 b=PMsgdLJyTpSowKv7bvUjQZbhm5ccYXCkq8jqbB4ZrYjwP/x0moOsT0Q3Rei0m6A0T4pHpXk3ws1+1Z08fl9650SlGO18MB0B/4Nbff9cselzczO9o3vZM9Z7+Hzhhs8W3/pAIrHVkbLu1DuNoKBOENUmVgETYClzVwKbHeuQvTE=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5181.eurprd05.prod.outlook.com (2603:10a6:803:ac::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19; Tue, 1 Sep
 2020 01:02:33 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3326.025; Tue, 1 Sep 2020
 01:02:33 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Eric Dumazet <eric.dumazet@gmail.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: fix use-after-free in tipc_bcast_get_mode
Thread-Index: AQHWfB2/jovjQyIobk2TrhYEgRJk4qlSejQAgACDy/A=
Date: Tue, 1 Sep 2020 01:02:33 +0000
Message-ID: <VI1PR05MB46051CAC5BBFDBF22CA2ABE4F12E0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200827025651.52652-1-hoang.h.le@dektech.com.au>
 <a30db796-f077-a706-fdc2-d55bb7be3c60@gmail.com>
In-Reply-To: <a30db796-f077-a706-fdc2-d55bb7be3c60@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e64bad4c-14b8-409f-a337-08d84e12b5bf
x-ms-traffictypediagnostic: VI1PR05MB5181:
x-microsoft-antispam-prvs: <VI1PR05MB51819B4647C1B72C005B20A7F12E0@VI1PR05MB5181.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SEsyauxchUdWiGalWEnq/Vj/5jVuA1W8G5oYEJQw8SJj5kKk3Ff0M9G/m/fHezO0Wg2p5596TIss3F9FiSoi8QIyw+9vuMF1Cms/Mhm1FJLJeWmSMxL+mdBcm6g0Gg3K3PiaGJktwjO/vtKqmngjU2xEq5wmpbb/nCvVdPk28VPYR2XLGlfUsALA4krNWpo/733FzBKeif/lbq8Em7dyHhwVlDTBD/VFvTrVTgYK6ONyV0LTY5Yol8kT4b/BuzlBOzdESOCbCkDMHCQO5p1F6ouRmMv4LCUbvd4awPpocY4THcuenBKbrRhhsXUDt1qi9FveHYxpgYsxpEOef1UX8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(376002)(346002)(136003)(366004)(33656002)(66446008)(2906002)(76116006)(66476007)(186003)(316002)(52536014)(7696005)(86362001)(71200400001)(26005)(66946007)(8676002)(83380400001)(53546011)(6506007)(9686003)(4326008)(5660300002)(64756008)(66556008)(478600001)(55016002)(54906003)(110136005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zkThpzgg8hkewoJNmElTNf6qOsZDaNaNaKiL/UHwQJquZl+eJn4sWYGCJ4XCoCgw1tQdg39udlyZRoYP6/x1peyn3XfwBO7HMvrlKnWFEFyulwqyw9m9rUndPUSW8wyEAGHQFN6F5ZKofarTbJl/OJ58cMjv7cU9Syf7DMyh2m9t7+jewVkWnfVptxVcvjXQ/kec+a53ttCZRoR4r++s/opGzoIRvKKEM0cs+DHOrojLOlzlwG6qehXh7h3dgwbnfAUDv+lei1orVZqU0UpMUGrz+lD22lkNCmsVL0i1qnedo5uq+wOSWu7CWoJ2SjKsr4R5j+JOUdmj75INN1HqHp1b86Qznbge9P4py0mhDGDE0JaLEK/MIzB3QkBu6hnsiz55A6henPVDfCzOMcjzj2+h1808aZpZUxM+OF/Oc+ICIAC5VDcjkaxpsTQ0I3CMcWMvVQWLIhQwUwxvJ/k6e5At60lro0hqutwhqcqKm+36oHZAWilncGoPwxO0ExvZC+TiYy3uf4ttSi0FB8XYESge8W7W2xEvdZuSkm0ct4UMRaEhR8b53Il0mMORmxSdZl5kW31YpjCbXlpQ1SHzrlENtCFjVgxmaN10RYpBt8hx7OFaOSpC4vYgqHXtXOmGOA27SoJtmowkgOWXttuPBw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e64bad4c-14b8-409f-a337-08d84e12b5bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2020 01:02:33.7578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AuahA/RWuq2wprf62yi0g9OOseqK+pK7bFXQH4ocZcCCvI/NyCi84glG+4ZF1bhPftwpoCHbDurFWK9gNvkcDweQ7TyDpt1uDoCo04Uc30o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5181
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.104 listed in wl.mailspike.net]
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
X-Headers-End: 1kCuh8-008Mz4-Ol
Subject: Re: [tipc-discussion] [net-next] tipc: fix use-after-free in
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

Thanks for pointing that out. I will revert the patch and submit another solution.

-----Original Message-----
From: Eric Dumazet <eric.dumazet@gmail.com> 
Sent: Tuesday, September 1, 2020 12:08 AM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net
Cc: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com; syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
Subject: Re: [net-next] tipc: fix use-after-free in tipc_bcast_get_mode



On 8/26/20 7:56 PM, Hoang Huu Le wrote:
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
>   kfree+0x103/0x2c0 mm/slab.c:3757 <- bcbase releasing
>   tipc_bcast_stop+0x1b0/0x2f0 net/tipc/bcast.c:721
>   tipc_exit_net+0x24/0x270 net/tipc/core.c:112
> [...]
> 
> Thread 2's call trace:
> [...]
>   tipc_bcast_get_mode+0x3ab/0x400 net/tipc/bcast.c:759 <- bcbase
> has already been freed by Thread 1
> 
>   tipc_node_broadcast+0x9e/0xcc0 net/tipc/node.c:1744
>   tipc_nametbl_publish+0x60b/0x970 net/tipc/name_table.c:752
>   tipc_net_finalize net/tipc/net.c:141 [inline]
>   tipc_net_finalize+0x1fa/0x310 net/tipc/net.c:131
>   tipc_net_finalize_work+0x55/0x80 net/tipc/net.c:150
> [...]
> 
> ==================================================================
> BUG: KASAN: use-after-free in tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
> Read of size 8 at addr ffff888052ab2000 by task kworker/0:13/30628
> CPU: 0 PID: 30628 Comm: kworker/0:13 Not tainted 5.8.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x1f0/0x31e lib/dump_stack.c:118
>  print_address_description+0x66/0x5a0 mm/kasan/report.c:383
>  __kasan_report mm/kasan/report.c:513 [inline]
>  kasan_report+0x132/0x1d0 mm/kasan/report.c:530
>  tipc_named_reinit+0xef/0x290 net/tipc/name_distr.c:344
>  tipc_net_finalize+0x85/0xe0 net/tipc/net.c:138
>  tipc_net_finalize_work+0x50/0x70 net/tipc/net.c:150
>  process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>  worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>  kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
> [...]
> Freed by task 14058:
>  save_stack mm/kasan/common.c:48 [inline]
>  set_track mm/kasan/common.c:56 [inline]
>  kasan_set_free_info mm/kasan/common.c:316 [inline]
>  __kasan_slab_free+0x114/0x170 mm/kasan/common.c:455
>  __cache_free mm/slab.c:3426 [inline]
>  kfree+0x10a/0x220 mm/slab.c:3757
>  tipc_exit_net+0x29/0x50 net/tipc/core.c:113
>  ops_exit_list net/core/net_namespace.c:186 [inline]
>  cleanup_net+0x708/0xba0 net/core/net_namespace.c:603
>  process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>  worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>  kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
> 
> Fix it by calling flush_scheduled_work() to make sure the
> tipc_net_finalize_work() stopped before releasing bcbase object.
> 
> Reported-by: syzbot+6ea1f7a8df64596ef4d7@syzkaller.appspotmail.com
> Reported-by: syzbot+e9cc557752ab126c1b99@syzkaller.appspotmail.com
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/core.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 4f6dc74adf45..37d8695548cf 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -109,6 +109,11 @@ static void __net_exit tipc_exit_net(struct net *net)
>  {
>  	tipc_detach_loopback(net);
>  	tipc_net_stop(net);
> +
> +	/* Make sure the tipc_net_finalize_work stopped
> +	 * before releasing the resources.
> +	 */
> +	flush_scheduled_work();
>  	tipc_bcast_stop(net);
>  	tipc_nametbl_stop(net);
>  	tipc_sk_rht_destroy(net);
> 

Lockdep disagrees with this change.

======================================================
WARNING: possible circular locking dependency detected
5.9.0-rc2-next-20200828-syzkaller #0 Not tainted
------------------------------------------------------
kworker/u4:5/197 is trying to acquire lock:
ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: flush_workqueue+0xe1/0x13e0 kernel/workqueue.c:2777

but task is already holding lock:
ffffffff8a879430 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0x9b/0xb10 net/core/net_namespace.c:565

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #3 (pernet_ops_rwsem){++++}-{3:3}:
       down_write+0x8d/0x150 kernel/locking/rwsem.c:1531
       unregister_netdevice_notifier+0x1e/0x170 net/core/dev.c:1861
       bcm_release+0x94/0x750 net/can/bcm.c:1474
       __sock_release+0xcd/0x280 net/socket.c:596
       sock_close+0x18/0x20 net/socket.c:1277
       __fput+0x285/0x920 fs/file_table.c:281
       task_work_run+0xdd/0x190 kernel/task_work.c:141
       tracehook_notify_resume include/linux/tracehook.h:188 [inline]
       exit_to_user_mode_loop kernel/entry/common.c:140 [inline]
       exit_to_user_mode_prepare+0x195/0x1c0 kernel/entry/common.c:167
       syscall_exit_to_user_mode+0x59/0x2b0 kernel/entry/common.c:242
       entry_SYSCALL_64_after_hwframe+0x44/0xa9

-> #2 (&sb->s_type->i_mutex_key#13){+.+.}-{3:3}:
       down_write+0x8d/0x150 kernel/locking/rwsem.c:1531
       inode_lock include/linux/fs.h:779 [inline]
       __sock_release+0x86/0x280 net/socket.c:595
       sock_close+0x18/0x20 net/socket.c:1277
       __fput+0x285/0x920 fs/file_table.c:281
       delayed_fput+0x56/0x70 fs/file_table.c:309
       process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
       worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
       kthread+0x3b5/0x4a0 kernel/kthread.c:292
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294

-> #1 ((delayed_fput_work).work){+.+.}-{0:0}:
       process_one_work+0x8bb/0x1670 kernel/workqueue.c:2245
       worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
       kthread+0x3b5/0x4a0 kernel/kthread.c:292
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294

-> #0 ((wq_completion)events){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:2496 [inline]
       check_prevs_add kernel/locking/lockdep.c:2601 [inline]
       validate_chain kernel/locking/lockdep.c:3218 [inline]
       __lock_acquire+0x2a6b/0x5640 kernel/locking/lockdep.c:4426
       lock_acquire+0x1f1/0xad0 kernel/locking/lockdep.c:5005
       flush_workqueue+0x110/0x13e0 kernel/workqueue.c:2780
       flush_scheduled_work include/linux/workqueue.h:597 [inline]
       tipc_exit_net+0x47/0x2a0 net/tipc/core.c:116
       ops_exit_list+0xb0/0x160 net/core/net_namespace.c:186
       cleanup_net+0x4ea/0xb10 net/core/net_namespace.c:603
       process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
       worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
       kthread+0x3b5/0x4a0 kernel/kthread.c:292
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294

other info that might help us debug this:

Chain exists of:
  (wq_completion)events --> &sb->s_type->i_mutex_key#13 --> pernet_ops_rwsem

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(pernet_ops_rwsem);
                               lock(&sb->s_type->i_mutex_key#13);
                               lock(pernet_ops_rwsem);
  lock((wq_completion)events);

 *** DEADLOCK ***

3 locks held by kworker/u4:5/197:
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff8880a97b1138 ((wq_completion)netns){+.+.}-{0:0}, at: process_one_work+0x82b/0x1670 kernel/workqueue.c:2240
 #1: ffffc90001107da8 (net_cleanup_work){+.+.}-{0:0}, at: process_one_work+0x85f/0x1670 kernel/workqueue.c:2244
 #2: ffffffff8a879430 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0x9b/0xb10 net/core/net_namespace.c:565

stack backtrace:
CPU: 0 PID: 197 Comm: kworker/u4:5 Not tainted 5.9.0-rc2-next-20200828-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: netns cleanup_net
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 check_noncircular+0x324/0x3e0 kernel/locking/lockdep.c:1827
 check_prev_add kernel/locking/lockdep.c:2496 [inline]
 check_prevs_add kernel/locking/lockdep.c:2601 [inline]
 validate_chain kernel/locking/lockdep.c:3218 [inline]
 __lock_acquire+0x2a6b/0x5640 kernel/locking/lockdep.c:4426
 lock_acquire+0x1f1/0xad0 kernel/locking/lockdep.c:5005
 flush_workqueue+0x110/0x13e0 kernel/workqueue.c:2780
 flush_scheduled_work include/linux/workqueue.h:597 [inline]
 tipc_exit_net+0x47/0x2a0 net/tipc/core.c:116
 ops_exit_list+0xb0/0x160 net/core/net_namespace.c:186
 cleanup_net+0x4ea/0xb10 net/core/net_namespace.c:603
 process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2415

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
