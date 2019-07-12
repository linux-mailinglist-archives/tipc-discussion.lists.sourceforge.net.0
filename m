Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E8A6702E
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Jul 2019 15:35:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hlvi8-00089I-81; Fri, 12 Jul 2019 13:35:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hlvi6-000899-SF
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 13:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mOs/onyuvwBe+d48Ynim9WFKw/OPCBnL7quQOO9kq+8=; b=RMxsxgZI6F+YKK6KW3ip0MDEvk
 FO7jsSSEi2NRZ41ugysaehBLjCp2YrrApIBSSvGfXsazqR9H2CHV9Eg/ens9Du0wiTBI6bkca4Oya
 De90rRYQfRdNO+GjriJ5INGQJMUxxI6EPQ97aeT4vW/AGygtar75IbGBulkqEF9U+cKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mOs/onyuvwBe+d48Ynim9WFKw/OPCBnL7quQOO9kq+8=; b=VmFPIGCuIbYja0KUO1Kx/DWxEb
 PeNcVVd+ajAqZ1yO9SLuJFOp74yAMlXcj6Z7YdeqiXsIE371SHr1jOYSBHopHn6fsNqK4q3BmbWCF
 BuDMRyAt029wXYOLW9WLVRFYQTxJYTjez28zNJdolQnmADo5SIxdFYriJKy3pWLZloJ8=;
