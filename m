Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB5C4EA51
	for <lists+tipc-discussion@lfdr.de>; Fri, 21 Jun 2019 16:13:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1heKI5-0005i3-3i; Fri, 21 Jun 2019 14:13:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1heKI3-0005hp-8b
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 14:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EXnpSag7nSjXCjGDE86I5QHHY1buWpoYjks/6aWx2Q8=; b=m+Ytfi7lcM7rFKyV+LyA3n3Lqh
 Z26YoPvOoB0CC2jWvhnf7HE3yghAkWhxCasJH3EGiorHMJVZRsfRK+BOO3XepyY7mHOwRO5rgN5zK
 QyuJyaGp2ct72HiVeka5yUiukp9HKW8v9BRTOTvQyF1s0HeyUsqgg7Q5OkfFwRFzsxJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EXnpSag7nSjXCjGDE86I5QHHY1buWpoYjks/6aWx2Q8=; b=Qxx9enP1UW0ZTpdnuz9p4OKPZU
 5jJWswjVyE4lVPzdePeakwhAnTHwGjezk1QR3LlLGM8LarUnI7aJAw0T3uTkeWai5fVkKpIKEPsji
 OdzYc81IWRmVETNLsmqI2or2SC69GVkmf76bhxwdvV8GtE/XUbK2pSJU/nEXUTlvHTO8=;
