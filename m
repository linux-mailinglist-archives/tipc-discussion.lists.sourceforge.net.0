Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B63B764
	for <lists+tipc-discussion@lfdr.de>; Mon, 10 Jun 2019 16:30:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1haLJy-0004Sk-RL; Mon, 10 Jun 2019 14:30:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1haLJx-0004Sc-Fl
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Jun 2019 14:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VaQQeniIaixELSuiqfMd7oYniKecnqldHHa2SMh6KVA=; b=AMEONctmI9y+7rCRG5xYFmboJK
 yU0X4YZ5a36wr0+fALPBwzX4lIXZZCu/pbbSnOWQ/O+BG6ka4J8t+WyZb4oDu6qfxBljTShEbqP38
 M6C1jwHxCHCHOKPatXzEJQGuS1JvzbyL2wWqb8p9p5STs/6hCR5fjfqh00KwtvYjX/WY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VaQQeniIaixELSuiqfMd7oYniKecnqldHHa2SMh6KVA=; b=l5r7/J5c7c+629O/zETf8Sv50f
 /o8+pqxCVkYJXoNIgy/HIC+N85jMFeyzYmWhPNdub3HmmOH3mehnPolnWy5KnNG5bqcm0Va/9JgPh
 2nK9Bfi0JeyMfIaKdnyR9aXdMwQlUuMA7NO7oyXjhObZvjbB1IiwS92lvDdsGsz8HWNw=;
