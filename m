Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A5FCA62
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 16:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fn0go2fWRLlf7NZ0brRPpL0Hbqr77BBg6lGTESvTwDI=; b=DlBgtiVjhWByF0XcSYnxCFxXx
	YF40CHI4fy8Lw5WccBKlf4nZ07G8Lw4X7AHktB3dwOPko0jp1xgs9tg+Kp/QHzrrM7mM22HNNxlY3
	/5tPvdXpmyBZhAKet00yUdDDW1ivBjDZUL+iJ0nBioFnWeJaRYAqU0YWRFGu8Sx35YJeQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVHVQ-0004Bq-Ua; Thu, 14 Nov 2019 15:58:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iVHVP-0004Bj-U8
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 15:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hDfYKeGBn11/0Ztiy0OuqSwpaA6xUyQhMIxwWYWW1Hg=; b=mhksbivPQjDnRNGxBVqxMImlug
 M+5Jr+dXmwV4ZnIDwDsCE2aVFQCPfvFQJ7qEohmPIdxFpVXWsGzH9OrvOfFtWsVm1CeNj+vGMg+zZ
 PhSMrZj6jbcg7392v0NRPD/CFLwwVt8OMUz1QMpQnUSclI1Qw9jU5KBFaPAIRRP2PafE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hDfYKeGBn11/0Ztiy0OuqSwpaA6xUyQhMIxwWYWW1Hg=; b=eek75bdCVI9kD//YWsxorNE8zb
 dTsevscBmEYRdo13DLHo9oNdA/ruIxT44zGP1Ksk3obwo6H/57IzZlAkBDxhtCGchMAqnYcTgpTR0
 zJ+xtc8E+rfpuiVDj8MM2UEDrqZTDV01qwVzCuw/K+mt9DAXeAGUVxAujgSsPmJcojyA=;