Received: from mail-eopbgr820070.outbound.protection.outlook.com
 ([40.107.82.70] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1heKHz-007pNn-7P
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 14:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EXnpSag7nSjXCjGDE86I5QHHY1buWpoYjks/6aWx2Q8=;
 b=MTZoN0qfwwAUG/UGSPuk3FxAX3r1LCltxsDzRTxV4lBHRbG7keg/qQ9spxBnIMLY2fV1nEI43i5HOXZpqKD4WFgvfV8F1g8Ki9K7ah6WK7I/s8O4NNijx5dxqlmWqdNURhXa+cD3HYzP1PLpwkrRgdEWgV7/S1EtQ3QerNAmrxQ=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3527.namprd15.prod.outlook.com (10.255.155.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Fri, 21 Jun 2019 13:41:32 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 13:41:32 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Ying Xue <ying.xue@windriver.com>, John Rutherford
 <john.rutherford@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next v2] tipc: add loopback device
 tracking
Thread-Index: AQHVJjOoVlYmQO4/FkuNyB83BifvbqamCa0AgAAVLfA=
Date: Fri, 21 Jun 2019 13:41:32 +0000
Message-ID: <CH2PR15MB3575321476634B0F3A160CF79AE70@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190619001118.16154-1-john.rutherford@dektech.com.au>
 <28b25428-9fe9-8cc6-52f8-21b6aa863c2f@windriver.com>
In-Reply-To: <28b25428-9fe9-8cc6-52f8-21b6aa863c2f@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b86f2440-d4bc-4acd-0ac7-08d6f64e2c0e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3527; 
x-ms-traffictypediagnostic: CH2PR15MB3527:
x-ms-exchange-purlcount: 1
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB352751AFF6B5E7595B7430349AE70@CH2PR15MB3527.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(376002)(346002)(366004)(199004)(13464003)(189003)(446003)(6436002)(476003)(86362001)(66476007)(26005)(9686003)(5660300002)(71200400001)(14444005)(316002)(2501003)(55016002)(71190400001)(2906002)(6306002)(44832011)(256004)(110136005)(186003)(11346002)(66066001)(486006)(53546011)(25786009)(66446008)(14454004)(6506007)(8676002)(74316002)(229853002)(5024004)(52536014)(3846002)(8936002)(305945005)(99286004)(7696005)(7736002)(53936002)(76116006)(66556008)(64756008)(73956011)(6116002)(966005)(68736007)(66946007)(478600001)(33656002)(6246003)(81156014)(76176011)(81166006)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3527;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QfekT6HD1/vTHz1qQ019EL+Qkih80QNFpVnPyUH/wbVddcMTjjWfSSyaX3eUf70xya4z9/RfNRGp8CH/olF7V7G+XmILZX2Y9ShBdx8lcLxr+AYJYTNOiUy9hw0uhSGWSLBzya5HtV117P4eIIMUT/AMl9avlEcO60qMA1NWdEZD/ZGyUpMGwWeuMKveeoMVGs9ljeCR5hu/RJos0RnqS2X+uZIEawaoBlWVwqzoRcGaRLbxtwhT3zDFgQMiQvbdMndpgR0mdJPZG3kY4qlWdwfDh6toE8N6onQctB5QKfSvtWyoLmdPUL9fAMqEsXSqAmbiOjTK8UobKLjU9q406X5T0sBGK8M62/JtGwXZ2h3DzLQW4ur9XEiulMVHDskOfcpHoCVemB+vsdcd4gwgwkxvlg8bZmWX3uCf3XRSNeE=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b86f2440-d4bc-4acd-0ac7-08d6f64e2c0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 13:41:32.4464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3527
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1heKHz-007pNn-7P
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

Hi Ying,
We discussed this, and even had a first version where we did this, performing the whole attach/detach tasks in the command execution itself. This resulted in way to much new code to my taste. 
My greatest concern now is that some users will enable this interface because they think it is necessary (we have already seen cases of that) and then start complaining about performance.
So, as a compromise, I suggested we could add a "confirmation" printout in the tipc tool when the loopback interface is enabled, to make the user understand that this is for tracing only.
Do you think this would be acceptable?

///jon


> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com>
> Sent: 21-Jun-19 08:16
> To: John Rutherford <john.rutherford@dektech.com.au>; tipc-
> discussion@lists.sourceforge.net
> Subject: Re: [tipc-discussion] [net-next v2] tipc: add loopback device tracking
> 
> Good work!
> 
> Just one suggestion: it's better to add one separate kernel config to control
> whether the new feature is enabled or not, and its default value should be set
> to "Disabled" because the feature is related to debug.
> 
> On 6/19/19 8:11 AM, John Rutherford wrote:
> > Since node internal messages are passed directly to socket it is not
> > possible to observe this message exchange via tcpdump or wireshark.
> >
> > We now remedy this by making it possible to clone such messages and
> > send the clones to the loopback interface.  The clones are dropped at
> > reception and have no functional role except making the traffic visible.
> >
> > The feature is turned on/off by enabling/disabling the loopback "bearer"
> > "eth:lo".
> >
> > Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> > ---
> >  net/tipc/bcast.c  |  4 +++-
> >  net/tipc/bearer.c | 67
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  net/tipc/bearer.h |  3 +++
> >  net/tipc/core.c   |  5 ++++-
> >  net/tipc/core.h   | 12 ++++++++++
> >  net/tipc/node.c   |  1 +
> >  net/tipc/topsrv.c |  2 ++
> >  7 files changed, 92 insertions(+), 2 deletions(-)
> >
> > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c index
> > 6c997d4..235331d 100644
> > --- a/net/tipc/bcast.c
> > +++ b/net/tipc/bcast.c
> > @@ -406,8 +406,10 @@ int tipc_mcast_xmit(struct net *net, struct
> sk_buff_head *pkts,
> >  			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
> >  	}
> >
> > -	if (dests->local)
> > +	if (dests->local) {
> > +		tipc_loopback_trace(net, &localq);
> >  		tipc_sk_mcast_rcv(net, &localq, &inputq);
> > +	}
> >  exit:
> >  	/* This queue should normally be empty by now */
> >  	__skb_queue_purge(pkts);
> > diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c index
> > 2bed658..27b4fd7 100644
> > --- a/net/tipc/bearer.c
> > +++ b/net/tipc/bearer.c
> > @@ -836,6 +836,12 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb,
> > struct genl_info *info)
> >
> >  	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> >
> > +	if (!strcmp(name, "eth:lo")) {
> > +		tipc_net(net)->loopback_trace = false;
> > +		pr_info("Disabled packet tracing on loopback interface\n");
> > +		return 0;
> > +	}
> > +
> >  	bearer = tipc_bearer_find(net, name);
> >  	if (!bearer)
> >  		return -EINVAL;
> > @@ -881,6 +887,12 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb,
> > struct genl_info *info)
> >
> >  	bearer = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> >
> > +	if (!strcmp(bearer, "eth:lo")) {
> > +		tipc_net(net)->loopback_trace = true;
> > +		pr_info("Enabled packet tracing on loopback interface\n");
> > +		return 0;
> > +	}
> > +
> >  	if (attrs[TIPC_NLA_BEARER_DOMAIN])
> >  		domain = nla_get_u32(attrs[TIPC_NLA_BEARER_DOMAIN]);
> >
> > @@ -1021,6 +1033,61 @@ int tipc_nl_bearer_set(struct sk_buff *skb,
> struct genl_info *info)
> >  	return err;
> >  }
> >
> > +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> > +*xmitq) {
> > +	struct net_device *dev = net->loopback_dev;
> > +	struct sk_buff *skb, *_skb;
> > +	int exp;
> > +
> > +	skb_queue_walk(xmitq, _skb) {
> > +		skb = pskb_copy(_skb, GFP_ATOMIC);
> > +		if (!skb)
> > +			continue;
> > +		exp = SKB_DATA_ALIGN(dev->hard_header_len -
> skb_headroom(skb));
> > +		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
> > +			kfree_skb(skb);
> > +			continue;
> > +		}
> > +		skb_reset_network_header(skb);
> > +		skb->dev = dev;
> > +		skb->protocol = htons(ETH_P_TIPC);
> > +		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
> > +				dev->dev_addr, skb->len);
> > +		dev_queue_xmit(skb);
> > +	}
> > +}
> > +
> > +static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device
> *dev,
> > +				 struct packet_type *pt, struct net_device *od) {
> > +	consume_skb(skb);
> > +	return NET_RX_SUCCESS;
> > +}
> > +
> > +int tipc_attach_loopback(struct net *net) {
> > +	struct net_device *dev = net->loopback_dev;
> > +	struct tipc_net *tn = tipc_net(net);
> > +
> > +	if (!dev)
> > +		return -ENODEV;
> > +	dev_hold(dev);
> > +	tn->loopback_pt.dev = dev;
> > +	tn->loopback_pt.type = htons(ETH_P_TIPC);
> > +	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
> > +	tn->loopback_trace = false;
> > +	dev_add_pack(&tn->loopback_pt);
> > +	return 0;
> > +}
> > +
> > +void tipc_detach_loopback(struct net *net) {
> > +	struct tipc_net *tn = tipc_net(net);
> > +
> > +	dev_remove_pack(&tn->loopback_pt);
> > +	dev_put(net->loopback_dev);
> > +}
> > +
> >  static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
> >  			       struct tipc_media *media, int nlflags)  { diff --git
> > a/net/tipc/bearer.h b/net/tipc/bearer.h index 7f4c569..ef7fad9 100644
> > --- a/net/tipc/bearer.h
> > +++ b/net/tipc/bearer.h
> > @@ -232,6 +232,9 @@ void tipc_bearer_xmit(struct net *net, u32
> bearer_id,
> >  		      struct tipc_media_addr *dst);  void
> > tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
> >  			 struct sk_buff_head *xmitq);
> > +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> > +*xmitq); int tipc_attach_loopback(struct net *net); void
> > +tipc_detach_loopback(struct net *net);
> >
> >  /* check if device MTU is too low for tipc headers */  static inline
> > bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve) diff
> > --git a/net/tipc/core.c b/net/tipc/core.c index ed536c0..1867687
> > 100644
> > --- a/net/tipc/core.c
> > +++ b/net/tipc/core.c
> > @@ -81,7 +81,9 @@ static int __net_init tipc_init_net(struct net *net)
> >  	err = tipc_bcast_init(net);
> >  	if (err)
> >  		goto out_bclink;
> > -
> > +	err = tipc_attach_loopback(net);
> > +	if (err)
> > +		goto out_bclink;
> >  	return 0;
> >
> >  out_bclink:
> > @@ -94,6 +96,7 @@ static int __net_init tipc_init_net(struct net *net)
> >
> >  static void __net_exit tipc_exit_net(struct net *net)  {
> > +	tipc_detach_loopback(net);
> >  	tipc_net_stop(net);
> >  	tipc_bcast_stop(net);
> >  	tipc_nametbl_stop(net);
> > diff --git a/net/tipc/core.h b/net/tipc/core.h index 7a68e1b..c1c2906
> > 100644
> > --- a/net/tipc/core.h
> > +++ b/net/tipc/core.h
> > @@ -67,6 +67,7 @@ struct tipc_link;
> >  struct tipc_name_table;
> >  struct tipc_topsrv;
> >  struct tipc_monitor;
> > +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> > +*pkts);
> >
> >  #define TIPC_MOD_VER "2.0.0"
> >
> > @@ -125,6 +126,10 @@ struct tipc_net {
> >
> >  	/* Cluster capabilities */
> >  	u16 capabilities;
> > +
> > +	/* Tracing of node internal messages */
> > +	struct packet_type loopback_pt;
> > +	bool loopback_trace;
> >  };
> >
> >  static inline struct tipc_net *tipc_net(struct net *net) @@ -152,6
> > +157,13 @@ static inline struct tipc_topsrv *tipc_topsrv(struct net *net)
> >  	return tipc_net(net)->topsrv;
> >  }
> >
> > +static inline void tipc_loopback_trace(struct net *net,
> > +				       struct sk_buff_head *pkts) {
> > +	if (unlikely(tipc_net(net)->loopback_trace))
> > +		tipc_clone_to_loopback(net, pkts);
> > +}
> > +
> >  static inline unsigned int tipc_hashfn(u32 addr)  {
> >  	return addr & (NODE_HTABLE_SIZE - 1); diff --git a/net/tipc/node.c
> > b/net/tipc/node.c index 9e106d3..7e58831 100644
> > --- a/net/tipc/node.c
> > +++ b/net/tipc/node.c
> > @@ -1439,6 +1439,7 @@ int tipc_node_xmit(struct net *net, struct
> sk_buff_head *list,
> >  	int rc;
> >
> >  	if (in_own_node(net, dnode)) {
> > +		tipc_loopback_trace(net, list);
> >  		tipc_sk_rcv(net, list);
> >  		return 0;
> >  	}
> > diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c index
> > f345662..e3a6ba1 100644
> > --- a/net/tipc/topsrv.c
> > +++ b/net/tipc/topsrv.c
> > @@ -40,6 +40,7 @@
> >  #include "socket.h"
> >  #include "addr.h"
> >  #include "msg.h"
> > +#include "bearer.h"
> >  #include <net/sock.h>
> >  #include <linux/module.h>
> >
> > @@ -608,6 +609,7 @@ static void tipc_topsrv_kern_evt(struct net *net,
> struct tipc_event *evt)
> >  	memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
> >  	skb_queue_head_init(&evtq);
> >  	__skb_queue_tail(&evtq, skb);
> > +	tipc_loopback_trace(net, &evtq);
> >  	tipc_sk_rcv(net, &evtq);
> >  }
> >
> >
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
