Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDF84CD79
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 14:11:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdvtx-0000dY-No; Thu, 20 Jun 2019 12:10:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hdvtw-0000d9-Ev
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 12:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hIj0g03Gp+xHVZr1Ljy6H5pFaCZiJk92GqetgTDvI7w=; b=EJCb7ZOMqOP+kOncU3A8LlXzIH
 +T0CSw0OY7ABtAB6/jaYC0lE2lr0ZikgEOF9MyZYIrqfEzMEbTwiiJsk8F/oN7KoXwGOwmpU7zYum
 w+ELh8aEFi96qRjof3afw2XEYoD4zsAujEiju7RW0VHorUZu1TSlknMto278dgGSl2xQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hIj0g03Gp+xHVZr1Ljy6H5pFaCZiJk92GqetgTDvI7w=; b=RRo9ratic3MAWe2lIAC8TzmA1t
 /4UdGLAe/oSsB2g9Mg7cBn+P9wVtcGCEU8ln4bZdn3t5ValBQqMn45uehZL6wghTA+0rxk6Mqdvmf
 bL1ZqYpC9s56mT9VtjSau6kxaneZdaspZTwvEz0KBjXE0+lPpc9r02BHxmXU+Bv0sWps=;
Received: from mail-eopbgr750072.outbound.protection.outlook.com
 ([40.107.75.72] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdvtu-006RA4-FO
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 12:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hIj0g03Gp+xHVZr1Ljy6H5pFaCZiJk92GqetgTDvI7w=;
 b=aAAV5HRrgjhq5mCRRGNJH6nveS7X7OjmuZ27sBcVarGrbHYPaVIsAWZWVZcSPOXvxprdHKcfruw97MjnA5d1yrNrzOMP/vS9EYQhBr3WkMF95ksWjaGvpOQwdz+zHJjrMhMSGOIn4MAOQcBoWherDZlVpndJoUuqeNhzgueEW40=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3637.namprd15.prod.outlook.com (52.132.229.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 12:10:38 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 12:10:38 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: John Rutherford <john.rutherford@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next v2] tipc: add loopback device
 tracking
Thread-Index: AQHVJjOoVlYmQO4/FkuNyB83Bifvbqakdc8g
Date: Thu, 20 Jun 2019 12:10:37 +0000
Message-ID: <CH2PR15MB3575BED7CF492092ECE825449AE40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190619001118.16154-1-john.rutherford@dektech.com.au>
In-Reply-To: <20190619001118.16154-1-john.rutherford@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e77f12b-62f2-4fe0-7116-08d6f5784e80
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3637; 
x-ms-traffictypediagnostic: CH2PR15MB3637:
x-ms-exchange-purlcount: 1
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3637D10DA3CA5D0EFB58D05E9AE40@CH2PR15MB3637.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(39850400004)(396003)(366004)(13464003)(199004)(189003)(7696005)(102836004)(2906002)(71190400001)(7736002)(110136005)(26005)(5660300002)(81166006)(2501003)(11346002)(76176011)(316002)(305945005)(6246003)(68736007)(478600001)(53936002)(8936002)(44832011)(8676002)(186003)(446003)(55016002)(486006)(86362001)(81156014)(229853002)(256004)(5024004)(14454004)(9686003)(3846002)(476003)(25786009)(6436002)(14444005)(66066001)(33656002)(6306002)(76116006)(966005)(53546011)(66946007)(6506007)(64756008)(73956011)(99286004)(66476007)(52536014)(6116002)(74316002)(66446008)(71200400001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3637;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6/zivqnVnSlmvAJE0+We015blFe3JkPmIzBT8lSeZMHeOXUqvC52V4FbBb1WtU8WQV1KqsDBm27LFiuCfKGexnAUap8HGt5rzmZPvckVIO2CNWVk9lb29xbb2863AUcjIYb3K/kJgCPmNDGlSzj7MD5ur5pwVkDBAKsfNTPhD0M9A8ihEaSJ5tPUR3D5IJk9ZRJ1RoyGZeuZQbXMEV8fJZhdFFIO0/lASRrdF+hfDufzophEIN3tVBY0IF4AE1ke5c/iRsFnB1PvSVqRHKLlc0RUoVkCbOBIyA7QpzJoExrfwAqiVbmn4SzBL/65NsD+VKU6lwLhFV+eUoNjd/aNJU5TQJA2jMGQyg/wnMyoM6fwjO56dLXLTkpc7u+deaHt8BJRnenz4JoaDM0HKzRxVoSt9GNyl0gkFxDO4yK7HOU=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e77f12b-62f2-4fe0-7116-08d6f5784e80
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 12:10:38.0605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3637
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.72 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hdvtu-006RA4-FO
Subject: Re: [tipc-discussion] [net-next v2] tipc: add loopback device
 tracking
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

Acked-by: Jon Maloy jon.maloy@ericsson.com

> -----Original Message-----
> From: John Rutherford <john.rutherford@dektech.com.au>
> Sent: 18-Jun-19 20:11
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [net-next v2] tipc: add loopback device tracking
> 
> Since node internal messages are passed directly to socket it is not possible to
> observe this message exchange via tcpdump or wireshark.
> 
> We now remedy this by making it possible to clone such messages and send
> the clones to the loopback interface.  The clones are dropped at reception and
> have no functional role except making the traffic visible.
> 
> The feature is turned on/off by enabling/disabling the loopback "bearer"
> "eth:lo".
> 
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> ---
>  net/tipc/bcast.c  |  4 +++-
>  net/tipc/bearer.c | 67
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  net/tipc/bearer.h |  3 +++
>  net/tipc/core.c   |  5 ++++-
>  net/tipc/core.h   | 12 ++++++++++
>  net/tipc/node.c   |  1 +
>  net/tipc/topsrv.c |  2 ++
>  7 files changed, 92 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c index 6c997d4..235331d
> 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -406,8 +406,10 @@ int tipc_mcast_xmit(struct net *net, struct
> sk_buff_head *pkts,
>  			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
>  	}
> 
> -	if (dests->local)
> +	if (dests->local) {
> +		tipc_loopback_trace(net, &localq);
>  		tipc_sk_mcast_rcv(net, &localq, &inputq);
> +	}
>  exit:
>  	/* This queue should normally be empty by now */
>  	__skb_queue_purge(pkts);
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c index 2bed658..27b4fd7
> 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -836,6 +836,12 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb,
> struct genl_info *info)
> 
>  	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> 
> +	if (!strcmp(name, "eth:lo")) {
> +		tipc_net(net)->loopback_trace = false;
> +		pr_info("Disabled packet tracing on loopback interface\n");
> +		return 0;
> +	}
> +
>  	bearer = tipc_bearer_find(net, name);
>  	if (!bearer)
>  		return -EINVAL;
> @@ -881,6 +887,12 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb,
> struct genl_info *info)
> 
>  	bearer = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> 
> +	if (!strcmp(bearer, "eth:lo")) {
> +		tipc_net(net)->loopback_trace = true;
> +		pr_info("Enabled packet tracing on loopback interface\n");
> +		return 0;
> +	}
> +
>  	if (attrs[TIPC_NLA_BEARER_DOMAIN])
>  		domain = nla_get_u32(attrs[TIPC_NLA_BEARER_DOMAIN]);
> 
> @@ -1021,6 +1033,61 @@ int tipc_nl_bearer_set(struct sk_buff *skb, struct
> genl_info *info)
>  	return err;
>  }
> 
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*xmitq) {
> +	struct net_device *dev = net->loopback_dev;
> +	struct sk_buff *skb, *_skb;
> +	int exp;
> +
> +	skb_queue_walk(xmitq, _skb) {
> +		skb = pskb_copy(_skb, GFP_ATOMIC);
> +		if (!skb)
> +			continue;
> +		exp = SKB_DATA_ALIGN(dev->hard_header_len -
> skb_headroom(skb));
> +		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
> +			kfree_skb(skb);
> +			continue;
> +		}
> +		skb_reset_network_header(skb);
> +		skb->dev = dev;
> +		skb->protocol = htons(ETH_P_TIPC);
> +		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
> +				dev->dev_addr, skb->len);
> +		dev_queue_xmit(skb);
> +	}
> +}
> +
> +static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device *dev,
> +				 struct packet_type *pt, struct net_device *od) {
> +	consume_skb(skb);
> +	return NET_RX_SUCCESS;
> +}
> +
> +int tipc_attach_loopback(struct net *net) {
> +	struct net_device *dev = net->loopback_dev;
> +	struct tipc_net *tn = tipc_net(net);
> +
> +	if (!dev)
> +		return -ENODEV;
> +	dev_hold(dev);
> +	tn->loopback_pt.dev = dev;
> +	tn->loopback_pt.type = htons(ETH_P_TIPC);
> +	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
> +	tn->loopback_trace = false;
> +	dev_add_pack(&tn->loopback_pt);
> +	return 0;
> +}
> +
> +void tipc_detach_loopback(struct net *net) {
> +	struct tipc_net *tn = tipc_net(net);
> +
> +	dev_remove_pack(&tn->loopback_pt);
> +	dev_put(net->loopback_dev);
> +}
> +
>  static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
>  			       struct tipc_media *media, int nlflags)  { diff --git
> a/net/tipc/bearer.h b/net/tipc/bearer.h index 7f4c569..ef7fad9 100644
> --- a/net/tipc/bearer.h
> +++ b/net/tipc/bearer.h
> @@ -232,6 +232,9 @@ void tipc_bearer_xmit(struct net *net, u32
> bearer_id,
>  		      struct tipc_media_addr *dst);
>  void tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
>  			 struct sk_buff_head *xmitq);
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*xmitq); int tipc_attach_loopback(struct net *net); void
> +tipc_detach_loopback(struct net *net);
> 
>  /* check if device MTU is too low for tipc headers */  static inline bool
> tipc_mtu_bad(struct net_device *dev, unsigned int reserve) diff --git
> a/net/tipc/core.c b/net/tipc/core.c index ed536c0..1867687 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -81,7 +81,9 @@ static int __net_init tipc_init_net(struct net *net)
>  	err = tipc_bcast_init(net);
>  	if (err)
>  		goto out_bclink;
> -
> +	err = tipc_attach_loopback(net);
> +	if (err)
> +		goto out_bclink;
>  	return 0;
> 
>  out_bclink:
> @@ -94,6 +96,7 @@ static int __net_init tipc_init_net(struct net *net)
> 
>  static void __net_exit tipc_exit_net(struct net *net)  {
> +	tipc_detach_loopback(net);
>  	tipc_net_stop(net);
>  	tipc_bcast_stop(net);
>  	tipc_nametbl_stop(net);
> diff --git a/net/tipc/core.h b/net/tipc/core.h index 7a68e1b..c1c2906 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -67,6 +67,7 @@ struct tipc_link;
>  struct tipc_name_table;
>  struct tipc_topsrv;
>  struct tipc_monitor;
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*pkts);
> 
>  #define TIPC_MOD_VER "2.0.0"
> 
> @@ -125,6 +126,10 @@ struct tipc_net {
> 
>  	/* Cluster capabilities */
>  	u16 capabilities;
> +
> +	/* Tracing of node internal messages */
> +	struct packet_type loopback_pt;
> +	bool loopback_trace;
>  };
> 
>  static inline struct tipc_net *tipc_net(struct net *net) @@ -152,6 +157,13
> @@ static inline struct tipc_topsrv *tipc_topsrv(struct net *net)
>  	return tipc_net(net)->topsrv;
>  }
> 
> +static inline void tipc_loopback_trace(struct net *net,
> +				       struct sk_buff_head *pkts)
> +{
> +	if (unlikely(tipc_net(net)->loopback_trace))
> +		tipc_clone_to_loopback(net, pkts);
> +}
> +
>  static inline unsigned int tipc_hashfn(u32 addr)  {
>  	return addr & (NODE_HTABLE_SIZE - 1);
> diff --git a/net/tipc/node.c b/net/tipc/node.c index 9e106d3..7e58831
> 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1439,6 +1439,7 @@ int tipc_node_xmit(struct net *net, struct
> sk_buff_head *list,
>  	int rc;
> 
>  	if (in_own_node(net, dnode)) {
> +		tipc_loopback_trace(net, list);
>  		tipc_sk_rcv(net, list);
>  		return 0;
>  	}
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c index f345662..e3a6ba1
> 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -40,6 +40,7 @@
>  #include "socket.h"
>  #include "addr.h"
>  #include "msg.h"
> +#include "bearer.h"
>  #include <net/sock.h>
>  #include <linux/module.h>
> 
> @@ -608,6 +609,7 @@ static void tipc_topsrv_kern_evt(struct net *net,
> struct tipc_event *evt)
>  	memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
>  	skb_queue_head_init(&evtq);
>  	__skb_queue_tail(&evtq, skb);
> +	tipc_loopback_trace(net, &evtq);
>  	tipc_sk_rcv(net, &evtq);
>  }
> 
> --
> 2.11.0
> 
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