Received: from mail-eopbgr790089.outbound.protection.outlook.com
 ([40.107.79.89] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlvi2-00GN7s-NP
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 13:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOs/onyuvwBe+d48Ynim9WFKw/OPCBnL7quQOO9kq+8=;
 b=UY3MBG5yXQEPTSrxXrzTqgOcH79EK4oAZ3HhSiVCrUUsT8NvAn0xeMPxSrQshCr4gGomuEzzoLN2yFY1iyGSwKZwGXKxziDPRQrCswiKQlfTX5NGoXTN4JZ5a46mr/bXxlBh+YxzfrgfLPf/EWMiM3ab0rn8HV6VlYRevaZQSOM=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3656.namprd15.prod.outlook.com (52.132.229.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Fri, 12 Jul 2019 13:35:27 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2073.008; Fri, 12 Jul 2019
 13:35:27 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 "eric.dumazet@gmail.com" <eric.dumazet@gmail.com>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v2] tipc: ensure head->lock is initialised
Thread-Index: AQHVODnNEHBSydfkNkiklxzCzKphuKbG9Kpw
Date: Fri, 12 Jul 2019 13:35:26 +0000
Message-ID: <CH2PR15MB3575CECCB65404A0292B68759AF20@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190711224115.21499-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190711224115.21499-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78725d05-fcc3-4cb5-9e4e-08d706cdccf8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3656; 
x-ms-traffictypediagnostic: CH2PR15MB3656:
x-microsoft-antispam-prvs: <CH2PR15MB36562282307A1AE20CE23D699AF20@CH2PR15MB3656.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(13464003)(199004)(189003)(74316002)(476003)(52536014)(7696005)(76176011)(25786009)(53546011)(102836004)(110136005)(86362001)(54906003)(8936002)(256004)(5660300002)(81156014)(7736002)(8676002)(99286004)(68736007)(14444005)(6506007)(26005)(3846002)(305945005)(81166006)(6116002)(4326008)(14454004)(53936002)(66476007)(478600001)(446003)(71200400001)(2201001)(316002)(44832011)(2501003)(186003)(66446008)(64756008)(66946007)(76116006)(486006)(2906002)(66556008)(11346002)(66066001)(6246003)(55016002)(229853002)(6436002)(45080400002)(9686003)(33656002)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3656;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: COba7c/03QhoU0IIgRYnXipC6w6PIPoQUmQePLZLPI5T8SoHPllujkbIxdvu5Air+eRq+a7uoqk5nHNGIKnRVj8iZX4nAvq2zBOeVpjSeDnLQgHHEIDwCOEgmXWJ5CFqlsoToY957CBznbutAjTWq3QOQr7hGES7QlczIrZXiynWuTGnYf8rVT35/pz9Ai7UP1daPi2GG719XfdIKDS/7LrkEjmazoM5cpVGsp0eROwJv3dnuoYRP4CwolxR9Xj9ZmWDpfkNLMa+IZy9jr7+63wQWylGcWR7h6Eqth/bi2NoLxUlOEdGgJB0te6xiCqAYpxQx/8fVJtl/zObeQJkBZg+lSCYNwWuLuFiOdQ3PudlS9G5beYiT7IMD6nzRjT6asymuHaPwhSAG1Zl6/PtKvPq4LfIuLQWlakS2VGjXvo=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78725d05-fcc3-4cb5-9e4e-08d706cdccf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 13:35:26.9954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3656
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.79.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hlvi2-00GN7s-NP
Subject: Re: [tipc-discussion] [PATCH v2] tipc: ensure head->lock is
 initialised
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

Actually, this was not what I meant, but it solves our problem in a simple and safe way, for now.
Later, when net-next opens, I will revert this and do it the right way, which is to change from skb_queue_purge() to __skb_queue_purge as Eric correctly noted.
That change has to be done at four locations, at least,  and is too intrusive to post to 'net' now.
I'll send a cleanup patch when net-next re-opens.

BR
///jon
 

> -----Original Message-----
> From: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Sent: 11-Jul-19 18:41
> To: Jon Maloy <jon.maloy@ericsson.com>; eric.dumazet@gmail.com;
> ying.xue@windriver.com; davem@davemloft.net
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; tipc-
> discussion@lists.sourceforge.net; Chris Packham
> <chris.packham@alliedtelesis.co.nz>
> Subject: [PATCH v2] tipc: ensure head->lock is initialised
> 
> tipc_named_node_up() creates a skb list. It passes the list to
> tipc_node_xmit() which has some code paths that can call
> skb_queue_purge() which relies on the list->lock being initialised.
> 
> The spin_lock is only needed if the messages end up on the receive path but
> when the list is created in tipc_named_node_up() we don't necessarily know if
> it is going to end up there.
> 
> Once all the skb list users are updated in tipc it will then be possible to update
> them to use the unlocked variants of the skb list functions and initialise the
> lock when we know the message will follow the receive path.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> I'm updating our products to use the latest kernel. One change that we have
> that doesn't appear to have been upstreamed is related to the following soft
> lockup.
> 
> NMI watchdog: BUG: soft lockup - CPU#3 stuck for 23s! [swapper/3:0]
> Modules linked in: tipc jitterentropy_rng echainiv drbg platform_driver(O)
> ipifwd(PO)
> CPU: 3 PID: 0 Comm: swapper/3 Tainted: P           O    4.4.6-at1 #1
> task: a3054e00 ti: ac6b4000 task.ti: a307a000
> NIP: 806891c4 LR: 804f5060 CTR: 804f50d0
> REGS: ac6b59b0 TRAP: 0901   Tainted: P           O     (4.4.6-at1)
> MSR: 00029002 <CE,EE,ME>  CR: 84002088  XER: 20000000
> 
> GPR00: 804f50fc ac6b5a60 a3054e00 00029002 00000101 01001011
> 00000000 00000001
> GPR08: 00021002 c1502d1c ac6b5ae4 00000000 804f50d0 NIP [806891c4]
> _raw_spin_lock_irqsave+0x44/0x80 LR [804f5060] skb_dequeue+0x20/0x90
> Call Trace:
> [ac6b5a80] [804f50fc] skb_queue_purge+0x2c/0x50 [ac6b5a90] [c1511058]
> tipc_node_xmit+0x138/0x170 [tipc] [ac6b5ad0] [c1509e58]
> tipc_named_node_up+0x88/0xa0 [tipc] [ac6b5b00] [c150fc1c]
> tipc_netlink_compat_stop+0x9bc/0xf50 [tipc] [ac6b5b20] [c1511638]
> tipc_rcv+0x418/0x9b0 [tipc] [ac6b5bc0] [c150218c]
> tipc_bcast_stop+0xfc/0x7b0 [tipc] [ac6b5bd0] [80504e38]
> __netif_receive_skb_core+0x468/0xa10
> [ac6b5c70] [805082fc] netif_receive_skb_internal+0x3c/0xe0
> [ac6b5ca0] [80642a48] br_handle_frame_finish+0x1d8/0x4d0
> [ac6b5d10] [80642f30] br_handle_frame+0x1f0/0x330 [ac6b5d60]
> [80504ec8] __netif_receive_skb_core+0x4f8/0xa10
> [ac6b5e00] [805082fc] netif_receive_skb_internal+0x3c/0xe0
> [ac6b5e30] [8044c868] _dpa_rx+0x148/0x5c0 [ac6b5ea0] [8044b0c8]
> priv_rx_default_dqrr+0x98/0x170 [ac6b5ed0] [804d1338]
> qman_p_poll_dqrr+0x1b8/0x240 [ac6b5f00] [8044b1c0]
> dpaa_eth_poll+0x20/0x60 [ac6b5f20] [805087cc]
> net_rx_action+0x15c/0x320 [ac6b5f80] [8002594c]
> __do_softirq+0x13c/0x250 [ac6b5fe0] [80025c34] irq_exit+0xb4/0xf0
> [ac6b5ff0] [8000d81c] call_do_irq+0x24/0x3c [a307be60] [80004acc]
> do_IRQ+0x8c/0x120 [a307be80] [8000f450] ret_from_except+0x0/0x18
> --- interrupt: 501 at arch_cpu_idle+0x24/0x70
> 
> Eyeballing the code I think it can still happen since tipc_named_node_up
> allocates struct sk_buff_head head on the stack so it could have arbitrary
> content.
> 
> Changes in v2:
> - fixup commit subject
> - add more information to commit message from mailing list discussion
> 
>  net/tipc/name_distr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c index
> 61219f0b9677..44abc8e9c990 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -190,7 +190,7 @@ void tipc_named_node_up(struct net *net, u32
> dnode)
>  	struct name_table *nt = tipc_name_table(net);
>  	struct sk_buff_head head;
> 
> -	__skb_queue_head_init(&head);
> +	skb_queue_head_init(&head);
> 
>  	read_lock_bh(&nt->cluster_scope_lock);
>  	named_distribute(net, &head, dnode, &nt->cluster_scope);
> --
> 2.22.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