Received: from mail-eopbgr800080.outbound.protection.outlook.com
 ([40.107.80.80] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1haLJt-006BDn-C4
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Jun 2019 14:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VaQQeniIaixELSuiqfMd7oYniKecnqldHHa2SMh6KVA=;
 b=ko4TaIcuNru761A5WWl/DY7fm9r00C6orqYHwo/Kne+OfwMq7SirUq1XgCHlBqtMcG6oUIxOZczS1VKvxdu6vClzGXaSeQOJWGXnYrBlWRvGhx+3FICwARvv2B2ysDo2p/HCcOC8FknvsO//1PnhONHw5N0OO8RcILcZxJ5oI4s=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3526.namprd15.prod.outlook.com (10.255.155.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Mon, 10 Jun 2019 11:57:52 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 11:57:52 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lucien.xin@gmail.com>, syzbot
 <syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com>
Thread-Topic: memory leak in tipc_buf_acquire
Thread-Index: AQHVEnY0xNBWYk+efkuiBxv6xDP03aaTwdEAgAEf77A=
Date: Mon, 10 Jun 2019 11:57:52 +0000
Message-ID: <CH2PR15MB3575EDA28674D0E5CC67EF5B9A130@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <000000000000000c060589a8bc66@google.com>
 <CADvbK_cMohjd3U=8H8ECT74rK85Tjy1FZYAXQQ_CsWgFq3c5gA@mail.gmail.com>
In-Reply-To: <CADvbK_cMohjd3U=8H8ECT74rK85Tjy1FZYAXQQ_CsWgFq3c5gA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5a40d19-7208-4d96-ee2a-08d6ed9ade0a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3526; 
x-ms-traffictypediagnostic: CH2PR15MB3526:
x-ms-exchange-purlcount: 8
x-microsoft-antispam-prvs: <CH2PR15MB3526B64FB4A773AC1F1D0F339A130@CH2PR15MB3526.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(366004)(39850400004)(189003)(199004)(13464003)(33656002)(8936002)(8676002)(81156014)(81166006)(7736002)(99286004)(7696005)(305945005)(86362001)(66066001)(110136005)(54906003)(316002)(6506007)(53546011)(229853002)(486006)(44832011)(6436002)(11346002)(446003)(102836004)(476003)(5660300002)(256004)(25786009)(52536014)(76176011)(4326008)(26005)(6246003)(14454004)(6116002)(2906002)(53936002)(478600001)(55016002)(71190400001)(3846002)(74316002)(66556008)(66946007)(64756008)(71200400001)(966005)(14444005)(186003)(68736007)(66446008)(66476007)(73956011)(6306002)(76116006)(9686003)(99710200001)(505234006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3526;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CPxkU/N9lsZAtKoJpCjCy0zjAyDcH4KY9HHoVnrMssgfwihNTmwkgxkoVceNtv/nKQK1RY0YQQypN/Gyp+zk9O8jdP3NEEwP/MUaTmeTLfwNVScNIaVeEGIhgz2H2t4Tj0BoY3ZDcJYyPBrV3vH/7a7XPtREuAnSSbRPqrr0iyJ9n/QHR/mD5MRGa0xkNti0Y+nwc4lbkgrEgwCYFhAhkrHnkXbq0LevkTAdeUtKOL4daDW+dzEp5VwyHqQY3nSxw/kPkWlad5VpqrDUMnJ6sqXVRjOx/goIuX8vLoPWjR2te6TmtGFxErHdKf8Ad8xSoZ6MiOoYsMPZA+Rp0asi8mZZS5CTuwor4NcgWh/sYUwa3XVBVMWc1BCWBYsvbrdzGi5ZwmfwlF3R1bMIVeH8N0Z5sdtvYSZgTSejIkU9N9s=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a40d19-7208-4d96-ee2a-08d6ed9ade0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 11:57:52.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-Headers-End: 1haLJt-006BDn-C4
Subject: Re: [tipc-discussion] memory leak in tipc_buf_acquire
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
Cc: network dev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Xin Long
> Sent: 9-Jun-19 14:45
> To: syzbot <syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com>
> Cc: davem <davem@davemloft.net>; Jon Maloy <jon.maloy@ericsson.com>;
> LKML <linux-kernel@vger.kernel.org>; network dev
> <netdev@vger.kernel.org>; syzkaller-bugs <syzkaller-
> bugs@googlegroups.com>; tipc-discussion@lists.sourceforge.net; Ying Xue
> <ying.xue@windriver.com>
> Subject: Re: memory leak in tipc_buf_acquire
> 
> On Sat, May 25, 2019 at 5:18 AM syzbot
> <syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com> wrote:
> >
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    4dde821e Merge tag 'xfs-5.2-fixes-1' of git://git.kernel.o..
> > git tree:       upstream
> > console output:
> > https://protect2.fireeye.com/url?k=2a9bdca3-761109b5-2a9b9c38-
> 862f14a9
> > 365e-
> 4ed8fb52eb782aab&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%
> 2F
> > log.txt%3Fx%3D107db73aa00000 kernel config:
> > https://protect2.fireeye.com/url?k=a1863015-fd0ce503-a186708e-
> 862f14a9
> > 365e-
> 04056f2111354660&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%
> 2F
> > .config%3Fx%3D61dd9e15a761691d dashboard link:
> > https://protect2.fireeye.com/url?k=ba923b23-e618ee35-ba927bb8-
> 862f14a9365e-
> 6187e2f343fe3a3e&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fbug
> %3Fextid%3D78fbe679c8ca8d264a8d
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://protect2.fireeye.com/url?k=27ea1a58-7b60cf4e-
> 27ea5ac3-862f14a9365e-
> f17f13fb7f100fa1&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2
> Frepro.syz%3Fx%3D162bd84ca00000
> > C reproducer:   https://protect2.fireeye.com/url?k=dbe4799b-876eac8d-
> dbe43900-862f14a9365e-
> 787a755a5a1800d6&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx
> %2Frepro.c%3Fx%3D160c605ca00000
> >
> Looks we need to purge each member's deferredq list in tipc_group_delete():
> diff --git a/net/tipc/group.c b/net/tipc/group.c index 992be61..23823eb
> 100644
> --- a/net/tipc/group.c
> +++ b/net/tipc/group.c
> @@ -218,6 +218,7 @@ void tipc_group_delete(struct net *net, struct
> tipc_group *grp)
> 
>   rbtree_postorder_for_each_entry_safe(m, tmp, tree, tree_node) {
>   tipc_group_proto_xmit(grp, m, GRP_LEAVE_MSG, &xmitq);
> + __skb_queue_purge(&m->deferredq);
>   list_del(&m->list);
>   kfree(m);
>   }

Yes, I think you are right. I'll check it further.

Thanks
///jon

> 
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
> >
> > type=1400 audit(1558701681.775:36): avc:  denied  { map } for
> > pid=7128 comm="syz-executor987" path="/root/syz-executor987656147"
> dev="sda1"
> > ino=15900 scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023
> > tcontext=unconfined_u:object_r:user_home_t:s0 tclass=file permissive=1
> > executing program executing program executing program executing
> > program
> > BUG: memory leak
> > unreferenced object 0xffff88810df83c00 (size 512):
> >    comm "softirq", pid 0, jiffies 4294942354 (age 19.830s)
> >    hex dump (first 32 bytes):
> >      38 1a 0d 0f 81 88 ff ff 38 1a 0d 0f 81 88 ff ff  8.......8.......
> >      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
> >    backtrace:
> >      [<000000009375ee42>] kmemleak_alloc_recursive
> > include/linux/kmemleak.h:55 [inline]
> >      [<000000009375ee42>] slab_post_alloc_hook mm/slab.h:439 [inline]
> >      [<000000009375ee42>] slab_alloc_node mm/slab.c:3269 [inline]
> >      [<000000009375ee42>] kmem_cache_alloc_node+0x153/0x2a0
> mm/slab.c:3579
> >      [<000000004c563922>] __alloc_skb+0x6e/0x210 net/core/skbuff.c:198
> >      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> > [inline]
> >      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
> >      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
> >      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> > net/tipc/group.c:679
> >      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> > net/tipc/group.c:781
> >      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996
> [inline]
> >      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> > net/tipc/socket.c:2163
> >      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
> >      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0
> net/tipc/socket.c:2306
> >      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0
> net/tipc/node.c:1442
> >      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491
> [inline]
> >      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> > net/tipc/node.c:1506
> >      [<00000000b6375182>] tipc_group_delete+0xe6/0x130
> net/tipc/group.c:224
> >      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0
> net/tipc/socket.c:2925
> >      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
> >      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
> >      [<00000000d3568ee0>] sock_close+0x1b/0x30 net/socket.c:1279
> >      [<00000000266a6215>] __fput+0xed/0x300 fs/file_table.c:280
> >
> > BUG: memory leak
> > unreferenced object 0xffff888111895400 (size 1024):
> >    comm "softirq", pid 0, jiffies 4294942354 (age 19.830s)
> >    hex dump (first 32 bytes):
> >      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
> >      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
> >    backtrace:
> >      [<00000000e2e2855e>] kmemleak_alloc_recursive
> > include/linux/kmemleak.h:55 [inline]
> >      [<00000000e2e2855e>] slab_post_alloc_hook mm/slab.h:439 [inline]
> >      [<00000000e2e2855e>] slab_alloc_node mm/slab.c:3269 [inline]
> >      [<00000000e2e2855e>] kmem_cache_alloc_node_trace+0x15b/0x2a0
> > mm/slab.c:3597
> >      [<00000000a5030ce7>] __do_kmalloc_node mm/slab.c:3619 [inline]
> >      [<00000000a5030ce7>] __kmalloc_node_track_caller+0x38/0x50
> > mm/slab.c:3634
> >      [<0000000039212451>] __kmalloc_reserve.isra.0+0x40/0xb0
> > net/core/skbuff.c:142
> >      [<00000000307cb4cf>] __alloc_skb+0xa0/0x210 net/core/skbuff.c:210
> >      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> > [inline]
> >      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
> >      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
> >      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> > net/tipc/group.c:679
> >      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> > net/tipc/group.c:781
> >      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996
> [inline]
> >      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> > net/tipc/socket.c:2163
> >      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
> >      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0
> net/tipc/socket.c:2306
> >      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0
> net/tipc/node.c:1442
> >      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491
> [inline]
> >      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> > net/tipc/node.c:1506
> >      [<00000000b6375182>] tipc_group_delete+0xe6/0x130
> net/tipc/group.c:224
> >      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0
> net/tipc/socket.c:2925
> >      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
> >      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
> >
> > BUG: memory leak
> > unreferenced object 0xffff88810e63de00 (size 512):
> >    comm "softirq", pid 0, jiffies 4294943548 (age 7.890s)
> >    hex dump (first 32 bytes):
> >      38 10 0d 0f 81 88 ff ff 38 10 0d 0f 81 88 ff ff  8.......8.......
> >      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
> >    backtrace:
> >      [<000000009375ee42>] kmemleak_alloc_recursive
> > include/linux/kmemleak.h:55 [inline]
> >      [<000000009375ee42>] slab_post_alloc_hook mm/slab.h:439 [inline]
> >      [<000000009375ee42>] slab_alloc_node mm/slab.c:3269 [inline]
> >      [<000000009375ee42>] kmem_cache_alloc_node+0x153/0x2a0
> mm/slab.c:3579
> >      [<000000004c563922>] __alloc_skb+0x6e/0x210 net/core/skbuff.c:198
> >      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> > [inline]
> >      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
> >      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
> >      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> > net/tipc/group.c:679
> >      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> > net/tipc/group.c:781
> >      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996
> [inline]
> >      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> > net/tipc/socket.c:2163
> >      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
> >      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0
> net/tipc/socket.c:2306
> >      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0
> net/tipc/node.c:1442
> >      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491
> [inline]
> >      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> > net/tipc/node.c:1506
> >      [<00000000b6375182>] tipc_group_delete+0xe6/0x130
> net/tipc/group.c:224
> >      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0
> net/tipc/socket.c:2925
> >      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
> >      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
> >      [<00000000d3568ee0>] sock_close+0x1b/0x30 net/socket.c:1279
> >      [<00000000266a6215>] __fput+0xed/0x300 fs/file_table.c:280
> >
> >
> >
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://protect2.fireeye.com/url?k=6424a141-38ae7457-6424e1da-
> 862f14a9365e-
> 29d28d4e37c9de97&q=1&u=https%3A%2F%2Fgoo.gl%2FtpsmEJ for more
> information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report. See:
> > https://protect2.fireeye.com/url?k=e3266fe7-bfacbaf1-e3262f7c-
> 862f14a9365e-
> 80a14dc097f61dfe&q=1&u=https%3A%2F%2Fgoo.gl%2FtpsmEJ%23status
> for how to communicate with syzbot.
> > syzbot can test patches for this bug, for details see:
> > https://protect2.fireeye.com/url?k=26e2f1e8-7a6824fe-26e2b173-
> 862f14a9
> > 365e-
> e569ee98f89625d4&q=1&u=https%3A%2F%2Fgoo.gl%2FtpsmEJ%23testing-
> pa
> > tches

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
