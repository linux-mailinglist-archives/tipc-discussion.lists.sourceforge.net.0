Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC644CE56
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 15:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdwoq-0005aD-3w; Thu, 20 Jun 2019 13:09:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hdwoo-0005Zl-JV
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 13:09:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9sDCGNmZUECGsr3nVdfuQiGkdHI94DvBf23hSyYSvto=; b=BURNUtwatxLdXwaGGxzVP7Cein
 9witHS0PbQJS0DO+QlsnvBeVUIfQW1CfZclRfBzi/AEPZMHEi8O9z2PjdTxYzCxQCLEW8SMIoyloJ
 04aaFuWbCgKim48iADoPbxF910Y1c0JXKZyyZ9Y+sxjqIvolwJkHyZVRAMRzfUe8rwO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9sDCGNmZUECGsr3nVdfuQiGkdHI94DvBf23hSyYSvto=; b=md4yDqxBLd20r3I/+nUvs3sYGe
 7uF68Gx5qD5ALLgAqEb9rniCwWo0QksL0IkqGEoiS8ZY22HfjeXr+77L+A8mVACUVZs/Pkgo80qjX
 Vmv+AyRWW1TeF28SN/T5IOAFXBxaOSgXVYLIt6Cyo04MIkpeP0Its1DoCCEdAI3WX4GM=;