Received: from mail-eopbgr740049.outbound.protection.outlook.com
 ([40.107.74.49] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVHVK-003JtX-5V
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 15:57:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M0PRX7EbqgHSD92IKiwe40B+DfZHE0/xpDgKMq55WjFXVjp33cKFJ2fJiR5vwkLZC4yXTzgb5Wb6XbUIiioMbztpqjBVv7Rzm6U1F1FlEsxgdWF3PGE6whvksNZYivLN2FKhvVlmssH0VP4W1qyrsNp0kDAGQDStYnOPLaW2B4JyPHe+14g28LEF6eXx/h8/Yi3QMV6peqnhZhDquXeYgLNSJc52KGDIWts2erKf9dOt/VzSBZkU8Pwd3aWPOW2nf6gD/BL3OnGZwc4PnqvTvHp61Qz/vQx/0dfk3oVGgHU3CnXWBCRtEF0nSoI0z8oA2ajtJrXSrFRtcUe+Jc8jRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDfYKeGBn11/0Ztiy0OuqSwpaA6xUyQhMIxwWYWW1Hg=;
 b=LBhUu2suT4kI7YyD1Q+yD2aqU9A1bZ4l4kEZ0kle2/ZRFSUf+ZAKFoRxY6RmVf8eOzA1DUwEqlXuy6Z2l3XlwLWuoiCiCVqNPd/VCof/nFan39ZpWbsqOcWsaqFaaNowi5SATckazDfp/L/LHHirlF/DWfKJ7sggg8UP9zX6VQ9kg07GVUHH7TlqXYIIOclvoymMySFEtmwRO2smBTXkNZMoJk5o8KKx7/FmEIOkTy6YwC8j3e20+p6am7wF3jVgRCs5fpPcrb4yXvwYu1RexYTFC0SBZ71nHoNsIlHVntZgAI5O1ytAGXQzc+JIVz77/+qYlFzkrxNZ8Mszj9gj0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDfYKeGBn11/0Ztiy0OuqSwpaA6xUyQhMIxwWYWW1Hg=;
 b=HFCIiLY9S8PxbgprDdCUbJimb2O84s4GQbeZnxbELTYeqfwSP5P2QR0+kdqRJqt5CkMGipElWwoYBQPsGZRvJXzxlqtkzUqAeSY3WR/mwabMCXYgw8MuAH1YlISlryDXlDZQwGwtocJATPkVOSgZ0/R/BQOdC6HZs45iqBllq2g=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3687.namprd15.prod.outlook.com (52.132.229.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Thu, 14 Nov 2019 15:57:42 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.023; Thu, 14 Nov 2019
 15:57:42 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: update a binding service via broadcast
Thread-Index: AQHVmfT4lPJTAGBK1kC8cAMBR0q0JKeI/F+AgAFVToCAAHG1YA==
Date: Thu, 14 Nov 2019 15:57:41 +0000
Message-ID: <CH2PR15MB3575EA8F6705FE6C65D1E4DC9A710@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191113073521.9394-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575CFDEEA8400E6E06C994C9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
 <017401d59ac2$cd5bdc20$68139460$@dektech.com.au>
In-Reply-To: <017401d59ac2$cd5bdc20$68139460$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 682b5c14-26ac-4176-1ede-08d7691b61bf
x-ms-traffictypediagnostic: CH2PR15MB3687:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB368777B9BA04F2F5E149C0769A710@CH2PR15MB3687.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(396003)(376002)(366004)(136003)(199004)(189003)(51444003)(13464003)(86362001)(446003)(26005)(52536014)(2906002)(44832011)(186003)(14444005)(4326008)(76116006)(71190400001)(71200400001)(305945005)(2201001)(7736002)(6246003)(256004)(81156014)(81166006)(8936002)(8676002)(6506007)(53546011)(6116002)(5660300002)(33656002)(316002)(9686003)(110136005)(66446008)(55016002)(3846002)(30864003)(229853002)(7696005)(76176011)(6436002)(478600001)(66066001)(11346002)(74316002)(15650500001)(2501003)(25786009)(99286004)(476003)(66946007)(66476007)(66556008)(64756008)(486006)(102836004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3687;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x9jPpmB03gUt+Ub186UqiXjOC3lONXlmDkUzHy7O6pxzkms9eEX/svR9Bwdcum1xbyxgQijKn06Bd1CWLllk8y6F+Pm72y/Gre+Undub7tZ93Obiq7uAVj4O1PD5fcVjYZ2uiJpWUq4cqXvNaza3JjcgYkh51shKCwjWnh8YmqhrDD+0IrkkIsutSfaq/3wQIW8FUg0/nUgUpLRWKGWlpXa250eUUTlI++AphgCAMRXkcOuvxkd9N8Qshr4sffxPPn/hTTr73xdN3Opw1F4CmP5VaTh/CugP/LRLVSMdbSvkoQC6x115pO2U+2s/pBvH9jTFiQDV8efhY7/fRFeOmNX+9kbpYl2zA1uolW99OMPrgogUzjaNC05DnOHrmDhr8hQxAi0GKHUcu8Hw6C8eKost4EBKlyV917MQGGP2tZV4IDpjW13HPiZTw9vLB/4W
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 682b5c14-26ac-4176-1ede-08d7691b61bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 15:57:41.9224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qCP5jYvs6Dg7QHASpwvCEsV0qXJusNTzgATY71sv8bEAzO3vDVfxYHsK8WyUb5N7Kcs0/BKOGQdb9+cFWLGFSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3687
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.74.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVHVK-003JtX-5V
Subject: Re: [tipc-discussion] [net-next] tipc: update a binding service via
 broadcast
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Hoang,
You are complicating this too much. The 'syn' and 'rcast'  bits should remain internal for the bcast.c   rcast/bcast code, and we should not mess with those elsewhere.

Instead, you should add a bit in the NAME_DISTR header that marks if the message is bcast/rcast or bulk. For compatibility, this bit should be inverted, so that 1 means bcast/rcast ('not_bulk' or similar) and 0 means 'bulk'.  Then, you add another bit, in bulk messages only, meaning 'not_last'. 
The last bulk message has this bit set to zero, and at that moment you can set the link->named_sync and deliver the deferred queue.

As long as the link_named_sync bit is not set, you sort the messages as follows:

- Incoming !not_bulk/not_last messages go to the head of the named_deferred queue.
- Incoming not_bulk messages go to the tail of the named_deferred queue, irrespective of the not_last bit (which should be always zero anyway)
- Incoming !not_bulk/!not_last message is sorted in after the last !not_bulk/not_last message in the queue, and named_sync is set.

 Because all old messages will be !not_bulk/!not_last (0/0) those will never go into the deferred queue, and named_sync will be set from the start, so we have guaranteed backwards compatibility.

I leave it to you to find better name for those bits.

I think that should solve our problem in a reasonably simple way.

BR
///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 14-Nov-19 03:09
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> Cc: 'Ying Xue' <ying.xue@windriver.com>
> Subject: RE: [net-next] tipc: update a binding service via broadcast
> 
> Hi Jon,
> 
> Please take a look at v2. The mechanism looks the same as I did before in commit:
> c55c8edafa91 ("tipc: smooth change between replicast and broadcast")
> However, in this case we handle only one direction:  replicast -> broadcast.
> Then, it is still backward compatible.
> 
> [...]
> From ae2ee6a7064de3ec1dc2c7df2db241d22b0d129f Mon Sep 17 00:00:00 2001
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Date: Wed, 13 Nov 2019 14:01:03 +0700
> Subject: [PATCH] tipc: update a binding service via broadcast
> 
> Currently, updating binding table (add service binding to
> name table/withdraw a service binding) is being sent over replicast.
> However, if we are scaling up clusters to > 100 nodes/containers this
> method is less affection because of looping through nodes in a cluster one
> by one.
> 
> It is worth to use broadcast to update a binding service. Then binding
> table updates in all nodes for one shot.
> 
> The mechanism is backward compatible because of sending side changing.
> 
> v2: resolve synchronization problem when switching from unicast to
> broadcast
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/bcast.c      | 13 +++++++++++++
>  net/tipc/bcast.h      |  2 ++
>  net/tipc/link.c       | 16 ++++++++++++++++
>  net/tipc/name_distr.c |  8 ++++++++
>  net/tipc/name_table.c |  9 ++++++---
>  5 files changed, 45 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index f41096a759fa..18431fa897ab 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -843,3 +843,16 @@ void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>                 __skb_queue_tail(inputq, _skb);
>         }
>  }
> +
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb)
> +{
> +       struct sk_buff_head xmitq;
> +       u16 cong_link_cnt;
> +       int rc = 0;
> +
> +       __skb_queue_head_init(&xmitq);
> +       __skb_queue_tail(&xmitq, skb);
> +       rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
> +       __skb_queue_purge(&xmitq);
> +       return rc;
> +}
> diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> index dadad953e2be..a100da3800fc 100644
> --- a/net/tipc/bcast.h
> +++ b/net/tipc/bcast.h
> @@ -101,6 +101,8 @@ int tipc_bclink_reset_stats(struct net *net);
>  u32 tipc_bcast_get_broadcast_mode(struct net *net);
>  u32 tipc_bcast_get_broadcast_ratio(struct net *net);
> 
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb);
> +
>  void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>                            struct sk_buff_head *inputq);
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index fb72031228c9..22f1854435df 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -187,6 +187,9 @@ struct tipc_link {
>         struct tipc_link *bc_sndlink;
>         u8 nack_state;
>         bool bc_peer_is_up;
> +       bool named_sync;
> +       struct sk_buff_head defer_namedq;
> +
> 
>         /* Statistics */
>         struct tipc_stats stats;
> @@ -363,6 +366,7 @@ void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
>         trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
>         tipc_link_reset(rcv_l);
>         rcv_l->state = LINK_RESET;
> +       rcv_l->named_sync = false;
>         if (!snd_l->ackers) {
>                 trace_tipc_link_reset(snd_l, TIPC_DUMP_ALL, "zero ackers!");
>                 tipc_link_reset(snd_l);
> @@ -508,6 +512,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>         __skb_queue_head_init(&l->failover_deferdq);
>         skb_queue_head_init(&l->wakeupq);
>         skb_queue_head_init(l->inputq);
> +       __skb_queue_head_init(&l->defer_namedq);
>         return true;
>  }
> 
> @@ -932,6 +937,8 @@ void tipc_link_reset(struct tipc_link *l)
>         l->silent_intv_cnt = 0;
>         l->rst_cnt = 0;
>         l->bc_peer_is_up = false;
> +       l->named_sync = false;
> +       __skb_queue_purge(&l->defer_namedq);
>         memset(&l->mon_state, 0, sizeof(l->mon_state));
>         tipc_link_reset_stats(l);
>  }
> @@ -1210,6 +1217,15 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
>                 return true;
>         case NAME_DISTRIBUTOR:
>                 l->bc_rcvlink->state = LINK_ESTABLISHED;
> +               if (msg_is_syn(hdr)) {
> +                       l->bc_rcvlink->named_sync = true;
> +                       skb_queue_splice_tail_init(&l->defer_namedq, l->namedq);

I think you would leak the skb here. It is not added to the queue and not deleted.

> +                       return true;
> +               }
> +               if (msg_is_rcast(hdr) && !l->bc_rcvlink->named_sync) {
> +                       skb_queue_tail(&l->defer_namedq, skb);
> +                       return true;
> +               }
>                 skb_queue_tail(l->namedq, skb);
>                 return true;
>         case MSG_BUNDLER:
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 5feaf3b67380..419b3f0f102d 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -180,6 +180,14 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
>                 skb_trim(skb, INT_H_SIZE + (msg_dsz - msg_rem));
>                 __skb_queue_tail(list, skb);
>         }
> +
> +       /* Allocate dummy message in order to synchronize w/bcast */
> +       skb = named_prepare_buf(net, PUBLICATION, 0, dnode);
> +       if (skb) {
> +               /* Preparing for 'synching' header */
> +               msg_set_syn(buf_msg(skb), 1);
> +               __skb_queue_tail(list, skb);
> +       }
>  }
> 
>  /**
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 66a65c2cdb23..4ba6d73e5c4c 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -632,8 +632,10 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>  exit:
>         spin_unlock_bh(&tn->nametbl_lock);
> 
> -       if (skb)
> -               tipc_node_broadcast(net, skb);
> +       if (skb) {
> +               msg_set_is_rcast(buf_msg(skb), true);
> +               tipc_bcast_named_publish(net, skb);
> +       }
>         return p;
>  }
> 
> @@ -664,7 +666,8 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>         spin_unlock_bh(&tn->nametbl_lock);
> 
>         if (skb) {
> -               tipc_node_broadcast(net, skb);
> +               msg_set_is_rcast(buf_msg(skb), true);
> +               tipc_bcast_named_publish(net, skb);
>                 return 1;
>         }
>         return 0;
> --
> 2.20.1
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Wednesday, November 13, 2019 7:02 PM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; tipc-
> discussion@lists.sourceforge.net
> Cc: 'Ying Xue' <ying.xue@windriver.com>
> Subject: RE: [net-next] tipc: update a binding service via broadcast
> 
> Hi Hoang,
> This is good, but you have missed the point about the synchronization problem I have been talking about.
> 
> 1) A new node comes up
> 2) The "bulk" binding table update is sent, as a series of packets over the new unicast link. This may take
> some time.
> 3) The owner of one of the bindings in the bulk (on this node) does unbind.
> 4) This is sent as broadcast withdraw to all nodes, and arrives before the last packets of the unicast bulk to
> the newly connected node.
> 5) Since there is no corresponding publication in the peer node's binding table yet, the withdraw is ignored.
> 6) The last bulk unicasts arrive at the new peer, and the now invalid publication is added to its binding
> table.
> 7) This publication will stay there forever.
> 
> We need to find a way to synchronize so that we know that all the bulk publications are in place in the
> binding table before any broadcast publications/withdraws can be accepted.
> Obviously, we could create a backlog queue in the name table, but I hope we can find a simpler and neater
> solution.
> 
> Regards
> ///jon
> 
> > -----Original Message-----
> > From: Hoang Le <hoang.h.le@dektech.com.au>
> > Sent: 13-Nov-19 02:35
> > To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> > Subject: [net-next] tipc: update a binding service via broadcast
> >
> > Currently, updating binding table (add service binding to
> > name table/withdraw a service binding) is being sent over replicast.
> > However, if we are scaling up clusters to > 100 nodes/containers this
> > method is less affection because of looping through nodes in a cluster one
> > by one.
> >
> > It is worth to use broadcast to update a binding service. Then binding
> > table updates in all nodes for one shot.
> >
> > The mechanism is backward compatible because of sending side changing.
> >
> > Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> > ---
> >  net/tipc/bcast.c      | 13 +++++++++++++
> >  net/tipc/bcast.h      |  2 ++
> >  net/tipc/name_table.c |  4 ++--
> >  3 files changed, 17 insertions(+), 2 deletions(-)
> >
> > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> > index f41096a759fa..18431fa897ab 100644
> > --- a/net/tipc/bcast.c
> > +++ b/net/tipc/bcast.c
> > @@ -843,3 +843,16 @@ void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
> >  		__skb_queue_tail(inputq, _skb);
> >  	}
> >  }
> > +
> > +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb)
> > +{
> > +	struct sk_buff_head xmitq;
> > +	u16 cong_link_cnt;
> > +	int rc = 0;
> > +
> > +	__skb_queue_head_init(&xmitq);
> > +	__skb_queue_tail(&xmitq, skb);
> > +	rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
> > +	__skb_queue_purge(&xmitq);
> > +	return rc;
> > +}
> > diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> > index dadad953e2be..a100da3800fc 100644
> > --- a/net/tipc/bcast.h
> > +++ b/net/tipc/bcast.h
> > @@ -101,6 +101,8 @@ int tipc_bclink_reset_stats(struct net *net);
> >  u32 tipc_bcast_get_broadcast_mode(struct net *net);
> >  u32 tipc_bcast_get_broadcast_ratio(struct net *net);
> >
> > +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb);
> > +
> >  void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
> >  			   struct sk_buff_head *inputq);
> >
> > diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> > index 66a65c2cdb23..9e9c61f7c999 100644
> > --- a/net/tipc/name_table.c
> > +++ b/net/tipc/name_table.c
> > @@ -633,7 +633,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
> >  	spin_unlock_bh(&tn->nametbl_lock);
> >
> >  	if (skb)
> > -		tipc_node_broadcast(net, skb);
> > +		tipc_bcast_named_publish(net, skb);
> >  	return p;
> >  }
> >
> > @@ -664,7 +664,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
> >  	spin_unlock_bh(&tn->nametbl_lock);
> >
> >  	if (skb) {
> > -		tipc_node_broadcast(net, skb);
> > +		tipc_bcast_named_publish(net, skb);
> >  		return 1;
> >  	}
> >  	return 0;
> > --
> > 2.20.1
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