Received: from mail-eopbgr810045.outbound.protection.outlook.com
 ([40.107.81.45] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdwol-0066Tj-AY
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 13:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9sDCGNmZUECGsr3nVdfuQiGkdHI94DvBf23hSyYSvto=;
 b=mx1C4gtceMjGWWMlxlZBGnxuE6o47kHdgfO1gIqDeoVMQ/dp+lHGn49iLspRSgVUeHi2GVm32eOJELd9mDHs25Q15K7dFG4hvbOmdLsKQMUbECSl1IdwRDL2jOo8uBFg7ifmRPaqv67bWIMv5RE4b1QlpGYhQAaHfc1Y49VeKyI=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3718.namprd15.prod.outlook.com (52.132.230.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 12:53:47 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 12:53:47 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] tipc: add dst_cache support for udp media
Thread-Index: AQHVJ1fdyQpCetQ/80yiS387zwmpZqakf6Bw
Date: Thu, 20 Jun 2019 12:53:47 +0000
Message-ID: <CH2PR15MB357599BE22BDF91442D5E5469AE40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <0ea2e8519f14d5c9e7bb7ba82a5be371bd4cb9ab.1561028621.git.lucien.xin@gmail.com>
In-Reply-To: <0ea2e8519f14d5c9e7bb7ba82a5be371bd4cb9ab.1561028621.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea87bf2e-ee2d-4819-e195-08d6f57e5626
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3718; 
x-ms-traffictypediagnostic: CH2PR15MB3718:
x-microsoft-antispam-prvs: <CH2PR15MB3718E5D3348A42206CBA7E6C9AE40@CH2PR15MB3718.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:125;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39850400004)(346002)(396003)(376002)(199004)(189003)(13464003)(256004)(64756008)(66066001)(305945005)(74316002)(86362001)(66946007)(33656002)(7736002)(71200400001)(55016002)(68736007)(25786009)(2906002)(6436002)(53936002)(54906003)(9686003)(26005)(3846002)(229853002)(6506007)(6116002)(8936002)(53546011)(14444005)(4326008)(8676002)(71190400001)(316002)(14454004)(99286004)(6246003)(76176011)(7696005)(102836004)(81156014)(476003)(44832011)(81166006)(52536014)(5660300002)(66556008)(478600001)(486006)(186003)(110136005)(446003)(66476007)(11346002)(76116006)(66446008)(73956011)(237434003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3718;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XKUrB1BRCSFdiQV74c0YSa0BrApKMsdFDtVtCc2hAefl1tdm4dn1wwuc+ofH0VrEldhEry4zipY4awgY/3fJUgOQtRucXDOpM5qKkGhsyG48BYxjyOsSNUJCLhbTgSgpHE9siY2PptG3ilzop4iJE7mnvyba7if+zNxiAin7py0XyAokLooIlyttVEZONUPkvNmtfZEWTtxQ0XSZIcSBm6FXt5sMh06IJCT/ORP9UfabA0nfzA5VaxJuaaZmG4R0QJ5EhSfYVvDd1FrUNSPU9NYGGS9fSXbSm6ylv5QiB+ly93HxfQ1rGhXHv2gIFLweKN4jidY5SGCi280A/P3x/Cytxew6x+lj1/nPJ66PtoJfT1CDGM0oCqmsQao5wW4h27kXjRYiYqG99u+OI6e0BKZfUvz98XmiFIE8XDGEOEk=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea87bf2e-ee2d-4819-e195-08d6f57e5626
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 12:53:47.7937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3718
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.81.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hdwol-0066Tj-AY
Subject: Re: [tipc-discussion] [PATCH net] tipc: add dst_cache support for
 udp media
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
Cc: Paolo Abeni <pabeni@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Xin Long
> Sent: 20-Jun-19 07:04
> To: network dev <netdev@vger.kernel.org>
> Cc: davem@davemloft.net; Jon Maloy <jon.maloy@ericsson.com>; Ying Xue
> <ying.xue@windriver.com>; tipc-discussion@lists.sourceforge.net; Paolo
> Abeni <pabeni@redhat.com>
> Subject: [PATCH net] tipc: add dst_cache support for udp media
> 
> As other udp/ip tunnels do, tipc udp media should also have a lockless
> dst_cache supported on its tx path.
> 
> Here we add dst_cache into udp_replicast to support dst cache for both
> rmcast and rcast, and rmcast uses ub->rcast and each rcast uses its own node
> in ub->rcast.list.
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>  net/tipc/udp_media.c | 72 ++++++++++++++++++++++++++++++++++-------
> -----------
>  1 file changed, 47 insertions(+), 25 deletions(-)
> 
> diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c index
> 1405ccc..b8962df 100644
> --- a/net/tipc/udp_media.c
> +++ b/net/tipc/udp_media.c
> @@ -76,6 +76,7 @@ struct udp_media_addr {
>  /* struct udp_replicast - container for UDP remote addresses */  struct
> udp_replicast {
>  	struct udp_media_addr addr;
> +	struct dst_cache dst_cache;
>  	struct rcu_head rcu;
>  	struct list_head list;
>  };
> @@ -158,22 +159,27 @@ static int tipc_udp_addr2msg(char *msg, struct
> tipc_media_addr *a)
>  /* tipc_send_msg - enqueue a send request */  static int tipc_udp_xmit(struct
> net *net, struct sk_buff *skb,
>  			 struct udp_bearer *ub, struct udp_media_addr *src,
> -			 struct udp_media_addr *dst)
> +			 struct udp_media_addr *dst, struct dst_cache *cache)
>  {
> +	struct dst_entry *ndst = dst_cache_get(cache);
>  	int ttl, err = 0;
> -	struct rtable *rt;
> 
>  	if (dst->proto == htons(ETH_P_IP)) {
> -		struct flowi4 fl = {
> -			.daddr = dst->ipv4.s_addr,
> -			.saddr = src->ipv4.s_addr,
> -			.flowi4_mark = skb->mark,
> -			.flowi4_proto = IPPROTO_UDP
> -		};
> -		rt = ip_route_output_key(net, &fl);
> -		if (IS_ERR(rt)) {
> -			err = PTR_ERR(rt);
> -			goto tx_error;
> +		struct rtable *rt = (struct rtable *)ndst;
> +
> +		if (!rt) {
> +			struct flowi4 fl = {
> +				.daddr = dst->ipv4.s_addr,
> +				.saddr = src->ipv4.s_addr,
> +				.flowi4_mark = skb->mark,
> +				.flowi4_proto = IPPROTO_UDP
> +			};
> +			rt = ip_route_output_key(net, &fl);
> +			if (IS_ERR(rt)) {
> +				err = PTR_ERR(rt);
> +				goto tx_error;
> +			}
> +			dst_cache_set_ip4(cache, &rt->dst, fl.saddr);
>  		}
> 
>  		ttl = ip4_dst_hoplimit(&rt->dst);
> @@ -182,17 +188,19 @@ static int tipc_udp_xmit(struct net *net, struct
> sk_buff *skb,
>  				    dst->port, false, true);
>  #if IS_ENABLED(CONFIG_IPV6)
>  	} else {
> -		struct dst_entry *ndst;
> -		struct flowi6 fl6 = {
> -			.flowi6_oif = ub->ifindex,
> -			.daddr = dst->ipv6,
> -			.saddr = src->ipv6,
> -			.flowi6_proto = IPPROTO_UDP
> -		};
> -		err = ipv6_stub->ipv6_dst_lookup(net, ub->ubsock->sk, &ndst,
> -						 &fl6);
> -		if (err)
> -			goto tx_error;
> +		if (!ndst) {
> +			struct flowi6 fl6 = {
> +				.flowi6_oif = ub->ifindex,
> +				.daddr = dst->ipv6,
> +				.saddr = src->ipv6,
> +				.flowi6_proto = IPPROTO_UDP
> +			};
> +			err = ipv6_stub->ipv6_dst_lookup(net, ub->ubsock->sk,
> +							 &ndst, &fl6);
> +			if (err)
> +				goto tx_error;
> +			dst_cache_set_ip6(cache, ndst, &fl6.saddr);
> +		}
>  		ttl = ip6_dst_hoplimit(ndst);
>  		err = udp_tunnel6_xmit_skb(ndst, ub->ubsock->sk, skb, NULL,
>  					   &src->ipv6, &dst->ipv6, 0, ttl, 0, @@ -230,7
> +238,8 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
>  	}
> 
>  	if (addr->broadcast != TIPC_REPLICAST_SUPPORT)
> -		return tipc_udp_xmit(net, skb, ub, src, dst);
> +		return tipc_udp_xmit(net, skb, ub, src, dst,
> +				     &ub->rcast.dst_cache);
> 
>  	/* Replicast, send an skb to each configured IP address */
>  	list_for_each_entry_rcu(rcast, &ub->rcast.list, list) { @@ -242,7 +251,8
> @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
>  			goto out;
>  		}
> 
> -		err = tipc_udp_xmit(net, _skb, ub, src, &rcast->addr);
> +		err = tipc_udp_xmit(net, _skb, ub, src, &rcast->addr,
> +				    &rcast->dst_cache);
>  		if (err)
>  			goto out;
>  	}
> @@ -286,6 +296,11 @@ static int tipc_udp_rcast_add(struct tipc_bearer *b,
>  	if (!rcast)
>  		return -ENOMEM;
> 
> +	if (dst_cache_init(&rcast->dst_cache, GFP_ATOMIC)) {
> +		kfree(rcast);
> +		return -ENOMEM;
> +	}
> +
>  	memcpy(&rcast->addr, addr, sizeof(struct udp_media_addr));
> 
>  	if (ntohs(addr->proto) == ETH_P_IP)
> @@ -742,6 +757,10 @@ static int tipc_udp_enable(struct net *net, struct
> tipc_bearer *b,
>  	tuncfg.encap_destroy = NULL;
>  	setup_udp_tunnel_sock(net, ub->ubsock, &tuncfg);
> 
> +	err = dst_cache_init(&ub->rcast.dst_cache, GFP_ATOMIC);
> +	if (err)
> +		goto err;
> +
>  	/**
>  	 * The bcast media address port is used for all peers and the ip
>  	 * is used if it's a multicast address.
> @@ -756,6 +775,7 @@ static int tipc_udp_enable(struct net *net, struct
> tipc_bearer *b,
> 
>  	return 0;
>  err:
> +	dst_cache_destroy(&ub->rcast.dst_cache);
>  	if (ub->ubsock)
>  		udp_tunnel_sock_release(ub->ubsock);
>  	kfree(ub);
> @@ -769,10 +789,12 @@ static void cleanup_bearer(struct work_struct
> *work)
>  	struct udp_replicast *rcast, *tmp;
> 
>  	list_for_each_entry_safe(rcast, tmp, &ub->rcast.list, list) {
> +		dst_cache_destroy(&rcast->dst_cache);
>  		list_del_rcu(&rcast->list);
>  		kfree_rcu(rcast, rcu);
>  	}
> 
> +	dst_cache_destroy(&ub->rcast.dst_cache);
>  	if (ub->ubsock)
>  		udp_tunnel_sock_release(ub->ubsock);
>  	synchronize_net();
> --
> 2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
